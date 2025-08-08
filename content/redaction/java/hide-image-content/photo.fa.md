
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fa
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پنهان‌سازی تصاویر در PHOTO با لایه‌ها به کمک Java"
head_description: "از GroupDocs.Redaction for Java برای پوشاندن نواحی حساس تصویر در فایل‌های PHOTO با پوشش‌ها استفاده کنید. از محتوای خصوصی خود در حالی که طراحی فایل غیرقابل تغییر باقی می‌ماند محافظت کنید."

############################# Header ############################
title: "پنهان‌سازی محتویات تصویر در فایل‌های PHOTO با لایه‌ها به کمک Java" 
description: "اطلاعات تصاویر شخصی و تجاری را در فایل‌های PHOTO با Java ایمن کنید. ابزارهای ساده‌ای برای محافظت سریع و مؤثر."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java ابزارهای مطمئنی برای پنهان‌سازی یا حذف محتوا در فایل‌های PHOTO ارائه می‌دهد. با پوشش‌دهی متن، تصاویر و متادیتای حساس اسناد را محافظت کنید.

############################# Steps ############################
steps:
    enable: true
    title: "پنهان‌سازی محتوا در فایل‌های Photo با لایه‌ها"
    content: |
      GroupDocs.Redaction for Java این کار را برای شما به آسانی در برنامه‌های Java می‌کند.
      
      1. یک Redactor را راه‌اندازی کرده و فایل Photo خود را بارگذاری کنید.
      2. تنظیمات مسدودسازی را متناسب با نیازهای خود تنظیم کنید.
      3. قسمت‌های تصویر را علامت‌گذاری کرده و رنگ پوشش‌ها را انتخاب کنید.
      4. فایل مسدود شده را پردازش و ذخیره کنید.
   
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
        // پوشش مناطق تصویر در PHOTO

        // فایل را با Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // اندازه پوشش و رنگ را مشخص کنید
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // نواحی‌ای را که می‌خواهید پنهان کنید علامت‌گذاری کنید
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // پوشش را اعمال کرده و نتیجه را ذخیره کنید
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان‌سازی محتوای حساس با سهولت"
  description: "GroupDocs.Redaction for Java به شما این امکان را می‌دهد که داده‌های خصوصی را در انواع فایل‌های مستند پنهان یا حذف کنید. مطمئن شوید که فایل‌های شما تمیز و آماده برای اشتراک‌گذاری باقی می‌مانند."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "کنترل کامل بر روی مسدودسازی"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "متن حساس را در مستندات پیدا کرده و برای محافظت از اطلاعات آن را جایگزین کنید."

    # feature loop
    - title: "پوشش مناطق تصویر"
      content: "از پوشش‌ها استفاده کنید تا تمام تصاویر یا مناطقی خاص از تصاویر را بپوشانید."

    # feature loop
    - title: "حذف متادیتا"
      content: "حذف یا ویرایش متادیتا برای جلوگیری از افشای اطلاعات خصوصی."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان‌سازی داده‌های تصویر با لایه‌ها"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توانید با استفاده از پوشش‌ها محتوای تصویر را در یک سند بپوشانید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  مدرک را برای ویرایش بارگذاری کنید
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // اندازه، رنگ و موقعیت پوشش را مشخص کنید
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // منطقه عکس در صفحه اول را هدف قرار دهید
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // پوشش را برای پنهان‌سازی محتوا اعمال کنید
              redactor.apply(redaction);

              // فایل ویرایش شده را ذخیره کنید
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
    title: "محافظت از فایل‌های PHOTO با مسدود‌سازی Java"
    exclude: "PHOTO"
    description: "از Java برای پنهان‌سازی یا حذف داده‌های حساس در فایل‌های PHOTO استفاده کنید. روشی معتبر برای حفاظت از اسناد شما."
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