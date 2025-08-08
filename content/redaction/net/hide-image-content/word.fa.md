
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fa
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پوشاندن تصاویر در WORD با استفاده از لایه‌های پوششی در C#"
head_description: "نواحی حساس تصویر را در فایل‌های WORD با استفاده از GroupDocs.Redaction for .NET پنهان کنید. لایه‌های رنگی اضافه کنید تا داده‌های خصوصی را در عین حفظ layout اصلی سند محافظت کنید."

############################# Header ############################
title: "پوشاندن تصاویر خصوصی در فایل‌های WORD با لایه‌های پوششی با استفاده از .NET" 
description: "اطلاعات شخصی و تجاری را در اسناد WORD با C# ایمن کنید. با ابزارهای ساده ما، حفاظت پایدار محتوا را به‌دست آورید."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# ابزارهای لازم برای پنهان یا حذف محتوای حساس از فایل‌های WORD می‌دهد. پرونده‌های خود را با پوشاندن متن، تصاویر و متا داده‌ها ایمن کنید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از داده‌های حساس در فایل‌های Word"
    content: |
      GroupDocs.Redaction for .NET به اپلیکیشن‌های .NET شما کمک می‌کند تا سریعاً محتواهای خصوصی را پنهان کنید.
      
      1. یک شیء Redactor ایجاد کرده و مسیر فایل Word را ارائه دهید.
      2. تنظیمات پاکسازی را مطابق با نیازهای خود تعیین کنید.
      3. منطقه تصویر را علامت‌گذاری کرده و رنگ لایه پوششی را تعیین کنید.
      4. پاکسازی را پردازش کرده و فایل اصلاح شده را ذخیره کنید.
   
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
        // پوشاندن تصاویر حساس در WORD

        // فایل را با استفاده از سازنده Redactor بارگذاری کنید.
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // رنگ و ابعاد لایه پوششی را انتخاب کنید.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // منطقه تصویر لیست برای پاک کردن را انتخاب کنید.
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
  title: "پنهان یا حذف محتوا از اسناد"
  description: "GroupDocs.Redaction for .NET به شما کمک می‌کند تا در قالب‌های مختلف فعالیت‌های امنی را صورت دهید. اطلاعات حساس را در عین حفاظت از خوانایی اسناد، ایمن نگه دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای دقیق برای پاکسازی"
  features:
    # feature loop
    - title: "جایگزینی متن در هر کجا"
      content: "به راحتی متن حساس را در سراسر اسناد خود جستجو و جایگزین کنید تا اطلاعات خصوصی محافظت شود."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "لایه‌های پوششی را به نواحی تصویری خاص اضافه کنید یا به کل تصاویر اعمال کنید تا بصری‌های خصوصی پنهان شوند."

    # feature loop
    - title: "پاکسازی متا داده"
      content: "متا داده‌های نامشهود را پاک کرده یا اصلاح کنید تا جلوگیری از نشت اطلاعات ناخواسته."
      
  code_samples_ext:
    # code sample ext loop
    - title: "اضافه کردن لایه‌های پوششی برای پنهان کردن محتوای تصویر"
      content: |
        این مثال نشان می‌دهد که چگونه با استفاده از لایه‌های پوششی، داده‌های حساس را در تصاویر اسناد پنهان کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  سند را برای ویرایش بارگذاری کنید.
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // قطع و زیبایی لایه پوششی را تنظیم کنید.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // به ناحیه خاصی در صفحه اول توجه کنید.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // لایه پوششی را برای پنهان کردن تصویر اعمال کنید.
              redactor.Apply(redaction);

              // تغییرات را در فایل ذخیره کنید.
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
    title: "محافظت از محتوای WORD با حذف .NET"
    exclude: "WORD"
    description: ".NET به شما اجازه می‌دهد تا محتوای حساس را در فایل‌های WORD پنهان یا حذف کنید. روشی قابل اعتماد برای حفاظت از مدارک محرمانه و رسمی."
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