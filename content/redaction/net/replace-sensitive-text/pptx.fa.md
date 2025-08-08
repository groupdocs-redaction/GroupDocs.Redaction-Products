
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fa
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حذف متن خصوصی از PPTX با استفاده از C#"
head_description: "به سرعت محتوای خصوصی را در ارائه‌های PPTX خود با استفاده از GroupDocs.Redaction for .NET و C# پنهان کنید. پاکسازی سریع، راه‌اندازی ساده."

############################# Header ############################
title: "ویرایش یا پنهان کردن متن حساس در اسناد PPTX با .NET" 
description: "ارائه‌های خود را تمیز و خصوصی نگه دارید. از GroupDocs.Redaction for .NET و C# برای حذف هر چیزی که نمی‌خواهید به اشتراک گذاشته شود استفاده کنید."
subtitle: "آنچه می‌توانید با GroupDocs.Redaction for .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET چیست؟"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# آنچه را که برای حذف محتوای حساس از فایل‌های PPTX نیاز دارند، می‌دهد. با متن، تصاویر، نظرات و داده‌های متا کار می‌کند.

############################# Steps ############################
steps:
    enable: true
    title: "مراحل پاکسازی ارائه‌های Pptx"
    content: |
      از GroupDocs.Redaction for .NET در برنامه .NET خود برای حذف یا پوشاندن محتوای حساس فقط در چند مرحله استفاده کنید.
      
      1. یک Redactor جدید راه‌اندازی کرده و فایل Pptx خود را بارگذاری کنید.
      2. قواعد پاکسازی را که می‌خواهید اعمال کنید انتخاب کنید.
      3. متن مورد جستجو و آنچه را که می‌خواهید جایگزین کنید، تنظیم کنید.
      4. عملیات پاکسازی را اجرا کرده و فایل را ذخیره کنید.
   
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
        // پاکسازی یک ارائه PPTX

        // فایل را با Redactor باز کنید
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // تنظیمات پاکسازی را انتخاب کنید
            // متن جستجو و جایگزینی را انتخاب کنید
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // تغییرات را اعمال کنید و فایل به‌روز شده را ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های پاکسازی که می‌توانید استفاده کنید"
  description: "GroupDocs.Redaction for .NET به شما کمک می‌کند تا متن حساس، تصاویر و داده‌های مخفی را در انواع فایل‌ها پیدا و پنهان کنید. برای اشتراک‌گذاری فایل‌ها به‌طور ایمن عالی است."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "گزینه‌های پاکسازی موجود"
  features:
    # feature loop
    - title: "جایگزینی متن پنهان"
      content: "متن یا عبارات خصوصی را در هر جایی از فایل جستجو و جایگزین کنید. همچنین از regex پشتیبانی می‌شود."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "از بلوک‌ها برای پنهان کردن عکس‌ها یا مناطق مورد نظر استفاده کنید. شکل، اندازه و رنگ را کنترل کنید."

    # feature loop
    - title: "حذف جزئیات پنهان"
      content: "داده‌های متا مانند نام نویسندگان، آخرین تاریخ‌های ویرایش یا نظرات را تمیز کنید تا فایل شما تمیز شود."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پاکسازی با استفاده از الگوهای Regex"
      content: |
        داده‌هایی مانند آدرس‌های ایمیل یا شناسه‌ها را با استفاده از regex پیدا و پاکسازی کنید. عالی برای پاکسازی تکراری.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل خود را باز کنید
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // یک الگوی regex ایمیل بنویسید و جایگزین را تنظیم کنید
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // تنظیمات پاکسازی خود را اعمال کنید
              redactor.Apply(redaction);

              // نسخه پاکسازی شده را ذخیره کنید
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
    title: "خلاصه‌سازی فایل‌های PPTX با .NET"
    exclude: "PPTX"
    description: "فایل‌های PPTX خود را با پنهان کردن متن خصوصی با .NET امن‌تر کنید. سریع و قابل اعتماد."
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