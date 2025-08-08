
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متن خصوصی از PPTX با استفاده از Java"
head_description: "جزئیات حساس را در ارائه‌های PPTX خود با استفاده از GroupDocs.Redaction for Java و Java محافظت کنید. حذف متن ساده با نتایج سریع."

############################# Header ############################
title: "پاک‌سازی متن در فایل‌های PPTX با Java" 
description: "از GroupDocs.Redaction for Java و Java برای پنهان‌سازی یا حذف محتوای اسلایدهای PPTX خود استفاده کنید. مناسب برای استفاده‌های تجاری، قانونی یا شخصی."
subtitle: "چه کارهایی می‌توانید با GroupDocs.Redaction for Java انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "با GroupDocs.Redaction for Java آشنا شوید"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java راهی مطمئن برای ویرایش یا پنهان‌سازی محتوا در فایل‌های PPTX می‌دهد. با متن، تصاویر، متادیتا و نظرات به طور کامل کنترل داشته باشید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه محتوای Pptx را ویرایش کنیم"
    content: |
      با GroupDocs.Redaction for Java، می‌توانید ارائه‌های Java خود را در چند قدم سریع پاک‌سازی کنید.
      
      1. یک Redactor ایجاد کرده و فایل Pptx خود را بارگذاری کنید.
      2. تنظیمات ویرایش مطابق نیاز خود را انتخاب کنید.
      3. عبارت جستجو و محتوای جایگزین را تعیین کنید.
      4. تغییرات را اعمال کرده و فایل به‌روز شده را ذخیره کنید.
   
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
        // حذف متن در یک ارائه PPTX

        // سند خود را با استفاده از Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // تنظیمات ویرایش را تعیین کنید
            // متن را برای جستجو و آنچه باید جایگزین شود انتخاب کنید
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ویرایش را اعمال کرده و فایل را ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای اضافی ویرایش"
  description: "GroupDocs.Redaction for Java پنهان‌سازی یا حذف محتوای حساس در انواع فایل‌های مختلف را ساده می‌کند. از داده‌های خود قبل از به اشتراک‌گذاری به خوبی محافظت کنید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "گزینه‌های حذف متن، تصویر و متادیتا"
  features:
    # feature loop
    - title: "جایگزینی متن در هر جا"
      content: "عبارات یا کلمات را در اسلایدها جستجو و جایگزین کنید. کار با متن دقیق یا الگوها."

    # feature loop
    - title: "پنهان‌سازی محتوای بصری"
      content: "بخش‌هایی از یک اسلاید یا تصویر را با استفاده از جعبه‌های پوششی در رنگ انتخابی خود بپوشانید."

    # feature loop
    - title: "حذف متادیتا"
      content: "اطلاعات پنهان مانند نویسنده، تاریخ ایجاد یا یادداشت‌ها را که ممکن است شامل اطلاعات خصوصی باشند، حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف مبتنی بر الگو با Regex"
      content: |
        از عبارات منظم برای پیدا کردن و حذف الگوهایی مانند ایمیل‌ها، شماره‌های تلفن یا کدها استفاده کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایلی را که می‌خواهید پاک‌سازی کنید باز کنید
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // یک الگوی regex ایمیل و جایگزین را تعیین کنید
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // قواعد ویرایش را اعمال کنید
              redactor.apply(redaction);

              // نسخه پاک‌شده را ذخیره کنید
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
    title: "حذف محتوا در PPTX با استفاده از Java"
    exclude: "PPTX"
    description: "جزئیات شخصی یا محرمانه را از اسناد PPTX با استفاده از Java حذف کنید. راهی مطمئن برای حفظ امنیت فایل‌های خود."
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