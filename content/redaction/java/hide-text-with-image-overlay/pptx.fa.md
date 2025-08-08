
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fa
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پنهان کردن متن در ارائه‌های PPTX با لایه‌های Java"
head_description: "از GroupDocs.Redaction for Java برای مسدود کردن محتوای حساس در فایل‌های PPTX با لایه‌های رنگی استفاده کنید. اسلایدها را سالم نگه‌دارید در حالی که اطلاعات کلیدی را پنهان می‌کنید."

############################# Header ############################
title: "پوشاندن متن در ارائه‌های PPTX با استفاده از Java" 
description: "به راحتی جزئیات شخصی یا تجاری را با استفاده از Java و GroupDocs.Redaction for Java در اسلایدهای PPTX خود محفوظ کنید."
subtitle: "ویژگی‌های GroupDocs.Redaction for Java را کشف کنید" 

############################# About ############################
about:
    enable: true
    title: "چه کاری GroupDocs.Redaction for Java انجام می‌دهد"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java اجازه می‌دهد تا متن، تصاویر یا متا دیتا را در ارائه‌های PPTX در چند مرحله پنهان یا حذف کنند.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از محتویات خصوصی در اسلایدهای Pptx"
    content: |
      GroupDocs.Redaction for Java حفاظت از محتویات را برای توسعه‌دهندگان Java ساده می‌کند.
      
      1. یک Redactor با مسیر ارائه خود راه‌اندازی کنید.
      2. انتخاب کنید که رد کردن چگونه باید عمل کند.
      3. الگوی متن و رنگ لایه را اضافه کنید.
      4. اسلاید را رد کنید و ذخیره کنید.
   
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
        // استفاده از لایه‌ها برای مسدود کردن متن در PPTX

        // Redactor را با ارائه خود تنظیم کنید
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // تنظیمات رد کردن خود را انتخاب کنید
            // متن و رنگ لایه را تنظیم کنید
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // رد کردن را اجرا کرده و مجموعه اسلایدها را ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای قدرتمند رد کردن"
  description: "با GroupDocs.Redaction for Java، محتوای حساس را در ارائه‌های خود مسدود یا حذف کنید بدون اینکه طرح یا فرمت را تغییر دهید."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ویژگی‌هایی که در سراسر اسلایدها مناسب هستند"
  features:
    # feature loop
    - title: "پنهان یا جایگزینی متن"
      content: "حفاظت از نام‌ها، اصطلاحات یا یادداشت‌هایی که نباید دیده شوند."

    # feature loop
    - title: "پوشاندن نواحی بصری"
      content: "لایه‌هایی به عکس‌ها یا بخش‌های گرافیکی ارائه‌ها اضافه کنید."

    # feature loop
    - title: "پاک کردن متا دیتا"
      content: "اطلاعات پنهان که ممکن است نویسندگی یا تاریخ ویرایش را افشا کند، پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "رد کردن متن با Regex"
      content: |
        از عبارات منظم برای پیدا کردن و پوشاندن کلمات حساس استفاده کنید
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  فایل ارائه را باز کنید
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // الگوی جستجو و رنگ لایه را تنظیم کنید
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // قوانین رد کردن را اجرا کنید
              redactor.apply(redaction);

              // نسخه نهایی را ذخیره کنید
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
    title: "محافظت از اسلایدهای PPTX با ابزارهای Java"
    exclude: "PPTX"
    description: "محتوای حساس را پوشش دهید یا به طور کامل از ارائه‌های PPTX با ویژگی‌های رد کردن Java حذف کنید."
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