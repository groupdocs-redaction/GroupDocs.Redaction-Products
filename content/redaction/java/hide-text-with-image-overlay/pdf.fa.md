
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پوشاندن متن خصوصی در PDF با استفاده از لایه‌های Java"
head_description: "GroupDocs.Redaction for Java به شما این امکان را می‌دهد که اطلاعات حساس را در فایل‌های PDF با قرار دادن جعبه‌های رنگی پنهان کنید. داده‌ها را بدون تغییر در ظاهر فایل خود محافظت کنید."

############################# Header ############################
title: "پوشاندن متن در اسناد PDF با استفاده از لایه‌ها در Java" 
description: "کنترل کامل محتوای فایل‌های PDF را با Java به دست آورید. از رد کردن برای محافظت از جزئیات مالی، حقوقی یا شخصی استفاده کنید."
subtitle: "ویژگی‌های برجسته GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java چه چیزی ارائه می‌دهد"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java یک راه ساده برای پنهان کردن یا حذف محتوا از فایل‌های PDF می‌دهد. متن، تصاویر و متا دیتا را در انواع مختلف اسناد پوشش دهید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از اطلاعات محرمانه در فایل‌های Pdf"
    content: |
      GroupDocs.Redaction for Java راهی آسان برای توسعه‌دهندگان Java فراهم می‌کند تا با چند مرحله ساده محتوای خصوصی را پنهان کنند.
      
      1. یک Redactor راه‌اندازی کنید و فایل Pdf خود را بارگذاری کنید.
      2. تنظیمات رد کردن خود را پیکربندی کنید.
      3. انتخاب کنید چه چیزی را پیدا کنید و رنگ لایه خود را انتخاب کنید.
      4. رد کردن را اعمال کنید و سند خود را ذخیره کنید.
   
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
        // متن را در PDF با استفاده از لایه‌های رنگی پوشش دهید

        // مسیر فایل را به Redactor بدهید
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // تنظیمات رد کردن را تنظیم کنید
            // متن هدف و رنگ را تنظیم کنید
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // رد کردن را اعمال کرده و PDF را ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "کنترل آنچه در اسناد قابل مشاهده است"
  description: "GroupDocs.Redaction for Java به شما این امکان را می‌دهد که بخش‌هایی از فایل‌های خود را مسدود یا حذف کنید در حالی که همچنان آسان برای مشاهده و به اشتراک‌گذاری هستند."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ابزارهای قدرتمند رد کردن"
  features:
    # feature loop
    - title: "هدف‌گیری و پنهان کردن متن"
      content: "سند خود را جستجو کرده و کلمات یا عبارات خاص را برای محافظت از اطلاعات خصوصی پنهان کنید."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "لایه‌هایی اضافه کنید تا تصاویر را به طور کامل یا جزئی پنهان کنید."

    # feature loop
    - title: "حذف متا دیتا"
      content: "جزئیات پنهان سند را پاک کنید تا از افشای ناخواسته جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پوشاندن متن با استفاده از Regex"
      content: |
        این مثال از عبارات منظم برای پیدا کردن و پنهان کردن محتوای خاص استفاده می‌کند
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایلی که می‌خواهید پردازش کنید بارگذاری کنید
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // الگوی متن و رنگ لایه را تنظیم کنید
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // رد کردن را اعمال کنید
              redactor.apply(redaction);

              // تغییرات خود را ذخیره کنید
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "محافظت از فایل‌های PDF با Java"
    exclude: "PDF"
    description: "از Java برای پوشاندن یا پاک کردن محتوا در اسناد PDF استفاده کنید. راهی عالی برای محافظت از اطلاعات خصوصی."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 6
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 7
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"


---