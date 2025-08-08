
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پنهان کردن متن در DOCX با استفاده از لایه‌ها با Python"
head_description: "متن‌های حساس را در فایل‌های DOCX با GroupDocs.Redaction for Python via .NET محافظت کنید. لایه‌های مربعی ساده را بدون تغییر در طرح خود اضافه کنید."

############################# Header ############################
title: "پنهان کردن محتوا در DOCX با استفاده از Python" 
description: "از Python برای پوشش محتوای خصوصی در فایل‌های DOCX استفاده کنید. ایده‌آل برای اسناد قانونی، شخصی یا تجاری."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET چیست؟"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python کمک می‌کند تا محتویات خصوصی را در فایل‌های DOCX مخفی یا حذف کنند. شما می‌توانید متن‌ها، تصاویر و حتی متاداده‌های پنهان را مسدود کنید.

############################# Steps ############################
steps:
    enable: true
    title: "نگه‌داشتن اطلاعات خصوصی مخفی در Docx"
    content: |
      با GroupDocs.Redaction for Python via .NET، توسعه‌دهندگان Python via .NET می‌توانند محتوای خصوصی را تنها در چند خط مخفی کنند.
      
      1. یک Redactor ایجاد کنید و فایل خود را باز کنید.
      2. تنظیمات مسدودسازی خود را انتخاب کنید.
      3. متن برای پنهان کردن را وارد کرده و رنگ را انتخاب کنید.
      4. اعمال کنید و نسخه مسدود شده را ذخیره کنید.
   
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

        # پنهان کردن محتوا در DOCX با استفاده از لایه‌ها

        # تنظیمات مسدودسازی خود را پیکربندی کنید
        # متن و رنگ لایه را تعریف کنید
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactor را راه‌اندازی کنید و فایل خود را بارگذاری کنید
        with gr.Redactor("input.docx") as redactor:

            # مسدودسازی کرده و فایل را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای اضافی مسدودسازی"
  description: "GroupDocs.Redaction for Python via .NET از انواع فایل مختلف پشتیبانی می‌کند تا بتوانید هر محتوایی را به راحتی محافظت کنید."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ویژگی‌های مسدودسازی ساخته شده"
  features:
    # feature loop
    - title: "پیدا کردن و ویرایش متن"
      content: "کلمات کلیدی را جستجو کرده و به سرعت مخفی یا جایگزین کنید."

    # feature loop
    - title: "پوشش نواحی تصویر"
      content: "نواحی حساس در صفحات اسکن شده یا عکس‌ها را مسدود کنید."

    # feature loop
    - title: "پاک کردن متاداده"
      content: "اطلاعات پنهان را حذف کنید تا جزئیات را لو ندهید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پیدا کردن متن با Regex و مسدودسازی"
      content: |
        یاد بگیرید چگونه از نمایشگرهای منظم برای پیدا کردن و پنهان کردن متن استفاده کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # الگوی کار و رنگ را تنظیم کنید
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # فایل مورد نظر را برای مسدودسازی باز کنید
          with gr.Redactor("source.docx") as redactor:

              # پروسه مسدودسازی را اجرا کنید
              result = redactor.apply(redaction)

              # مدرک پاک خود را ذخیره کنید
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
    title: "محافظت از فایل‌های DOCX با Python"
    exclude: "DOCX"
    description: "محتوا در اسناد DOCX را با استفاده از ابزارهای Python پوشش دهید یا حذف کنید."
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