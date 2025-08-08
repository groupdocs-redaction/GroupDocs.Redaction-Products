
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fa
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "استفاده از پوشش‌ها برای پنهان‌سازی متن در WORD با استفاده از C#"
head_description: "GroupDocs.Redaction for .NET پوشاندن متن حساس در WORD را با بلوک‌های رنگی آسان می‌کند. سند را در حالی که آنچه فوریت دارد را پنهان نگه می‌دارد، سالم نگه دارید."

############################# Header ############################
title: "پوشش متن پنهانی در فایل‌های WORD با .NET" 
description: "معلومات مهم در فایل‌های WORD را با استفاده از پوشش‌های مکعبی نوشته شده در C# محافظت کنید. ایده‌آل برای امنیت و تطابق."
subtitle: "ببینید GroupDocs.Redaction for .NET چه کارهایی می‌تواند انجام دهد" 

############################# About ############################
about:
    enable: true
    title: "آشنایی با GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       توسعه‌دهندگانی که با C# کار می‌کنند، می‌توانند از GroupDocs.Redaction for .NET برای پوشاندن یا حذف قسمت‌های اسناد WORD استفاده کنند. در چند خط کد، نام‌ها، شماره‌ها یا سایر داده‌ها را پنهان کنید.

############################# Steps ############################
steps:
    enable: true
    title: "پنهان‌سازی داده‌های خصوصی در فایل‌های Word"
    content: |
      GroupDocs.Redaction for .NET به توسعه‌دهندگان .NET در حذف محتویات حساس به سرعت کمک می‌کند. این مراحل را برای ایمن‌سازی فایل‌های خود دنبال کنید.
      
      1. یک Redactor را با مسیر فایل Word خود راه‌اندازی کنید.
      2. قوانین پوشش را برای محتوای خود تنظیم کنید.
      3. الگوی متنی و رنگی برای پوشاندن آن را انتخاب کنید.
      4. پوشش را اعمال کرده و فایل تحت پوشش را ذخیره کنید.
   
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
        // پوشش متن در WORD با استفاده از پوشش‌های تصویری

        // فایل خود را با Redactor بارگذاری کنید.
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // تعیین کنید چه چیزی باید پوشانده شود.
            // متن مطابقت یافته و رنگ پوشش را اضافه کنید.
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
  title: "ابزارهای اضافی پوشش"
  description: "با GroupDocs.Redaction for .NET، می‌توانید فایل‌ها را با حذف اطلاعات قابل مشاهده و مخفی در حالی که ساختار بدون تغییر باقی می‌ماند، تمیز و امن نگه دارید."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "خروجی تمیز و امن"
  features:
    # feature loop
    - title: "تغییر متن‌های افشا شده"
      content: "کلمات یا عبارات را که ممکن است اطلاعات مهمی را منتشر کنند، پنهان کنید."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "با بلوک‌های رنگی حساس را بر روی تصاویر علامت‌گذاری کنید."

    # feature loop
    - title: "حذف اطلاعات مخفی"
      content: "متا داده‌های پس‌زمینه را برای حفظ حریم خصوصی پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان‌سازی متن با regex"
      content: |
        این نمونه نشان می‌دهد چگونه می‌توان با استفاده از عبارات منظم به جستجوی و پوشاندن محتوا پرداخت.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  مدرکی که می‌خواهید پوشش دهید را باز کنید.
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // الگو و رنگ انتخاب کنید.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // قوانین پوشش را اجرا کنید.
              redactor.Apply(redaction);

              // نسخه تحت پوشش شده را ذخیره کرده و بازبینی کنید.
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
    title: "محافظت از فایل‌های WORD با استفاده از .NET"
    exclude: "WORD"
    description: "این امکان وجود دارد که با .NET متن‌ها را پنهان کرده یا متا داده‌ها را در فرمت‌های WORD بدون آسیب زدن به ساختار یا فرمت حذف کنید."
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