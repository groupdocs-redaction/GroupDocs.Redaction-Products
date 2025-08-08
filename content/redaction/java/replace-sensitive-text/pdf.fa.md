
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متن حساس از PDF با استفاده از Java"
head_description: "از GroupDocs.Redaction for Java برای پیدا کردن و حذف داده‌های خصوصی از فایل‌های PDF خود استفاده کنید. ویرایش متن ساده، سریع و قابل اعتماد."

############################# Header ############################
title: "حذف داده‌های حساس از فایل‌های PDF با Java" 
description: "فایل‌های PDF را با استفاده از Java و GroupDocs.Redaction for Java پاک‌سازی کنید. متن‌های شخصی، قانونی یا تجاری را ویرایش کنید."
subtitle: "چه کارهایی می‌توانید با GroupDocs.Redaction for Java انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java یک روش ساده برای پاک‌سازی فایل‌های PDF می‌دهد. متن، تصاویر، نظرات و داده‌های پنهان را حذف یا جایگزین کنید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متن را در فایل‌های Pdf ویرایش کنیم"
    content: |
      با GroupDocs.Redaction for Java، توسعه‌دهندگان Java می‌توانند محتوای حساس را در چند مرحله حذف کنند.
      
      1. یک Redactor ایجاد کنید و فایل Pdf خود را بارگذاری کنید.
      2. تنظیمات ویرایش را انتخاب کنید.
      3. متن مورد نظر برای جستجو و متن جایگزین را وارد کنید.
      4. ویرایش را اعمال کرده و فایل را ذخیره کنید.
   
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
        // چگونه یک فایل PDF را پاک‌سازی کنیم

        // یک Redactor ایجاد کرده و سند را بارگذاری کنید
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // قوانین ویرایش خود را تنظیم کنید
            // متن‌هایی که باید حذف شوند و آنچه باید جایگزین شود را اضافه کنید
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ویرایش را اعمال کرده و فایل جدید را ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های بیشتر ویرایش"
  description: "GroupDocs.Redaction for Java اطلاعات حساس را در قالب‌های مختلف حذف می‌کند. متن، تصاویر و اطلاعات متا را ویرایش کنید در حالی که فایل‌ها قابل خواندن باقی می‌مانند."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ابزارهایی برای ویرایش متن و تصویر"
  features:
    # feature loop
    - title: "پیدا کردن و جایگزینی متن"
      content: "هر کلمه یا عبارتی را جستجو کرده و جایگزین کنید. کار با متن ساده یا regex."

    # feature loop
    - title: "پنهان‌سازی محتوای تصویر"
      content: "عکس‌ها یا قسمت‌هایی از تصاویر را با استفاده از پوشش‌های رنگی پنهان کنید."

    # feature loop
    - title: "پاک‌سازی اطلاعات متا"
      content: "نام نویسنده، تاریخ‌ها یا جزئیات پنهان دیگر را قبل از به اشتراک‌گذاری حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف متن با استفاده از Regex"
      content: |
        از regex برای پیدا کردن و پنهان‌سازی الگوهایی مانند ایمیل‌ها، شناسه‌ها یا فرمت‌های دلخواه استفاده کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  سندی که می‌خواهید ویرایش کنید را باز کنید
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // یک الگوی regex ایمیل و متن جایگزین را اضافه کنید
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // ویرایش را بر روی محتوای مطابقت اعمال کنید
              redactor.apply(redaction);

              // نسخه ویرایش‌شده را ذخیره کنید
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "حذف فایل‌های PDF با Java"
    exclude: "PDF"
    description: "با ابزارهای Java، اطلاعات شخصی یا تجاری را با ویرایش محتوای PDF محافظت کنید."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 6
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 7
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"


---