
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پنهان کردن متن در XLSX با استفاده از Python و لایه‌ها"
head_description: "GroupDocs.Redaction for Python via .NET به شما کمک می‌کند تا متن را در فایل‌های XLSX با اضافه کردن لایه‌های رنگی پنهان کنید. داده‌های خود را خصوصی نگه دارید بدون اینکه طرح فایل تغییر کند."

############################# Header ############################
title: "پنهان کردن متن در فایل‌های XLSX با استفاده از لایه‌های Python" 
description: "متن‌های حساس در فایل‌های XLSX را با GroupDocs.Redaction for Python via .NET و Python با قرار دادن لایه‌های ساده محافظت کنید."
subtitle: "چه چیزی با GroupDocs.Redaction for Python via .NET به دست می‌آورید" 

############################# About ############################
about:
    enable: true
    title: "چه چیزی GroupDocs.Redaction for Python via .NET می‌تواند انجام دهد"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python ابزارهایی ارائه می‌دهد تا متن، تصاویر و موارد بیشتری را در فایل‌های XLSX پنهان یا حذف کنند.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از داده‌ها در فایل‌های Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python via .NET این امکان را می‌دهد که با تنها چند خط کد، اطلاعات خصوصی را پنهان کنند.
      
      1. با ایجاد یک Redactor و بارگذاری فایل Xlsx خود شروع کنید.
      2. تنظیمات مسدودسازی که برای مورد شما کار می‌کند را تنظیم کنید.
      3. الگوی متنی که می‌خواهید پنهان کنید را اضافه کرده و رنگ را انتخاب کنید.
      4. مسدودسازی را اجرا کرده و فایل خود را ذخیره کنید.
   
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

        # محتوای خصوصی را در XLSX با لایه‌ها پنهان کنید

        # تنظیمات مسدودسازی را تنظیم کنید
        # متن را برای پوشش و رنگ لایه انتخاب کنید
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # از Redactor برای بارگذاری فایل خود استفاده کنید
        with gr.Redactor("input.xslx") as redactor:

            # مسدودسازی کنید و فایل را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای مفید مسدودسازی"
  description: "GroupDocs.Redaction for Python via .NET به شما اجازه می‌دهد محتواد را از بسیاری از انواع فایل‌ها پنهان یا حذف کنید. اطلاعات شخصی یا تجاری را محافظت کنید."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "گزینه‌های مسدودسازی راحتی"
  features:
    # feature loop
    - title: "پیدا کردن و ویرایش متن"
      content: "متن خاصی را جستجو کرده و جایگزین یا پنهان کنید."

    # feature loop
    - title: "پوشش محتوای تصویر"
      content: "از لایه‌ها برای مسدود کردن نواحی خصوصی تصاویر استفاده کنید."

    # feature loop
    - title: "حذف متاداده"
      content: "اطلاعات فضای پس‌زمینه قبل از به اشتراک‌گذاری فایل‌ها را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن متن با استفاده از الگوهای Regex"
      content: |
        این مثال نشان می‌دهد چگونه با استفاده از عبارات منظم محتوا را پیدا و پنهان کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # الگوی متن و رنگ لایه را تنظیم کنید
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # فایلی که می‌خواهید ویرایش کنید را باز کنید
          with gr.Redactor("source.xslx") as redactor:

              # قواعد مسدودسازی را اعمال کنید
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
    title: "پنهان کردن داده‌ها در XLSX با Python"
    exclude: "XLSX"
    description: "از ابزارهای Python برای مخفی کردن یا حذف بخش‌های حساس از فایل‌های XLSX خود به سرعت و به راحتی استفاده کنید."
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