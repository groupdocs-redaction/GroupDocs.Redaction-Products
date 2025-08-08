
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fa
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پنهان‌سازی تصاویر در IMAGE با لایه‌ها به کمک Java"
head_description: "از GroupDocs.Redaction for Java برای پوشاندن نواحی حساس تصویر در فایل‌های IMAGE با پوشش‌های رنگی استفاده کنید. داده‌های مهم را بدون تغییر طراحی سند، محافظت کنید."

############################# Header ############################
title: "حفاظت از تصاویر خصوصی در فایل‌های IMAGE به‌کمک پوشش‌ها با Java" 
description: "محافظت از تصاویر تجاری و شخصی در فایل‌های IMAGE با Java. ابزاری آسان برای حفاظت سریع و قابل اعتماد داده‌ها."
subtitle: "ویژگی‌های اصلی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java امکان می‌دهد محتوا را در فایل‌های IMAGE پنهان یا از بین ببرند. با پوشش‌دهی محتواهای حساس، گزارشتان را ایمن نگه دارید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از محتوا در فایل‌های Image با پوشش‌ها"
    content: |
      به سرعت مناطق حساس را در برنامه‌های Java خود با GroupDocs.Redaction for Java پوشش دهید.
      
      1. یک شی Redactor ایجاد کرده و مسیر فایل Image خود را مشخص نمایید.
      2. تنظیمات مسدودسازی را به دلخواه تنظیم کنید.
      3. بخش‌های تصویر را علامت‌گذاری کنید و رنگ پوشش‌ها را انتخاب کنید.
      4. فایل مسدود شده خود را پردازش و ذخیره کنید.
   
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
        // پنهان‌سازی محتوای تصویر در IMAGE

        // فایل را با Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // ابعاد و رنگ‌های پوشش را تنظیم کنید
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // منطقه‌ای برای حفاظت انتخاب کنید
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // پوشش را اضافه کرده و فایل را ذخیره نمایید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان‌سازی محتواهای حساس در هر مستند"
  description: "GroupDocs.Redaction for Java به شما اجازه می‌دهد که محتوای خصوصی را در چندین فایل مستند پنهان یا حذف کنید. برای اطمینان از اینکه اسناد شما تمیز و امن برای توزیع باقی بمانند، کار کنید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای مسدودسازی با کنترل کامل"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "متن حساس را در مستندات پیدا کرده و برای محافظت از اطلاعات آن را جایگزین نمایید."

    # feature loop
    - title: "پوشاندن نواحی تصویر"
      content: "از پوشش‌ها استفاده کنید تا تمام تصاویر یا مناطق مشخصی را بپوشانید."

    # feature loop
    - title: "حذف متادیتا"
      content: "پنهان یا ویرایش کنید تا از نشت داده‌ها جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان‌سازی نواحی تصویر با لایه‌ها"
      content: |
        این مثال برنامه‌نویسی نشان می‌دهد که چگونه می‌توانید نواحی حساس تصویر را با پوشش‌ها پنهان کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل را برای ویرایش بارگذاری کنید
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // ابعاد، رنگ و موقعیت پوشش را مشخص نمایید
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // یک ناحیه تصویر را در صفحه اول انتخاب کنید
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // پوشش را برای پنهان‌سازی محتوا اعمال کنید
              redactor.apply(redaction);

              // فایل را ذخیره کنید
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
    title: "محافظت از فایل‌های IMAGE با مسدود‌سازی Java"
    exclude: "IMAGE"
    description: "از Java برای پنهان‌سازی یا حذف داده‌های حساس در فایل‌های IMAGE استفاده کنید. یک راه‌حل رسمی برای حفاظت اسناد."
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