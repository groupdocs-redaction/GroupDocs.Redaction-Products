
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "مسدود کردن متن در XLSX با لایه‌های Java"
head_description: "GroupDocs.Redaction for Java به شما امکان می‌دهد اطلاعات حساس را در فایل‌های XLSX با بلوک‌های رنگی بپوشانید. داده‌ها را در حالی که طرح دست نخورده باقی مانده است، پنهان کنید."

############################# Header ############################
title: "پنهان کردن داده‌ها در XLSX با استفاده از لایه‌ها در Java" 
description: "از Java و GroupDocs.Redaction for Java برای پوشاندن محتوای خصوصی در فایل‌های XLSX بدون تأثیر بر فرمت استفاده کنید."
subtitle: "ویژگی‌های اصلی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "چرا GroupDocs.Redaction for Java مؤثر است"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java این امکان را می‌دهد که فایل‌های XLSX را تأمین کنند. متن، تصاویر یا متا دیتا را به سرعت پنهان کنید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از اطلاعات در اسناد Xlsx"
    content: |
      با استفاده از کد ساده، اسناد خود را با GroupDocs.Redaction for Java در Java ایمن نگه دارید.
      
      1. یک Redactor با مسیر فایل ایجاد کنید.
      2. منطق رد کردن خود را پیکربندی کنید.
      3. کلمه کلیدی و رنگ لایه را انتخاب کنید.
      4. رد کردن و ذخیره‌سازی فایل.
   
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
        // پنهان‌سازی اطلاعات در XLSX با استفاده از بلوک‌ها

        // فایل را با Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // تنظیمات رد کردن را تنظیم کنید
            // متن و رنگ را برای بلوک اضافه کنید
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // سند به‌روز شده را ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های حریم خصوصی داخلی"
  description: "از GroupDocs.Redaction for Java برای مسدود کردن یا حذف محتوا در فایل‌های خود استفاده کنید در حالی که ساختار دست نخورده باقی می‌ماند."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ابزارهای حریم خصوصی آسان"
  features:
    # feature loop
    - title: "تغییر یا پنهان کردن متن"
      content: "به راحتی متن خاصی را ویرایش یا رد کنید."

    # feature loop
    - title: "پنهان کردن بخش‌های تصویر"
      content: "لایه‌هایی برای پنهان کردن عکس‌ها یا جزئیات گرافیکی اضافه کنید."

    # feature loop
    - title: "حذف اطلاعات پنهان"
      content: "متا دیتا مانند اطلاعات کاربر یا تاریخچه فایل را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "استفاده از Regex برای رد کردن محتوا"
      content: |
        به طور خودکار متن را با تطابق الگو پیدا و پنهان کنید
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  صفحه‌گستری را باز کنید
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // الگو و رنگ لایه را تعریف کنید
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // قوانین رد کردن را اعمال کنید
              redactor.apply(redaction);

              // نتیجه خود را صادر کنید
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
    title: "رد کردن داده‌های XLSX با Java"
    exclude: "XLSX"
    description: "از لایه‌ها یا حذف محتوا در فایل‌های XLSX برای حفظ داده‌های حساس استفاده کنید با Java."
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