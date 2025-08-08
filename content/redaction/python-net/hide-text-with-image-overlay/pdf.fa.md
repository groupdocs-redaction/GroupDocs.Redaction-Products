
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پوشش متن حساس در فایل‌های PDF با استفاده از Python با لایه‌های رنگی"
head_description: "با GroupDocs.Redaction for Python via .NET می‌توانید متن‌های حساس را در فایل‌های PDF با اضافه کردن لایه‌های رنگی مخفی کنید. داده‌های خصوصی را بدون تغییر ظاهر فایل خود محافظت کنید."

############################# Header ############################
title: "پوشش متن حساس در PDF با استفاده از Python" 
description: "فایل‌های PDF خود را با Python ایمن کنید. از لایه‌ها برای مسدود کردن اطلاعات قانونی، شخصی یا محرمانه استفاده کنید."
subtitle: "نکات برجسته GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python یک روش آسان برای مخفی کردن یا حذف محتوا در فایل‌های PDF می‌دهد. متن‌های حساس، تصاویر یا متاداده را در فرمت‌های مختلف پوشش دهید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از اطلاعات حساس در فایل‌های Pdf"
    content: |
      از GroupDocs.Redaction for Python via .NET با برنامه‌های Python via .NET خود برای مخفی کردن محتوای خصوصی به سرعت استفاده کنید.
      
      1. یک Redactor راه‌اندازی کنید و فایل Pdf خود را بارگذاری کنید.
      2. بسته به نیاز خود نوع مسدودسازی را انتخاب کنید.
      3. متن مورد نظر برای پنهان کردن را انتخاب کرده و رنگ لایه را انتخاب کنید.
      4. مسدودسازی را اعمال کنید و فایل خود را ذخیره کنید.
   
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

        # متن حساس را در PDF با استفاده از لایه‌های رنگی پنهان کنید

        # تنظیمات مسدودسازی را تنظیم کنید
        # تعریف کنید چه چیزی را پنهان کنید و رنگ انتخاب کنید
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # فایل را با ارائه مسیر آن به Redactor بارگذاری کنید
        with gr.Redactor("input.pdf") as redactor:

            # مسدودسازی کنید و فایل PDF خود را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان کردن یا حذف اطلاعات از مدارک"
  description: "با GroupDocs.Redaction for Python via .NET می‌توانید متن، تصاویر و داده‌های دیگر را در فرمت‌های مختلف پنهان کنید. موارد مهم را محافظت کنید در حالی‌که مدارک شما آسان برای خواندن و به اشتراک گذاری باقی می‌مانند."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ویژگی‌های انعطاف‌پذیر مسدودسازی"
  features:
    # feature loop
    - title: "ویرایش هر متن"
      content: "متن‌های حساس را پیدا و جایگزین کنید تا مدارک شما ایمن بمانند."

    # feature loop
    - title: "پوشش تصاویر"
      content: "از لایه‌ها برای مسدود کردن کامل تصاویر یا نواحی خاص استفاده کنید."

    # feature loop
    - title: "پاک کردن متاداده"
      content: "داده‌های پنهان را حذف کنید تا از نشت اطلاعات ناخواسته جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "استفاده از Regex برای پیدا و پنهان کردن متن"
      content: |
        این مثال نشان می‌دهد چگونه با استفاده از الگوهای regex متن را جستجو و پنهان کنید.
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

          # مدرک خود را بارگذاری کنید
          with gr.Redactor("source.pdf") as redactor:

              # محتوای انتخاب شده را مسدود کنید
              result = redactor.apply(redaction)

              # فایل بروزرسانی شده را ذخیره کنید
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
    title: "محافظت از فایل‌های PDF با ابزارهای Python"
    exclude: "PDF"
    description: "از Python برای پنهان کردن یا حذف محتوا در فایل‌های PDF استفاده کنید. روشی قابل اطمینان برای محافظت از اطلاعات خصوصی."
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