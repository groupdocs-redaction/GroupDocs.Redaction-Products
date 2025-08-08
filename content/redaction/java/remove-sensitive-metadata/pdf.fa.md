
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java برای پاکسازی متادیتا در PDF"
head_description: "از GroupDocs.Redaction for Java برای حذف یا به‌روزرسانی متادیتای پنهان در فایل‌های PDF استفاده کنید. اطلاعات خصوصی را قبل از به اشتراک‌گذاری اسناد خود حذف کنید."

############################# Header ############################
title: "حذف متادیتا از فایل‌های PDF با استفاده از Java" 
description: "اطلاعات شخصی و تجاری خود را در فایل‌های PDF با استفاده از Java محفوظ نگه‌دارید. ابزارهای ساده‌ای که به حفظ داده‌های شما کمک می‌کنند."
subtitle: "ویژگی‌های اصلی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Java ابزارهایی می‌دهد تا متن، محتویات تصویر و متادیتا را در اسناد PDF پنهان کنند.

############################# Steps ############################
steps:
    enable: true
    title: "پاکسازی متادیتا در اسناد Pdf"
    content: |
      با GroupDocs.Redaction شروع کنید تا متادیتا را در پروژه‌های Java خود محافظت کنید.
      
      1. یک Redactor راه‌اندازی کنید و فایل Pdf خود را باز کنید.
      2. انتخاب کنید که همه فیلدهای متادیتا حذف شوند.
      3. حذف متادیتا را اجرا کنید تا داده‌های پنهان پاک شوند.
      4. فایل را با متادیتای حذف‌شده ذخیره کنید.
   
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
        // پاکسازی متادیتا در فایل‌های PDF

        // از Redactor برای باز کردن فایل استفاده کنید
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // تنظیمات حذف متادیتا را تعیین کنید
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
  title: "حذف اطلاعات حساس از فایل‌ها"
  description: "GroupDocs.Redaction for Java به شما امکان می‌دهد محتوای خصوصی را در فرمت‌های مختلف اسناد پاک کنید. فایل‌های خود را امن و آسان برای به اشتراک‌گذاری نگه‌دارید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های کلیدی پاکسازی متادیتا"
  features:
    # feature loop
    - title: "پاکسازی متن"
      content: "کلمات شخصی یا حساس را در اسناد خود پیدا و حذف کنید."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "روی تصاویر پوشش‌هایی قرار دهید تا جزئیات خصوصی را پنهان کنید."

    # feature loop
    - title: "حذف متادیتا"
      content: "متادیتای پنهان که ممکن است اطلاعات خصوصی را افشا کند، پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پاکسازی متادیتای پنهان"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان متادیتا را در فایل‌های PDF تغییر داد یا حذف کرد.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل PDF را با استفاده از ویرایشگر باز کنید
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // به فیلد متادیتای نویسنده هدف قرار دهید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // به فیلد متادیتای عنوان هدف قرار دهید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // عملیات پاکسازی متادیتا را اجرا کنید
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
    title: "ایمن‌سازی فایل‌های PDF با پاکسازی متادیتا از Java"
    exclude: "PDF"
    description: "فیلدهای پنهان را در فایل‌های PDF خود با استفاده از Java پاک کنید. حریم خصوصی را با یک ابزار ساده پاکسازی متادیتا محافظت کنید."
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