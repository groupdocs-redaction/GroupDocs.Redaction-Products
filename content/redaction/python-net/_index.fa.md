---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: fa
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

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
head_title: "حذف اطلاعات محرمانه از مستندات با Python"
head_description: "فایل‌های خود را با استفاده از GroupDocs.Redaction for Python via .NET ایمن کنید. به سرعت محتوای حساس را در PDFها، مستندات ورد، اکسل، پاورپوینت و فایل‌های تصویری حذف، مخفی یا پاک کنید."

############################# Header ############################
title: "امن نگه داشتن مستندات شما با GroupDocs.Redaction"
description: "به راحتی داده‌های خصوصی را حذف کرده، متن را حذف کنید و متادیتای پنهان را با استفاده از ابزار قدرتمند Python پاک کنید."
words:
  for: "برای"

actions:
  main: "دانلود PyPi"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "مجوزدهی"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "آیا آماده‌اید شروع کنید؟"
  description: "ویژگی‌های GroupDocs.Redaction را به صورت رایگان امتحان کنید یا درخواست مجوز کنید."

release:
  title: "نسخه {0} منتشر شد"
  notes: "ببینید چه خبر است"
  downloads: "دانلودها"

code:
  title: "حذف محتوای مستند"
  more: "نمونه‌های بیشتر"
  more_link: ""
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # پارامترهای حذف را تنظیم کنید
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # فایل خود را به نمونه Redactor بارگذاری کنید
        with gr.Redactor("sample.pdf") as redactor:

            # فرآیند حذف را آغاز کنید
            result = redactor.apply(red)
        
            # فایل پاکسازی شده را صادر کنید
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction در یک نگاه"
  description: "قابلیت‌های قدرتمند حذف را به پروژه‌های Python خود بیافزایید"
  features:
    # feature loop
    - title: "حذف متن حساس"
      content: "با GroupDocs.Redaction for Python via .NET می‌توانید به طور خودکار کلمات یا عبارات حساس را پیدا کرده و بپوشانید. متن را با جعبه‌های رنگی برای حفاظت بیشتر در PDFها، مستندات ورد و فرمت‌های دیگر جایگزین یا پوشش دهید."

    # feature loop
    - title: "پنهان‌سازی تصاویر"
      content: "فناوری ما می‌تواند تصاویر را شناسایی کرده و بر اساس معیارهای انتخابی شما مبهم، پنهان یا مسدود کند. نواحی خاصی را تعریف کنید یا اجازه دهید شناسایی خودکار برای کسب کنترل کامل انجام شود."

    # feature loop
    - title: "حذف متادیتای پنهان"
      content: "جزئیات شخصی یا داده‌های ردیابی که در متادیتا پنهان هستند، مانند پروفایل نویسندگی یا اطلاعات دستگاه را حذف کنید. GroupDocs.Redaction for Python via .NET اطمینان می‌یابد که مستندات شما به طور کامل پاکسازی شده و ایمن برای به اشتراک‌گذاری هستند."

    # feature loop
    - title: "حذف عناصر خاص"
      content: "به فراتر از متن بروید و اشیاء جاسازی شده مانند نظرات، حاشیه‌نویسی‌ها، و دیگر عناصر خاص فایل را حذف کنید تا به کمال محرمانگی دست یابید."

############################# Platforms ############################
platforms:
  enable: true
  title: "استقلال پلتفرم"
  description: "GroupDocs.Redaction for Python via .NET بر روی همه سیستم‌عامل‌های اصلی کار می‌کند، از فریم‌ورک‌های محبوب پشتیبانی می‌کند و با مدیرعامل‌های موجود ادغام می‌شود."
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
    GroupDocs.Redaction for Python via .NET از عملیات با [فرمت‌های فایل زیر]( https://docs.groupdocs.com/redaction/python-net/supported-document-formats/ ) پشتیبانی می‌کند.
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
  title: "ویژگی‌های کلیدی GroupDocs.Redaction for Python via .NET"
  description: "با تسهیل، نظارت، و حذف محتوای حساس در PDFها، تصاویر و فایل‌های آفیس."

  items:
    # feature loop
    - icon: "search"
      title: "جستجوی قابل تنظیم"
      content: "از حالت‌های جستجوی منعطف برای پیدا کردن تطابق‌های دقیق یا کلمات کلیدی برای حذف استفاده کنید."

    # feature loop
    - icon: "text"
      title: "پیدا، جایگزینی یا حذف متن"
      content: "داده‌های حساس را پیدا کرده و یا با متن ایمن جایگزین کنید یا به طور کامل از بین ببرید."

    # feature loop
    - icon: "image"
      title: "پنهان‌سازی بصری"
      content: "پوشش‌های رنگی یا الگوها را برای پوشاندن بخش‌های حذف شده به صورت بصری استفاده کنید."

    # feature loop
    - icon: "search"
      title: "تشخیص مبتنی بر Regex"
      content: "از عبارات منظم برای دقت پیدا کردن و حذف در جستجوهای پیشرفته استفاده کنید."

    # feature loop
    - icon: "table"
      title: "حذف هدفمند"
      content: "فقط به صفحات خاص یا مناطق تعریف شده برای صرفه‌جویی در زمان و تمرکز بر نقاط کلیدی توجه کنید."

    # feature loop
    - icon: "template"
      title: "پاکسازی متادیتا"
      content: "به راحتی فیلدهای متادیتا را از جمله نویسنده، شرکت یا زمان‌های ردیابی را از فایل‌های خود پاک کنید."

    # feature loop
    - icon: "pdf"
      title: "گزینه‌های صادرات"
      content: "مستندات پردازش‌شده را در PDF یا فرمت‌های دیگر ذخیره کنید بدون اینکه یکپارچگی چیدمان را از دست بدهید."

    # feature loop
    - icon: "template"
      title: "پاک‌سازی کامل متادیتا"
      content: "تمام متادیتا را با یک کلیک برای حداکثر حفاظت از داده‌ها حذف کنید."

    # feature loop
    - icon: "hyperlink"
      title: "سیاست‌های XML قابل استفاده مجدد"
      content: "پیکربندی‌های حذف سفارشی خود را به عنوان الگوهای XML ذخیره کنید تا وظایف آینده را خودکار کنید."


############################# Code samples ############################
code_samples:
  enable: true
  title: "نمونه‌های کد"
  description: "نحوهٔ ساده‌ای که GroupDocs.Redaction for Python via .NET وظایف حذف را تسهیل می‌کند را کشف کنید"
  items:
    # code sample loop
    - title: "حذف متن مبتنی بر Regex"
      content: |
        توسعه‌دهندگان با استفاده از Python می‌توانند [قوانین مبتنی بر regex]( https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression ) را برای پیدا کردن و پوشاندن متن حساس با ماسک‌های تصویری اعمال کنند:
        {{< landing/code title="حذف مستندات ورد با استفاده از عبارات منظم">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # قواعد حذف را با استفاده از یک عبارت منظم تعریف کنید
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # یک نمونه از کلاس Redactor ایجاد کنید
            with gr.Redactor("source.docx") as redactor:

                # تمام متن‌های تطبیق یافته را با پوشش‌های مربعی آبی ماسک کنید
                result = redactor.apply(reg_red)
        
                # مستند ورد حذف شده را ذخیره کنید
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "حذف متادیتا"
      content: |
        با استفاده از API می‌توانید [متادیتا را حذف کنید]( https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata ) در چند نوع فایل طی چند مرحله:
        {{< landing/code title="حذف تمام متادیتا از ارائه‌ها">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # گزینه‌های حذف را تنظیم کنید
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # مسیر ارائه را به Redactor ارائه دهید
        with gr.Redactor("source.pptx") as redactor:

            # تمام متادیتا را از ارائه پاک کنید
            result = redactor.apply(red)
        
            # فایل ارائه تمیز شده را ذخیره کنید
            redactor.save()
        ```
        {{< /landing/code >}}

---
