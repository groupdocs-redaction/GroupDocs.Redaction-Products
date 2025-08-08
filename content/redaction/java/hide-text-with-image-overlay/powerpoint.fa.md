
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fa
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "محافظت از متن در POWERPOINT با لایه‌های Java"
head_description: "با GroupDocs.Redaction for Java، می‌توانید متن خصوصی را در اسلایدهای POWERPOINT با استفاده از جعبه‌های لایه مسدود کرده و بدون تغییر در استفاده، آن را انجام دهید."

############################# Header ############################
title: "پنهان کردن متن در POWERPOINT با استفاده از لایه‌ها و Java" 
description: "از Java و GroupDocs.Redaction for Java برای تأمین امنیت اسلایدهای POWERPOINT خود با پوشاندن محتوا حساس استفاده کنید."
subtitle: "درون GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java کمک می‌کند تا اسلایدهای POWERPOINT را با مسدود کردن یا حذف محتوا حساس مانند متن، متا دیتا یا تصاویر تمیز کنند.

############################# Steps ############################
steps:
    enable: true
    title: "پاک کردن ارائه‌های Powerpoint قبل از اشتراک‌گذاری"
    content: |
      از GroupDocs.Redaction for Java در برنامه‌های Java برای پنهان‌سازی یا حذف بخش‌های حساس اسلایدهای خود استفاده کنید.
      
      1. یک Redactor جدید با مسیر مجموعه اسلایدهای خود ایجاد کنید.
      2. تنظیمات رد کردن خود را تعریف کنید.
      3. الگوی متن و رنگ لایه را تنظیم کنید.
      4. اجرا کرده و فایل را ذخیره کنید.
   
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
        // مناطق متنی را در POWERPOINT با لایه‌ها مسدود کنید

        // فایل را با Redactor باز کنید
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // تنظیمات رد کردن را تنظیم کنید
            // متن را وارد کرده و رنگ لایه را انتخاب کنید
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // رد کردن و ذخیره فایل به‌روز شده را انجام دهید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "رد کردن ساده برای اسلایدهای حساس"
  description: "GroupDocs.Redaction for Java به راحتی می‌تواند محتوای اسلایدها را مسدود یا حذف کند، بدون توجه به مورد استفاده."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ابزارهای رد کردن که سازگار می‌شوند"
  features:
    # feature loop
    - title: "پیدا کرده و متن را جایگزین کنید"
      content: "محافظت از عبارات حساس یا برچسب‌ها در هر اسلاید."

    # feature loop
    - title: "پوشاندن بخش‌های بصری"
      content: "لایه‌هایی بر روی نواحی اسلاید یا تصاویر منتخب افزوده کنید."

    # feature loop
    - title: "حذف محتویات پنهان"
      content: "اطلاعات متا یا یادداشت‌های ویرایشی اسلایدها را قبل از اشتراک‌گذاری پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "رد کردن متن با regex"
      content: |
        یاد بگیرید چگونه متن را با استفاده از تطابق الگو شناسایی و رد کنید
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  مجموعه اسلایدها را بارگذاری کنید
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // قوانین regex خود را اعمال کنید
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // رد کردن را اجرا کنید
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
    title: "محافظت از اسلایدهای POWERPOINT با Java"
    exclude: "POWERPOINT"
    description: "از ابزارهای رد کردن و پاکسازی Java برای حفظ حریم خصوصی اسلایدهای POWERPOINT خود استفاده کنید."
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