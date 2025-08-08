
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حذف متاداده در PDF با استفاده از C#"
head_description: "با GroupDocs.Redaction for .NET، می‌توانید متاداده‌ها را از فایل‌های PDF حذف یا به‌روز کنید. اطلاعات پنهان که ممکن است اطلاعات خصوصی را فاش کند، پاک کنید."

############################# Header ############################
title: "پاک‌سازی متاداده در فایل‌های PDF با .NET" 
description: "محافظت از اطلاعات حساس تجاری و شخصی در فایل‌های PDF با استفاده از C#. ابزارهای ساده برای حفاظت از داده‌ها."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان C# ابزارهای آسانی برای حذف محتویات در فایل‌های PDF ارائه می‌دهد. متن، تصاویر و متاداده را در فرمت‌های مختلف ماسک کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حذف متاداده از اسناد Pdf"
    content: |
      از GroupDocs.Redaction برای ایمن‌سازی سریع متاداده‌های سند در برنامه‌های .NET خود استفاده کنید.
      
      1. یک نمونه از Redactor ایجاد کرده و فایل Pdf خود را بارگذاری کنید.
      2. راهکارهای حذف متاداده را تنظیم کنید.
      3. حذف را برای پاک کردن سند اعمال کنید.
      4. فایل به‌روز شده را ذخیره کنید.
   
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
        // حذف متاداده از فایل‌های PDF

        // بارگذاری فایل با Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // تنظیم حذف متاداده
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // اعمال تغییرات و ذخیره فایل
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حذف داده‌های حساس در اسناد"
  description: "GroupDocs.Redaction for .NET به شما کمک می‌کند محتویات محرمانه را در فرمت‌های مختلف فایل مخفی یا پاک کنید. داده‌های خصوصی را ایمن نگه‌دارید و اسناد را واضح و حرفه‌ای حفظ کنید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های قوی حذف"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "متن‌های حساس را در اسناد خود جستجو کنید و آن‌ها را برای محافظت از حریم خصوصی جایگزین یا حذف کنید."

    # feature loop
    - title: "مخفی کردن محتویات تصویر"
      content: "برداشتن اشیا به تصاویری که حاوی اطلاعات حساس هستند، اضافه کنید."

    # feature loop
    - title: "پاک‌سازی متاداده"
      content: "متاداده‌های پنهان را حذف یا ویرایش کنید تا از نشت داده‌های ناخواسته جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف ورودی‌های متاداده پنهان"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان متاداده را در یک فایل PDF تغییر داد.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  بارگذاری فایل PDF در ویرایشگر
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // تنظیم حذف برای خاصیت نویسنده
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // تنظیم حذف برای خاصیت عنوان
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // فرآیند حذف را در سند اجرا کنید
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // فایل پاک‌سازی‌شده را ذخیره کنید
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "محافظت از فایل‌های PDF با حذف متاداده .NET"
    exclude: "PDF"
    description: "از .NET برای حذف داده‌های پنهان از فایل‌های PDF استفاده کنید. یک راه ساده و مؤثر برای محافظت از اطلاعات حساس در اسناد شما."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت تصویر"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "فرمت‌های رایج تصویر"

        # format loop 6
        - name: "رداکت عکس"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "فرمت‌های عکاسی"

        # format loop 7
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 8
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 9
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"

        # format loop 10
        - name: "رداکت JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "تصویر JPEG"


---