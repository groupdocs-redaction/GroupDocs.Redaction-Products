
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "پنهان کردن متن در DOCX با استفاده از لایه‌های Java"
head_description: "GroupDocs.Redaction for Java برای مسدود کردن متن خصوصی در فایل‌های DOCX قابل استفاده است. با پنهان کردن داده‌های حساس، طرح اصالت را تغییر ندهید."

############################# Header ############################
title: "محافظت از متن DOCX با لایه‌ها در Java" 
description: "به سرعت جزئیات شخصی، حقوقی یا تجاری را در فایل‌های DOCX با Java و GroupDocs.Redaction for Java پنهان کنید."
subtitle: "ابزارهای کلیدی در GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "چه چیزی GroupDocs.Redaction for Java است"
    link: "/redaction/java/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java به توسعه‌دهندگان Java ابزارهایی می‌دهد تا فایل‌های DOCX را تمیز کنند. نام‌ها، شماره‌ها یا یادداشت‌ها را به راحتی رد کنید.

############################# Steps ############################
steps:
    enable: true
    title: "رد کردن محتوای حساس در Docx"
    content: |
      به راحتی اسناد را در پروژه Java خود با استفاده از GroupDocs.Redaction for Java تمیز کنید.
      
      1. Redactor را با فایل خود راه‌اندازی کنید.
      2. انتخاب کنید که رد کردن چگونه باید انجام شود.
      3. متن مورد نظر برای پنهان کردن و رنگ لایه را انتخاب کنید.
      4. رد کردن را اعمال کرده و فایل را ذخیره کنید.
   
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
        // پوشاندن متن با لایه‌ها در DOCX

        // یک Redactor ایجاد کرده و سند خود را بارگذاری کنید
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // گزینه‌های رد کردن را انتخاب کنید
            // متن و رنگ را انتخاب کنید
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // نسخه رد شده را ذخیره کنید
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای رد کردن برای استفاده روزمره"
  description: "GroupDocs.Redaction for Java گزینه‌های ساده‌ای برای پنهان کردن جزئیات حساس در اسناد فراهم می‌کند در حالی که آن‌ها را قابل استفاده نگه می‌دارد."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "گزینه‌های راحت رد کردن"
  features:
    # feature loop
    - title: "پیدا کردن و تغییر متن"
      content: "کلمات را در عرض چند ثانیه پنهان یا جایگزین کنید."

    # feature loop
    - title: "مسدود کردن بخش‌هایی از تصاویر"
      content: "بخش‌های تصاویر یا محتوای اسکن شده را پنهان کنید."

    # feature loop
    - title: "حذف اطلاعات پس‌زمینه"
      content: "متای پنهان مانند نویسندگی یا تاریخ‌ها را حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پیدا کردن متن با Regex و پنهان کردن آن"
      content: |
        از تطابق الگو برای پنهان کردن عبارات کلیدی به صورت خودکار استفاده کنید
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  سند مورد نظر برای رد کردن را باز کنید
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // الگوی regex و سبک لایه را تنظیم کنید
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // قوانین رد کردن را اعمال کنید
              redactor.apply(redaction);

              // سند تمیز شده خود را ذخیره کنید
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
    title: "رد کردن فایل‌های DOCX با استفاده از Java"
    exclude: "DOCX"
    description: "محتوای حساس در DOCX را با پنهان یا حذف کردن آن از طریق ابزارهای Java محافظت کنید."
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