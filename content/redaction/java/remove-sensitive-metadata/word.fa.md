
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fa
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متادیتا از WORD با استفاده از Java"
head_description: "با GroupDocs.Redaction for Java، می‌توانید به‌سرعت متادیتای پنهان را از فایل‌های WORD حذف کنید. اسناد خود را امن و خصوصی نگه‌دارید."

############################# Header ############################
title: "پاکسازی متادیتای پنهان در فایل‌های WORD با Java" 
description: "فایل‌های WORD خود را با حذف اطلاعات خصوصی با استفاده از ابزارهای Java محافظت کنید. برای کار و استفاده شخصی عالی است."
subtitle: "چگونه GroupDocs.Redaction for Java به شما کمک می‌کند" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Java همه چیزی که نیاز دارند تا داده‌های خصوصی را از فایل‌های WORD حذف کنند، ارائه می‌دهد. متادیتا، متن و تصاویر را با سهولت پاک کنید.

############################# Steps ############################
steps:
    enable: true
    title: "پاکسازی متادیتا در فایل‌های Word"
    content: |
      از GroupDocs.Redaction برای پاکسازی متادیتا از اسناد در برنامه‌های Java خود استفاده کنید.
      
      1. یک شی Redactor را شروع کنید و فایل Word خود را بارگذاری کنید.
      2. قوانینی برای حذف فیلدهای متادیتای پنهان تعریف کنید.
      3. حذف متادیتا را برای پاک کردن اطلاعات انجام دهید.
      4. فایل به‌روز شده را ذخیره کنید.
   
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
        // حذف متادیتای پنهان از WORD

        // فایل را با Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // تنظیمات حذف متادیتا را پیکربندی کنید
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // حذف را اجرا کنید و ذخیره کنید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای بیشتری برای حذف اطلاعات خصوصی"
  description: "از GroupDocs.Redaction for Java برای پاکسازی متن، تصاویر و متادیتا از بسیاری از فرمت‌های فایل استفاده کنید. اسناد خود را بدون افشای اطلاعات حساسی به اشتراک بگذارید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های متادیتا و محتوای قابل حذف"
  features:
    # feature loop
    - title: "حذف متن خصوصی"
      content: "جستجو برای محتواگرای حساس به فایل‌ها و حذف یا تغییر آن به‌عنوان نیاز."

    # feature loop
    - title: "پوشاندن مناطق تصویر"
      content: "بخشی از تصاویر را که ممکن است حاوی جزئیات خصوصی باشند، پنهان کنید."

    # feature loop
    - title: "حذف فیلدهای متادیتا"
      content: "حذف برچسب‌های مخفی مانند نویسنده، عنوان و غیره برای اطمینان از حریم خصوصی."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پاکسازی فیلدهای متادیتا در اسناد"
      content: |
        این نمونه توضیح می‌دهد که چگونه متادیتاهایی از قبیل نویسنده و عنوان را در یک فایل WORD حذف کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل را برای پردازش بارگذاری کنید
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // فیلد نویسنده را درون کلیدها بردارید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // فیلد عنوان را پاک کنید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // عملیات حذف را انجام دهید
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // فایل پاک شده را ذخیره کنید
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
    title: "حذف متادیتا در WORD با Java"
    exclude: "WORD"
    description: "Java به شما اجازه می‌دهد تا متادیتای پنهان را از فایل‌های WORD پاک کنید. راهی ساده‌تر برای محافظت از اسناد شما."
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