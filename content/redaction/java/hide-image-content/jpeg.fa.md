
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fa
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پوشش تصاویر در JPEG با لایه‌ها به کمک Java"
head_description: "با GroupDocs.Redaction for Java تصاویر حساس را در فایل‌های JPEG با اضافه کردن پوشش‌های رنگی پنهان کنید. اطلاعات حساس را بدون تغییر طراحی سند خود محفوظ کنید."

############################# Header ############################
title: "پنهان‌سازی تصاویر حساس در فایل‌های JPEG با لایه‌ها به کمک Java" 
description: "اطلاعات بصری تجاری و شخصی را در فایل‌های JPEG با Java محافظت کنید. ابزارهای ساده برای کمک به ایمن‌سازی اسنادتان."
subtitle: "ویژگی‌های اصلی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java ابزارهایی برای پنهان سازی یا حذف محتوا در JPEG فایل‌ها می‌دهد. با پوشش‌دهی متن، تصاویر و متادیتای حساس از اسناد‌تان محافظت کنید.

############################# Steps ############################
steps:
    enable: true
    title: "پنهان‌سازی داده‌های محرمانه در فایل‌های Jpeg"
    content: |
      GroupDocs.Redaction for Java کار را برای برنامه‌های Java شما سریع می‌سازد تا محتوای خصوصی را پوشش دهد.
      
      1. یک Redactor را راه‌اندازی کرده و فایل Jpeg خود را بارگذاری کنید.
      2. تنظیمات مسدودسازی را متناسب با نیازهای خود تنظیم کنید.
      3. منطقه تصویر را انتخاب کرده و رنگ پوشش را انتخاب کنید.
      4. عملیات مسدودسازی را اجرا کرده و فایل را ذخیره کنید.
   
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
        // پوشش داده‌های تصویر در JPEG

        // فایل را با Redactor بارگذاری نمایید
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // اندازه پوشش و رنگ را تنظیم کنید
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // منطقه‌ای که می‌خواهید پنهان شود را علامت‌گذاری کنید
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
  title: "پنهان‌سازی داده‌های حساس در مستندات"
  description: "GroupDocs.Redaction for Java به شما کمک می‌کند تا محتواهای خصوصی را از چندین نوع فایل پنهان یا حذف کنید. اطمینان حاصل کنید که فایل‌ها از نظر ظاهری تمیز و آماده برای اشتراک گذاری هستند."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ویژگی‌های جامع مسدودسازی"
  features:
    # feature loop
    - title: "پیدا کردن و جایگزینی متن"
      content: "در مستندات خود متن‌های حساس را جستجو کرده و به منظور محافظت از اطلاعات، آنها را جایگزین کنید."

    # feature loop
    - title: "پوشاندن محتواهای تصویر"
      content: "از پوشش‌ها استفاده کنید تا کل تصاویر یا قسمت‌های خاصی را پنهان کنید."

    # feature loop
    - title: "حذف متادیتا"
      content: "متادیتای پنهان را حذف کنید تا از افشای ناخواسته اطلاعات حساس جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "استفاده از پوشش‌ها برای پنهان‌سازی محتواهای تصویر"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توانید نقاط حساس تصویر را در مستندات خود با پوشش‌ها محافظت نمایید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل را برای مسدودسازی بارگذاری کنید
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // اندازه، رنگ و موقعیت پوشش را مشخص کنید
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // یک ناحیه مشخص از تصویر را انتخاب نمایید
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // پوشش را برای پنهان‌سازی تصویر اعمال کنید
              redactor.apply(redaction);

              // فایل جدید را ذخیره کنید
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
    title: "محافظت از فایل‌های JPEG با مسدودسازی Java"
    exclude: "JPEG"
    description: "از Java برای پنهان‌سازی یا حذف اطلاعات حساس در فایل‌های JPEG استفاده کنید. یک راه‌حل مطمئن برای حفاظت از اسناد شما."
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