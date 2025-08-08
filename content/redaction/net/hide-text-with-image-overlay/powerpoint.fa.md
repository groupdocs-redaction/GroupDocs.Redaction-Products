
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fa
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پوشاندن متن حساس در POWERPOINT با پوشش‌های C#"
head_description: "GroupDocs.Redaction for .NET به شما این امکان را می‌دهد که قسمت‌هایی از فایل‌های POWERPOINT را با استفاده از پوشش‌های ساده پنهان کنید. اسناد را بدون تغییر ساختار ایمن نگه دارید."

############################# Header ############################
title: "پوشش متن در POWERPOINT با پوشش‌ها در .NET" 
description: "محتوا را در فایل‌های POWERPOINT خود با استفاده از بلوک‌های پوشش به کمک C# و GroupDocs.Redaction for .NET محافظت کنید."
subtitle: "ابزارهای داخلی GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره این ابزار"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به کاربران C# کمک می‌کند تا اسناد POWERPOINT را با پوشاندن یا حذف متن، متا داده‌ها یا تصاویر به‌دلخواه تمیز کنند.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از محتوا در اسناد Powerpoint"
    content: |
      با استفاده از GroupDocs.Redaction for .NET در برنامه‌های .NET خود، فایل‌ها را قبل از توزیع پاکسازی کنید.
      
      1. مسیر فایل را به یک نمونه جدید از Redactor بدهید.
      2. برای آنچه و چگونه می‌خواهید پوشش دهید تنظیم کنید.
      3. الگوی متنی را تعریف کنید و رنگ پوشش را انتخاب کنید.
      4. پوشش را اعمال کنید و فایل به‌روز شده خود را ذخیره کنید.
   
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
        // نوشته‌ها را در POWERPOINT با استفاده از پوشش‌ها پنهان کنید

        // از Redactor برای باز کردن فایل استفاده کنید
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // تنظیمات پوشش را تنظیم کنید
            // متن را انتخاب کرده و رنگ پوشش را انتخاب کنید
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // اجرا و ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "به راحتی داده‌های حساس را پنهان کنید"
  description: "GroupDocs.Redaction for .NET به شما این امکان را می‌دهد که اطلاعات را در انواع مختلف اسناد حذف یا پوشش دهید. مناسب برای حفاظت از داده‌ها در اسناد حقوقی، تجاری یا شخصی."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "پوشش مستند منعطف"
  features:
    # feature loop
    - title: "کلمات را جایگزین کنید"
      content: "کلمات یا اعداد را پیدا کرده و جایگزین یا پنهان کنید."

    # feature loop
    - title: "عکس‌ها یا بخش‌ها را پوشانده"
      content: "پوشش‌هایی روی تصاویر یا نواحی خاص یک صفحه اضافه کنید."

    # feature loop
    - title: "حذف داده‌های اضافی"
      content: "متا داده‌هایی را پاک کنید که ممکن است اطلاعات مخفی را افشا کنند."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پیدا کردن و پوشاندن با regex"
      content: |
        این نشان می‌دهد که regex چگونه می‌تواند به شناسایی و پنهان‌سازی متن کمک کند.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایلی را که نیاز به پوشش دارد باز کنید.
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // قواعد را با استفاده از regex تنظیم کنید.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // فرایند پوشش را اجرا کنید.
              redactor.Apply(redaction);

              // نسخه‌ی تمیز شده را ذخیره کنید.
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
    title: "پوشش محتوا در POWERPOINT با استفاده از .NET"
    exclude: "POWERPOINT"
    description: "پوشش‌هایی اضافه کنید یا داده‌ها را از فایل‌های POWERPOINT پاک کنید تا اطلاعات حساس از دید عمومی خارج شوند، با کمک .NET."
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