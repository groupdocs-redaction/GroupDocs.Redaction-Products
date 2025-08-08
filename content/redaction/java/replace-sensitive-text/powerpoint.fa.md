
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "حذف متن خصوصی از POWERPOINT با استفاده از Java"
head_description: "داده‌های حساس را در اسناد POWERPOINT خود با GroupDocs.Redaction for Java و Java ایمن نگه دارید. ویرایش متن سریع و آسان."

############################# Header ############################
title: "ویرایش یا پنهان‌سازی متن حساس در اسناد POWERPOINT با Java" 
description: "محتوای حساس را در فایل‌های POWERPOINT خود با Java و GroupDocs.Redaction for Java محافظت کنید. داده‌های شخصی یا تجاری شما محفوظ می‌ماند."
subtitle: "چه کارهایی می‌توانید با GroupDocs.Redaction for Java انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "با GroupDocs.Redaction for Java آشنا شوید"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java همه ابزارهایی که برای ویرایش محتوای POWERPOINT نیاز دارند می‌دهد. متن، تصاویر، یادداشت‌ها و متادیتا را به دقت ویرایش یا پنهان کنید.

############################# Steps ############################
steps:
    enable: true
    title: "مراحل پاک‌سازی محتوای Powerpoint"
    content: |
      از GroupDocs.Redaction for Java برای حذف یا پنهان‌سازی محتوای خصوصی در برنامه‌های Java خود استفاده کنید. ویرایش ساده و سریع.
      
      1. یک Redactor را راه‌اندازی کرده و فایل Powerpoint خود را بارگذاری کنید.
      2. تنظیمات ویرایش مورد نیاز خود را تعیین کنید.
      3. متن جستجو و متن جایگزین را مشخص کنید.
      4. ویرایش را اجرا کرده و فایل را ذخیره کنید.
   
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
        // چگونه متن را در یک فایل POWERPOINT پاک‌سازی کنیم

        // فایل خود را با استفاده از سازنده Redactor بارگذاری کنید
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // تنظیمات ویرایش خود را انتخاب کنید
            // انتخاب کنید که چه چیزی باید جستجو و چه چیزی باید جایگزین شود
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ویرایش‌ها را اعمال کرده و فایل جدید POWERPOINT را ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای اضافی ویرایش"
  description: "GroupDocs.Redaction for Java به حذف یا پنهان‌سازی محتوای حساس در چندین فرمت فایل کمک می‌کند. اسناد را تمیز و ایمن برای به اشتراک‌گذاری نگه دارید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ابزارها و گزینه‌های حذف"
  features:
    # feature loop
    - title: "جایگزینی متن محرمانه"
      content: "متن همخوان را در هر قسمتی از فایل پیدا کرده و جایگزین کنید. از regex و گزینه‌های جستجوی هوشمند پشتیبانی می‌شود."

    # feature loop
    - title: "پنهان‌سازی تصاویر حساس"
      content: "تصاویر یا مناطق خاص را با پوشش‌های رنگی بپوشانید. تنظیمات صفحه، رنگ‌ها و غیره را تنظیم کنید."

    # feature loop
    - title: "پاک‌سازی متادیتای پنهان"
      content: "داده‌های پنهان مانند نویسندگی، تاریخ و زمان ایجاد، یا نظرات را پاک کنید تا حریم خصوصی حفظ شود."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ویرایش مبتنی بر الگو با Regex"
      content: |
        از عبارات منظم برای جستجو و حذف الگوهای حساس متنی مانند ایمیل‌ها یا شناسه‌ها استفاده کنید.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  سند مورد نظر خود را برای پاک‌سازی باز کنید
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // یک الگوی regex ایمیل و متن جایگزین را تعریف کنید
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // قوانین ویرایش را اعمال کنید
              redactor.apply(redaction);

              // فایل نهایی ویرایش‌شده را ذخیره کنید
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
    title: "حذف محتوا در POWERPOINT با استفاده از Java"
    exclude: "POWERPOINT"
    description: "از داده‌های رسمی و شخصی با ویرایش متن در فایل‌های POWERPOINT با ابزارهای Java محافظت کنید. راهی مطمئن برای ایمن نگه‌داشتن اسناد."
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