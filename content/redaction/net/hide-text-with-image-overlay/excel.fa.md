
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
head_title: "پنهان‌سازی محتوا در EXCEL با استفاده از پوشش‌های رنگی و C#"
head_description: "متن را در اسناد EXCEL با استفاده از بلوک‌های رنگی محکم با GroupDocs.Redaction for .NET بپوشانید. یک روش ساده برای محافظت از محتواهای خصوصی."

############################# Header ############################
title: "پوشش ‌پوششی برای فایل‌های EXCEL در .NET" 
description: "با استفاده از کد C#، متن را پنهان کرده و داده‌ها را درون فایل‌های EXCEL خود محافظت کنید. یک راه‌حل تمیز برای ایمنی اسناد."
subtitle: "GroupDocs.Redaction for .NET شامل چه چیزی است" 

############################# About ############################
about:
    enable: true
    title: "چرا GroupDocs.Redaction for .NET را انتخاب کنیم"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET برای توسعه‌دهندگان C# طراحی شده است که می‌خواهند محتوا را در فایل‌های EXCEL حذف کرده یا پنهان کنند. از آن برای کار با متن، متا داده‌ها و تصاویر استفاده کنید.

############################# Steps ############################
steps:
    enable: true
    title: "پنهان‌سازی اطلاعات حساس در فرمت Excel"
    content: |
      GroupDocs.Redaction for .NET ابزاری ساده برای توسعه‌دهندگان .NET است که قبل از به اشتراک‌گذاری اسناد را تمیز کنند.
      
      1. یک Redactor را راه‌اندازی کرده و فایل Excel خود را بارگذاری کنید.
      2. تنظیمات پوشش را برای وظیفه خود تعیین کنید.
      3. یک کلمه کلیدی یا عبارت برای پوشاندن اضافه کرده و رنگ را انتخاب کنید.
      4. ابزار را اجرا کرده و تغییرات را ذخیره کنید.
   
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
        // استفاده از پوشش‌ها برای پنهان‌سازی متن در EXCEL

        // یک Redactor ایجاد کرده و فایل خود را بارگذاری کنید.
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // قوانین پوشش را انتخاب کنید.
            // آنچه را که باید پنهان شود وارد کرده و رنگ را انتخاب کنید.
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // پوشش را اعمال کرده و فایل را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های کلیدی برای محافظت از داده‌ها"
  description: "GroupDocs.Redaction for .NET به شما این امکان را می‌دهد که به‌صورت مستقل داده‌ها را پنهان یا حذف کنید، بدون از دست دادن ساختار یا معنی."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ساخته شده برای ایمنی اسناد"
  features:
    # feature loop
    - title: "تغییر محتوای متن"
      content: "کلمات انتخاب شده را در کل فایل جا به جا کنید یا پنهان کنید."

    # feature loop
    - title: "پوشش بصری"
      content: "عکس‌ها یا نواحی را با بلوک‌های ساده پنهان کنید."

    # feature loop
    - title: "پاک‌سازی متا داده‌ها"
      content: "اطلاعاتی پس‌زمینه از قبیل نام‌ها یا زمان‌ها که ممکن است افشا شوند."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان‌سازی متن با regex"
      content: |
        در اینجا نحوه استفاده از regex برای یافتن و پنهان‌سازی محتوا در یک فایل را خواهید یافت.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  مدرک را برای پردازش بارگذاری کنید.
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // الگو و تنظیمات پوشش را اضافه کنید.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // تغییرات را اعمال کنید.
              redactor.Apply(redaction);

              // مدرک تحت پوشش را ذخیره و بستن کنید.
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "پوشاندن فایل‌های EXCEL با .NET"
    exclude: "EXCEL"
    description: "محتواهای حساس در EXCEL را با استفاده از پوشش‌های مکعبی یا حذف آن‌ها با ویژگی‌های .NET امن نگه دارید."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 6
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 7
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"


---