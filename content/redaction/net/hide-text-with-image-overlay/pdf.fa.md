
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پوشاندن متن حساس در PDF با استفاده از پوشش‌ها در C#"
head_description: "با GroupDocs.Redaction for .NET، می‌توانید متن‌های حساس را در فایل‌های PDF با قرار دادن پوشش‌های رنگی مربع پنهان کنید. اطلاعات خصوصی را بدون تغییر در شکل اصلی نگه دارید."

############################# Header ############################
title: "پوشاندن متن حساس در اسناد PDF با استفاده از پوشش‌ها در .NET" 
description: "کنترل محتوای فایل PDF را با استفاده از C# در دست بگیرید. از پوشاندن اطلاعات قانونی، مالی و شخصی محافظت کنید."
subtitle: "ویژگی‌های GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزارهایی برای پنهان کردن یا حذف محتوا از فایل‌های PDF می‌دهد. این روشی ساده برای ایمن نگه‌داشتن اسناد است. شما می‌توانید متن، تصاویر یا متا داده‌ها را در بسیاری از انواع فایل‌ها پوشانده یا حذف نمایید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از داده‌های کسب‌وکار در اسناد Pdf"
    content: |
      GroupDocs.Redaction for .NET: ابزاری برای کمک به برنامه‌های .NET شما برای ایمن نگه‌داشتن اسناد. به‌سرعت اطلاعات خصوصی را پوشش دهید.
      
      1. یک نمونه Redactor ایجاد کرده و مسیر فایل Pdf که می‌خواهید پوشش دهید را ارائه دهید.
      2. تنظیمات پوشش را پیکربندی کنید تا نتیجه مطلوب را دریافت کنید.
      3. فقط الگوی متنی را که می‌خواهید جستجو کنید تنظیم کرده و رنگ پوشش را انتخاب کنید.
      4. اسناد را پوشش دهید و تغییرات را ذخیره کنید.
   
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
        // پوشاندن متن حساس در PDF با استفاده از تصاویر پوشش

        // مسیر فایل را به سازنده Redactor بدهید.
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // تنظیمات پوشش را پیکربندی کنید.
            // الگوی متنی و رنگ پوشش را تعریف کنید.
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // پوشش دهید و فایل PDF به‌روز شده را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پوشش محتوا در اسناد"
  description: "با GroupDocs.Redaction for .NET، می‌توانید محتوا را در انواع مختلف فایل‌ها حذف یا پنهان کنید. اطلاعات حساس را در حالی که اسناد شما را آسان خواندنی و قابل اشتراک نگه می‌دارد، محافظت کنید."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "گزینه‌های پوشش پیشرفته"
  features:
    # feature loop
    - title: "ویرایش متن در هر جا"
      content: "متن‌های مطابق با جستجو در سند خود را پیدا کنید و برای ایمن‌سازی داده‌های محرمانه آنها را جایگزین کنید."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "پوشش‌هایی بر روی تصاویر کامل یا نواحی انتخاب شده قرار دهید تا تصاویر خصوصی را پنهان کنید."

    # feature loop
    - title: "مدیریت متا داده‌ها"
      content: "متا داده‌های مخفی را حذف یا تغییر دهید تا از نشت داده‌های ناخواسته جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "استفاده از عبارات منظم برای پوشاندن متن"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان با استفاده از عبارات منظم متن را پیدا کرده و پوشش دهیم.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  اسنادی که می‌خواهید پوشش دهید را بارگذاری کنید.
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // تنظیمات پوشش را تعریف کنید: الگوی متن و رنگ.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // پوشش را به محتوا اعمال کنید.
              redactor.Apply(redaction);

              // نسخه تحت پوشش را حفظ کنید.
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
    title: "محافظت از محتوای PDF با استفاده از پوشش‌های .NET"
    exclude: "PDF"
    description: "از .NET برای پوشاندن یا حذف محتوا در فایل‌های PDF استفاده کنید. این انتخاب هوشمندانه‌ای برای محافظت از اسناد حساس یا رسمی است."
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