
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حذف متن خصوصی از EXCEL با استفاده از C#"
head_description: "فایل‌های EXCEL خود را با استفاده از GroupDocs.Redaction for .NET و C# خصوصی نگه دارید. روش سریع و آسان برای پاکسازی متن."

############################# Header ############################
title: "یافتن و حذف متن حساس در فایل‌های EXCEL با .NET" 
description: "از C# و GroupDocs.Redaction for .NET برای محافظت از فایل‌های شخصی یا کاری خود استفاده کنید. اطلاعات خصوصی شما مخفی می‌ماند."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET چیست؟"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به کاربران C# ابزارهایی برای تمیز کردن اسناد EXCEL می‌دهد. متن، تصاویر، یادداشت‌ها و داده‌های پس‌زمینه را پاکسازی کنید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه محتوای Excel را پاکسازی کنیم"
    content: |
      با GroupDocs.Redaction for .NET، آسان است که محتواهای خصوصی را در برنامه‌های .NET پیدا و جایگزین کنید.
      
      1. یک Redactor ایجاد کرده و فایل Excel خود را باز کنید.
      2. تنظیمات پاکسازی خود را انتخاب کنید.
      3. به آن بگویید چه چیزی را جستجو کرده و متن جایگزین را مشخص کنید.
      4. فرآیند پاکسازی را شروع کرده و فایل به‌روز شده خود را ذخیره کنید.
   
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
        // مراحل پاکسازی محتوای یک سند EXCEL

        // فایل را با Redactor باز کنید
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // تنظیمات پاکسازی خود را تنظیم کنید
            // انتخاب کنید چه چیزی را جستجو و با چه چیزی جایگزین کنید
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // عملیات پاکسازی را اجرا کرده و فایل جدید EXCEL خود را ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای بیشتر پاکسازی"
  description: "GroupDocs.Redaction for .NET راه‌های قدرتمندی برای پنهان کردن یا حذف اطلاعات خصوصی در انواع فایل‌ها به شما می‌دهد. مناسب برای اشتراک‌گذاری ایمن."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ابزارها و تنظیمات پاکسازی موجود"
  features:
    # feature loop
    - title: "متن خصوصی را جایگزین کنید"
      content: "جستجو و جایگزینی مطابقت‌های دقیق را با گزینه‌های هوشمند متنی، از جمله پشتیبانی از regex انجام دهید."

    # feature loop
    - title: "تصاویر خصوصی را پنهان کنید"
      content: "تمام تصاویر یا فقط قسمت‌هایی از یک صفحه را بپوشانید. می‌توانید رنگ و اندازه پوشش را تنظیم کنید."

    # feature loop
    - title: "حذف متاداده‌های پنهان"
      content: "داده‌هایی مانند نام نویسنده، تاریخ‌های ویرایش و نظرات را برای محافظت از هویت خود حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "برای پاکسازی هوشمند از Regex استفاده کنید"
      content: |
        الگوهای داده‌ای مانند ایمیل یا شناسه‌ها را با عبارات با قاعده پیدا و حذف کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل را که می‌خواهید پاکسازی کنید باز کنید
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // یک الگوی REGEX ایمیل تعیین کرده و متن جایگزین را انتخاب کنید
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // عملیات پاکسازی را انجام دهید
              redactor.Apply(redaction);

              // فایل نهایی پاکسازی‌شده خود را ذخیره کنید
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
    title: "چگونه EXCEL را با .NET پاکسازی کنیم"
    exclude: "EXCEL"
    description: "از .NET برای پاکسازی فایل‌های EXCEL استفاده کنید. محتوای خود را خصوصی و ایمن از نشت نگه دارید."
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