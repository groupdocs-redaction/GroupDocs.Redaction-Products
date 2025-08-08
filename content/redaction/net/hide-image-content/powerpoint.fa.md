
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پنهان کردن تصاویر حساس در POWERPOINT با استفاده از لایه‌های پوششی همراه با C#"
head_description: "از GroupDocs.Redaction for .NET برای استفاده از لایه‌های پوششی در تصاویر POWERPOINT استفاده کنید و اطلاعات خصوصی را پنهان کنید و layout را بدون تغییر نگه دارید."

############################# Header ############################
title: "پنهان کردن تصاویر خصوصی در اسناد POWERPOINT با لایه‌های پوششی با .NET" 
description: "اطلاعات شخصی و شرکتی را در فایل‌های POWERPOINT با استفاده از C# ایمن کنید. ابزارهای ساده برای حفاظت قوی در اسناد."
subtitle: "ویژگی‌های اصلی GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزارهای کارآمدی برای پنهان کردن یا حذف محتوای حساس از فایل‌های POWERPOINT می‌دهد. اطلاعات را با پوشاندن متن، تصاویر و متا داده‌ها ایمن کنید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از اطلاعات حساس در اسناد Powerpoint"
    content: |
      GroupDocs.Redaction for .NET برای کمک به برنامه‌های .NET شما در حفاظت از محتواهای حساس به کمک طراحی شده است.
      
      1. یک نمونه از Redactor ایجاد کنید و فایل Powerpoint خود را بارگذاری کنید.
      2. تنظیمات پاکسازی را به‌گونه‌ای تنظیم کنید که تمام نیازهای شما را پوشش دهد.
      3. منطقه‌های تصویر را انتخاب کرده و رنگ‌های لایه پوششی را تخصیص دهید.
      4. پاکسازی را پردازش کرده و سند خود را ذخیره کنید.
   
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
        // پنهان کردن مناطقی از تصاویر حساس در POWERPOINT

        // فایل را با استفاده از Redactor باز کنید.
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // ابعاد و رنگ لایه پوششی را تنظیم کنید.
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
  title: "ابزارهای پاکسازی محتوای اسناد"
  description: "GroupDocs.Redaction for .NET به شما اجازه می‌دهد تا در فایل‌های مختلف محتوا را پنهان یا حذف کنید. داده‌های خصوصی را محافظت کنید و در عین حال اسناد را ساده و قابل اشتراک‌گذاری نگه‌دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای قدرتمند پاکسازی"
  features:
    # feature loop
    - title: "جستجو و ویرایش متن"
      content: "حسابرسی متون حساس و حذف آنها به منظور افزایش امنیت اسناد."

    # feature loop
    - title: "پنهان کردن محتوای تصاویر"
      content: "با استفاده از لایه‌های پوششی، تمام تصاویر یا نواحی انتخاب شده را پنهان کنید."

    # feature loop
    - title: "حذف متا داده‌ها"
      content: "متا داده‌های نامعلوم را حذف یا اصلاح کنید تا پیشگیری از نشت داده‌های ناخواسته انجام شود."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن داده‌های تصویر با لایه‌های پوششی"
      content: |
        این مثال نشان می‌دهد که چگونه داده‌های حساس را در تصاویر سند پنهان کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  فایل را بارگذاری کنید.
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // تنظیم اندازه، محل و رنگ لایه پوششی را مشخص کنید.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // منطقه‌ای را برای پنهان کردن تصویر روی صفحه اول نشانه‌گذاری کنید.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // لایه پوششی را اعمال کنید.
              redactor.Apply(redaction);

              // فایل پنهان‌شده را ذخیره کنید.
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
    title: "محافظت از محتوا در POWERPOINT با استفاده از .NET"
    exclude: "POWERPOINT"
    description: "با استفاده از .NET می‌توانید محتواهای حساس را از POWERPOINT پنهان یا حذف کنید. راه حل مطمئنی برای ایمن‌سازی اسناد حساس."
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