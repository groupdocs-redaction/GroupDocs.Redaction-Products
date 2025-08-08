
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ویرایش و حذف متاداده در EXCEL از طریق C#"
head_description: "اسناد EXCEL خود را با حذف متاداده با استفاده از GroupDocs.Redaction for .NET ایمن کنید. داده‌های پنهان که ممکن است حریم خصوصی را تهدید کند، حذف کنید."

############################# Header ############################
title: "محافظت از متاداده در فایل‌های EXCEL با .NET" 
description: "با استفاده از C#، می‌توانید داده‌های حساس را از فایل‌های EXCEL پاک کنید. ابزارهایی طراحی شده برای محافظت از داده‌های شما."
subtitle: "مزایای برتر GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET چیست؟"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction یک راه مطمئن برای توسعه‌دهندگان C# برای مدیریت حذف در فایل‌های EXCEL ارائه می‌دهد. این ابزار با متن، تصاویر و متاداده کار می‌کند.

############################# Steps ############################
steps:
    enable: true
    title: "پاک‌سازی متاداده در فایل‌های Excel"
    content: |
      از GroupDocs.Redaction در پروژه‌های .NET خود استفاده کنید تا به طور ایمن متاداده‌های سند را مدیریت کنید.
      
      1. یک شی Redactor ایجاد کرده و فایل مورد نظر Excel را بارگذاری کنید.
      2. تنظیمات حذف متاداده را مشخص کنید.
      3. پروسه پاک‌سازی را اجرا کنید.
      4. نسخه نهایی را ذخیره کنید.
   
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
        // پاک‌سازی متاداده از EXCEL

        // ویراستار را راه‌اندازی کرده و فایل را بارگذاری کنید
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // گزینه‌های حذف را برای متاداده مشخص کنید
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // حذف را انجام داده و نتیجه را ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حذف داده‌های خصوصی در فایل‌های شما"
  description: "GroupDocs.Redaction for .NET به شما این امکان را می‌دهد که متن، تصاویر و متاداده‌ها را در فرمت‌های مختلف پاک کنید. ایده‌آل برای اسناد شخصی، قانونی و شرکتی."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ابزارهای حذف متاداده"
  features:
    # feature loop
    - title: "جستجو و حذف متن"
      content: "متن شخصی یا محرمانه را در اسناد پیدا کرده و با امنیت حذف کنید."

    # feature loop
    - title: "پوشاندن عناصر بصری"
      content: "بخش‌های حساس از تصاویر را بپوشانید تا از دید جلوگیری کنید."

    # feature loop
    - title: "حذف متاداده"
      content: "داده‌های داخلی را پاک کنید که ممکن است اطلاعات حساس را نشت کنند."
      
  code_samples_ext:
    # code sample ext loop
    - title: "هدف‌گذاری متاداده برای حذف"
      content: |
        یاد بگیرید که چگونه متاداده‌هایی مانند نویسنده یا عنوان را از یک سند EXCEL حذف کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  سند را به ویرایشگر وارد کنید
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // متاداده نویسنده را هدف قرار دهید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // متاداده عنوان را هدف قرار دهید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // تغییرات را اعمال کنید
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // سند به‌روز شده را ذخیره کنید
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
    title: "حذف متاداده در EXCEL با استفاده از .NET"
    exclude: "EXCEL"
    description: "داده‌های خصوصی متاداده را در فایل‌های EXCEL با .NET حذف کنید. اسناد خود را تمیز و ایمن نگه‌دارید."
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