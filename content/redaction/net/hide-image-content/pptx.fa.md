
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پنهان کردن تصاویر در PPTX با لایه‌های پوششی با استفاده از C#"
head_description: "با GroupDocs.Redaction for .NET، می‌توانید محتوای حساس تصویر را در فایل‌های PPTX با اضافه کردن لایه‌های رنگی پنهان کنید. از اطلاعات محرمانه محافظت کنید بدون اینکه ساختار سند شما تغییر کند."

############################# Header ############################
title: "پنهان کردن تصاویر حساس در اسناد PPTX با استفاده از .NET" 
description: "اطلاعات شخصی و تجاری را در فایل‌های PPTX با C# محافظت کنید. ابزارهای ما باعث می‌شوند پاک کردن تصاویر سریع و مؤثر باشد."
subtitle: "چیزی که GroupDocs.Redaction for .NET ارائه می‌دهد" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزارهایی را برای پنهان یا حذف کردن محتوا در فایل‌های PPTX می‌دهد. اسناد را با پوشاندن اطلاعات حساس ایمن کنید.

############################# Steps ############################
steps:
    enable: true
    title: "اطلاعات تجاری را در اسناد Pptx ایمن نگه دارید"
    content: |
      GroupDocs.Redaction for .NET: به کمک اپلیکیشن‌های .NET شما برای محافظت از اسناد با پنهان کردن اطلاعات حساس.
      
      1. یک نمونه از Redactor تنظیم کنید و فایل Pptx را بارگذاری کنید.
      2. تنظیمات پاکسازی را مطابق با نیازهای خود تنظیم کنید.
      3. چندین منطقه تصویر را انتخاب کرده و رنگ‌های لایه پوششی را تعیین کنید.
      4. پاکسازی را پردازش کرده و فایل خود را ذخیره کنید.
   
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
        // پنهان کردن نواحی حساس تصویر در PPTX

        // فایل مورد نظر را با Redactor باز کنید.
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // رنگ و ابعاد لایه پوششی را مشخص کنید.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // منطقه‌ای را برای پاکسازی انتخاب کنید.
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // لایه پوششی را اعمال کرده و سند را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای پاکسازی اسناد"
  description: "GroupDocs.Redaction for .NET به شما اجازه می‌دهد تا محتوای حساس را در انواع فایل‌های مختلف پنهان یا حذف کنید. اطلاعات خود را در حین حفظ فایل‌ها به صورت شفاف و قابل اشتراک‌گذاری، به خوبی محافظت کنید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای پاکسازی قدرتمند"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "متن خصوصی را پیدا کرده و آن را پاک کنید تا امنیت سند افزایش یابد."

    # feature loop
    - title: "پنهان کردن محتوای تصویر"
      content: "لایه‌های پوششی را استفاده کنید تا تصاویر کامل یا بخش‌های انتخاب شده را با هدف پنهان ساختن محتوای بصری خصوصی پوشش دهید."

    # feature loop
    - title: "حذف متا داده"
      content: "متا داده‌های نهان را حذف یا ویرایش کنید تا از نشت داده جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن داده‌های تصویر با لایه‌های پوششی"
      content: |
        این مثال نشان می‌دهد چگونه می‌توان تصاویر حساس را در اسناد پنهان کرد.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  سند مورد نظر را بارگذاری کنید.
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // تنظیمات لایه پوششی: اندازه، موقعیت و رنگ را مشخص کنید.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // بخشی از ناحیه تصویر را در صفحه اول مشخص کنید.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // لایه پوششی را اعمال کنید.
              redactor.Apply(redaction);

              // فایل پنهان شده را ذخیره کنید.
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
    title: "قابل حفاظت از محتوا در PPTX با .NET"
    exclude: "PPTX"
    description: "از .NET برای پنهان کردن یا حذف محتوای حساس در فایل‌های PPTX استفاده کنید. یک راه‌حل مطمئن برای ایمن‌سازی اسناد."
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