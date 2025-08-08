
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پنهان کردن تصاویر در JPEG با استفاده از لایه‌های پوششی در C#"
head_description: "با استفاده از GroupDocs.Redaction for .NET، می‌توانید تصاویر خصوصی را در فایل‌های JPEG با اضافه کردن لایه‌های رنگی پنهان کنید. با ایمن نگه‌داشتن اطلاعات حساس بدون تغییر layout فایل."

############################# Header ############################
title: "پوشاندن تصاویر حساس در فایل‌های JPEG با لایه‌های پوششی با .NET" 
description: "اطلاعات تجاری و شخصی را در فایل‌های JPEG با C# ایمن نگه‌دارید. ابزارهای ساده ما حفاظت قابل اعتمادی را برای فایل فراهم می‌کند."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزاری برای پنهان یا حذف محتوا در فایل‌های JPEG ارائه می‌دهد. داده‌ها، تصاویر و متا داده‌ها را به صورت مؤثری برای امنیت اسناد پنهان کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حفاظت از داده‌های حساس در فایل‌های Jpeg"
    content: |
      GroupDocs.Redaction for .NET برای کمک به اپلیکیشن‌های .NET شما در پنهان کردن سریع محتوا طراحی شده است.
      
      1. یک نمونه از Redactor ایجاد کنید و مسیر فایل Jpeg خود را بدهید.
      2. تنظیمات پاکسازی را مطابق نیازتان تنظیم کنید.
      3. منطقه تصویر را علامت‌گذاری کرده و رنگ لایه پوششی را انتخاب کنید.
      4. پاکسازی را اجرا کرده و فایل محافظت‌شده را ذخیره کنید.
   
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
        // پنهان کردن محتوای تصویر در فایل‌های JPEG

        // فایل را با Redactor بارگذاری کنید.
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // اندازه و رنگ لایه پوششی را تنظیم کنید.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // ناحیه‌ای را برای پنهان کردن انتخاب کنید.
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // لایه پوششی را اعمال کرده و فایل را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان‌سازی هر محتوایی در اسناد"
  description: "GroupDocs.Redaction for .NET به شما کمک می‌کند تا محتوا را در انواع مختلف فایل‌ها پنهان یا حذف کنید. اطلاعات حساس خود را محافظت کرده و در عین حال اسناد را علمی و قابل اشتراک‌گذاری نگه‌دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای پاکسازی برای کنترل کامل"
  features:
    # feature loop
    - title: "ویرایش متن در هر جای صفحات"
      content: "متن حساس را در کل سند‌ها بیابید و جایش را با دقت پر کنید."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "لایه‌های پوششی را به تصاویر یا مناطق خاص اعمال کنید تا اطلاعات بصری حساسی را پنهان کنید."

    # feature loop
    - title: "پاکسازی متا داده‌ها"
      content: "متا داده‌های پنهان را حذف یا اصلاح کنید تا از افشای ناخواسته اطلاعات جلوگیری شود."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن داده‌های تصویر با لایه‌های پوششی"
      content: |
        این مثال نشان می‌دهد چگونه با اعمال لایه‌های پوششی، مناطق حساس تصویر را در فایل‌ها پنهان کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  سند را برای ویرایش بارگیری کنید.
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // پس از مشخص کردن ابعاد و وضعیت لایه پوششی اقدام کنید.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // منطقه‌ای از تصویر بر روی صفحه یک را مشخص کنید.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // لایه پوششی را اعمال کنید تا تصویر را پنهان کنید.
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
    title: "حفاظت از فایل‌های JPEG با استفاده از .NET"
    exclude: "JPEG"
    description: "با استفاده از .NET می‌توانید به راحتی محتوای حساس را در JPEG فایل‌ها پوشانده یا حذف کنید. راه حلی مطمئن برای حفاظت از مدارک حرفه‌ای."
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