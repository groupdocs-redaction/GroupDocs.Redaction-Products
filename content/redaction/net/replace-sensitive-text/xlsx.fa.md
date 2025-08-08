
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حذف متن خصوصی از XLSX با استفاده از C#"
head_description: "به سرعت محتوای خصوصی را از فایل‌های XLSX خود با استفاده از GroupDocs.Redaction for .NET و C# پاکسازی کنید. سریع و کارآمد."

############################# Header ############################
title: "ویرایش یا پنهان کردن متن حساس در اسناد XLSX با .NET" 
description: "با GroupDocs.Redaction for .NET و C#، می‌توانید اطلاعات شخصی یا کاری را از فایل‌های XLSX خود حذف کرده و آن‌ها را برای اشتراک‌گذاری امن کنید."
subtitle: "آنچه می‌توانید با GroupDocs.Redaction for .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET چیست؟"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# اجازه می‌دهد تا اطلاعات حساسی را در فایل‌های XLSX جستجو و حذف کنند. با متن، تصاویر، یادداشت‌ها و داده‌های فایل کار می‌کند.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متن را در فایل‌های Xlsx پاکسازی کنید"
    content: |
      از GroupDocs.Redaction for .NET در پروژه .NET خود استفاده کنید تا اطلاعات حساسی را فقط در چند مرحله پنهان یا حذف کنید.
      
      1. یک Redactor بسازید و فایل Xlsx را بارگذاری کنید.
      2. گزینه‌های پاکسازی مناسب خود را انتخاب کنید.
      3. متن مورد جستجو و متن جایگزین را وارد کنید.
      4. فرآیند پاکسازی را اجرا کرده و فایل به‌روز شده خود را ذخیره کنید.
   
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
        // پاکسازی متن از یک فایل XLSX

        // از Redactor برای باز کردن فایل استفاده کنید
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // گزینه‌های پاکسازی خود را انتخاب کنید
            // متن جستجو و متن جایگزین را تنظیم کنید
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // پاکسازی‌ها را اعمال کرده و فایل را ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای بیشتر برای پاکسازی"
  description: "GroupDocs.Redaction for .NET به شما کمک می‌کند تا انواع محتوا—متن، تصاویر، یا داده‌های متا—را پاکسازی کنید تا فایل‌هایتان آماده اشتراک‌گذاری ایمن باشند."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "گزینه‌های پاکسازی نمایش داده شده"
  features:
    # feature loop
    - title: "جایگزینی متن حساس"
      content: "در فایل جستجو کرده و هر چیز محرمانه‌ای را جایگزین کنید. از متن ساده و الگوها پشتیبانی می‌کند."

    # feature loop
    - title: "پوشاندن نواحی تصاویر"
      content: "از پوشش‌ها برای پنهان کردن داده‌های بصری استفاده کنید. رنگ، اندازه ناحیه و چینش صفحه را انتخاب کنید."

    # feature loop
    - title: "حذف داده‌های اضافی"
      content: "اطلاعات متا مانند نام نویسنده، زمان‌های ویرایش یا یادداشت‌های داخلی را حذف کنید تا از نشت جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پاکسازی با استفاده از قواعد Regex"
      content: |
        از regex برای یافتن و پاکسازی الگوهایی مانند شماره‌های تلفن، ایمیل‌ها یا جزئیات شخصی دیگر استفاده کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل را برای شروع باز کنید
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // یک قانون regex ایمیل بنویسید و یک جایگزین انتخاب کنید
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // پاکسازی را بر اساس الگوی خود اجرا کنید
              redactor.Apply(redaction);

              // فایل پاکسازی شده را ذخیره کنید
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
    title: "داده‌ها را در XLSX با استفاده از .NET پنهان کنید"
    exclude: "XLSX"
    description: "با استفاده از ابزارهای .NET، اسناد XLSX خود را پاکسازی کنید. داده‌های خود را خصوصی نگه دارید."
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