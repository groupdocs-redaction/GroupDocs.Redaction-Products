
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پنهان کردن تصاویر در فایل‌های XLSX با استفاده از لایه‌های پوششی در C#"
head_description: "با GroupDocs.Redaction for .NET، می‌توانید محتوای حساس تصویر را در فایل‌های XLSX با استفاده از لایه‌های رنگی پنهان کنید. اطلاعات مهم را در حالی که ساختار سند را دست نخورده نگه دارید، محافظت کنید."

############################# Header ############################
title: "پنهان کردن تصاویر حساس در اسناد XLSX به‌وسیله .NET" 
description: "اطلاعات خصوصی را در فایل‌های XLSX با C# تضمین کنید. ابزارهای ما برای سریع و مؤثر بودن در پاکسازی تصاویر طراحی شده است."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزارهایی می‌دهد تا محتوای حساس را در فایل‌های XLSX مخفی کنند یا حذف کنند. با پوشاندن متن، تصاویر و متا داده‌ها برای حفظ امنیت اسناد.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از داده‌های خصوصی در اسناد Xlsx"
    content: |
      GroupDocs.Redaction for .NET: به کمک برنامه‌های .NET شما برای تأمین امنیت اسناد به طور مؤثر.
      
      1. یک نمونه از Redactor ایجاد کنید و فایل Xlsx را بارگذاری کنید.
      2. تنظیمات پاکسازی را به‌گونه‌ای تنظیم کنید که به نیازهای شما بخورد.
      3. منطقه تصویر را مشخص کرده و رنگ لایه پوششی را انتخاب کنید.
      4. پاکسازی را اجرا کرده و فایل خروجی را ذخیره کنید.
   
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
        // پنهان کردن بخش‌های حساس تصویر در XLSX

        // ابتدا Redactor را با مسیر فایل مقداردهی کنید.
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // اندازه و رنگ لایه پوششی را انتخاب کنید.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // ناحیه‌ای را تعیین کنید که باید پاک شود.
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // لایه پوششی را اعمال کرده و تغییرات را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های پاکسازی در اسناد"
  description: "با GroupDocs.Redaction for .NET، می‌توانید محتوا را در قالب‌های مختلف فایل پنهان یا حذف کنید. داده‌های حساس را محافظت کرده و اسناد را در عین حال خوانا نگه دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ویژگی‌های قوی پاکسازی"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "سریعاً متن حساس را پیدا کرده و آن را پاک کنید تا داده‌های حساس خود را محافظت کنید."

    # feature loop
    - title: "پنهان کردن محتوای تصاویر"
      content: "لایه‌های پوششی را به تصاویر کامل یا نواحی خاصی اعمال کنید تا مطالب بصری خصوصی را مخفی کنید."

    # feature loop
    - title: "پاکسازی متا داده‌ها"
      content: "متا داده‌های مخفی را حذف یا تنظیم کنید تا از افشای غیر عمدی اطلاعات جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن محتوای تصویر با لایه‌های پوششی"
      content: |
        یاد بگیرید که چگونه مناطق حساس تصویر را در اسناد خود پنهان کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  سند را برای پاکسازی باز کنید.
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // مشخصات لایه پوششی: اندازه، رنگ و موقعیت را مشخص کنید.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // به ناحیه خاصی در تصویر مد نظر در صفحه اول توجه کنید.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // لایه پوششی را به ناحیه تصویر اضافه کنید.
              redactor.Apply(redaction);

              // سند فرم به‌روز شده را ذخیره کنید.
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
    title: "پنهان‌سازی محتوا در فایل‌های XLSX با ابزارهای .NET"
    exclude: "XLSX"
    description: "با استفاده از .NET می‌توانید محتوای حساس را در فایل‌های XLSX پنهان یا حذف کنید. راه حل مطمئن برای امنیت اسناد."
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