---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: fa
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

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
head_title: "حذف داده‌های محرمانه از مستندات با استفاده از Java"
head_description: "اطلاعات حساس خود را با GroupDocs.Redaction for Java ایمن کنید. به سادگی محتوای خصوصی را در PDFها، فایل‌های آفیس و تصاویر مخفی، حذف یا حذف کنید."

############################# Header ############################
title: "حفاظت از داده‌های محرمانه با GroupDocs.Redaction"
description: "با استفاده از ابزارهای مطمئن Java، به راحتی داده‌های خصوصی را حذف کنید، متن را پاک کنید و متادیتا را تمیز کنید."
words:
  for: "برای"

actions:
  main: "دانلود Maven"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "مجوزدهی"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "آیا آماده‌اید شروع کنید؟"
  description: "ویژگی‌های GroupDocs.Redaction را به صورت رایگان امتحان کنید یا درخواست مجوز کنید."

release:
  title: "نسخه {0} منتشر شد"
  notes: "ببینید چه خبر است"
  downloads: "دانلودها"

code:
  title: "مراحل حذف محتوای مستند"
  more: "نمونه‌های بیشتر"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // فایل منبع خود را با یک نمونه از Redactor بارگذاری کنید
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // معیارها و تنظیمات حذف را تعریف کنید
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // عملیات حذف را اجرا کنید
        RedactorChangeLog result = redactor.apply(red);

        // فایل را با تغییرات اعمال شده ذخیره کنید
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction در یک نگاه"
  description: "برنامه‌های Java خود را با ابزارهای حرفه‌ای حذف تقویت کنید"
  features:
    # feature loop
    - title: "حذف متن حساس"
      content: "GroupDocs.Redaction for Java به شما این امکان را می‌دهد که متن خصوصی را جستجو کرده و با پوشش‌های قابل تنظیم یا جایگزینی پنهان کنید. سازگار با PDFها، ورد، اکسل و بیشتر، این ابزار ایده‌آل برای رعایت قوانین و اشتراک ایمن مستندات است."

    # feature loop
    - title: "پنهان‌سازی تصاویر"
      content: "به طور کامل یا جزئی، بر اساس نیاز خود تصاویر را شناسایی و پنهان کنید. قواعد شناسایی و مختصات ناحیه را برای تأمین امنیت داده‌های بصری به‌طور مؤثر تعریف کنید."

    # feature loop
    - title: "پاک‌سازی متادیتای جاسازی شده"
      content: "فایل‌ها ممکن است اطلاعات پنهانی مانند نام نویسندگان، ابزارهای ایجاد یا جزئیات دستگاه‌ها را در خود داشته باشند. GroupDocs.Redaction for Java به شما این امکان را می‌دهد که متادیتا را در فایل‌های ورد، اکسل، تصاویر و سایر فرمت‌ها شناسایی و پاکسازی کنید."

    # feature loop
    - title: "حذف اشیاء جاسازی شده"
      content: "مستندات را به طور کامل پاکسازی کنید و اشیاء خاص مانند حاشیه‌نویسی‌های PDF، نظرات یا مواردی دیگر را حذف کنید تا هرگونه نشانه از اطلاعات محرمانه حذف شود."

############################# Platforms ############################
platforms:
  enable: true
  title: "استقلال پلتفرم"
  description: "GroupDocs.Redaction for Java بر روی عمده‌ترین سیستم‌عامل‌ها، فریم‌ورک‌ها و پلتفرم‌های توسعه کار می‌کند."
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
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "فرمت‌های فایل پشتیبانی شده"
  description: |
    GroupDocs.Redaction for Java از کار بر روی [فرمت‌های فایل زیر]( https://docs.groupdocs.com/redaction/java/supported-document-formats/ ) پشتیبانی می‌کند.
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
  title: "آنچه می‌توانید با GroupDocs.Redaction انجام دهید"
  description: "به سرعت محتوای PDFها، مستندات آفیس و تصاویر را پیدا کرده و حذف کنید."

  items:
    # feature loop
    - icon: "search"
      title: "جستجو با دقت"
      content: "از حالت‌های جستجوی حساس به حالت و غیرحساس به حالت برای پیدا کردن و حذف تطابق‌های دقیق استفاده کنید."

    # feature loop
    - icon: "text"
      title: "پیدا و جایگزینی متن"
      content: "به طور خودکار متن‌های محرمانه را در سراسر مستند شناسایی و جایگزین یا حذف کنید."

    # feature loop
    - icon: "image"
      title: "پوشش با تصاویر سفارشی"
      content: "از بلوک‌های تصویری برای پنهان‌سازی متن حذف شده استفاده کنید، در حالی که چیدمان را حفظ می‌کنید."

    # feature loop
    - icon: "search"
      title: "استفاده از Regex برای حذف پیشرفته"
      content: "با استفاده از عبارات منظم، الگوهای پیچیده را شناسایی کرده و به طور هوشمند حذف کنید."

    # feature loop
    - icon: "table"
      title: "حذف نواحی خاص"
      content: "حذف را به صفحات یا نواحی مشخص محدود کنید با تعریف نواحی دقیق برای هدف قرار دادن."

    # feature loop
    - icon: "template"
      title: "پاکسازی فیلدهای متادیتا"
      content: "متادیتاهای اسنادی را شناسایی و پاکسازی کنید، از جمله نویسنده، شرکت یا داده‌های ردیابی."

    # feature loop
    - icon: "pdf"
      title: "صادرات در فرمت دلخواه"
      content: "فایل‌های حذف شده را بدون از دست دادن یکپارچگی چیدمان در PDF یا فرمت‌های دیگر ذخیره کنید."

    # feature loop
    - icon: "template"
      title: "پاک‌سازی تمام متادیتا"
      content: "تمام متادیتا را با یک فرمان از فایل‌های پشتیبانی شده به‌طور کامل حذف کنید."

    # feature loop
    - icon: "hyperlink"
      title: "سیاست‌های حذف خودکار"
      content: "پیکربندی‌های قابل استفاده مجدد برای حذف را در XML ایجاد کرده و برای حذف‌های انبوه سازگار استفاده کنید."


############################# Code samples ############################
code_samples:
  enable: true
  title: "نمونه‌های کد"
  description: "نمونه‌های مرسوم استفاده از GroupDocs.Redaction for Java"
  items:
    # code sample loop
    - title: "حذف با استفاده از Regex"
      content: |
        GroupDocs.Redaction for Java به توسعه‌دهندگان Java این امکان را می‌دهد که با استفاده از [حذف مبتنی بر regex]( https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression ) به همراه پوشش‌های تصویری: 
        {{< landing/code title="حذف مستندات ورد با استفاده از عبارات منظم">}}
        ```java {style=abap}
        // یک نمونه از کلاس Redactor ایجاد کنید
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // قواعد حذف را با استفاده از یک عبارت منظم تعریف کنید
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // تمام متن‌های تطبیق یافته را با پوشش‌های مربعی آبی ماسک کنید
            redactor.apply(redaction);

            // مستند ورد حذف شده را ذخیره کنید
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "حذف تمام متادیتا"
      content: |
        با استفاده از API ما می‌توانید [متادیتا را حذف کنید]( https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata ) در چند مرحله در چندین نوع فایل:
        {{< landing/code title="حذف تمام متادیتا از ارائه‌ها">}}
        ```java {style=abap}   
        // مسیر ارائه را به Redactor ارائه دهید
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // گزینه‌های حذف را تنظیم کنید
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // تمام متادیتا را از ارائه پاک کنید
            redactor.apply(red);

            // فایل ارائه تمیز شده را ذخیره کنید
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
