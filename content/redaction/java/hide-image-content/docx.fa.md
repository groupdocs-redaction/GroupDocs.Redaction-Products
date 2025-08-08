
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پنهان‌سازی تصاویر در DOCX با لایه‌ها به کمک Java"
head_description: "با GroupDocs.Redaction for Java می‌توانید به سادگی تصاویر حساس را در فایل‌های DOCX با استفاده از پوشش‌های رنگی پنهان کنید. اطلاعات خصوصی را بدون تغییر طراحی سند خود محافظت کنید."

############################# Header ############################
title: "پنهان‌سازی تصاویر محرمانه در مستندات DOCX با پوشش‌ها به کمک Java" 
description: "داده‌های تجاری و شخصی را با استفاده از Java در فایل‌های DOCX محافظت نمایید. ابزارهای ما به شما کمک می‌کنند تا اطلاعات حساس را ایمن نگه دارید و اسناد خود را تمیز نگه دارید."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java ابزارهایی برای پنهان‌سازی یا حذف محتوا در فایل‌های DOCX می‌دهد. متن، تصاویر و متادیتا را در انواع مختلف مستندات ایمن نگه دارید.

############################# Steps ############################
steps:
    enable: true
    title: "ایمن‌سازی داده‌ها در مستندات Docx"
    content: |
      GroupDocs.Redaction for Java به برنامه‌های Java شما قدرت می‌دهد تا اسناد را مسدود کنید. محتوای خصوصی را به سرعت و به طور مؤثر پوشش دهید.
      
      1. یک Redactor ایجاد کنید و مسیر فایل مستند Docx خود را تنظیم کنید.
      2. تنظیمات مسدودسازی را مطابق با نیازهای خود تنظیم کنید.
      3. منطقه تصویر را که می‌خواهید پوشش دهید انتخاب کنید و رنگ پوشش را انتخاب کنید.
      4. فرایند مسدودسازی را اجرا کرده و فایل را ذخیره کنید.
   
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
        // پنهان‌سازی بخش‌های حساس تصویر در DOCX

        // مدرک را با استفاده از Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // رنگ و ابعاد پوشش را تنظیم کنید
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // منطقه‌ای که باید مسدود شود را علامت‌گذاری کنید
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // پوشش را اعمال کنید و فایل را ذخیره نمایید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان‌سازی محتواهای حساس در فایل‌ها"
  description: "با GroupDocs.Redaction for Java می‌توانید به راحتی محتوا را از چندین نوع فایل مسدود یا حذف کنید. اسناد خود را امن و خوانا نگه دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ویژگی‌های مسدودسازی برای اسناد"
  features:
    # feature loop
    - title: "ویرایش محتوای متن"
      content: "کلمات حساس را در اسناد خود پیدا و جایگزین کنید تا حریم خصوصی داده‌ها حفظ شود."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "پوشش‌های کامل یا انتخاب شده را به تصاویر اضافه کنید تا اطلاعات بصری محرمانه پنهان شود."

    # feature loop
    - title: "حذف متادیتا"
      content: "متادیتاهای پنهان را از اسناد حذف کنید تا از افشای داده‌ها جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پوشاندن تصاویر برای پنهان‌سازی داده‌های حساس"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توانید پوشش‌هایی را برای پوشاندن مناطق محرمانه تصویر در مستندات اعمال کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  مدرک را برای ویرایش باز کنید
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // اندازه، رنگ و موقعیت پوشش را مشخص کنید
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // یک منطقه هدف را در صفحه اول انتخاب کنید
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // پوشش را اعمال کنید تا تصویر را پوشش دهد
              redactor.apply(redaction);

              // مدرک مسدود شده را ذخیره کنید
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "مسدودسازی فایل‌های DOCX با Java"
    exclude: "DOCX"
    description: "از Java برای پنهان‌سازی یا حذف داده‌های خصوصی در فایل‌های DOCX استفاده کنید. عالی برای ایمن‌سازی اسناد تجاری و محرمانه."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت تصویر"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "فرمت‌های رایج تصویر"

        # format loop 6
        - name: "رداکت عکس"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "فرمت‌های عکاسی"

        # format loop 7
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 8
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 9
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"

        # format loop 10
        - name: "رداکت JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "تصویر JPEG"


---