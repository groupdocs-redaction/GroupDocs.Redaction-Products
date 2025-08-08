
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fa
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پنهان کردن متن در PPTX با استفاده از Python و لایه‌ها"
head_description: "محتوای حساس را در فایل‌های PPTX خود با لایه‌های رنگی با استفاده از GroupDocs.Redaction for Python via .NET پوشش دهید. طرح شما دست نخورده باقی می‌ماند."

############################# Header ############################
title: "محافظت از متن در PPTX با لایه‌ها و Python" 
description: "از GroupDocs.Redaction for Python via .NET و Python برای پنهان کردن اطلاعات خصوصی در ارائه‌های PPTX با پوشاندن آن با بلوک‌های رنگی استفاده کنید."
subtitle: "چه کاری با GroupDocs.Redaction for Python via .NET می‌توانید انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "بیشتر درباره GroupDocs.Redaction for Python via .NET بیاموزید"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python کمک می‌کند که ارائه‌های PPTX را با پوشاندن یا حذف متن، تصاویر و اطلاعات پنهان، پاکسازی کنند.

############################# Steps ############################
steps:
    enable: true
    title: "محتوای خصوصی را در Pptx پنهان کنید"
    content: |
      از GroupDocs.Redaction for Python via .NET برای محافظت از ارائه‌های خود در چند مرحله ساده استفاده کنید.
      
      1. یک Redactor بسازید و فایلی که می‌خواهید ویرایش کنید را بارگذاری کنید.
      2. تنظیمات مسدودسازی را انتخاب کنید که با نیازهای شما مطابقت دارد.
      3. الگوی متنی را تنظیم کنید و رنگی برای لایه انتخاب کنید.
      4. مسدودسازی را اعمال کرده و تغییرات را ذخیره کنید.
   
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

        # از لایه‌ها برای پنهان کردن متن در PPTX استفاده کنید

        # چگونه مسدودسازی کار خواهد کرد را تعیین کنید
        # متن و رنگ را انتخاب کنید
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # با Redactor فایل خود را بارگذاری نمایید
        with gr.Redactor("input.pptx") as redactor:

            # مسدودسازی کرده و فایل را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "گزینه‌های ساده‌تر برای پنهان کردن اطلاعات"
  description: "GroupDocs.Redaction for Python via .NET به شما این امکان را می‌دهد که بخش‌های حساس مدارک را به راحتی مخفی یا حذف کنید—ایده‌آل برای موارد قانونی، شخصی یا تجاری."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ابزارهای مفید برای محافظت از حریم خصوصی"
  features:
    # feature loop
    - title: "پیدا کردن و تغییر متن"
      content: "کلمات یا اعداد را جستجو کنید و آن‌ها را پنهان یا تغییر دهید."

    # feature loop
    - title: "پوشاندن بخش‌هایی از تصاویر"
      content: "لایه‌ها را طراحی کنید تا کامل تصاویر یا مکان‌های انتخابی را پنهان کنید."

    # feature loop
    - title: "حذف اطلاعات پنهان"
      content: "متاداده‌ای که شامل اطلاعات خصوصی یا سیستمی است را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "با استفاده از Regex متن را پیدا کنید"
      content: |
        ببینید چطور عبارات منظم به شما کمک می‌کند متن حساس را پیدا و پنهان کنید.
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

          # فایل خود را برای مسدودسازی باز کنید
          with gr.Redactor("source.pptx") as redactor:

              # مسدودسازی را اجرا کنید
              result = redactor.apply(redaction)

              # نسخه ویرایش شده را ذخیره کنید
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
    title: "پنهان کردن متن در PPTX با Python"
    exclude: "PPTX"
    description: "از Python برای اضافه کردن لایه‌ها یا حذف محتوا از اسلایدهای PPTX خود استفاده کنید تا داده‌های خصوصی را ایمن نگه دارید."
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