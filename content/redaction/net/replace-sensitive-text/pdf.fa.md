
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#: پاکسازی متن حساس از PDF"
head_description: "اطلاعات خصوصی را در فایل‌های PDF خود با استفاده از GroupDocs.Redaction for .NET محافظت کنید. به راحتی داده‌های حساس را جستجو و پاکسازی کنید."

############################# Header ############################
title: "حذف متن حساس از اسناد PDF با استفاده از .NET" 
description: "با استفاده از C# و GroupDocs.Redaction for .NET کنترل کامل بر محتوای فایل‌های PDF خود داشته باشید. داده‌های شخصی، قانونی یا محرمانه را پاکسازی کنید."
subtitle: "آنچه می‌توانید با GroupDocs.Redaction for .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET چیست؟"
    link: "/redaction/net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET به توسعه‌دهندگان C# همه‌چیز را برای پاکسازی محتوای PDF می‌دهد. متن، تصاویر، یادداشت‌ها، نظرات و داده‌های متا را در انواع فایل‌های محبوب تمیز کنید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه محتوای فایل‌های Pdf را پاکسازی کنیم"
    content: |
      با استفاده از GroupDocs.Redaction for .NET در هر برنامه .NET اسناد خود را محافظت کنید. متن حساس را سریع و دقیق پاکسازی کنید.
      
      1. یک Redactor را راه‌اندازی کرده و فایل Pdf خود را بارگذاری کنید.
      2. گزینه‌های پاکسازی مورد نیاز خود را تنظیم کنید.
      3. متن مورد جستجو و متن جایگزین را مشخص کنید.
      4. عملیات پاکسازی را انجام داده و فایل را ذخیره کنید.
   
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
        // چگونه متن را در فایل PDF پاکسازی کنیم

        // فایل خود را با استفاده از سازنده Redactor بارگذاری کنید
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // ترجیحات پاکسازی خود را تنظیم کنید
            // انتخاب کنید که چه چیزی را جستجو و با چه چیزی جایگزین کنید
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // پاکسازی‌ها را انجام داده و فایل جدید PDF را ذخیره کنید
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "روش‌های بیشتر برای پاکسازی اسناد"
  description: "GroupDocs.Redaction for .NET به شما کمک می‌کند تا محتوای حساس را در چندین فرمت فایل حذف یا پنهان کنید. اسناد را پاک و امن برای به اشتراک‌گذاری نگه دارید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ابزارها و گزینه‌های پاکسازی"
  features:
    # feature loop
    - title: "متن محرمانه را جایگزین کنید"
      content: "متن‌های تطابقی را در هر جایی از فایل خود پیدا و جایگزین کنید. از عبارات با قاعده و گزینه‌های جستجوی هوشمند پشتیبانی می‌کند."

    # feature loop
    - title: "تصاویر حساس را پنهان کنید"
      content: "تصاویر یا مناطق خاصی را با پوشش‌ها پوشش دهید. تنظیمات صفحه، رنگ‌ها و بیشتر را تنظیم کنید."

    # feature loop
    - title: "اطلاعات متا مخفی را پاک کنید"
      content: "داده‌های مخفی مانند نویسندگی، زمان‌ها یا نظرات را برای محافظت از حریم خصوصی حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پاکسازی متن با استفاده از Regex"
      content: |
        از عبارات با قاعده برای جستجو و پاکسازی الگوهای حساس مانند ایمیل یا شناسه‌ها استفاده کنید.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  سند مورد نظر خود را برای پاکسازی باز کنید
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // یک الگوی REGEX ایمیل و متن جایگزین را تعریف کنید
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // قوانین پاکسازی را اعمال کنید
              redactor.Apply(redaction);

              // فایل نهایی پاکسازی شده را ذخیره کنید
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "محتوا را در PDF با استفاده از .NET پاکسازی کنید"
    exclude: "PDF"
    description: "داده‌های رسمی و شخصی را با پاکسازی متن در فایل‌های PDF با استفاده از ابزارهای .NET محافظت کنید. اسناد را امن و خصوصی نگه دارید."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 6
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 7
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"


---