
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پوشش تصاویر در فایل‌های XLSX با لایه‌ها به کمک Java"
head_description: "از GroupDocs.Redaction for Java برای پوشاندن تصاویر حساس در فایل‌های XLSX با افزودن پوشش‌های رنگی استفاده کنید. اطلاعات مهم را در حین حفظ ساختار سند محافظت کنید."

############################# Header ############################
title: "پوشش تصاویر خصوصی در مستندات XLSX به کمک Java" 
description: "با Java محتوای تصویری حساس را در فایل‌های XLSX ایمن نگه‌دارید. ابزارهای راحت ما، مسدودسازی تصاویر را سریع و مطمئن می‌کند."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java ابزارهای ساده‌ای برای پنهان‌سازی یا حذف محتوا از فایل‌های XLSX ارائه می‌دهد. متن، تصاویر و متادیتا را در انواع مختلف اسناد مسدود کنید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از داده‌های خصوصی در مستندات Xlsx"
    content: |
      GroupDocs.Redaction for Java به برنامه‌های Java تان کمک می‌کند تا با یک سری مراحل ساده، اسناد را ایمن کنند.
      
      1. یک Redactor را راه‌اندازی کرده و مستند Xlsx خود را بارگذاری کنید.
      2. گزینه‌های مسدودسازی را مطابق با پروژه خود تنظیم کنید.
      3. منطقه عکس را انتخاب کنید و یک رنگ پوشش انتخاب کنید.
      4. مسدودسازی را اجرا کنید و فایل خود را ذخیره کنید.
   
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
        // پوشاندن مناطق حساس تصویر در XLSX

        // یک Redactor با مسیر فایل بسازید
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // ابعاد و رنگ پوشش را انتخاب کنید
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // منطقه را برای مسدودسازی انتخاب کنید
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // پوشش را اعمال کرده و سند را ذخیره کنید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های پیشرفته مسدودسازی"
  description: "با GroupDocs.Redaction for Java می‌توانید اطلاعات حساس را در انواع فایل‌ها پنهان یا حذف کنید در حالی که طراحی سند تمیز و خوانا باقی می‌ماند."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای قدرتمند مسدودسازی"
  features:
    # feature loop
    - title: "پیدا کردن و جایگزینی متن"
      content: "به جستجوی متن خصوصی پرداخته و آن را مسدود کنید تا اسناد شما ایمن بماند."

    # feature loop
    - title: "پوشاندن محتوای تصویر"
      content: "پوشش‌ها را برای پنهان‌سازی تصاویر محرمانه یا قسمت‌های خاص اعمال کنید."

    # feature loop
    - title: "حذف متادیتا"
      content: "متادیتای پنهان را از اسناد حذف کنید تا از افشای داده‌ها جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان‌سازی جزئیات تصویر با استفاده از پوشش‌ها"
      content: |
        یاد بگیرید که چگونه قسمت‌های حساس تصاویر را در اسناد خود با پوشش‌ها محافظت کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  مدرک را برای مسدودسازی بارگزاری کنید
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // اندازه، رنگ و موقعیت پوشش را تنظیم کنید
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // یک ناحیه مشخص تصویر را انتخاب کنید
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // پوشش را برای پنهان‌سازی تصویر اعمال کنید
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
    title: "پوشش محتویات XLSX با مسدودسازی Java"
    exclude: "XLSX"
    description: "از Java برای پوشاندن یا حذف محتوای خصوصی در فایل‌های XLSX استفاده کنید. انتخاب هوشمندانه‌ای برای ایمن کردن اسناد تجاری و شخصی."
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