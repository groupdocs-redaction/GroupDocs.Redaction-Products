
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متن خصوصی از DOCX با Java"
head_description: "محتوای فایل‌های DOCX خود را با استفاده از GroupDocs.Redaction for Java ایمن کنید. ویرایش سریع و موثر برای متن، تصاویر و اطلاعات متا."

############################# Header ############################
title: "ویرایش یا حذف متن در اسناد DOCX با استفاده از Java" 
description: "محتوای شخصی یا تجاری را در فایل‌های DOCX خود با Java و GroupDocs.Redaction for Java محافظت کنید."
subtitle: "چه کارهایی می‌توانید با GroupDocs.Redaction for Java انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java چیست؟"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java کمک می‌کند تا فایل‌های DOCX را پاک‌سازی و ویرایش کنند. متن، تصاویر، نظرات و داده‌های پنهان را با دقت حذف کنید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه محتوای Docx را ویرایش کنیم"
    content: |
      از GroupDocs.Redaction for Java در پروژه‌های Java خود برای پاک‌سازی فایل‌ها قبل از به اشتراک‌گذاری استفاده کنید.
      
      1. یک Redactor ایجاد کرده و فایل را بارگذاری کنید.
      2. گزینه‌های ویرایش خود را انتخاب کنید.
      3. متن مورد نظر برای جستجو و متن جایگزین را وارد کنید.
      4. ویرایش‌ها را اعمال کرده و فایل را ذخیره کنید.
   
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
        // ویرایش محتوا در یک فایل DOCX

        // سند را با استفاده از Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // گزینه‌های ویرایش را تنظیم کنید
            // تعریف کنید که چه چیزی را باید پیدا و جایگزین کنید
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ویرایش را اعمال کرده و ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "گزینه‌های ویرایش"
  description: "GroupDocs.Redaction for Java به شما این امکان را می‌دهد که محتواهای حساس از انواع مختلف فایل‌ها را پاک‌سازی کنید. اسناد خود را ایمن نگه دارید بدون اینکه ساختار آن‌ها از بین برود."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ابزارهایی برای حذف محتوا"
  features:
    # feature loop
    - title: "جایگزینی متن"
      content: "محتوای خاص را پیدا کرده و آن را در سرتاسر سند جایگزین کنید."

    # feature loop
    - title: "پنهان‌سازی تصاویر یا بخش‌ها"
      content: "تصاویر حساس را با پوشش‌های رنگی پنهان کنید."

    # feature loop
    - title: "حذف داده‌های پنهان"
      content: "متادیتا مانند نام نویسنده، تاریخ‌ها یا خواص سند را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ویرایش مبتنی بر Regex"
      content: |
        از عبارات منظم برای تشخیص و حذف الگوهایی مانند شماره‌های تلفن یا ایمیل‌ها استفاده کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  سند را بارگذاری کنید
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // یک الگوی regex ایمیل و متن جایگزین را تنظیم کنید
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // ویرایش را اجرا کنید
              redactor.apply(redaction);

              // فایل پاک‌شده را ذخیره کنید
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
    title: "پاک‌سازی فایل‌های DOCX با Java"
    exclude: "DOCX"
    description: "محتوای حساس را در اسناد DOCX با استفاده از ابزارهای ارائه شده توسط Java ویرایش یا جایگزین کنید."
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