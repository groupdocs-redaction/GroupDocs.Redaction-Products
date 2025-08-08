
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پوشاندن متن در EXCEL با لایه‌ها و Java"
head_description: "محتوای حساسی را در فایل‌های EXCEL با استفاده از لایه‌های رنگی در GroupDocs.Redaction for Java محافظت کنید. طرح سند را دست نخورده نگه دارید."

############################# Header ############################
title: "رد کردن داده‌های EXCEL با لایه‌ها در Java" 
description: "برای پوشاندن اطلاعات حساس در صفحات گسترده EXCEL از کد Java استفاده کنید. روشی مؤثر برای حفظ داده‌های خصوصی."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "چرا GroupDocs.Redaction for Java را انتخاب کنید"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java برای توسعه‌دهندگان Java که می‌خواهند به سرعت محتوای EXCEL را پنهان یا تمیز کنند، طراحی شده است.

############################# Steps ############################
steps:
    enable: true
    title: "پنهان کردن اطلاعات در صفحات گسترده Excel"
    content: |
      GroupDocs.Redaction for Java به توسعه‌دهندگان Java کمک می‌کند تا با پنهان کردن اطلاعات خصوصی فقط با چند خط، فایل‌ها را محافظت کنند.
      
      1. یک Redactor راه‌اندازی کرده و صفحات گسترده خود را بارگذاری کنید.
      2. قوانین رد کردن را بر حسب نیاز تنظیم کنید.
      3. متن و رنگ لایه را انتخاب کنید.
      4. اعمال کرده و فایل را ذخیره کنید.
   
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
        // استفاده از لایه‌ها برای پنهان کردن متن در EXCEL

        // یک Redactor ایجاد کرده و فایل خود را بارگذاری کنید
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // قوانین رد کردن را انتخاب کنید
            // وارد کردن آنچه باید پنهان شود و انتخاب یک رنگ
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // رد کردن را اعمال کرده و فایل را ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای ضروری حفاظت از داده‌ها"
  description: "حذف یا پاک کردن اطلاعات حساس از صفحات گسترده خود بدون مختل کردن طراحی یا معنی استفاده از GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "طراحی شده برای تمیز کردن امن داده‌ها"
  features:
    # feature loop
    - title: "ویرایش یا پنهان کردن متن"
      content: "هر متنی که به حفاظت نیاز دارد را پیدا کرده و مسدود کنید."

    # feature loop
    - title: "پوشاندن تصاویر حساس"
      content: "لایه‌های رنگی بر روی نواحی نمودار یا تصاویر بزنید."

    # feature loop
    - title: "حذف متا دیتا"
      content: "تاریخچه اسناد، اسم نویسنده‌ها یا زمان‌بندی‌ها را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "رد کردن با regex"
      content: |
        از regex برای پیدا کردن و پنهان کردن متن به طور خودکار استفاده کنید
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  صفحه گسترده خود را باز کنید
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // الگو و جزئیات لایه را تنظیم کنید
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // رد کردن را اعمال کنید
              redactor.apply(redaction);

              // نسخه تمیز را ذخیره کنید
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
    title: "رد کردن برگه‌های EXCEL با Java"
    exclude: "EXCEL"
    description: "محتوای حساس را در EXCEL با استفاده از لایه‌ها و ابزارهای Java پنهان یا پاک کنید."
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