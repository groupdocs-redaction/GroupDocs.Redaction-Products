
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پنهان‌سازی تصاویر در EXCEL با لایه‌ها به کمک Java"
head_description: "از GroupDocs.Redaction for Java برای پوشش تصاویر حساس در فایل‌های EXCEL استفاده کنید. لایه‌های رنگی را اضافه کنید تا اطلاعات خصوصی را محافظت کنید و در عین حال طراحی سند دست نخورده باقی بماند."

############################# Header ############################
title: "پنهان‌سازی تصاویر حساس در فایل‌های EXCEL با لایه‌ها به کمک Java" 
description: "با استفاده از Java اطلاعات بصری خصوصی و تجاری را در فایل‌های EXCEL محافظت کنید. ابزارهای سریع و آسان برای حفاظت مؤثر از داده‌ها."
subtitle: "کشف ویژگی‌های GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java ابزارهایی برای پنهان‌سازی یا حذف محتوا در فایل‌های EXCEL ارائه می‌دهد. متن، تصاویر و متادیتا را برای محافظت از داده‌های حساس پوشش دهید.

############################# Steps ############################
steps:
    enable: true
    title: "ایمن‌سازی داده‌های خود در فایل‌های Excel"
    content: |
      GroupDocs.Redaction for Java به برنامه‌های Java شما کمک می‌کند تا محتوای حساس را درون اسناد به آسانی پنهان کنند.
      
      1. یک شی Redactor ایجاد کرده و فایل Excel خود را بارگذاری کنید.
      2. تنظیمات مسدودسازی را مطابق نیازهای خود تعیین کنید.
      3. منطقه تصویر را انتخاب کرده و رنگ پوشش را انتخاب کنید.
      4. مسدودسازی را اعمال کرده و سند خود را ذخیره کنید.
   
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
        // پنهان‌سازی محتوا در EXCEL

        // فایل را با Redactor باز کنید
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // اندازه و رنگ پوشش را تعیین کنید
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // منطقه‌ای که می‌خواهید پنهان شود را علامت‌گذاری کنید
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // تغییرات را اعمال کنید و فایل را ذخیره نمایید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان‌سازی یا حذف محتوا در اسناد"
  description: "GroupDocs.Redaction for Java به شما این امکان را می‌دهد که داده‌های حساس را تحت پوشش قرار دهید یا در چندین نوع فایل حذف کنید. اسناد خود را واضح و ایمن نگه دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ویژگی‌های پیشرفته مسدودسازی"
  features:
    # feature loop
    - title: "پیدا کردن و جایگزینی متن"
      content: "در اسناد خود به جستجوی متن خصوصی پرداخته و آن را به منظور حفظ امنیت داده‌ها جایگزین کنید."

    # feature loop
    - title: "پوشاندن نواحی تصویر"
      content: "اجزای تصاویر یا تمام تصاویر را با پوشش‌ها مخفی کنید."

    # feature loop
    - title: "پاک‌سازی متادیتا"
      content: "متادیتاهای پنهان را حذف کنید تا از اشتراک اضافی اطلاعات جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پوشاندن داده‌های تصویر با لایه‌ها"
      content: |
        این مثال نحوه پنهان‌سازی مناطق حساس تصویر در مستندات را با استفاده از پوشش‌ها نشان می‌دهد.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل را برای ویرایش بارگذاری کنید
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // ابعاد، رنگ و موقعیت پوشش را تعیین کنید
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // ناحیه مشخص تصویر را انتخاب کنید
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // پوشش را برای پنهان‌سازی داده‌ها اعمال کنید
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
    title: "محافظت از فایل‌های EXCEL با مسدود‌گذاری Java"
    exclude: "EXCEL"
    description: "از Java برای پنهان‌سازی یا حذف اطلاعات خصوصی در فایل‌های EXCEL استفاده کنید. روشی ساده برای اطمینان از حریم خصوصی مستندات."
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