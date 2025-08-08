
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متن خصوصی از WORD با استفاده از Java"
head_description: "فایل‌های WORD خود را با ویرایش داده‌های حساس با GroupDocs.Redaction for Java و Java ایمن نگه دارید. پاک‌سازی سریع و ساده."

############################# Header ############################
title: "ویرایش یا حذف متن در فایل‌های WORD با Java" 
description: "محتوای مهم را در فایل‌های WORD خود با GroupDocs.Redaction for Java و Java محافظت کنید. با اطمینان داده‌های تجاری، قانونی یا شخصی را ویرایش کنید."
subtitle: "چه کارهایی می‌توانید با GroupDocs.Redaction for Java انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java چیست؟"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java راهی مطمئن برای ویرایش فایل‌های WORD می‌دهد. با چند خط کد متن، تصاویر، نظرات و جزئیات پنهان را پاک‌سازی کنید.

############################# Steps ############################
steps:
    enable: true
    title: "مراحل حذف Word اسناد"
    content: |
      از GroupDocs.Redaction for Java در پروژه‌های Java خود برای پاک‌سازی فایل‌ها قبل از به اشتراک‌گذاری استفاده کنید.
      
      1. یک Redactor ایجاد کرده و سند Word را بارگذاری کنید.
      2. تنظیمات ویرایش مورد نظر خود را تعیین کنید.
      3. متن مورد نظر برای جستجو و جایگزینی را انتخاب کنید.
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
        // حذف یک سند WORD

        // فایل را با استفاده از Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // قوانین ویرایش خود را انتخاب کنید
            // متن جستجو و متن جایگزین را وارد کنید
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ویرایش را اجرا کرده و فایل جدید را ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های بیشتر ویرایش"
  description: "GroupDocs.Redaction for Java می‌تواند به شما کمک کند تا اطلاعات حساس را از انواع فایل‌ها پاک‌سازی کنید. متن، تصاویر و متادیتا را به سرعت حذف کنید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "حذف متن، تصاویر و متادیتا"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "محتوای خاص را پیدا کنید و آن را در سرتاسر فایل جایگزین یا حذف کنید. از regex پشتیبانی می‌شود."

    # feature loop
    - title: "پنهان‌سازی بخش‌های صفحات"
      content: "از پوشش‌ها برای پنهان‌سازی عکس‌ها یا بخش‌هایی از سند استفاده کنید."

    # feature loop
    - title: "پاک‌سازی متادیتا"
      content: "اطلاعات اضافی مانند نویسنده، زمان‌های ثبت یا ویرایش‌های پیگیری شده را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ویرایش با الگوهای Regex"
      content: |
        برای جستجوی متن با استفاده از عبارات منظم برای پنهان‌سازی محتوا مانند شماره‌های تلفن، تاریخ‌ها یا شناسه‌ها استفاده کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  سند خود را بارگذاری کنید
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // یک الگوی regex ایمیل و مقدار جایگزین را تنظیم کنید
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // ویرایش را اعمال کنید
              redactor.apply(redaction);

              // سند به‌روز شده را ذخیره کنید
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
    title: "حذف محتوا در WORD با Java"
    exclude: "WORD"
    description: "محتوای شخصی و خصوصی را از اسناد WORD با استفاده از Java حذف کنید. راهی ساده برای حفظ ایمنی فایل‌های خود."
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