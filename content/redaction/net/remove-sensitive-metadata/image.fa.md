
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fa
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حذف متاداده پنهان در IMAGE با C#"
head_description: "از GroupDocs.Redaction for .NET برای پاک‌سازی متاداده در فایل‌های IMAGE خود استفاده کنید. مطمئن شوید جزئیات خصوصی خصوصی می‌مانند."

############################# Header ############################
title: "حذف متاداده در فایل‌های IMAGE از طریق .NET" 
description: "فایل‌های IMAGE خود را با استفاده از C# ایمن نگه‌دارید. از داده‌های تجاری و شخصی به سادگی محافظت کنید."
subtitle: "چه چیزی با GroupDocs.Redaction for .NET به دست می‌آورید" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به کاربران C# کمک می‌کند تا فایل‌ها را با حذف متن، بخش‌های تصویری و متاداده در فایل‌های IMAGE پاک کنند.

############################# Steps ############################
steps:
    enable: true
    title: "پاک‌سازی متاداده در فایل‌های Image"
    content: |
      با GroupDocs.Redaction در برنامه .NET خود برای پاک‌سازی متاداده فایل شروع کنید.
      
      1. یک Redactor ایجاد کرده و فایل Image خود را باز کنید.
      2. گزینه‌هایی برای حذف ورودی‌های متاداده پنهان انتخاب کنید.
      3. تنظیمات حذف را اعمال کنید.
      4. نتیجه را ذخیره کنید.
   
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
        // حذف متاداده پنهان از فایل‌های IMAGE

        // فایل را با Redactor باز کنید
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // قوانین حذف متاداده را اضافه کنید
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // عملیات را انجام دهید و ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پاک‌سازی محتوا در هر سند"
  description: "GroupDocs.Redaction for .NET متن خصوصی، بخش‌های تصویری یا فیلدهای پنهان را حذف می‌کند. اسناد را برای اشتراک ایمن کنید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های اصلی"
  features:
    # feature loop
    - title: "حذف متن"
      content: "کلمات و اعداد خصوصی را پیدا کرده و حذف کنید."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "پوشش‌های تصویری اضافه کنید تا اطلاعات بصری را پنهان کنید."

    # feature loop
    - title: "حذف متاداده"
      content: "فیلدهای متاداده‌ای را که ممکن است اطلاعات را نشت کنند پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف متاداده حساس"
      content: |
        این نمونه نشان می‌دهد که چگونه می‌توان فیلدهای متاداده خاص را در یک سند IMAGE پاک‌سازی کرد.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل IMAGE را با ویراستار باز کنید
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // فیلد نویسنده را هدف قرار دهید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // فیلد عنوان را هدف قرار دهید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // فیلدها را حذف کنید
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // سند خود را ذخیره کنید
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
    title: "حذف متاداده از IMAGE با استفاده از .NET"
    exclude: "IMAGE"
    description: "با حذف داده‌های حساس از فایل‌های IMAGE با راهکارهای حذف .NET، اسناد خود را ایمن نگه‌دارید."
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