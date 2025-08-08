
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fa
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حذف متاداده از WORD با استفاده از C#"
head_description: "از GroupDocs.Redaction for .NET برای یافتن و حذف متاداده‌های پنهان در فایل‌های WORD استفاده کنید. اسناد خود را از افشای ناخواسته محفوظ نگه دارید."

############################# Header ############################
title: "حذف متاداده در فایل‌های WORD با استفاده از .NET" 
description: "محافظت از اطلاعات شخصی و شرکتی در فایل‌های WORD با استفاده از C#. ابزارهای ساده برای حریم خصوصی قابل اعتماد فایل."
subtitle: "چه کارهایی می‌توانید با GroupDocs.Redaction for .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان C# کمک می‌کند تا محتوا را در فایل‌های WORD محافظت کنند. متن، تصاویر و متاداده را به سرعت پاکسازی کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حذف متاداده از فایل‌های Word"
    content: |
      با GroupDocs.Redaction، پاک‌سازی متاداده‌های اسناد در محیط .NET شما بسیار ساده است.
      
      1. یک شی Redactor را راه‌اندازی کرده و سند Word خود را باز کنید.
      2. قوانین را برای حذف همه متاداده‌های پنهان تنظیم کنید.
      3. حذف را اجرا کنید تا تگ‌های حساس را حذف کنید.
      4. سند پاک‌شده خود را ذخیره کنید.
   
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
        // حذف متاداده از فایل‌های WORD

        // سند را با استفاده از Redactor باز کنید
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // گزینه‌های حذف متاداده را تنظیم کنید
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // حذف را انجام داده و فایل پاک‌شده را ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حذف داده‌های محرمانه از اسناد"
  description: "با GroupDocs.Redaction for .NET، می‌توانید محتویات خصوصی را از فرمت‌های مختلف حذف کنید. فایل‌های خود را ایمن نگه‌دارید در حالی که ساختار آن‌ها را حفظ می‌کنید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ابزارهای حذف متاداده و محتوا"
  features:
    # feature loop
    - title: "جایگزینی متن حساس"
      content: "در اسناد متن را پیدا کرده و به‌طور ایمن آن را حذف یا تغییر دهید تا اطلاعات خصوصی را محافظت کنید."

    # feature loop
    - title: "ماسک کردن تصاویر"
      content: "اطراف تصاویر حساس را با پوشش‌ها بپوشانید تا داده‌های تصویری مخفی بمانند."

    # feature loop
    - title: "حذف متاداده"
      content: "ورودهای متاداده‌ی پنهان را پیدا کرده و پاکسازی کنید تا از نشت اطلاعات جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ویرایش یا حذف متاداده پنهان"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان ورودی‌های متاداده را هدف قرار داده و آن‌ها را در سند WORD پاک‌سازی کرد.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل را برای حذف بارگذاری کنید
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // متاداده نویسنده را حذف کنید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // متاداده عنوان را حذف کنید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // فرآیند حذف را اجرا کنید
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // سند پاک‌شده را صادر کنید
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
    title: "حذف متاداده در WORD با .NET"
    exclude: "WORD"
    description: "از .NET برای پاک‌سازی متاداده‌های پنهان از فایل‌های WORD استفاده کنید. ابزارهای ساده‌ای برای حفظ اطلاعات حساس."
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