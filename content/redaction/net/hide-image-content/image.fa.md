
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "حفاظت از تصاویر در IMAGE با اضافه کردن لایه‌های پوششی با C#"
head_description: "با استفاده از GroupDocs.Redaction for .NET می‌توانید داده‌های حساس تصویر را در فایل‌های IMAGE با استفاده از لایه‌های رنگی پنهان کنید. اطلاعات مهم را در عین حفظ طراحی اصلی فایل محافظت کنید."

############################# Header ############################
title: "پنهان کردن تصاویر خصوصی در فایل‌های IMAGE با استفاده از لایه‌های پوششی با .NET" 
description: "تصاویر حساس شخصی و تجاری را در فایل‌های IMAGE با استفاده از C# ایمن نگه دارید. ابزارهای ساده برای حفاظت سریع و مؤثر محتوا."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزارهای قدرتمندی برای پنهان یا حذف محتوا از فایل‌های IMAGE ارائه می‌دهد. اطلاعات حساس مانند متن، تصاویر و متا داده‌ها را با استفاده از لایه‌های پوششی مخفی کنید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از داده‌ها در فایل‌های Image با لایه‌های پوششی"
    content: |
      از GroupDocs.Redaction for .NET برای پنهان کردن سریع داده‌های خصوصی در اپلیکیشن‌های .NET خود استفاده کنید.
      
      1. یک نمونه از Redactor ایجاد کنید و مسیر فایل Image خود را ارائه دهید.
      2. تنظیمات پاکسازی را به‌دلخواه تغییر دهید.
      3. نواحی تصویر را انتخاب کرده و رنگ‌های لایه پوششی را مشخص کنید.
      4. فایل را پردازش کرده و نسخه ایمن را ذخیره کنید.
   
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
        // حفاظت از محتوای تصویری در IMAGE

        // فایل را با Redactor بارگذاری کنید.
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // ابعاد و رنگ‌های لایه پوششی را تعیین کنید.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // محل ناحیه‌ای که می‌خواهید پنهان کنید را انتخاب کنید.
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // لایه پوششی را اعمال کرده و نتیجه را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان کردن محتوا در قالب‌های مختلف فایل"
  description: "با GroupDocs.Redaction for .NET می‌توانید محتوا را در قالب‌های مختلف فایل پنهان یا حذف کنید. اطلاعات حساس را محافظت کرده و هنگام حفظ فرمت خوانا، آنها را مورد توجه قرار دهید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "کنترل کامل بر روی پاکسازی"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "در سراسر اسناد خود جستجو کنید و متن حساس را برای حفاظت از اطلاعات خصوصی جایگزین کنید."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "لایه‌های پوششی به صورتی برای پوشاندن تمام تصاویر یا بخش‌های انتخاب شده اعمال کنید."

    # feature loop
    - title: "ویرایش متا داده‌ها"
      content: "متا داده‌های پنهان را پاک کرده یا تنظیم کنید تا از افشای اطلاعات جلوگیری شود."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پوشاندن محتوا با لایه‌های پوششی"
      content: |
        این مثال نشان می‌دهد که چگونه لایه‌های پوششی برای پنهان کردن محتوای حساس در تصاویر به کار می‌رود.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل را برای پاکسازی بارگذاری کنید.
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // اندازه، رنگ و محل لایه پوششی را تنظیم کنید.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // یک ناحیه تصویر را در صفحه اول انتخاب کنید.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // لایه پوششی را برای پنهان کردن محتوا اعمال کنید.
              redactor.Apply(redaction);

              // فایل به‌روز شده را ذخیره کنید.
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
    title: "حفاظت از محتوا در فایل‌های IMAGE با استفاده از حذف .NET"
    exclude: "IMAGE"
    description: "از .NET برای پوشاندن یا حذف داده های حساس در IMAGE استفاده کنید. این یک روش قابل اعتماد برای ایمن‌سازی مدارک رسمی و محرمانه است."
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