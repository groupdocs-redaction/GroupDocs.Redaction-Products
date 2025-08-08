
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متن خصوصی از EXCEL با Java"
head_description: "فایل‌های EXCEL خود را با حذف محتوای حساس با GroupDocs.Redaction for Java و Java ایمن نگه دارید. پاک‌سازی سریع و ساده."

############################# Header ############################
title: "ویرایش یا حذف متن در فایل‌های EXCEL با Java" 
description: "فایل‌های EXCEL خود را با GroupDocs.Redaction for Java و Java پاک‌سازی کنید. مناسب برای محافظت از داده‌های تجاری یا شخصی."
subtitle: "چه کارهایی می‌توانید با GroupDocs.Redaction for Java انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "با GroupDocs.Redaction for Java آشنا شوید"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java همه چیزهایی که برای پاک‌سازی فایل‌های EXCEL نیاز دارند ارائه می‌دهد. متن، تصاویر، متادیتا و یادداشت‌ها را با دقت ویرایش یا پنهان کنید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه محتوای Excel را ویرایش کنیم"
    content: |
      از GroupDocs.Redaction for Java در پروژه‌های Java خود برای حذف یا پنهان‌سازی متنی که نمی‌خواهید به اشتراک بگذارید استفاده کنید.
      
      1. یک Redactor ایجاد کرده و فایل Excel را بارگذاری کنید.
      2. تنظیمات ویرایش خود را انتخاب کنید.
      3. تعریف کنید که چه چیزی پیدا شود و چه چیزی جایگزین شود.
      4. ویرایش را اجرا کرده و فایل خود را ذخیره کنید.
   
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
        // چگونه متن را در یک فایل EXCEL ویرایش کنیم

        // فایل را با Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // قوانین ویرایش خود را تنظیم کنید
            // متن مورد نظر و جایگزین را وارد کنید
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ویرایش را اجرا کرده و فایل پاک‌شده را ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای بیشتر ویرایش"
  description: "GroupDocs.Redaction for Java به پاک‌سازی محتوای خصوصی در انواع فایل‌ها کمک می‌کند. قبل از به اشتراک‌گذاری از حریم خصوصی محافظت کنید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ویژگی‌های حذف متن، تصویر و متادیتا"
  features:
    # feature loop
    - title: "جایگزینی متن خصوصی"
      content: "کلمات یا اعداد همخوان را در سرتاسر فایل پیدا کرده و تغییر دهید. از الگوهای جستجو یا تطابق‌های دقیق استفاده کنید."

    # feature loop
    - title: "پنهان‌سازی بخش‌های تصاویر"
      content: "جعبه‌های پوشاننده اضافه کنید تا تصاویر یا سلول‌ها را پنهان کنید. رنگ‌ها، اندازه‌ها و موقعیت‌ها را انتخاب کنید."

    # feature loop
    - title: "حذف اطلاعات پس‌زمینه"
      content: "داده‌های پنهان مانند نویسنده، زمان‌های ایجاد و نظرات سند را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف الگوها با Regex"
      content: |
        از عبارات منظم برای پیدا کردن و پنهان‌سازی الگوهایی مانند آدرس‌های ایمیل یا شماره حساب‌ها استفاده کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایلی را که می‌خواهید پاک‌سازی کنید، باز کنید
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // یک الگوی regex ایمیل ایجاد کرده و متن جایگزین را تنظیم کنید
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // فرایند ویرایش را اجرا کنید
              redactor.apply(redaction);

              // نسخه به‌روز شده را ذخیره کنید
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
    title: "حذف محتوا در EXCEL با استفاده از Java"
    exclude: "EXCEL"
    description: "داده‌های شخصی را از فایل‌های EXCEL با استفاده از ویژگی‌های Java پاک‌سازی کنید. راهی هوشمند برای ایمن نگه‌داشتن صفحه‌گسترده‌های شما."
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