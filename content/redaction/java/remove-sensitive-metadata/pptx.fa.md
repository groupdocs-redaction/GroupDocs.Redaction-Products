
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fa
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متادیتا از فایل‌های PPTX با Java"
head_description: "از GroupDocs.Redaction for Java برای حذف یا ویرایش متادیتاهای پنهان در فایل‌های PPTX خود استفاده کنید. محتوای خود را محافظت کرده و اسناد خود را تمیز نگه‌دارید."

############################# Header ############################
title: "پاکسازی متادیتا در PPTX با ابزارهای Java" 
description: "جزئیات شخصی ذخیره شده در متادیتا را با استفاده از Java پاک کنید. برای اسناد شخصی و تجاری عالی است."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "چیست GroupDocs.Redaction for Java؟"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Java ابزارهایی می‌دهد تا محتوای خصوصی را در فایل‌های PPTX حذف کنند. متادیتا را پاک کنید، تصاویر را پنهان کنید و متن را به‌راحتی پاک کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حذف متادیتا در فایل‌های Pptx"
    content: |
      با GroupDocs.Redaction، پروژه‌های Java شما می‌توانند به سادگی متادیتاهای پنهان را پاک کنند.
      
      1. یک Redactor راه‌اندازی کنید و فایل Pptx خود را بارگذاری کنید.
      2. فیلدهای متادیتا که می‌خواهید پاک کنید را انتخاب کنید.
      3. فرآیند پاکسازی را اجرا کنید.
      4. فایل را بدون متادیتا ذخیره کنید.
   
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
        // حذف متادیتا از PPTX

        // فایل را با Redactor باز کنید
        final Redactor redactor = new Redactor("input.pptx");
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
  title: "ابزارهای بیشتری برای حذف اطلاعات حساس"
  description: "GroupDocs.Redaction for Java به شما کمک می‌کند برای تمامی انواع فایل‌ها اطلاعات حساس را پاک کنید. اسناد را تمیز و آماده به اشتراک‌گذاری نگه‌دارید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های خصوصی ضد افشا"
  features:
    # feature loop
    - title: "حذف متن حساس"
      content: "نام‌ها، ایمیل‌ها و دیگر اطلاعات شخصی را از فایل‌های خود جستجو و حذف کنید."

    # feature loop
    - title: "پوشاندن بخشی از تصاویر"
      content: "روی بخش‌هایی از تصاویر که ممکن است اطلاعات خصوصی داشته باشند، پوشش اضافه کنید."

    # feature loop
    - title: "پاکسازی متادیتا"
      content: "جزئیات پشتی را که ممکن است اطلاعات خصوصی یا تجاری را افشا کند، حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "مثال حذف فیلدهای متادیتا"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توانید متادیتاهایی مانند نویسنده و عنوان را از یک فایل PPTX حذف کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل PPTX خود را باز کنید
          final Redactor redactor = new Redactor("source.pptx");
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

              // قوانین حذف متادیتا را اعمال کنید
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // فایل ویرایش شده را ذخیره کنید
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
    title: "حذف متادیتا از PPTX با Java"
    exclude: "PPTX"
    description: "Java راهی ساده برای حذف داده‌های پنهان در فایل‌های PPTX است. برای حفظ امنیت و اطمینان از حریم خصوصی قبل از به اشتراک‌گذاری عالی است."
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