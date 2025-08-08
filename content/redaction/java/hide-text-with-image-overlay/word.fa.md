
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fa
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "رد کردن متن در WORD با استفاده از لایه‌های Java"
head_description: "از GroupDocs.Redaction for Java برای پوشاندن متن حساس در فایل‌های WORD با جعبه‌های رنگی استفاده کنید در حالی که ساختار سند تغییر نمی‌کند."

############################# Header ############################
title: "رد کردن در فایل‌های WORD با Java" 
description: "جزئیات مهم را در اسناد WORD خود با استفاده از لایه‌های رنگی که توسط Java و GroupDocs.Redaction for Java تأمین شده‌اند، پنهان کنید."
subtitle: "کارکردهای GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "آشنایی با GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به کاربران Java کنترل کامل بر رد کردن WORD می‌دهد. هر چیزی که بخواهید—متن، تصاویر یا متا دیتا را پنهان کنید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از اطلاعات خصوصی در فرمت Word"
    content: |
      GroupDocs.Redaction for Java به توسعه‌دهندگان Java روش‌های سریع برای تمیز کردن فایل‌ها و تأمین محتوای آنها ارائه می‌دهد.
      
      1. یک Redactor راه‌اندازی کرده و فایل Word را بارگذاری کنید.
      2. گزینه‌های رد کردن خود را انتخاب کنید.
      3. الگوی متن و رنگ لایه را اضافه کنید.
      4. رد کردن را اجرا کرده و فایل را ذخیره کنید.
   
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
        // پوشاندن متن با لایه‌ها در WORD

        // از Redactor برای باز کردن سند استفاده کنید
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // تنظیمات رد کردن را تنظیم کنید
            // کلمات کلیدی را اضافه کرده و رنگ را انتخاب کنید
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // بسته به نیاز، فایل را ذخیره کرده و اعمال کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "قابلیت‌های بیشتری برای رد کردن"
  description: "از GroupDocs.Redaction for Java برای حذف محتوای قابل مشاهده و پنهان از فایل‌ها استفاده کنید در حالی که طراحی دست نخورده را حفظ می‌کنید."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "خروجی ساده و تمیز"
  features:
    # feature loop
    - title: "جایگزینی متن"
      content: "کلمات یا اصطلاحاتی را که نباید مشاهده شوند پوشش دهید."

    # feature loop
    - title: "پنهان کردن تصاویر"
      content: "از لایه‌های رنگی برای پوشاندن تصاویر یا بخش‌هایی از آنها استفاده کنید."

    # feature loop
    - title: "حذف متا دیتا"
      content: "جزئیاتی که در خصوصیات فایل پنهان‌ شده‌اند را از بین ببرید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "رد کردن با استفاده از regex"
      content: |
        یاد بگیرید چگونه از regex برای پنهان کردن محتوای خاص استفاده کنید
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  سند را برای رد کردن بارگذاری کنید
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // الگوی regex و رنگ لایه را تعریف کنید
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // رد کردن را اعمال کنید
              redactor.apply(redaction);

              // نسخه تمیز خود را ذخیره کنید
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
    title: "رد کردن محتوا در WORD با Java"
    exclude: "WORD"
    description: "مستندات WORD خود را خصوصی نگه‌دارید با پنهان یا حذف کردن داده‌های حساس با استفاده از Java."
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