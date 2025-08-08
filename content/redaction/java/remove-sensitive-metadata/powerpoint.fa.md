
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fa
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متادیتا از POWERPOINT با Java"
head_description: "از GroupDocs.Redaction for Java برای پاکسازی متادیتای پنهان از فایل‌های POWERPOINT و محفاظت از اسناد خود استفاده کنید."

############################# Header ############################
title: "حذف متادیتا در POWERPOINT با استفاده از Java" 
description: "فایل‌های خود را با ابزارهای ساده طراحی‌شده برای Java محافظت کنید. متادیتا را در چند مرحله از بین ببرید."
subtitle: "چیزی که با GroupDocs.Redaction for Java به دست می‌آورید" 

############################# About ############################
about:
    enable: true
    title: "چیست GroupDocs.Redaction for Java؟"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ابزاری است که به توسعه‌دهندگان Java کمک می‌کند تا متن، تصاویر و متادیتا را در فایل‌های POWERPOINT پاکسازی کنند.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متادیتا را از فایل‌های Powerpoint پاک کنیم"
    content: |
      با GroupDocs.Redaction، برنامه‌های Java شما می‌توانند به سرعت متادیتا را از اسناد پاک کنند.
      
      1. یک شی Redactor ایجاد کنید و سند را بارگذاری کنید.
      2. فیلدهای متادیتایی را که می‌خواهید حذف کنید، انتخاب کنید.
      3. تنظیمات حذف را اعمال کنید.
      4. سند خود را بدون داده‌های پنهان صادر کنید.
   
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
        // حذف متادیتا از فایل‌های POWERPOINT

        // فایل را با ویرایشگر باز کنید
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // مشخصات متادیتا را انتخاب کنید
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // پاکسازی و ذخیره فایل
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "با حذف محتویات پنهان از فایل‌های خود محافظت کنید"
  description: "GroupDocs.Redaction for Java به شما کمک می‌کند تا محتویات خصوصی یا پنهان را پاک کنید تا اسناد به شکل ایمن‌تری به اشتراک گذاشته شوند. از بسیاری از فرمت‌های فایل پشتیبانی می‌کند."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "آنچه را که می‌توانید پاک کنید"
  features:
    # feature loop
    - title: "حذف متن حساس"
      content: "کلمات شخصی یا محرمانه‌ای را از فایل‌های خود بیابید و پاک کنید."

    # feature loop
    - title: "پوشاندن مناطق تصویر"
      content: "بخش‌هایی از تصاویر که نمی‌خواهید دیده شود را بپوشانید."

    # feature loop
    - title: "پاکسازی متادیتا"
      content: "فیلدهایی که می‌توانند جزئیات پنهان را افشا کنند، حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف فیلدهای متادیتا پنهان"
      content: |
        این نمونه نشان می‌دهد که چگونه اطلاعات جاسازی شده‌ای مانند نویسنده و عنوان را از یک سند POWERPOINT پاک کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل را با ویرایشگر باز کنید
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // فیلد نویسنده را حذف کنید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // فیلد عنوان را حذف کنید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // تنظیمات حذف را اعمال کنید
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // سند ویرایش‌شده را ذخیره کنید
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
    title: "پاکسازی متادیتا در POWERPOINT با Java"
    exclude: "POWERPOINT"
    description: "Java حذف داده‌های پنهان در فایل‌های POWERPOINT را آسان می‌کند. عالی برای حفظ اسناد قبل از به اشتراک‌گذاری."
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