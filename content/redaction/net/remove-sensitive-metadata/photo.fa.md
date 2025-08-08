
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fa
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حذف متاداده در PHOTO با C#"
head_description: "GroupDocs.Redaction for .NET به شما کمک می‌کند داده‌های پنهان را در فایل‌های PHOTO حذف کنید که می‌تواند اطلاعات شخصی یا تجاری را افشا کند."

############################# Header ############################
title: "حذف متاداده از PHOTO با .NET" 
description: "به سادگی اسناد خود را از طریق حذف اطلاعات پنهان در فایل‌های PHOTO با استفاده از C# محافظت کنید."
subtitle: "نکات برجسته GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان C# کمک می‌کند محتوای خصوصی را در فایل‌های PHOTO پنهان کنند. شامل متن، بخش‌های تصویر و متاداده.

############################# Steps ############################
steps:
    enable: true
    title: "حذف متاداده در فایل‌های Photo"
    content: |
      از GroupDocs.Redaction در پروژه .NET خود برای پاک‌سازی متاداده اسناد استفاده کنید.
      
      1. یک Redactor شروع کرده و فایل Photo خود را باز کنید.
      2. قوانین را برای حذف متاداده مشخص کنید.
      3. فرآیند حذف را اجرا کنید و فایل را پاک کنید.
      4. فایل نتیجه را ذخیره کنید.
   
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
        // حذف متاداده از اسناد PHOTO

        // از Redactor برای بارگذاری سند استفاده کنید
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // فیلدهای متاداده را برای حذف مشخص کنید
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // سند را پاک کنید و ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حذف اطلاعات خصوصی از فایل‌ها"
  description: "GroupDocs.Redaction for .NET به شما راه‌هایی برای حذف داده‌های شخصی از متن، تصاویر و جزئیات فایل‌ها می‌دهد. ایده‌آل برای امنیت داده‌ها."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های کاربردی حذف"
  features:
    # feature loop
    - title: "پاک‌سازی متن"
      content: "متن غیرمجاز و مواردی که نباید به اشتراک گذاشته شوند را اسکن و حذف کنید."

    # feature loop
    - title: "پوشاندن نواحی تصویر"
      content: "براکت‌های پوشنده تصاویر را به مناطق حاوی اطلاعات خصوصی اضافه کنید."

    # feature loop
    - title: "حذف متاداده"
      content: "داده‌های داخلی فایل را قبل از اشتراک گذاری یا چاپ حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف فیلدهای متاداده پنهان"
      content: |
        این مثال شما را در حذف متاداده‌ها در یک سند PHOTO راهنمایی می‌کند.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل PHOTO را به ویرایشگر وارد کنید
          using (Redactor redactor  = new Redactor("source.jpeg"))
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

              // سند را پردازش کنید
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // نسخه پاک‌شده را ذخیره کنید
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
    title: "از .NET برای حذف متاداده PHOTO استفاده کنید"
    exclude: "PHOTO"
    description: "فایل‌های PHOTO خود را ایمن نگه‌دارید با پاک‌سازی متاداده با ابزارهای .NET."
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