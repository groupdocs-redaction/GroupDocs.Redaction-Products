
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
head_title: "پوشاندن متن در PPTX با استفاده از پوشش‌ها و C#"
head_description: "محتوای خصوصی در اسناد PPTX را با پوشاندن آن با مربع‌های رنگی با استفاده از GroupDocs.Redaction for .NET پنهان کنید. طرح را بدون تغییر در همان وضعیت نگه دارید."

############################# Header ############################
title: "پوشاندن متن در PPTX با استفاده از پوشش‌ها در .NET" 
description: "با استفاده از C# و GroupDocs.Redaction for .NET، از پنهان کردن داده‌های حساس در فایل‌های PPTX به آسانی لذت ببرید."
subtitle: "کشف GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "کارکرد GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به شما قدرت می‌دهد که محتوا در اسناد PPTX را با استفاده از C# پوشانده یا حذف کنید. هر چیزی را از نام‌ها تا یادداشت‌ها، تنها در چند مرحله پنهان کنید.

############################# Steps ############################
steps:
    enable: true
    title: "پنهان‌سازی محتوای خصوصی در فایل‌های Pptx شما"
    content: |
      با GroupDocs.Redaction for .NET، توسعه‌دهندگان .NET می‌توانند اسناد را در چند مرحله ساده محافظت کنند.
      
      1. یک Redactor را با مسیر فایل که می‌خواهید پاک کنید شروع کنید.
      2. قوانین پوشش را انتخاب کنید که با نیازهای شما مطابقت داشته باشد.
      3. یک الگو برای تطبیق و رنگی برای پوشش تصویر انتخاب کنید.
      4. پوشش را اجرا کنید و فایل به‌روز شده خود را ذخیره کنید.
   
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
        // از پوشش‌ها برای پوشاندن متن در PPTX استفاده کنید

        // از Redactor برای باز کردن فایل خود استفاده کنید
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // تنظیمات پوشش را تعریف کنید
            // متن را انتخاب کرده و یک رنگ پوشش انتخاب کنید
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // اجرای تغییرات و ذخیره
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "شیوه‌های بیشتری برای محافظت از فایل‌های شما"
  description: "GroupDocs.Redaction for .NET ابزارهایی را برای پنهان کردن داده‌ها در فرمت‌های مختلف بدون تغییر زیبایی‌شناسی ارائه می‌دهد."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ویژگی‌هایی که مهم هستند"
  features:
    # feature loop
    - title: "تکمیل متن به عنوان نیاز"
      content: "توضیحات را برای نگه‌داری اطلاعات کلیدی از دسترس کاربران غیرمجاز، جا به جا کنید."

    # feature loop
    - title: "پوشاندن نواحی تصویر"
      content: "پوشش‌ها را برای تصاویر کامل یا برخی قسمت‌ها با استفاده از کشیدن جعبه پوشش اضافه کنید."

    # feature loop
    - title: "حذف داده‌های مخفی"
      content: "متا داده‌های جاسازی‌شده را که ممکن است جزئیات خصوصی را افشا کند، حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پوشش با عبارات منظم"
      content: |
        این مثال نشان می‌دهد چگونه می‌توان با استفاده از عبارات منظم به جستجو و پوشاندن متن پرداخت.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل را برای پوشش بارگذاری کنید.
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // قوانین پوشش را تنظیم کنید: متن جستجو و رنگ بلوک.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // قانون پوشش را اعمال کنید.
              redactor.Apply(redaction);

              // نتیجه تحت پوشش را ذخیره کنید.
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
    title: "محافظت از متن PPTX با ابزارهای .NET"
    exclude: "PPTX"
    description: "نواحی خصوصی را پوشش دهید یا داده‌های مخفی را در فایل‌های PPTX با استفاده از ویژگی‌های پوشش .NET حذف کنید."
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