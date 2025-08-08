
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "اضافه کردن لایه‌های پوششی برای پنهان کردن تصاویر در PHOTO به کمک C#"
head_description: "محتوای حساس تصویر را در فایل‌های PHOTO با GroupDocs.Redaction for .NET با اعمال لایه‌های پوششی پنهان کنید. اطلاعات خصوصی را در عین حفظ قالب اصلی سند نگه‌دارید."

############################# Header ############################
title: "پنهان کردن محتوای تصویر در PHOTO فایل‌ها با لایه‌های پوششی به کمک .NET" 
description: "حفاظت از تصاویر شخصی و تجاری در فایل‌های PHOTO با استفاده از C#. ابزارهای آسان برای حفاظت موثر از محتوا."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزار قدرتمندی برای پنهان یا حذف محتوای حساس از فایل‌های PHOTO می‌دهد. اطلاعات را با پوشاندن تصاویر، متون و متا داده‌ها محافظت کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حفاظت از محتوا در فایل‌های Photo"
    content: |
      GroupDocs.Redaction for .NET کار را برای شما ساده و سریع‌تر می‌کند تا محتوا را در اپلیکیشن‌های .NET خود به محافظت درآورید.
      
      1. یک شیء Redactor ایجاد کرده و به فایل Photo خود بروید.
      2. تنظیمات پاکسازی را بر اساس نیازتان تنظیم کنید.
      3. نواحی تصویر را انتخاب کنید و رنگ لایه پوششی را تعیین کنید.
      4. پاکسازی را پردازش کرده و نسخه ایمن از فایل را ذخیره کنید.
   
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
        // اعمال لایه‌های پوششی برای پنهان کردن تصاویر در PHOTO

        // فایل را با استفاده از Redactor بارگذاری کنید.
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // ابعاد و رنگ‌های لایه پوششی را مشخص کنید.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // منطقه‌ای را برای مخفی کردن انتخاب کنید.
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // لایه پوششی را اعمال کرده و نتایج را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهانی هر محتوایی"
  description: "GroupDocs.Redaction for .NET به شما اجازه می‌دهد تا محتوا را در قالب‌های مختلف فایل پنهان یا حذف کنید. حفاظت از داده‌ها در حین حفظ فرمت‌های خوانا."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای پاکسازی جامع"
  features:
    # feature loop
    - title: "ویرایش متن در اسناد"
      content: "متن خصوصی را در مدارک خود جستجو و جایگزین کنید تا اطلاعات حساس ایمن بمانند."

    # feature loop
    - title: "پنهان کردن نواحی تصویر"
      content: "لایه‌های پوششی را به تصاویر یا بخش‌های انتخاب شده اضافه کنید تا بصری‌های حساس را بپوشانید."

    # feature loop
    - title: "پاکسازی متا داده‌ها"
      content: "متا داده‌های پنهان را حذف یا تغییر دهید تا از نشت ناخواسته اطلاعات جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن داده‌های تصویر با لایه‌های پوششی"
      content: |
        این مثال نشان می‌دهد که چگونه از لایه‌های پوششی برای پنهان کردن نواحی حساس در یک فایل استفاده کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل را برای ویرایش بارگذاری کنید.
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // موقعیت، اندازه و رنگ لایه پوششی را تنظیم کنید.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // ناحیه‌ای از تصویر در صفحه را هدف‌گذاری کنید.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // لایه پوششی را برای پنهان کردن تصویر اعمال کنید.
              redactor.Apply(redaction);

              // فایل اصلاح‌شده را ذخیره کنید.
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
    title: "محافظت از فایل‌های PHOTO با استفاده از .NET"
    exclude: "PHOTO"
    description: "با استفاده از .NET می‌توانید به راحتی محتوای حساس را از PHOTO پوشانده یا حذف کنید. این یک راه حل ایده‌آل برای حفاظت از مدارک و اطلاعات محرمانه است."
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