
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fa
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ویرایش متاداده در JPEG با استفاده از C#"
head_description: "با GroupDocs.Redaction for .NET، می‌توانید متاداده را در فایل‌های JPEG خود پاک‌سازی یا تغییر دهید. جزئیات پنهانی را که ممکن است حاوی داده‌های خصوصی باشد، حذف کنید."

############################# Header ############################
title: "حذف متاداده از فایل‌های JPEG با استفاده از .NET" 
description: "جزئیات خصوصی را در فایل‌های JPEG خود با استفاده از C# محافظت کنید. ابزارهای ساده برای افزایش امنیت اسناد."
subtitle: "بهترین ویژگی‌های GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان C# کمک می‌کند متون، تصاویر و متاداده را از فایل‌های JPEG با ابزارهای ساده حذف کنند.

############################# Steps ############################
steps:
    enable: true
    title: "پاک‌سازی متاداده در اسناد Jpeg"
    content: |
      GroupDocs.Redaction کار حذف متاداده را در برنامه‌های .NET شما آسان می‌کند.
      
      1. یک Redactor را راه‌اندازی کرده و فایل Jpeg مورد نظر را بارگذاری کنید.
      2. تنظیمات پاک‌سازی متاداده را انتخاب کنید.
      3. عملیات حذف را اجرا کنید.
      4. فایل خود را با متاداده پاک‌شده ذخیره کنید.
   
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
        // حذف متاداده از فایل‌های JPEG

        // از Redactor برای بارگذاری فایل استفاده کنید
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // تنظیم حذف متاداده را پیکربندی کنید
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // پاک‌سازی و ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حذف داده‌های حساس از اسناد"
  description: "GroupDocs.Redaction for .NET به شما اجازه می‌دهد محتویات خصوصی را در فرمت‌های مختلف مخفی یا پاک کنید. از داده‌های حساس محافظت کنید در حالی که فایل‌های خود را مفید و شفاف نگه می‌دارید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های کلیدی حذف"
  features:
    # feature loop
    - title: "جستجو و حذف متن"
      content: "کلمات یا عبارات حساس را در فایل‌های خود پیدا کرده و پاک کنید."

    # feature loop
    - title: "پوشاندن نواحی تصویر"
      content: "از پوشش‌ها برای پنهان کردن بخش‌های خصوصی تصاویر استفاده کنید."

    # feature loop
    - title: "ویرایش متاداده"
      content: "متاداده را حذف یا تغییر دهید تا از به اشتراک‌گذاری داده‌های خصوصی جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پاک‌سازی فیلدهای متاداده پنهانی"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان متاداده‌های پنهان را در سند JPEG حذف یا ویرایش کرد.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل JPEG را در ویرایشگر باز کنید
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // حذف متن در فیلد نویسنده را تنظیم کنید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // حذف متن در فیلد عنوان را تنظیم کنید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // عملیات حذف را اجرا کنید
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // سند پاک‌سازی‌شده را ذخیره کنید
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
    title: "پاک‌سازی متاداده در JPEG با .NET"
    exclude: "JPEG"
    description: "از .NET برای حذف داده‌های پنهان از اسناد JPEG خود استفاده کنید. راهی عالی برای محافظت از جزئیات حساس."
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