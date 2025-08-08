
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حذف متن خصوصی از DOCX با استفاده از C#"
head_description: "به سرعت محتویات خصوصی را در فایل‌های DOCX خود با GroupDocs.Redaction for .NET و C# محافظت کنید. سریع و کارآمد."

############################# Header ############################
title: "جستجو و پنهان کردن متن حساس در اسناد DOCX با .NET" 
description: "چه برای استفاده شخصی و چه برای کسب‌وکار، GroupDocs.Redaction for .NET و C# به حفظ اطلاعات خصوصی کمک می‌کنند."
subtitle: "چگونه GroupDocs.Redaction for .NET به شما کمک می‌کند" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET چیست؟"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزارهایی را می‌دهد تا محتویات حساس را در فایل‌های DOCX پیدا و پاکسازی کنند. با متن، تصاویر، یادداشت‌ها و بیشتر کار می‌کند.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه محتوای فایل‌های Docx را پاکسازی کنیم"
    content: |
      این مراحل سریع را در پروژه .NET خود دنبال کنید تا متن خصوصی را با GroupDocs.Redaction for .NET پاکسازی کنید.
      
      1. یک Redactor جدید ایجاد کنید و فایل Docx را بارگذاری کنید.
      2. تنظیمات پاکسازی مورد نیاز خود را انتخاب کنید.
      3. متن مورد نظر برای جستجو و متن جایگزین را وارد کنید.
      4. عملیات پاکسازی را اجرا کرده و فایل خود را ذخیره کنید.
   
    code:
      platform: "net"
      copy_title: "کپی"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "نمونه رداکت‌ها"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "برای کپی کردن کلیک کنید"
        copy_done: "کپی شد"
      links:
        #  loop
        - title: "نمونه‌های بیشتر"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "مستندات"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // پاکسازی متن در فایل DOCX

        // با استفاده از Redactor فایل خود را بارگذاری کنید
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // گزینه‌های پاکسازی که مناسب نیاز شماست را انتخاب کنید
            // انتخاب کنید که چه چیزی را جستجو و با چه چیزی جایگزین کنید
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // ابزار را اجرا کرده و فایل پاکسازی‌شده خود را ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های بیشتر پاکسازی"
  description: "با استفاده از GroupDocs.Redaction for .NET، به راحتی می‌توانید محتوای پنهان یا قابل مشاهده را از انواع فایل‌ها حذف کنید. عالی برای اشتراک‌گذاری با امنیت."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "نمای کلی از ابزارهای پاکسازی"
  features:
    # feature loop
    - title: "جایگزینی متن خصوصی"
      content: "در هر نقطه‌ای از فایل جستجو کنید و متن خاصی را جایگزین کنید. با متن عادی یا الگوها کار می‌کند."

    # feature loop
    - title: "پوشاندن تصاویر حساس"
      content: "قسمت‌های یک تصویر یا صفحات کامل را با پوشش‌ها پنهان کنید. اندازه، رنگ و موقعیت را کنترل کنید."

    # feature loop
    - title: "پاکسازی داده‌های مخفی"
      content: "اطلاعات متا مانند نام‌ها، نظرات، یا زمان‌ها را حذف کنید تا مطمئن شوید که چیزی باقی نمی‌ماند."
      
  code_samples_ext:
    # code sample ext loop
    - title: "جستجو و پاکسازی الگوها با Regex"
      content: |
        از regex برای جستجو در داده‌های خاصی مانند آدرس‌های ایمیل یا شماره‌های شناسایی استفاده کنید و به‌طور خودکار آن‌ها را پاکسازی کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل را که باید پاکسازی کنید باز کنید
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // یک قانون regex برای ایمیل ایجاد کنید و یک رشته جایگزین انتخاب کنید
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // پاکسازی را با استفاده از تنظیمات خود اجرا کنید
              redactor.Apply(redaction);

              // فایل به‌روز‌شده را ذخیره کنید
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "کپی"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "مستندات"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "آماده شروع هستید؟"
  description: "ویژگی‌های GroupDocs.Redaction را رایگان امتحان کنید یا درخواست مجوز دهید"
  items:
    #  loop
    - title: "دانلود Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "مجوزگیری"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "داده‌ها را در DOCX با استفاده از .NET پاکسازی کنید"
    exclude: "DOCX"
    description: "محتویات شخصی یا رسمی را با پنهان کردن آن در اسناد DOCX با استفاده از .NET محافظت کنید. ساده و مؤثر."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 6
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 7
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"


---