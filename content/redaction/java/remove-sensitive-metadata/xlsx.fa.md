
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متادیتا از XLSX با استفاده از Java"
head_description: "GroupDocs.Redaction for Java به پاکسازی متادیتای پنهان از فایل‌های XLSX کمک می‌کند. اسناد خود را محفوظ و بدون جزئیات ناخواسته نگه‌دارید."

############################# Header ############################
title: "پاکسازی متادیتا از فایل‌های XLSX با Java" 
description: "از Java برای حذف جزئیات شخصی یا پنهان در اسناد XLSX خود استفاده کنید. ایده‌آل برای کار و استفاده شخصی."
subtitle: "ببینید که چه کاری می‌توانید با GroupDocs.Redaction for Java انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Java ابزارهایی می‌دهد تا بر روی محتوای XLSX کنترل داشته باشند. متن، متادیتا و تصاویر را به دلخواه حذف کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حذف متادیتا از فایل‌های Xlsx"
    content: |
      GroupDocs.Redaction به پروژه‌های Java شما کمک می‌کند تا به سرعت متادیتای حساس را پاک کنید.
      
      1. یک Redactor راه‌اندازی کنید و فایل Xlsx را باز کنید.
      2. فیلدهای متادیتا را که می‌خواهید حذف کنید، انتخاب کنید.
      3. حذف متادیتا را برای پاک کردن آنها از فایل اجرا کنید.
      4. نسخه پاک‌سازی‌شده را ذخیره کنید.
   
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
        // حذف متادیتای پنهان در فایل‌های XLSX

        // فایل را با استفاده از Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // فیلدهای متادیتا را برای حذف انتخاب کنید
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // حذف متادیتا را اعمال و فایل را ذخیره کنید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "فایل‌های خود را با پنهان‌سازی اطلاعات حساس تأمین کنید"
  description: "با GroupDocs.Redaction for Java، می‌توانید داده‌های شخصی را از انواع مختلف اسناد پاک کنید. روشی ساده برای حفظ امنیت فایل‌های شما."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های پاکسازی متادیتا و محتوا"
  features:
    # feature loop
    - title: "حذف متن"
      content: "کلمات یا عبارات حاوی داده‌های خصوصی را جستجو کنید و آنها را حذف کنید."

    # feature loop
    - title: "پوشاندن محتویات تصویر"
      content: "بخشی از تصاویر را با پوشش‌های اضافه پنهان کنید."

    # feature loop
    - title: "حذف متادیتا"
      content: "جزئیات پشتی که ممکن است شامل داده‌های خصوصی باشد را حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "مثال حذف متادیتا"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان متادیتا مانند نام نویسنده یا عنوان را از فایل XLSX حذف کرد.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  مدرک خود را باز کنید
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // فیلد نویسنده را برای حذف انتخاب کنید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // فیلد عنوان را برای حذف انتخاب کنید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // ابزار حذف متادیتا را اجرا کنید
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // نتیجه را ذخیره کنید
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
    title: "پاکسازی متادیتا در XLSX با Java"
    exclude: "XLSX"
    description: "از ابزارهای Java برای حذف داده‌های پنهان از فایل‌های XLSX استفاده کنید. اسناد پاک و امنیتی را به اشتراک بگذارید."
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