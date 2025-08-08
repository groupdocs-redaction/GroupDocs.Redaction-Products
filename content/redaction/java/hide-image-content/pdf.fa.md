
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پوشش تصاویر در PDF با لایه‌های رنگی به کمک Java"
head_description: "با GroupDocs.Redaction for Java می‌توانید تصاویر خصوصی را در فایل‌های PDF با قرار دادن پوشش‌های رنگی پنهان کنید. اطلاعات حساس را در حالی که طراحی سند شما دست نخورده باقی می‌ماند، محافظت کنید."

############################# Header ############################
title: "پنهان‌سازی تصاویر محرمانه در فایل‌های PDF با پوشش‌ها به کمک Java" 
description: "اطلاعات شخصی و تجاری را در فایل‌های PDF با Java محافظت کنید. ابزارهای ما انجام مسدودسازی تصاویر را ساده و مؤثر می‌سازد."
subtitle: "ویژگی‌های GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ابزارهای مؤثری برای توسعه‌دهندگان Java ارائه می‌دهد تا محتوا را در فایل‌های PDF پنهان یا از بین ببرند. متن، تصاویر و متادیتا را پوشش دهید تا اسناد شما در فرمت‌های مختلف ایمن بمانند.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از اطلاعات تجاری در فایل‌های Pdf"
    content: |
      GroupDocs.Redaction for Java به برنامه‌های Java شما کمک می‌کند تا اسناد را ایمن کنند. تصاویر خصوصی را در چند قدم ساده مسدود کنید.
      
      1. یک Redactor را راه‌اندازی کرده و مسیر فایل Pdf خود را تنظیم کنید.
      2. تنظیمات مسدودسازی را برای بهترین نتایج انتخاب کنید.
      3. محل تصویر را انتخاب کرده و رنگ پوشش را انتخاب کنید.
      4. فایل ایمن شده را پردازش و ذخیره کنید.
   
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
        // پوشش تصاویر حساس در PDF

        // فایل را با Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // رنگ و ابعاد پوشش را تنظیم کنید
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // منطقه هدف را برای مسدودسازی انتخاب کنید
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
  title: "پنهان‌سازی محتوا در اسناد"
  description: "با GroupDocs.Redaction for Java می‌توانید اطلاعات حساس را در فرمت‌های مختلف پنهان یا حذف کنید. اطلاعات خصوصی را در حالی که فایل‌ها را خوانا و قابل توزیع نگه می‌دارد، محافظت کنید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "گزینه‌های مسدودسازی قدرتمند"
  features:
    # feature loop
    - title: "ویرایش متن در هرجا"
      content: "در تمام سند خود کلمات حساس را پیدا و جایگزین کنید تا محتواهای خصوصی را ایمن سازید."

    # feature loop
    - title: "پنهان‌سازی تصاویر"
      content: "به تصاویر یا بخشی از آنها پوشش اضافه کنید تا دید visuals حساس پنهان باشد."

    # feature loop
    - title: "حذف متادیتا"
      content: "متادیتاهای پنهان را حذف یا ویرایش کنید تا از نشت اطلاعات ناخواسته جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پوشاندن داده‌های تصویر با پوشش‌ها"
      content: |
        این مثال نحوه پنهان‌سازی تصاویر محرمانه در مستندات را با استفاده از پوشش‌ها نشان می‌دهد.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  مدرک را برای ویرایش باز کنید
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // اندازه، رنگ و موقعیت پوشش را مشخص کنید
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // منطقه تصویر برای مسدودسازی در صفحه اول را انتخاب کنید
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // پوشش را برای پوشاندن داده‌های حساس اضافه کنید
              redactor.apply(redaction);

              // مدرک به‌روز شده را ذخیره کنید
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
    title: "محافظت از فایل‌های PDF با مسدودسازی Java"
    exclude: "PDF"
    description: "از Java برای پنهان‌سازی یا حذف داده‌های حساس در فایل‌های PDF استفاده کنید. ایده‌آل برای ایمن‌سازی اسناد رسمی و خصوصی."
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