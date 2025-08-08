
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متادیتا از DOCX با Java"
head_description: "از GroupDocs.Redaction for Java برای پاکسازی متادیتای پنهان در فایل‌های DOCX خود استفاده کنید. اطمینان حاصل کنید که اسناد شما اطلاعات خصوصی را افشا نکنند."

############################# Header ############################
title: "پاکسازی متادیتا در اسناد DOCX با استفاده از Java" 
description: "متادیتای ناخواسته را از فایل‌های DOCX خود با استفاده از Java حذف کنید. فایل‌های خود را برای به اشتراک‌گذاری یا ذخیره‌ایمن و محفوظ نگه‌دارید."
subtitle: "ابزارهای کلیدی در GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "چیست GroupDocs.Redaction for Java؟"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Java کمک می‌کند تا محتوای خصوصی را از فایل‌های DOCX حذف کنند. به سادگی متن، تصاویر و متادیتا را حذف کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حذف اطلاعات پنهان از فایل‌های Docx"
    content: |
      GroupDocs.Redaction امکان حذف متادیتا را در برنامه‌های Java شما فراهم می‌کند.
      
      1. یک Redactor را راه‌اندازی کنید و فایل Docx را بارگذاری کنید.
      2. ابزار را برای حذف فیلدهای خاص متادیتا تنظیم کنید.
      3. حذف متادیتا را برای پاک کردن اطلاعات پنهان اعمال کنید.
      4. فایل به‌روزرسانی‌شده را ذخیره کنید.
   
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
        // حذف متادیتا از فایل‌های DOCX

        // فایل را با Redactor باز کنید
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // انتخاب کنید که کدام متادیتا را حذف کنید
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
  title: "محافظت از داده‌های حساس در اسناد"
  description: "GroupDocs.Redaction for Java به شما امکان می‌دهد محتوای خصوصی را از همه انواع فایل‌ها پنهان کنید. اطمینان حاصل کنید که هیچ داده پنهان به اشتراک گذاشته نمی‌شود."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ابزارهای حذف متادیتا، متن و تصویر"
  features:
    # feature loop
    - title: "پاکسازی متن"
      content: "متن حساس را در کل سند خود پیدا و حذف کنید."

    # feature loop
    - title: "پوشش‌دهی تصاویر"
      content: "بخشی از تصاویر را برای پنهان‌سازی جزئیات خصوصی بپوشانید."

    # feature loop
    - title: "پاکسازی متادیتا"
      content: "متادیتای پشتی زمینه را که ممکن است اطلاعات پنهان را افشا کند، حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "چگونه متادیتا را حذف کنیم"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان خواص پنهان مانند نویسنده و عنوان را از فایل DOCX حذف کرد.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  مدرک DOCX خود را باز کنید
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // فیلد نویسنده را برای پاکسازی انتخاب کنید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // فیلد عنوان را برای پاکسازی انتخاب کنید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // عملیات حذف متادیتا را اجرا کنید
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
    title: "پاکسازی متادیتا از DOCX با Java"
    exclude: "DOCX"
    description: "از Java برای حذف متادیتای پنهان از اسناد DOCX استفاده کنید. عالی برای حریم خصوصی و حفاظت از داده‌ها."
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