
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fa
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حذف متاداده از فایل‌های PPTX با C#"
head_description: "GroupDocs.Redaction for .NET به شما کمک می‌کند متاداده‌ها را در فایل‌های PPTX حذف یا ویرایش کنید. با حذف داده‌های پنهان، اسناد خود را محافظت کنید."

############################# Header ############################
title: "حذف متاداده در PPTX با ابزارهای .NET" 
description: "با استفاده از C# متاداده‌های حساس را در فایل‌های PPTX پنهان کنید. ایده‌آل برای حفظ حریم خصوصی در محیط‌های تجاری و شخصی."
subtitle: "عملکردهای کلیدی GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "با GroupDocs.Redaction for .NET بیشتر آشنا شوید"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction برای توسعه‌دهندگان C# ساخته شده است که باید داده‌ها را از فایل‌های PPTX پاک کنند. به‌سرعت متن، تصاویر و متاداده را پاک کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حذف متاداده پنهان در فایل‌های Pptx"
    content: |
      GroupDocs.Redaction به راه‌حل‌های .NET شما کمک می‌کند تا به راحتی داده‌های پنهان را پاک‌سازی کنید.
      
      1. یک نمونه از Redactor ایجاد کرده و فایل Pptx را بارگذاری کنید.
      2. قوانین حذف را برای فیلدهای متاداده تنظیم کنید.
      3. حذف را برای حذف داده‌ها اعمال کنید.
      4. فایل پاک‌شده خود را ذخیره کنید.
   
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
        // حذف متاداده در PPTX

        // فایل را با استفاده از Redactor باز کنید
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // تنظیم حذف متاداده‌ها را تنظیم کنید
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // اعمال کرده و فایل را ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای اضافی حذف برای هر فایل"
  description: "GroupDocs.Redaction for .NET از حذف محتوا در فرمت‌های مختلف پشتیبانی می‌کند. اطمینان حاصل کنید که داده‌های شما خصوصی و فایل‌های شما تمیز باشند."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ابزارهای حریم خصوصی داخلی"
  features:
    # feature loop
    - title: "یافتن و حذف متن"
      content: "در سریع‌ترین زمان ممکن، متن‌های شخصی را از فایل‌های خود حذف کنید."

    # feature loop
    - title: "پوشاندن تصاویر با پوشش‌ها"
      content: "نواحی تصاویر را پنهان کنید که نباید قابل مشاهده باشند."

    # feature loop
    - title: "حذف متاداده"
      content: "فیلدهای پنهان مانند نویسنده، عنوان و سایر موارد را حذف کنید تا ایمن بمانید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پاک‌سازی فیلدهای متاداده"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان متاداده‌ها را به‌طور ایمن از فایل PPTX پاک‌سازی کرد.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل PPTX خود را وارد کنید
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // فیلد نویسنده را حذف کنید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // فیلد عنوان را حذف کنید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // فرآیند حذف را اجرا کنید
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // فایل پاک‌شده را ذخیره کنید
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
    title: "پاک‌سازی متاداده در فایل‌های PPTX با استفاده از .NET"
    exclude: "PPTX"
    description: "به راحتی متاداده‌های پس‌زمینه را از فایل‌های PPTX با .NET حذف کنید. برای ایمنی اسناد ایده‌آل است."
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