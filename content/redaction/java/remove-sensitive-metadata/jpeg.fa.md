
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fa
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ویرایش متادیتا در JPEG با استفاده از Java"
head_description: "از GroupDocs.Redaction for Java برای پاکسازی یا تغییر متادیتا در فایل‌های JPEG استفاده کنید. با حذف داده‌های پنهان، حریم خصوصی را محافظت کنید."

############################# Header ############################
title: "حذف متادیتا از فایل‌های JPEG با استفاده از Java" 
description: "فایل‌های JPEG خود را با ابزارهای ساده Java که جزئیات خصوصی را حذف می‌کند، ایمن نگه‌دارید."
subtitle: "ویژگی‌های اصلی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Java ابزارهایی می‌دهد تا متن، تصاویر و متادیتا را از فایل‌های JPEG حذف کنند.

############################# Steps ############################
steps:
    enable: true
    title: "پاکسازی متادیتا در اسناد Jpeg"
    content: |
      GroupDocs.Redaction این امکان را می‌دهد تا متادیتا را در پروژه‌های Java خود به آسانی حذف کنید.
      
      1. یک Redactor ایجاد کنید و فایل Jpeg خود را بارگذاری کنید.
      2. گزینه‌های حذف تمام فیلدهای متادیتا را انتخاب کنید.
      3. حذف متادیتا را برای پاکسازی فایل اجرا کنید.
      4. فایل به‌روزرسانی‌شده را بدون داده‌های پنهان ذخیره کنید.
   
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
        // پاکسازی متادیتا از فایل‌های JPEG

        // فایل را با استفاده از Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // تنظیمات پاکسازی متادیتا را تنظیم کنید
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // اجرای پاکسازی و ذخیره تغییرات
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "اسناد خود را محافظت کنید"
  description: "GroupDocs.Redaction for Java به حذف محتوای خصوصی از بسیاری از انواع فایل‌ها کمک می‌کند. اطلاعات حساس را از فایل‌های به اشتراک‌گذاری خود محافظت کنید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های کلیدی پاکسازی متادیتا"
  features:
    # feature loop
    - title: "حذف متن"
      content: "کلمات یا عبارات شخصی را از فایل‌های خود بیابید و از بین ببرید."

    # feature loop
    - title: "پوشاندن محتوای تصویر"
      content: "بخشی از تصاویر را با پوشش‌هایی بپوشانید تا ناخواسته پنهان شوند."

    # feature loop
    - title: "ویرایش متادیتا"
      content: "فیلدهای متادیتا را پاکسازی یا تغییر دهید تا از افشای اطلاعات خصوصی جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف فیلدهای متادیتای پنهان"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان متادیتاهایی مانند نویسنده و عنوان را از اسناد JPEG حذف یا ویرایش کرد.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل JPEG را با ویرایشگر باز کنید
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // به متادیتای نویسنده هدف قرار دهید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // به متادیتای عنوان هدف قرار دهید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // حذف متادیتا را اجرا کنید
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // فایل پاکسازی‌شده را ذخیره کنید
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
    title: "حذف متادیتا از JPEG با Java"
    exclude: "JPEG"
    description: "از Java برای حذف داده‌های پنهان از فایل‌های JPEG استفاده کنید و اطلاعات حساس را محافظت کنید."
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