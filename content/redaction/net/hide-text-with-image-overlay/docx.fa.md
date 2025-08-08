
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
head_title: "پوشاندن متن حساس در DOCX با استفاده از پوشش‌ها و C#"
head_description: "با استفاده از GroupDocs.Redaction for .NET، متن‌های خصوصی را در فایل‌های DOCX با پوشش‌های مربع ساده محافظت کنید. شکل سند خود را تغییر ندهید و داده‌های خود را پنهان نگه دارید."

############################# Header ############################
title: "پوشاندن متن در DOCX با استفاده از پوشش‌ها در .NET" 
description: "با استفاده از کد C#، محتویات حساس را در اسناد DOCX خود پنهان کنید. مناسب برای حفاظت از اسناد حقوقی، تجاری یا شخصی."
subtitle: "ویژگی‌های GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "چگونه GroupDocs.Redaction for .NET کمک می‌کند"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# کمک می‌کند تا محتوای خصوصی را در فایل‌های DOCX پنهان یا حذف کنند. از آن برای پوشاندن متن، تصاویر و متا داده‌ها در فرمت‌های مختلف فایل استفاده کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حذف داده‌های خصوصی از اسناد Docx"
    content: |
      GroupDocs.Redaction for .NET به توسعه‌دهندگان .NET کمک می‌کند اسناد را تنها با چند خط کد پاکسازی کنند.
      
      1. یک Redactor ایجاد کرده و مسیر فایل خود را ارائه دهید.
      2. مشخص کنید که پوشش چگونه باید انجام شود.
      3. متنی که باید پنهان شود را وارد کرده و رنگ پوشش را انتخاب کنید.
      4. فایل را پوشش دهید و آن را ذخیره کنید.
   
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
        // پوشاندن متن در DOCX با استفاده از بلوک‌های پوشش

        // یک Redactor ایجاد کرده و فایل را بارگذاری کنید.
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // ترجیحات پوشش خود را تنظیم کنید.
            // متن را وارد کرده و رنگ بلوک را تنظیم کنید.
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // پوشش دهید و سند به‌روز شده را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "شیوه‌های بیشتر برای پاکسازی اسناد"
  description: "با GroupDocs.Redaction for .NET، انواع مختلف فایل‌ها را پوشش دهید تا محتوای شما امن و حرفه‌ای باقی بماند."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "پوشش هوشمند داخلی"
  features:
    # feature loop
    - title: "ویرایش یا حذف متن"
      content: "عبارات خاص را پیدا کنید و آنها را پنهان یا جایگزین کنید."

    # feature loop
    - title: "پوشاندن نواحی تصویر"
      content: "نقاط حساس در تصاویر یا صفحات اسکن شده را پوشش دهید."

    # feature loop
    - title: "پاکسازی متا داده‌ها"
      content: "اطلاعات نامرئی را که ممکن است اطلاعات کاربر یا سیستم را افشا کند، حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "عبارات منظم برای پوشش محتوا"
      content: |
        ببیند که چگونه عبارات منظم می‌توانند کلمات حساس را پیدا کنند و بپوشانند.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل هدف را باز کنید.
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // الگو و رنگ را تنظیم کنید.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // قوانین پوشش را اعمال کنید.
              redactor.Apply(redaction);

              // سند تحت پوشش را صادر کنید.
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
    title: "پوشاندن محتوا در DOCX با .NET"
    exclude: "DOCX"
    description: "با پوشاندن یا حذف کامل داده‌ها در فایل‌های DOCX به کمک نوارهای پوشش یا ابزارهای .NET، داده‌های حساس را محافظت کنید."
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