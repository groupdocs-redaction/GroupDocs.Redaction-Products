
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حذف متاداده از DOCX با استفاده از C#"
head_description: "از GroupDocs.Redaction for .NET برای حذف یا تغییر متاداده‌های پنهان در فایل‌های DOCX استفاده کنید. از اسناد خود در برابر افشای جزئیات خصوصی محافظت کنید."

############################# Header ############################
title: "حذف متاداده در فایل‌های DOCX با .NET" 
description: "با استفاده از C#، متاداده‌های حساس را در فایل‌های DOCX پاک کنید. داده‌های تجاری و شخصی خود را حفظ کنید."
subtitle: "ویژگی‌های برتر GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET چیست؟"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان C# ابزاری برای مخفی‌سازی یا حذف محتوا در فایل‌های DOCX می‌دهد. به سرعت متن، تصاویر و متاداده را پاکسازی کنید.

############################# Steps ############################
steps:
    enable: true
    title: "پاک‌سازی داده‌های پنهان در فایل‌های Docx"
    content: |
      GroupDocs.Redaction به پروژه‌های .NET شما کمک می‌کند تا به سرعت متاداده‌های ناخواسته را حذف کنید.
      
      1. یک نمونه از Redactor ایجاد کرده و فایل Docx خود را باز کنید.
      2. تنظیمات حذف متاداده را مشخص کنید.
      3. تغییرات را اعمال کرده و سند را پاک کنید.
      4. فایل پاک‌شده را ذخیره کنید.
   
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
        // حذف متاداده از اسناد DOCX

        // با استفاده از Redactor فایل را بارگذاری کنید
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // تنظیمات حذف متاداده را مشخص کنید
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // تغییرات را اعمال کرده و ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "مخفی‌سازی اطلاعات حساس در هر سند"
  description: "GroupDocs.Redaction for .NET به شما اجازه می‌دهد محتوای حساس را در بسیاری از انواع فایل‌ها پاک کنید. اسناد خود را برای اشتراک یا نگهداری ایمن کنید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "گزینه‌های هوشمند حذف"
  features:
    # feature loop
    - title: "حذف متن‌های خصوصی"
      content: "متن شخصی یا تجاری را از فایل‌های خود جستجو و حذف کنید."

    # feature loop
    - title: "ماسک تصاویر"
      content: "بخش‌های تصویر یا نواحی انتخاب شده را مخفی کنید تا محتوای محرمانه پنهان بماند."

    # feature loop
    - title: "حذف متاداده"
      content: "ورودی‌های متاداده پنهان را پاک کنید تا از نشت جزئیات پس‌زمینه جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پاک‌سازی فیلدهای متاداده"
      content: |
        این مثال نشان می‌دهد که چگونه داده‌های پنهان را از فایل‌های DOCX حذف کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل DOCX خود را بارگذاری کنید
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // فیلد نویسنده را برای حذف هدف قرار دهید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // فیلد عنوان را برای حذف هدف قرار دهید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // فرآیند حذف را اجرا کنید
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // فایل به‌روز شده خود را ذخیره کنید
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
    title: "حذف متاداده در DOCX با .NET"
    exclude: "DOCX"
    description: "متاداده‌های ناخواسته را در فایل‌های DOCX با استفاده از .NET حذف کنید. یک راه ساده برای محافظت از جزئیات پنهان فایل شما."
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