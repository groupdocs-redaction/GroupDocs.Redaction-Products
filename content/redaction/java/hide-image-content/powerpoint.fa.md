
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fa
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پنهان‌سازی تصاویر حساس در POWERPOINT با لایه‌ها به کمک Java"
head_description: "محتوای عکس‌های خصوصی را در POWERPOINT با GroupDocs.Redaction for Java پنهان کنید. با افزودن پوشش‌ها، اسناد را ایمن کنید بدون اینکه_layout_ دستخوش تغییر شود."

############################# Header ############################
title: "حفاظت از تصاویر خصوصی در مستندات POWERPOINT با پوشش‌ها به کمک Java" 
description: "حفظ اطلاعات تصویری شخصی و تجاری در POWERPOINT با Java. ابزارهای آسان برای محافظت قوی از حریم خصوصی."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java قابلیت‌هایی برای پنهان‌سازی یا حذف محتوا در فایل‌های POWERPOINT می‌دهد. اسناد را با پوشش داده‌های حساس، تصاویر و متادیتا ایمن کنید.

############################# Steps ############################
steps:
    enable: true
    title: "پنهان‌سازی داده‌های حساس در مستندات Powerpoint"
    content: |
      GroupDocs.Redaction for Java به برنامه‌های Java شما کمک می‌کند تا محتوای خصوصی را به راحتی در اسناد پنهان کنند.
      
      1. یک Redactor بسازید و فایل Powerpoint را بارگذاری کنید.
      2. تنظیمات مسدودسازی را مطابق نیازهای خود تعیین کنید.
      3. محل تصاویر را انتخاب کرده و رنگ پوشش را انتخاب کنید.
      4. عملیات مسدودسازی را اعمال کرده و فایل را ذخیره کنید.
   
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
        // پنهان‌سازی داده‌های حساس تصویر در POWERPOINT

        // مدرک را با Redactor باز کنید
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // اندازه و رنگ پوشش را مشخص کنید
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // منطقه‌ای را برای پنهان‌سازی هایلایت کنید
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // تغییرات را اعمال کرده و سند را ذخیره کنید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان‌سازی داده‌های حساس در اسناد"
  description: "GroupDocs.Redaction for Java به شما کمک می‌کند تا اطلاعات خصوصی را در انواع مختلف مستندات پنهان یا حذف کنید. اسناد را برای اشتراک‌گذاری یا ذخیره‌سازی ایمن نگه‌دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای مسدودسازی برای هر نیاز"
  features:
    # feature loop
    - title: "پیدا کردن و جایگزینی متن"
      content: "سریعا برای متن خصوصی در اسناد جستجو کنید و آن را مسدود کنید تا امنیت اسناد تضمین گردد."

    # feature loop
    - title: "پوشاندن مناطق تصویر"
      content: "با عمل به پوشش‌ها، تمام تصاویر یا مناطق خاصی را پنهان کنید."

    # feature loop
    - title: "حذف متادیتا"
      content: "متادیتای پنهان را حذف یا ویرایش کنید تا از افشای اطلاعات محرمانه جلوگیری نمایید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان‌سازی محتوای تصویر با پوشش‌ها"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توانید مناطق حساس تصاویر را در اسناد با پوشش‌ها پنهان کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل خود را بارگذاری کنید
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // خصوصیت‌های پوشش، شامل اندازه، موقعیت و رنگ را مشخص کنید
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // منطقه تصویر هدف در صفحه اول را علامت بزنید
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // پوشش را برای پنهان‌سازی داده‌ها اعمال کنید
              redactor.apply(redaction);

              // مدرک به‌روز شده را ذخیره کنید
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
    title: "محافظت از فایل‌های POWERPOINT با مسدودسازی Java"
    exclude: "POWERPOINT"
    description: "با Java می‌توانید اطلاعات حساس را در فایل‌های POWERPOINT پنهان یا حذف کنید. یک راه‌حل معتبر برای امنیت اسناد."
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