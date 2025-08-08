
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پنهان کردن محتوا در EXCEL با استفاده از لایه‌های Python"
head_description: "با GroupDocs.Redaction for Python via .NET، می‌توانید متن را در فایل‌های EXCEL با استفاده از لایه‌های رنگی بپوشانید. راهی ساده برای محافظت از محتوای خصوصی."

############################# Header ############################
title: "پوشش پنهان‌سازی متن برای EXCEL در Python" 
description: "کد Python بنویسید تا متن را پنهان کرده و اطلاعات را در فایل‌های EXCEL خود ایمن کنید. مدارک خود را سالم و تمیز نگه دارید."
subtitle: "چه چیزی با GroupDocs.Redaction for Python via .NET به دست می‌آورید" 

############################# About ############################
about:
    enable: true
    title: "چرا از GroupDocs.Redaction for Python via .NET استفاده کنیم"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ایجاد شده است برای توسعه‌دهندگان Python که نیاز دارند محتوا را در فایل‌های EXCEL مخفی یا حذف کنند. به راحتی با متن، تصاویر و متاداده کار کنید.

############################# Steps ############################
steps:
    enable: true
    title: "پنهان کردن داده‌های حساس در Excel"
    content: |
      GroupDocs.Redaction for Python via .NET این امکان را برای توسعه‌دهندگان Python via .NET فراهم می‌کند تا مدارک را قبل از به اشتراک‌گذاری آماده کنند.
      
      1. یک Redactor بسازید و فایل Excel خود را باز کنید.
      2. تنظیمات مسدودسازی را انتخاب کنید که به کار شما می‌خورد.
      3. متن یا عبارتی که می‌خواهید بپوشانید را وارد کرده و رنگی را انتخاب کنید.
      4. مسدودسازی را اعمال کنید و فایل را ذخیره کنید.
   
    code:
      platform: "python-net"
      copy_title: "کپی"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "نمونه رداکت‌ها"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "برای کپی کردن کلیک کنید"
        copy_done: "کپی شد"
      links:
        #  loop
        - title: "نمونه‌های بیشتر"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "مستندات"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # از لایه‌ها برای پنهان کردن متن در EXCEL استفاده کنید

        # تنظیمات مسدودسازی خود را انتخاب کنید
        # چیزی را که می‌خواهید پنهان کرده و تنظیمات رنگ را انتخاب کنید
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # ابتدا با Redactor فایل خود را بارگذاری کنید
        with gr.Redactor("input.xslx") as redactor:

            # تغییرات را اعمال کرده و فایل را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای مفید برای مسدودسازی داده‌ها"
  description: "GroupDocs.Redaction for Python via .NET به شما این امکان را می‌دهد که داده‌ها را در مدارک خود مخفی یا حذف کنید در حالی که طرح و محتوای مشخص باقی می‌ماند."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ساخته شده برای محافظت از فایل‌های شما"
  features:
    # feature loop
    - title: "پنهان یا تغییر متن"
      content: "هر بخشی از متنی که نیاز به پنهان شدن دارد را پیدا و جایگزین کنید."

    # feature loop
    - title: "پوشش تصاویر و بصری"
      content: "لایه‌هایی را اضافه کنید تا نواحی حساس تصاویر یا نمودارها را حذف کنید."

    # feature loop
    - title: "پاکسازی متاداده‌های پنهان"
      content: "اطلاعات پس‌زمینه‌ای مانند نام نویسنده یا زمان‌سنجی‌ها را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "استفاده از Regex برای مسدودسازی"
      content: |
        یاد بگیرید چگونه از الگوهای regex برای پیدا و پنهان کردن محتوا استفاده کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # الگوی regex و تنظیمات رنگ را اضافه کنید
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # فایلی که می‌خواهید پاک کنید را باز کنید
          with gr.Redactor("source.xslx") as redactor:

              # مسدودسازی را اعمال کنید
              result = redactor.apply(redaction)

              # نسخه مسدود شده را ذخیره کنید
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "کپی"
        install:
          command: "pip install groupdocs-redaction-net"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "مستندات"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "آماده شروع هستید؟"
  description: "ویژگی‌های GroupDocs.Redaction را رایگان امتحان کنید یا درخواست مجوز دهید"
  items:
    #  loop
    - title: "دانلود PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "مجوزگیری"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "محافظت از EXCEL با مسدودسازی‌های Python"
    exclude: "EXCEL"
    description: "محتوا را در EXCEL با استفاده از لایه‌های مربعی پنهان کنید یا با ویژگی‌های Python به طور کامل آن را حذف کنید."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 6
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 7
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"


---