
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "پوشاندن متن در XLSX با پوشش‌های C#"
head_description: "GroupDocs.Redaction for .NET به پنهان‌سازی متن در فایل‌های XLSX با استفاده از جعبه‌های رنگی کمک می‌کند. اطلاعات را بدون تغییر در فرمت سند نگه دارید."

############################# Header ############################
title: "پوشاندن متن در فایل‌های XLSX با استفاده از پوشش‌ها و .NET" 
description: "از C# و GroupDocs.Redaction for .NET برای افزودن پوشش‌های ساده که متن حساس را در فایل‌های XLSX شما می‌پوشاند، استفاده کنید."
subtitle: "ویژگی‌های GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "چگونه GroupDocs.Redaction for .NET کمک می‌کند"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# این امکان را می‌دهد که محتوای نامطلوب را در فایل‌های XLSX پنهان کنند. از هر چیزی - از کلمات تا تصاویر - در انواع مختلف فایل‌ها پوشش دهید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از اطلاعات حساس در اسناد Xlsx"
    content: |
      GroupDocs.Redaction for .NET به توسعه‌دهندگان .NET کمک می‌کند تا از فایل‌ها محافظت کنند. محتوای خصوصی را تنها با چند خط کد پوشش دهید.
      
      1. یک شیء Redactor جدید با مسیر فایل Xlsx خود ایجاد کنید.
      2. تنظیمات پوشش را طبق نیاز تنظیم کنید.
      3. الگوی جستجو را اضافه کرده و رنگ پوشش را انتخاب کنید.
      4. پوشش را اجرا کرده و فایل خود را ذخیره کنید.
   
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
        // پوشاندن متن خصوصی در XLSX با استفاده از پوشش‌ها

        // فایل را با Redactor بارگذاری کنید.
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // چگونه پوشش باید کار کند را انتخاب کنید.
            // متن را وارد کرده و رنگ پوشش را انتخاب کنید.
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // فایل را پردازش کنید و تغییرات را ذخیره کنید.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های هوشمند پوشش"
  description: "با استفاده از GroupDocs.Redaction for .NET می‌توانید محتوا را در انواع مختلف فایل‌ها حذف یا پنهان کنید. جزئیات خصوصی را از چشم عموم دور نگه دارید."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ابزارهای کاربردی پوشش"
  features:
    # feature loop
    - title: "هر متنی را تغییر دهید"
      content: "هر رشته‌ای را در سند جستجو و به‌روزرسانی کنید تا داده‌ها را محافظت کنید."

    # feature loop
    - title: "محتوای تصاویر را پوشش دهید"
      content: "مستطیل‌ها یا مستطیل‌ها را برای پوشش بخش‌های حساس از تصاویر اضافه کنید."

    # feature loop
    - title: "پاکسازی متا داده‌ها"
      content: "جزئیات پس‌زمینه فایل را قبل از اشتراک‌گذاری حذف یا نوشتن مجدد کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "همسان‌سازی و پنهان‌سازی با regex"
      content: |
        با نحوه شناسایی و پوشاندن محتوا با استفاده از عبارات منظم آشنا شوید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  مدرک هدف را باز کنید.
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // الگوی جستجو و رنگ پوشش را تنظیم کنید.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // قوانین پوشش را اعمال کنید.
              redactor.Apply(redaction);

              // نسخه تحت پوشش شده را صادر کنید.
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "از .NET برای پنهان‌سازی اطلاعات در فایل‌های XLSX استفاده کنید"
    exclude: "XLSX"
    description: "پوشش‌هایی را اضافه کنید یا قسمت‌هایی از اسناد XLSX خود را برای محافظت از جزئیات حساس با کمک .NET حذف کنید."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 6
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 7
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"


---