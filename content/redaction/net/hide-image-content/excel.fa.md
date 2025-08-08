
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پنهان کردن تصاویر در EXCEL با استفاده از لایه‌های پوششی در C#"
head_description: "مناطق حساس تصویر در فایل‌های EXCEL را با GroupDocs.Redaction for .NET پنهان کنید. لایه‌های رنگی را اضافه کنید تا داده‌های خصوصی را در عین حفظ layout سند محافظت کنید."

############################# Header ############################
title: "پوشاندن تصاویر حساس در EXCEL با استفاده از لایه‌های پوششی در .NET" 
description: "اطلاعات شخصی و تجاری را در فایل‌های EXCEL با استفاده از C# ایمن کنید. ابزارهای ما حفاظت از داده را سریع و قابل اعتماد می‌سازد."
subtitle: "کاوش ویژگی‌های GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزارهای لازم برای پنهان یا حذف محتوای حساس در فایل‌های EXCEL ارائه می‌دهد. محتواهای حساس را با پوشاندن داده‌ها، تصاویر و متا داده‌ها پنهان کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حفاظت از داده‌های خود در فایل‌های Excel"
    content: |
      GroupDocs.Redaction for .NET به اپلیکیشن‌های .NET شما در پنهان کردن محتواهای حساس کمک می‌کند.
      
      1. یک نمونه از Redactor ایجاد کرده و مسیر فایل Excel را فراهم کنید.
      2. گزینه‌های پاکسازی را برای رسیدن به نتایج مورد نظر تنظیم کنید.
      3. منطقه تصاویر را انتخاب کنید و رنگ لایه پوششی را مشخص کنید.
      4. پاکسازی را انجام دهید و فایل را ذخیره کنید.
   
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
        // پنهان کردن محتوای تصویری در EXCEL

        // برای بارگذاری سند، از Redactor استفاده کنید.
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // اندازه و رنگ لایه پوششی را تنظیم کنید.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // ناحیه‌ای را برای پنهان کردن انتخاب کنید.
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // لایه پوششی را اعمال و تغییرات را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان کردن محتوا در اسناد"
  description: "GroupDocs.Redaction for .NET به شما اجازه می‌دهد تا در قالب‌های مختلف، محتوا را پنهان یا حذف کنید. محافظت از اطلاعات در عین حفظ کارآمدی اسناد."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "گزینه‌های قوی پاکسازی"
  features:
    # feature loop
    - title: "جستجو و ویرایش متن"
      content: "متن حساس را جستجو کرده و جایگزین کنید تا داده‌ها امن بمانند."

    # feature loop
    - title: "پوشاندن نواحی تصویر"
      content: "لایه‌های پوششی را برای پوشاندن کل تصاویر یا نواحی خاص اعمال کنید."

    # feature loop
    - title: "حذف متا داده"
      content: "متا داده‌های پنهان را پاک کنید تا نشت ناخواسته اطلاعات جلوگیری شود."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن داده‌های تصویر با لایه‌های پوششی"
      content: |
        این مثال نشان می‌دهد چگونه محتوای حساس در تصاویر به حریم خصوصی اضافه شود.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل را برای ویرایش باز کنید.
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // ابعاد، رنگ و موقعیت لایه پوششی را تنظیم کنید.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // به ناحیه تصویری خاص در صفحه اول توجه کنید.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // لایه را برای پنهان کردن تصویر اعمال کنید.
              redactor.Apply(redaction);

              // فایل نهایی را ذخیره کنید.
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "ایمنی فایل‌های EXCEL با استفاده از .NET"
    exclude: "EXCEL"
    description: "از .NET برای پوشاندن و حذف محتوای حساس در EXCEL فایل‌ها استفاده کنید. یک راه‌حل مناسب برای حفاظت از مدارک."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت تصویر"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "فرمت‌های رایج تصویر"

        # format loop 6
        - name: "رداکت عکس"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "فرمت‌های عکاسی"

        # format loop 7
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 8
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 9
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"

        # format loop 10
        - name: "رداکت JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "تصویر JPEG"


---