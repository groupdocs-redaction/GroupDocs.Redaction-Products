---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: fa
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "حذف داده‌های حساس در مستندات خود با استفاده از .NET"
head_description: "مدارک کسب و کار خود را با GroupDocs.Redaction for .NET ایمن کنید. به راحتی محتوای محرمانه را از PDFها، مستندات ورد، اکسل، پاورپوینت و فایل‌های تصویر حذف، پوشش یا حذف کنید."

############################# Header ############################
title: "محتوای خود را با GroupDocs.Redaction ایمن کنید"
description: "با استفاده از راهکار قدرتمند .NET، اطلاعات حساس و متادیتا را از PDFها، مستندات ورد، صفحات گسترده، ارائه‌ها، و تصاویر حذف، پوشش یا به‌طور دائمی حذف کنید."
words:
  for: "برای"

actions:
  main: "دانلود Nuget"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "مجوزدهی"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "آیا آماده‌اید شروع کنید؟"
  description: "ویژگی‌های GroupDocs.Redaction را به صورت رایگان امتحان کنید یا درخواست مجوز کنید."

release:
  title: "نسخه {0} منتشر شد"
  notes: "ببینید چه خبر است"
  downloads: "دانلودها"

code:
  title: "چگونه محتوای فایل را حذف کنیم"
  more: "نمونه‌های بیشتر"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // فایل ورودی را به یک نمونه از Redactor انتقال دهید
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // گزینه‌های حذف را پیکربندی کنید
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // فرآیند حذف را اجرا کنید
        RedactorChangeLog result = redactor.Apply(red);

        // فایل حذف شده را ذخیره کنید
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction در یک نگاه"
  description: "ابزارهای حذف محتوای حرفه‌ای را به برنامه‌های .NET خود اضافه کنید"
  features:
    # feature loop
    - title: "حذف محتوای متنی"
      content: "GroupDocs.Redaction for .NET به شما این امکان را می‌دهد که متن حساس را پیدا کرده و حذف کنید. متن می‌تواند با پوشش‌های تصویری رنگی برای امنیت بیشتر جایگزین یا پنهان شود. این ویژگی در انواع مختلفی از فرمت‌ها از جمله PDFها و مستندات آفیس پشتیبانی می‌شود و به محافظت از داده‌های خصوصی و تسهیل رعایت قوانین کمک می‌کند."

    # feature loop
    - title: "حذف تصاویر"
      content: "به‌طور خودکار تصاویر را شناسایی و حذف کنید—به‌طور کامل یا جزئی—در صفحات مستندات. معیارهای جستجو و نواحی هدف را برای پنهان‌سازی محتوای بصری حساس به‌طور مؤثر مشخص کنید."

    # feature loop
    - title: "مدیریت متادیتای فایل"
      content: "بسیاری از نوع فایل‌ها دارای متادیتای پنهانی هستند، مانند نام نویسنده در فایل‌های ورد یا داده‌های EXIF در تصاویر. GroupDocs.Redaction for .NET پیدا کردن و حذف این اطلاعات را ساده می‌کند تا تمام حریم خصوصی داده‌ها محفوظ بماند."

    # feature loop
    - title: "حذف اشیاء مستند"
      content: "با حذف عناصر خاص مستند مانند حاشیه‌نویسی‌ها، نظرات و اشیاء جاسازی شده در فرمت‌هایی مانند PDFها، از حفاظت کامل محتوای اطلاعات اطمینان حاصل کنید."

############################# Platforms ############################
platforms:
  enable: true
  title: "استقلال پلتفرم"
  description: "GroupDocs.Redaction for .NET با مجموعه گسترده‌ای از سیستم‌عامل‌ها، فریم‌ورک‌های توسعه و مدیریت بسته‌ها سازگار است."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "فرمت‌های فایل پشتیبانی شده"
  description: |
    GroupDocs.Redaction for .NET از عملیات با فرمت‌های [فایل زیر]( https://docs.groupdocs.com/redaction/net/supported-document-formats/ ) پشتیبانی می‌کند.
  groups:
    # group loop
    - color: "green"
      content: |
        ### فرمت‌های MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### فرمت‌های دیگر Office
        * **قابل حمل:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **فرمت‌های متنی:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### فرمت‌های دیگر
        * **وب:** HTM, HTML, MD
        * **تصاویر:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **کتاب‌های الکترونیکی:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "GroupDocs.Redaction for .NET ویژگی‌ها"
  description: "داده‌ها را از PDFها، فایل‌های Office و تصاویر با سرعت و دقت بالا استخراج و حذف کنید."

  items:
    # feature loop
    - icon: "search"
      title: "جستجوی انعطاف‌پذیر"
      content: "جستجوهای حساس به حالت یا غیرحساس به حالت را برای حذف عبارات یا اصطلاحات خاص انجام دهید."

    # feature loop
    - icon: "text"
      title: "جایگزینی یا حذف متن"
      content: "به راحتی متن‌های حساس را در تمام مستندات خود پیدا کرده و جایگزین یا حذف کنید."

    # feature loop
    - icon: "image"
      title: "پنهان کردن متن با تصاویر"
      content: "از پوشش‌های تصویری رنگی برای بصری‌سازی محتوای حذف شده به‌جای جایگزینی متن استفاده کنید."

    # feature loop
    - icon: "search"
      title: "قابلیت‌های جستجوی پیشرفته"
      content: "از عبارات منظم برای حذف محتوای دقیق و انعطاف‌پذیر در مجموعه‌های داده پیچیده استفاده کنید."

    # feature loop
    - icon: "table"
      title: "حذف هدفمند"
      content: "صفحات خاص یا نواحی تعریف شده را هدف قرار دهید تا حذف را تنها به بخش‌های مرتبط محدود کنید."

    # feature loop
    - icon: "template"
      title: "حذف متادیتا"
      content: "ویژگی‌های متادیتا را پیدا کرده و آنها را حذف کنید تا جزئیات مالکیت و ایجاد مستندات محفوظ بماند."

    # feature loop
    - icon: "pdf"
      title: "فرمت‌های خروجی انعطاف‌پذیر"
      content: "فایل‌های حذف شده را به PDF یا هر فرمت پشتیبانی شده دیگر صادر کنید در حالی که یکپارچگی چیدمان محفوظ می‌ماند."

    # feature loop
    - icon: "template"
      title: "حذف کامل متادیتا"
      content: "تمام متادیتا را در یک اقدام از یک مستند حذف کنید تا حداکثر حریم خصوصی را تضمین کنید."

    # feature loop
    - icon: "hyperlink"
      title: "قوانین حذف بر اساس XML"
      content: "سیاست‌های حذف را در فرمت XML تعریف کنید تا فرآیندهای تکراری و خودکار را بین چندین فایل انجام دهید."


############################# Code samples ############################
code_samples:
  enable: true
  title: "نمونه‌های کد"
  description: "نمونه‌های متداول کاربرد GroupDocs.Redaction for .NET در عمل"
  items:
    # code sample loop
    - title: "حذف با عبارات منظم"
      content: |
        GroupDocs.Redaction for .NET به توسعه‌دهندگان C# این امکان را می‌دهد که با استفاده از [عبارات منظم]( https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression ) متنی را حذف کرده و آن را با پوشش‌های تصویری مخفی کنند:
        {{< landing/code title="حذف مستندات ورد با استفاده از عبارات منظم">}}
        ```csharp {style=abap}
        // یک نمونه از کلاس Redactor ایجاد کنید
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // قواعد حذف را با استفاده از یک عبارت منظم تعریف کنید
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // تمام متن‌های تطبیق یافته را با پوشش‌های مربعی آبی ماسک کنید
            redactor.Apply(redaction);

            // مستند ورد حذف شده را ذخیره کنید
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "پاک‌سازی متادیتا"
      content: |
        با استفاده از API ما به آسانی می‌توانید [تمام متادیتا]( https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata ) را از فرمت‌های فایل پشتیبانی شده حذف کنید:
        {{< landing/code title="حذف تمام متادیتا از ارائه‌ها">}}
        ```csharp {style=abap}   
        // مسیر ارائه را به Redactor ارائه دهید
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // گزینه‌های حذف را تنظیم کنید
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // تمام متادیتا را از ارائه پاک کنید
            redactor.Apply(redaction);

            // فایل ارائه تمیز شده را ذخیره کنید
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
