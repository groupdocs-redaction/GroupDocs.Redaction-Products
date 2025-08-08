
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پاک‌سازی متاداده در فایل‌های XLSX با C#"
head_description: "با GroupDocs.Redaction for .NET، می‌توانید به طور ایمن متاداده را از فایل‌های XLSX حذف کنید. اطلاعات پنهانی که می‌تواند داده‌های خصوصی را فاش کند، پاک کنید."

############################# Header ############################
title: "حذف متاداده از فایل‌های XLSX با استفاده از .NET" 
description: "جزئیات حساس در فایل‌های XLSX خود را با C# محافظت کنید. حذف ساده برای اسناد شخصی و شغلی."
subtitle: "کشف کنید GroupDocs.Redaction for .NET چه کارهایی می‌تواند انجام دهد" 

############################# About ############################
about:
    enable: true
    title: "در مورد GroupDocs.Redaction for .NET بیشتر بدانید"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان C# ابزارهایی برای پاک کردن محتوا در فایل‌های XLSX ارائه می‌دهد. متن، تصاویر و متاداده را به‌راحتی ماسک یا حذف نمایید.

############################# Steps ############################
steps:
    enable: true
    title: "پاک‌سازی متاداده در فایل‌های Xlsx"
    content: |
      با GroupDocs.Redaction، برنامه‌های .NET شما به سرعت می‌توانند داده‌های پنهان را حذف کنند.
      
      1. یک Redactor راه‌اندازی کرده و فایل Xlsx خود را باز کنید.
      2. مشخص کنید که کدام متاداده را می‌خواهید حذف کنید.
      3. قوانین حذف را اعمال کنید.
      4. فایل نهایی را ذخیره کنید.
   
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
        // پاک‌سازی متاداده پنهان در XLSX

        // فایل را با Redactor باز کنید
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // تنظیم کنید که کدام متاداده را حذف کنید
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // حذف را اعمال کرده و ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "محافظت از اطلاعات حساس در اسناد"
  description: "از GroupDocs.Redaction for .NET برای حذف یا پنهان کردن محتوا در بسیاری از فرمت‌های فایل استفاده کنید. فایل‌های خود را خصوصی و آماده اشتراک نگه دارید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های جامع حذف"
  features:
    # feature loop
    - title: "جایگزینی یا حذف متن"
      content: "با یافتن و حذف متن حساس، داده‌های خصوصی را محافظت کنید."

    # feature loop
    - title: "پوشش بخش‌های تصویر"
      content: "از پوشش‌ها برای مسدود کردن نواحی تصاویر با اطلاعات خصوصی استفاده کنید."

    # feature loop
    - title: "حذف متاداده"
      content: "فیلدهای متاداده پنهان را پاک کنید که ممکن است حاوی جزئیات شخصی یا تجاری باشند."
      
  code_samples_ext:
    # code sample ext loop
    - title: "چگونه متاداده را حذف کنیم"
      content: |
        این کد نمونه متاداده‌های خاصیت‌ها را در سند XLSX حذف می‌کند.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  سند را باز کنید
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

              // فرآیند حذف را اجرا کنید
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // سند پاک‌شده را ذخیره کنید
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
    title: "حذف متاداده در XLSX با .NET"
    exclude: "XLSX"
    description: ".NET به راحتی متاداده‌ها را از فایل‌های XLSX پاک می‌کند. فایل‌های خود را تمیز و ایمن نگه دارید."
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