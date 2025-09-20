---
############################# Static ############################
layout: "family"
date:  2025-09-20T07:15:25
draft: false

product: "Redaction"
product_tag: "redaction"

lang: fa

############################# Head ############################
head_title: "راهکار حذف اطلاعات مستند. هرگونه داده‌ی حساس را ویرایش یا حذف کنید."
head_description: "متن، تصاویر یا متادیتا را در PDFها، مستندات ورد، صفحات اکسل، ارائه‌های پاورپوینت، تصاویر و غیره حذف یا مخفی کنید. از کتابخانه ما در برنامه‌های کاربردی .NET, Java, Python، جاوا، پایتون یا مبتنی بر ابر خود استفاده کنید."

############################# Header ############################
title: "کتابخانه حذف اطلاعات مستند"
description:  |
  اطلاعات خصوصی را از انواع مختلف فایل‌ها مخفی یا حذف کنید.

  متن یا تصاویر را ویرایش کنید تا محتوای حساس حذف شود.

  با استفاده از ویژگی‌های پیشرفته ما، متادیتای فایل را مدیریت کنید.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "پلتفرم خود را انتخاب کنید"
  title: "استقلال پلتفرم"
  description: "کتابخانه GroupDocs.Redaction از سیستم‌عامل‌ها و فریم‌ورک‌های زیر پشتیبانی می‌کند:"
  details_link_title: "بیشتر بیاموزید"

  items:
    # items loop
    - title: ".NET"
      description: GroupDocs.Redaction .NET 
      color: "blue"
      tag: "net"
      link: "/redaction/net/"
      features_link: "https://docs.groupdocs.com/redaction/net/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    .NET 6.0+ <br> .NET Core 3.1 <br> .NET Framework 4.6.2+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS <br> Microsoft Azure
      
          # features loop
          - rows: "3"
            content: |
                    Microsoft Visual Studio <br> JetBrains Rider <br> Microsoft Visual Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats
      

    # items loop
    - title: "Java"
      description: GroupDocs.Redaction Java
      color: "red"
      tag: "java"
      link: "/redaction/java/"
      features_link: "https://docs.groupdocs.com/redaction/java/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    Java 8 or higher <br> Kotlin
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IntelliJ IDEA <br> Eclipse <br> NetBeans
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

    # items loop
    - title: "Python"
      description: GroupDocs.Redaction Python
      color: "yellow"
      tag: "python-net"
      link: "/redaction/python-net/"
      features_link: "https://docs.groupdocs.com/redaction/python-net/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    Python 3.9+ and .NET 6+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IDLE <br> PyCharm <br> Visual Studio Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

############################# Features ###############################
features:
  enable: true
  title: "GroupDocs.Redaction در یک نگاه"
  description: "راهکاری برای مدیریت محتوا در PDFها، مستندات آفیس، تصاویر و سایر فایل‌های تجاری."

  items:
    # items loop
    - icon: "text"
      title: "حذف یا ویرایش متن"
      content: "متن حساس را در مستندات خود پیدا کرده و حذف کنید."

    # items loop
    - icon: "image"
      title: "حذف تصاویر"
      content: "به سادگی نواحی تصویر را در فایل‌های خود مخفی کنید."

    # items loop
    - icon: "template"
      title: "مدیریت متادیتا"
      content: "متادیتاهایی مانند نویسنده در مستندات ورد یا داده‌های EXIF در تصاویر را حذف یا جایگزین کنید."

    # items loop
    - icon: "pdf"
      title: "ویژگی‌های پیشرفته"
      content: "با استفاده از عبارات منظم یا ادغام هوش مصنوعی، داده‌ها را برای حذف جستجو کنید."

############################# Code samples ############################
code_samples:
  enable: true
  title: "نمونه‌های کد GroupDocs.Redaction"
  description: "موارد استفاده معمول از عملیات حذف GroupDocs.Redaction."
  items:
    # code sample loop
    - title: "چگونه متن را در فایل‌های PDF حذف کنیم"
      content: |
       GroupDocs.Redaction بهترین راهکار برای حذف متن در مستندات شما در چند مرحله است.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // مسیر فایل را که باید حذف شود به یک نمونه از Redactor منتقل کنید
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // گزینه‌های حذف را تعیین کنید
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // حذف کنید و نتیجه را ذخیره کنید
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // مسیر فایل را که باید حذف شود به یک نمونه از Redactor منتقل کنید
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // گزینه‌های حذف را تعیین کنید
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // حذف کنید و نتیجه را ذخیره کنید
                redactor.apply(redaction);
                redactor.save();
            }
            finally { redactor.close(); } 
            ```
        - language: "Python"
          color: "yellow"
          content: |
            ```python {style=abap}
            import groupdocs.redaction as gr
            import groupdocs.redaction.options as gro
            import groupdocs.redaction.redactions as grr

            def run():

                # مسیر فایل را که باید حذف شود به یک نمونه از Redactor منتقل کنید
                with gr.Redactor("source.pdf") as redactor:

                    # گزینه‌های حذف را تعیین کنید
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # حذف کنید و نتیجه را ذخیره کنید
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "پشتیبانی از ۳۰+ فرمت فایل"
  description: "GroupDocs.Redaction عملیات حذف را در تمام فرمت‌های فایل تجاری معمولی پشتیبانی می‌کند."

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction دستاوردها"
  description: "نکات کلیدی که موفقیت کتابخانه ما را نشان می‌دهد را کشف کنید"

  items:
    # items loop
    - number: "30+"
      title: "فرمت‌های پشتیبانی شده"
      content: "GroupDocs.Redaction از عملیات با بیش از ۳۰ فرمت فایل معمولی پشتیبانی می‌کند."

    # items loop
    - number: "440k"
      title: "دانلودهای NuGet"
      content: "GroupDocs.Redaction برای .NET بیش از ۴۴۰٫۰۰۰ بار از NuGet دانلود شده است."

    # items loop
    - number: "12k"
      title: "دانلودهای Maven"
      content: "GroupDocs.Redaction بیش از ۱۲٫۰۰۰ دانلود در Maven دارد و قابلیت‌های قدرتمند حذف جاوا را ارائه می‌کند."

    # items loop
    - number: "140+"
      title: "مشتریان راضی"
      content: "هر دو شرکت‌های جهانی و توسعه‌دهندگان مستقل به محصولات GroupDocs برای ساخت راهکارهای نوآورانه وابسته‌اند."


############################# Customers ###############################
customers:
  enable: true
  title: "مشتریان راضی ما"
  description: "کتابخانه‌های GroupDocs مورد اعتماد برندهای جهانی شناخته‌شده و محترم است."

  items:
    # items loop
    - title: "BenQ Corporation"
      logo: "benq"
      
    # items loop
    - title: "Nasdaq Stock Market"
      logo: "nasdaq"
      
    # items loop
    - title: "AT&T Inc."
      logo: "att"
      
    # items loop
    - title: "Customer logo AstraZeneca"
      logo: "astrazeneca"
      
    # items loop
    - title: "Central Bank of Argentina"
      logo: "argentinacentralbank"
      
    # items loop
    - title: "Roche Holding AG"
      logo: "roche"
      
    # items loop
    - title: "Capita"
      logo: "capita"
      
    # items loop
    - title: "Axa S.A."
      logo: "axa"
      
    # items loop
    - title: "Instructure Inc."
      logo: "instructure"
      
    # items loop
    - title: "Wipro"
      logo: "wipro"


############################# Actions ###############################
actions:
  enable: true
  title: "آیا آماده‌اید شروع کنید؟"
  description: "ویژگی‌های GroupDocs.Redaction را به صورت رایگان در پلتفرم خود آزمایش کنید."

  items:
    # items loop
    - title: ".NET"
      color: "blue"
      link: "/redaction/net/"

    # items loop
    - title: "Java"
      color: "red"
      link: "/redaction/java/"

    # items loop
    - title: "Node.js"
      color: "yellow"
      link: "/redaction/python-net/"   

############################# FAQ ###############################
faq:
  enable: true
  title: "سوالات متداول"
  description: "پاسخ‌های به متداول‌ترین سوالات."

  items:
    # items loop
    - question: "آیا کتابخانه GroupDocs.Redaction به هرگونه نرم‌افزار ثالث برای دستکاری مستندات نیاز دارد؟"
      answer: "GroupDocs.Redaction به هیچ نرم‌افزاری خارجی مانند Adobe Acrobat، Microsoft Office یا دیگران نیاز ندارد."

    # items loop
    - question: "آیا می‌توانم قبل از خرید کتابخانه GroupDocs.Redaction را امتحان کنم؟"
      answer: "بله، می‌توانید GroupDocs.Redaction را بدون خرید مجوز امتحان کنید. این در حالت آزمایشی کار می‌کند که برچسب‌های آزمایشی را اضافه کرده و خروجی را به ۳ صفحه اول محدود می‌کند. برای آزمایش بدون محدودیت، درخواست یک مجوز موقت ۳۰ روزه دهید. برای جزئیات بیشتر، [اینجا]( https://purchase.groupdocs.com/temporary-license/ ) را ببینید."

    # items loop
    - question: "چه گزینه‌های مجوزی در دسترس است؟"
      answer: "ما چندین نوع مجوز بر اساس نیازهای توسعه و توزیع شما ارائه می‌دهیم. این شامل مجوزهای مبتنی بر توسعه‌دهنده، مبتنی بر سایت و مجوزهای اندازه‌گیری‌شده بر اساس استفاده است. برای کسب اطلاعات بیشتر [اینجا]( https://purchase.groupdocs.com/pricing/redaction/net/ ) را ببینید."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.Redaction API‌های بدون کد"
  description: "ادغام حذف اطلاعات مستند در هر برنامه‌ای با استفاده از API ابری RESTful ما."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "از دستورات cURL با API ابری ما برای حذف مستندات در طیف وسیعی از فرمت‌های پشتیبانی شده استفاده کنید."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "تصاویر، متن و متادیتا را استخراج کرده یا اسناد را با استفاده از الگوها در برنامه‌های کاربردی Microsoft .NET حذف کنید."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "SDK جاوا برای حذف مستندات و استخراج داده‌ها در برنامه‌های مبتنی بر جاوا شما."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction برنامه‌های بدون کد"
  description: "یک برنامه مبتنی بر وب که به شما این امکان را می‌دهد که بیش از ۳۰ فرمت فایل محبوب را مستقیماً در مرورگر خود حذف کنید."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "ابزار آنلاین رایگان برای حذف Word، Excel، PowerPoint، PDF و بیش از ۳۰ نوع فایل دیگر."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "مستندات ورد را در مرورگر خود حذف کرده و تصاویر، متن یا متادیتا را استخراج کنید."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "ابزار حذف PDF رایگان که در هر دستگاه یا پلتفرمی بدون محدودیت کار می‌کند."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---