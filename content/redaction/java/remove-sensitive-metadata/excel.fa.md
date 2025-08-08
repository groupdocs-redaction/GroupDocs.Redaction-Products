
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متادیتا از EXCEL با Java"
head_description: "با جابجایی متادیتا، اسناد EXCEL خود را با GroupDocs.Redaction for Java محافظت کنید. از افشای جزئیات خصوصی جلوگیری کنید."

############################# Header ############################
title: "پاکسازی متادیتا در فایل‌های EXCEL با استفاده از Java" 
description: "با Java، داده‌های حساس را از فایل‌های EXCEL خود حذف کنید. رویکردی هوشمند برای حفظ امنیت اسناد شما."
subtitle: "چرا GroupDocs.Redaction for Java را انتخاب کنید" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Java ابزاری برای کنترل محتوا در فایل‌های EXCEL می‌دهد. متن، متادیتا و تصاویر را به دلخواه حذف کنید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متادیتا را از فایل‌های Excel حذف کنیم"
    content: |
      در Java، GroupDocs.Redaction روش‌های ساده دیگری برای پاکسازی متادیتای اسناد دارد.
      
      1. یک Redactor ایجاد کرده و فایل Excel خود را بارگذاری کنید.
      2. قوانینی برای حذف فیلدهای داده‌های پنهان تعبیه کنید.
      3. فرآیند پاکسازی را اجرا کنید.
      4. مدرک پاکسازی‌شده را ذخیره کنید.
   
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
        // حذف متادیتای پنهان از EXCEL

        // ویرایشگر را شروع کنید و فایل را باز کنید
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // تنظیمات متادیتا را تعیین کنید
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // پاکسازی و ذخیره مدارک
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حذف محتوای حساس از فایل‌ها"
  description: "با GroupDocs.Redaction for Java، می‌توانید متادیتا، متون و پوشش را در بسیاری از فرمت‌های فایل حذف کنید. عالی برای کاربردهای قانونی، شخصی یا شرکتی."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ابزارهای حذف متادیتا و محتوا"
  features:
    # feature loop
    - title: "یافتن و حذف متن"
      content: "متن حساس را جستجو کنید و برای حفاظت از اطلاعات آن را حذف کنید."

    # feature loop
    - title: "پوشاندن محتوای تصویر"
      content: "بخش‌های تصویر خاص را با پوشش‌های اضافی پنهان کنید."

    # feature loop
    - title: "حذف متادیتا"
      content: "جزئیات داخلی پنهانی که ممکن است شامل اطلاعات خصوصی باشد را حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "تمرکز بر فیلدهای متادیتا"
      content: |
        این مثال نحوه حذف فیلدهای مانند نویسنده و عنوان از یک فایل EXCEL را توضیح می‌دهد.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل را در ویرایشگر بارگذاری کنید
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // فیلد نویسنده را انتخاب کنید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // فیلد عنوان را انتخاب کنید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // حذف متادیتا را اعمال کنید
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
    title: "پاکسازی متادیتا در EXCEL با Java"
    exclude: "EXCEL"
    description: "برای حذف داده‌های پنهان از فایل‌های EXCEL از ابزارهای Java استفاده کنید. اسناد پاک و امنیتی را به اشتراک بگذارید."
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