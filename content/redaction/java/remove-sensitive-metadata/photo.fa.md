
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fa
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متادیتا در PHOTO با Java"
head_description: "GroupDocs.Redaction for Java به شما کمک می‌کند تا اطلاعات پنهان را از فایل‌های PHOTO حذف کنید که می‌تواند جزئیات شخصی یا کسب و کار را افشا کند."

############################# Header ############################
title: "حذف متادیتا از PHOTO با Java" 
description: "فایل‌های PHOTO خود را با حذف متادیتای پنهان با استفاده از ابزارهای Java محفوظ نگه‌دارید."
subtitle: "نکات برجسته GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Java این امکان را می‌دهد تا محتوای حساس را در فایل‌های PHOTO پنهان کنند، از جمله متن، بخش‌های تصویر و متادیتا.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متادیتا را از فایل‌های Photo حذف کنیم"
    content: |
      در برنامه Java خود، از GroupDocs.Redaction برای حذف متادیتا از اسناد استفاده کنید.
      
      1. یک Redactor راه‌اندازی کنید و فایل Photo را باز کنید.
      2. قوانینی برای حذف فیلدهای پنهان تعیین کنید.
      3. حذف متادیتا را برای پاکسازی فایل اجرا کنید.
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
        // پاکسازی متادیتا در PHOTO

        // فایل را با Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // فیلدهای متادیتا را برای حذف انتخاب کنید
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // تغییرات را اعمال کنید و فایل را ذخیره کنید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حذف اطلاعات خصوصی از اسناد"
  description: "GroupDocs.Redaction for Java به شما کمک می‌کند با حذف داده‌های حساس، متن‌ها، محتویات تصاویر و متادیتا، اسناد خود را پاکسازی کنید. عالی برای حفظ حریم خصوصی و امنیت."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های مفید پاکسازی"
  features:
    # feature loop
    - title: "پاکسازی متن"
      content: "کلمات یا اعداد را پیدا کنید و اطلاعاتی که نباید با دیگران به اشتراک گذاشته شود را حذف کنید."

    # feature loop
    - title: "ویرایش تصویر"
      content: "بخشی از تصاویر را پوشش دهید تا محتوای حساسی که نباید نمایش داده شود را پنهان کنید."

    # feature loop
    - title: "حذف متادیتا"
      content: "جزئیات پنهان فایل‌هایی که ممکن است حاوی اطلاعات خصوصی باشد را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف فیلدهای متادیتای پنهان"
      content: |
        این مثال نشان می‌دهد که چگونه باید فیلدهای مانند نویسنده و عنوان را از یک سند PHOTO حذف کرد.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل PHOTO را در ویرایشگر بارگذاری کنید
          final Redactor redactor = new Redactor("source.jpeg");
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

              // تراکنش را اجرا کنید
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
    title: "از Java برای حذف متادیتای PHOTO استفاده کنید"
    exclude: "PHOTO"
    description: "با حذف متادیتا با استفاده از ابزارهای Java، اسناد PHOTO خود را محافظت کنید."
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