
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متن خصوصی از XLSX با Java"
head_description: "با ویرایش متن و اطلاعات متا با استفاده از GroupDocs.Redaction for Java، داده‌های XLSX خود را ایمن نگه دارید. محافظت سریع و مؤثر."

############################# Header ############################
title: "رفع اشکال فایل‌های XLSX با استفاده از Java" 
description: "محتوای حساس را از فایل‌های XLSX با Java و GroupDocs.Redaction for Java حذف کنید. امنیت صفحه‌گسترده‌های خود را حفظ کنید."
subtitle: "چه کارهایی می‌توانید با GroupDocs.Redaction for Java انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "چرا GroupDocs.Redaction for Java را استفاده کنیم؟"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java ابزاری برای پاک‌سازی فایل‌های XLSX می‌دهد. با چند خط کد متن، متادیتا، تصاویر و بیشتر را ویرایش کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حذف داده‌ها از فایل‌های Xlsx"
    content: |
      از GroupDocs.Redaction for Java در هر برنامه Java برای حذف متن یا محتوای پنهان قبل از به اشتراک‌گذاری استفاده کنید.
      
      1. یک نمونه از Redactor ایجاد کرده و فایل خود را بارگذاری کنید.
      2. گزینه‌های ویرایش مورد نظر خود را انتخاب کنید.
      3. متن را برای جستجو و متن جایگزین انتخاب کنید.
      4. ویرایش را اعمال کرده و سند خود را ذخیره کنید.
   
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
        // چگونه یک صفحه‌گسترده XLSX را ویرایش کنیم

        // یک Redactor ایجاد کرده و فایل خود را بارگذاری کنید
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // تنظیمات ویرایش خود را انتخاب کنید
            // متن جستجو و متن جایگزین را وارد کنید
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // تغییرات را اعمال کرده و ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای مفید ویرایش"
  description: "GroupDocs.Redaction for Java به حذف محتوای خصوصی از انواع فایل‌ها کمک می‌کند. اسناد را بدون از دست دادن فرمت پاک کنید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "محافظت از محتوای هوشمند"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "داده‌های حساس را در سلول‌ها پیدا و به‌روزرسانی یا پنهان کنید."

    # feature loop
    - title: "پنهان‌سازی بصری"
      content: "نمودارها، تصاویر یا محدوده‌ها را با استفاده از پوشش‌های رنگی پنهان کنید."

    # feature loop
    - title: "حذف متادیتا"
      content: "اطلاعاتی از قبیل نام نویسنده، تاریخ ایجاد و سایر داده‌های پنهان را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف با استفاده از Regex"
      content: |
        مقدارها را مانند شماره حساب‌ها یا الگوها را با استفاده از regex پیدا و حذف کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایلی که می‌خواهید پردازش کنید را باز کنید
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // یک قانون regex ایمیل و جایگزین را اضافه کنید
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // قوانین ویرایش را اعمال کنید
              redactor.apply(redaction);

              // فایل به‌روز شده را ذخیره کنید
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
    title: "حذف محتوا در XLSX با Java"
    exclude: "XLSX"
    description: "محتوای XLSX را با استفاده از ویژگی‌های Java برای ویرایش و حذف محتوا پاک‌سازی کنید."
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