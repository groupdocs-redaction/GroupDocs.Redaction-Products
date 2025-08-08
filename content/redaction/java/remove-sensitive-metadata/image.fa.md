
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fa
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متادیتای پنهان در IMAGE با Java"
head_description: "از GroupDocs.Redaction for Java برای پاکسازی متادیتا در فایل‌های IMAGE استفاده کنید. اطمینان حاصل کنید که اطلاعات خصوصی مخفی باقی بماند."

############################# Header ############################
title: "حذف متادیتا از فایل‌های IMAGE با Java" 
description: "فایل‌های IMAGE خود را با ابزارهای Java که جزئیات حساس را حذف می‌کند، محفوظ نگه‌دارید."
subtitle: "چکیده‌ای از کارهایی که می‌توانید با GroupDocs.Redaction for Java انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Java این امکان را می‌دهد تا محتوای حساس شامل متون، تصاویر و متادیتا را از فایل‌های IMAGE حذف کنند.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متادیتا را در فایل‌های Image پاک کنیم"
    content: |
      با استفاده از GroupDocs.Redaction در اپلیکیشن Java خود، متادیتای پنهان را به سرعت حذف کنید.
      
      1. یک Redactor بسازید و سند Image خود را باز کنید.
      2. فیلدهای متادیتا را که می‌خواهید حذف کنید، انتخاب کنید.
      3. تنظیمات حذف را اجرا کنید.
      4. فایل پاک‌شده را ذخیره کنید.
   
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
        // پاکسازی متادیتای پنهان در IMAGE

        // فایل خود را با Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // فیلدهای متادیتا را برای حذف تنظیم کنید
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // تغییرات را اعمال و ذخیره کنید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حذف محتوای فایل‌ها"
  description: "GroupDocs.Redaction for Java به حذف متن‌های خصوصی، جزئیات پنهان در تصاویر و متادیتا از اسناد پیش از به اشتراک‌گذاری کمک می‌کند."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های اصلی"
  features:
    # feature loop
    - title: "پاکسازی متن"
      content: "کلمات یا شماره‌های خصوصی را جستجو کنید و آنها را به‌طور امن حذف کنید."

    # feature loop
    - title: "پوشاندن مناطق تصویر"
      content: "بخش‌های حساسی از تصاویر را با پوشش‌های اضافی بپوشانید."

    # feature loop
    - title: "حذف متادیتا"
      content: "فیلدهای متادیتا را پاک کنید که ممکن است حاوی اطلاعات خصوصی باشند."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف متادیتای حساس"
      content: |
        این راهنما نشان می‌دهد که چگونه می‌توانید فیلدهایی همچون نویسنده و عنوان را از یک سند IMAGE پاک کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل IMAGE را در ویرایشگر باز کنید
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // متادیتای نویسنده را انتخاب کنید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // متادیتای عنوان را انتخاب کنید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // حذف متادیتا را اجرا کنید
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // فایل نهایی را ذخیره کنید
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "پاکسازی متادیتا در IMAGE با Java"
    exclude: "IMAGE"
    description: "از Java برای حذف داده‌های پنهان در IMAGE استفاده کنید. عالی برای پاکسازی اسناد قبل از به اشتراک‌گذاری یا آرشیو."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت تصویر"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "فرمت‌های رایج تصویر"

        # format loop 6
        - name: "رداکت عکس"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "فرمت‌های عکاسی"

        # format loop 7
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 8
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 9
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"

        # format loop 10
        - name: "رداکت JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "تصویر JPEG"


---