
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fa
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پنهان‌سازی تصاویر در WORD با لایه‌ها به کمک Java"
head_description: "با GroupDocs.Redaction for Java می‌توانید تصاویر حساس را در فایل‌های WORD با استفاده از پوشش‌های رنگی پوشش دهید. اطلاعات خصوصی را بدون تغییر در طراحی سند خود محافظت کنید."

############################# Header ############################
title: "محافظت از تصاویر حساس در فایل‌های WORD با Java" 
description: "مشخصات بصری شخصی و تجاری را در مستندات WORD با Java ایمن کنید. مسدودسازی تصویر به سرعت و به صورت ساده انجام می‌گیرد."
subtitle: "ویژگی‌های اصلی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java ابزارهایی آسان برای پنهان‌سازی یا حذف محتوا از فایل‌های WORD می‌دهد. متن، تصاویر و متادیتا را در انواع مختلف اسناد مسدود کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حفظ داده‌های محرمانه در فایل‌های Word"
    content: |
      GroupDocs.Redaction for Java کار را برای برنامه‌های Java شما راحت می‌کند تا اطلاعات خصوصی را درون اسناد مسدود کنند.
      
      1. یک Redactor را راه‌اندازی کرده و فایل Word را بارگذاری کنید.
      2. تنظیمات مسدودسازی مورد نیاز خود را تعریف کنید.
      3. منطقه تصویر را برجسته کرده و رنگ پوشش را انتخاب کنید.
      4. عملیات مسدودسازی را اجرا کرده و سند تازه شده را ذخیره نمایید.
   
    code:
      platform: "java"
      copy_title: "کپی"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "نمونه رداکت‌ها"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "برای کپی کردن کلیک کنید"
        copy_done: "کپی شد"
      links:
        #  loop
        - title: "نمونه‌های بیشتر"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "مستندات"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // پنهان‌سازی محتوای تصویر حساس در WORD

        // فایل را با استفاده از Redactor بارگذاری نمایید
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // رنگ و ابعاد پوشش را انتخاب کنید
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // محل تصویر را علامت‌گذاری کنید
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // پوشش را اعمال کرده و فایل را ذخیره کنید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای پنهان‌سازی و حذف محتوا"
  description: "GroupDocs.Redaction for Java به شما کمک می‌کند تا اطلاعات حساس را در فرمت‌های مختلف حذف یا پنهان کنید. اسناد خود را ایمن و منظم نگه دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ویژگی‌های مؤثر مسدودسازی"
  features:
    # feature loop
    - title: "پیدا کردن و جایگزینی متن"
      content: "در اسناد خود برای متن خصوصی جستجو کنید و آن را جهت ایمن‌سازی اسناد جایگزین کنید."

    # feature loop
    - title: "پوشش نواحی تصویر"
      content: "پوشش‌ها را برای مخفی کردن تصاویر کامل یا نواحی انتخاب شده به کار ببرید."

    # feature loop
    - title: "حذف متادیتا"
      content: "متادیتا را حذف یا ویرایش کنید تا از محافظت اطلاعات ژنریک اطمینان حاصل کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "استفاده از پوشش‌ها برای پنهان‌سازی داده‌های تصویری"
      content: |
        این نمونه نحوه محافظت از محتوای حساس تصویر را در اسناد با پوشش‌ها نشان می‌دهد.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  مدرک را بارگذاری کنید
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // خصوصیت‌های پوشش مانند اندازه، موقعیت و رنگ را تعیین نمایید
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // منطقه تصویر در صفحه اول را علامت‌گذاری کنید
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // ناحیه را با پوشش بپوشانید
              redactor.apply(redaction);

              // مدرک مسدود شده را ذخیره کنید
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "کپی"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "برای کپی کردن کلیک کنید"
          copy_done: "کپی شد"
        top_links:
          #  loop
          - title: "دانلود نتیجه"
            icon: "download"
            link: "/examples/redaction/formats/hide-image-content.pdf"
        links:
          #  loop
          - title: "نمونه‌های بیشتر"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "مستندات"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "آماده شروع هستید؟"
  description: "ویژگی‌های GroupDocs.Redaction را رایگان امتحان کنید یا درخواست مجوز دهید"
  items:
    #  loop
    - title: "دانلود Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "مجوزگیری"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "پنهان‌سازی محتوا در فایل‌های WORD با Java"
    exclude: "WORD"
    description: "از Java برای پنهان کردن یا حذف داده‌های حساس در فایل‌های WORD استفاده کنید. روشی مؤثر برای ایمن‌سازی اسناد."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت تصویر"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "فرمت‌های رایج تصویر"

        # format loop 6
        - name: "رداکت عکس"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "فرمت‌های عکاسی"

        # format loop 7
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 8
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 9
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"

        # format loop 10
        - name: "رداکت JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "تصویر JPEG"


---