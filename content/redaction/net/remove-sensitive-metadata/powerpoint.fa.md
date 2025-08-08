
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fa
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پاک‌سازی متاداده در POWERPOINT با C#"
head_description: "حذف متاداده‌های نامطلوب از فایل‌های POWERPOINT با استفاده از GroupDocs.Redaction for .NET. با پاک‌سازی داده‌های پنهان، حریم خصوصی خود را محافظت کنید."

############################# Header ############################
title: "حذف متاداده در POWERPOINT از طریق .NET" 
description: "با ابزارهای ساده طراحی شده برای C#، داده‌های اسنادی در فایل‌های POWERPOINT را محافظت کنید. متاداده را فقط در چند مرحله حذف کنید."
subtitle: "ویژگی‌های GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "بیشتر درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction یک ابزار حذف برای توسعه‌دهندگان C# است، که به شما در کار با متون، تصاویر و متاداده‌های حذف شده در فایل‌های POWERPOINT کمک می‌کند.

############################# Steps ############################
steps:
    enable: true
    title: "پاک‌سازی متاداده از اسناد Powerpoint"
    content: |
      با GroupDocs.Redaction، برنامه‌های .NET شما به راحتی می‌توانند متاداده را از اسناد حذف کنند.
      
      1. با یک شی Redactor شروع کنید و فایل خود را بارگذاری کنید.
      2. فیلدهای متاداده را برای حذف انتخاب کنید.
      3. تنظیمات حذف را اعمال کنید.
      4. سند نهایی و پاک‌شده را صادر کنید.
   
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
        // حذف متاداده از POWERPOINT

        // سند را با ویراستار باز کنید
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // گزینه‌های پاک‌سازی متاداده را مشخص کنید
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // حذف را انجام داده و ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "محافظت از اسناد با حذف"
  description: "GroupDocs.Redaction for .NET به شما کمک می‌کند محتوای پنهان را از اسناد حذف کنید تا بتوانید آن‌ها را با امنیت به اشتراک بگذارید. با بسیاری از فرمت‌ها و نوع محتوا کار می‌کند."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "قابلیت‌های حذف"
  features:
    # feature loop
    - title: "حذف متن خصوصی"
      content: "کلمات یا عبارات حساس را پیدا کنید و آن‌ها را از سند خود خارج کنید."

    # feature loop
    - title: "ماسک‌کردن داده‌های تصویری"
      content: "از پوشش‌های محفظی برای پوشاندن نواحی در تصاویر استفاده کنید که باید پنهان بمانند."

    # feature loop
    - title: "حذف متاداده"
      content: "فیلدهای متاداده‌ای را که ممکن است اطلاعات پنهانی را حمل کنند پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پاک‌سازی فیلدهای متاداده"
      content: |
        این مثال به شما راهنمایی می‌کند تا داده‌های داخلی مانند نویسنده و عنوان را از یک فایل POWERPOINT حذف کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل را به ویراستار وارد کنید
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // داده‌های نویسنده را حذف کنید
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // داده‌های عنوان را حذف کنید
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // عملیات حذف را انجام دهید
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
    title: "پاک‌سازی فایل‌های POWERPOINT با .NET"
    exclude: "POWERPOINT"
    description: "از .NET برای حذف داده‌های پنهان در فایل‌های POWERPOINT استفاده کنید. ایده‌آل برای پاک‌سازی اسناد محرمانه."
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