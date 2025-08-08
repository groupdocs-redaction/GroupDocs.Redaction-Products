
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پنهان کردن تصاویر در PDF با استفاده از لایه‌های پوششی در C#"
head_description: "با GroupDocs.Redaction for .NET، می‌توانید تصاویر حساس در فایل‌های PDF را با اضافه کردن لایه‌های رنگی محافظت کنید. اطلاعات خصوصی را بدون تغییر layout سند ایمن کنید."

############################# Header ############################
title: "محافظت از تصاویر حساس در اسناد PDF با لایه‌های پوششی با استفاده از .NET" 
description: "اطلاعات تجاری و شخصی را در فایل‌های PDF با استفاده از C# ایمن نگه‌دارید. ابزارهای ما به شما کمک می‌کند تا با کارایی بالا از اطلاعات خود محافظت کنید."
subtitle: "ویژگی‌های GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزارهای قدرتمندی برای پنهان یا حذف محتوا از فایل‌های PDF ارائه می‌دهد. با پوشاندن متن، تصاویر و متا داده‌ها در قالب‌های مختلف، اسناد را با کارایی حفظ کنید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از داده‌های تجاری در اسناد Pdf"
    content: |
      GroupDocs.Redaction for .NET: طوری طراحی شده که به اپلیکیشن‌های .NET شما برای حفاظت از اسناد کمک کند. اطلاعات خصوصی را به سرعت و با کارایی پنهان کنید.
      
      1. یک نمونه از Redactor ایجاد کنید و مسیر فایل Pdf که می‌خواهید ایمن کنید را ارائه دهید.
      2. تنظیمات پاکسازی را برای رسیدن به نتیجه‌ مورد نظر تنظیم کنید.
      3. منطقه تصویر را انتخاب کرده و رنگ لایه پوششی را تنظیم کنید.
      4. فایل را پردازش کرده و سند اصلاح شده را ذخیره کنید.
   
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
        // پنهان کردن محتوای حساس تصویر در PDF

        // فایل را با استفاده از سازنده Redactor بارگذاری کنید.
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // رنگ و اندازه لایه پوششی را پیکربندی کنید.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // منطقه برای پاکسازی را انتخاب کنید.
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // لایه پوششی را به تصویر اعمال کرده و فایل را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پاکسازی محتوا در اسناد"
  description: "با GroupDocs.Redaction for .NET، می‌توانید محتوا را در مجموعه‌ای از قالب‌های فایل پنهان یا حذف کنید. اطلاعات محرمانه را محافظت کرده و در عین حال اسناد را به راحتی خواندنی و قابل اشتراک‌گذاری نگه‌دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ویژگی‌های پیشرفته پاکسازی"
  features:
    # feature loop
    - title: "ویرایش متن در هر جای سند"
      content: "متن حساس را در کل سند خود جستجو و جایگزین کنید تا داده‌های خصوصی را ایمن نگه‌دارید."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "لایه‌های پوششی را به کل تصاویر یا نواحی انتخاب شده اعمال کنید تا مطالب بصری حساس را پنهان کنید."

    # feature loop
    - title: "مدیریت متا داده‌ها"
      content: "متا داده‌های مخفی را برای جلوگیری از افشای غیر عمدی اطلاعات حذف یا تغییر دهید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "استفاده از لایه‌های پوششی برای پنهان کردن داده‌های تصویر"
      content: |
        این مثال نشان می‌دهد که چگونه اطلاعات حساس در تصاویر سند را بپوشانید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  سند را برای پاکسازی بارگذاری کنید.
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // تنظیمات لایه پوششی: اندازه، موقعیت و رنگ را مشخص کنید.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // به یک منطقه خاص تصویر در صفحه اول هدف‌گذاری کنید.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // لایه پوششی را برای پنهان کردن تصویر اعمال کنید.
              redactor.Apply(redaction);

              // سند اصلاح شده را ذخیره کنید.
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
    title: "امنیت بخشی از محتوای PDF با حذف .NET"
    exclude: "PDF"
    description: "با استفاده از .NET می‌توانید محتوای حساس را در فایل‌های PDF پنهان یا حذف کنید. راه حل مؤثری برای ایمن‌سازی مدارک سیاسی و محرمانه."
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