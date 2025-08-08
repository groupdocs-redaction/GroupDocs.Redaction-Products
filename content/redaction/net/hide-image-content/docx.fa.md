
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پوشاندن تصاویر در DOCX با استفاده از لایه‌های پوششی در C#"
head_description: "از GroupDocs.Redaction for .NET برای پوشاندن تصاویر حساس در فایل‌های DOCX با لایه‌های رنگی استفاده کنید. اطلاعات خصوصی را محافظت کرده و در عین حال layout سند را بدون تغییر نگه دارید."

############################# Header ############################
title: "پوشاندن تصاویر حساس در اسناد DOCX با لایه‌های پوششی با استفاده از .NET" 
description: "اطلاعات شخصی و تجاری را در فایل‌های DOCX با استفاده از C# محافظت کنید. ابزارهای ما حفاظت از داده را ساده و قابل اعتماد می‌سازد."
subtitle: "ویژگی‌های GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزارهایی را برای پنهان یا حذف محتوا در DOCX فایل‌ها می‌دهد. با پوشاندن متن، تصاویر و متا داده‌ها در قالب‌های مختلف، اسناد را ایمن نگه دارید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از داده‌ها در فایل‌های Docx"
    content: |
      GroupDocs.Redaction for .NET: ساخته شده برای کمک به اپلیکیشن‌های .NET شما برای تأمین امنیت اسناد. اطلاعات حساس را با تنها چند مرحله پنهان کنید.
      
      1. یک Redactor را مقداردهی اولیه کرده و مسیر فایل Docx خود را ارائه دهید.
      2. گزینه‌های پاکسازی را به منظور تأمین نیازهای خود پیکربندی کنید.
      3. منطقه تصویر را انتخاب کنید و رنگ لایه پوششی را انتخاب کنید.
      4. پاکسازی را اجرا کرده و فایل را ذخیره کنید.
   
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
        // پوشاندن نواحی تصاویر حساس در DOCX

        // بارگذاری فایل از طریق سازنده Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // تنظیم رنگ و اندازه لایه پوششی
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // تعیین ناحیه پاکسازی
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // لایه پوششی را اعمال کرده و سند را ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پاکسازی محتوا در فایل‌ها"
  description: "با GroupDocs.Redaction for .NET، می‌توانید محتوای حساس را در انواع مختلف فایل‌ها پنهان یا حذف کنید. اسناد را در عین حال ایمن نگه داشته و خواندنی باقی بگذارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "گزینه‌های انعطاف پذیر پاکسازی"
  features:
    # feature loop
    - title: "ویرایش متن به سادگی"
      content: "متن خصوصی را در کل سند خود جستجو و جایگزین کنید تا امنیت داده‌ها بهبود یابد."

    # feature loop
    - title: "پوشاندن نواحی تصاویر"
      content: "لایه پوششی را به کل تصاویر یا قسمت‌های خاصی اعمال کنید تا اطلاعات بصری محافظت شود."

    # feature loop
    - title: "پاک کردن متا داده‌ها"
      content: "متا داده‌های مخفی را برای جلوگیری از نشت غیر عمدی اطلاعات حذف یا تغییر دهید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "اعمال لایه‌های پوششی برای پنهان کردن جزئیات تصویر"
      content: |
        این مثال نشان می‌دهد چگونه نواحی حساس را در تصاویر اسناد پنهان کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  سند را که می‌خواهید پاک کنید بارگذاری کنید.
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // پارامترهای لایه پوششی: اندازه، موقعیت و رنگ را مشخص کنید.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // به یک ناحیه خاص در صفحه اول هدف‌گذاری کنید.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // لایه پوششی را روی تصویر قرار دهید.
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
    title: "حفاظت از فایل‌های DOCX با حذف .NET"
    exclude: "DOCX"
    description: "از .NET برای پوشاندن یا حذف اطلاعات حساس در DOCX فایل‌ها استفاده کنید. ایده‌آل برای نگهداری اسناد محرمانه به‌صورت ایمن."
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