
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fa
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پنهان کردن متن در WORD با استفاده از لایه‌های Python"
head_description: "با GroupDocs.Redaction for Python via .NET، پنهان کردن متن خصوصی در اسناد WORD به سادگی با بلوک‌های رنگی امکان‌پذیر است. طرح شما دست نخورده باقی می‌ماند."

############################# Header ############################
title: "استفاده از لایه‌ها برای پنهان کردن متن در WORD با Python" 
description: "معلومات کلیدی را در اسناد WORD با قرار دادن بلوک‌های لایه‌ای با Python و GroupDocs.Redaction for Python via .NET محافظت کنید."
subtitle: "چه کارهایی با GroupDocs.Redaction for Python via .NET می‌توانید انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "با GroupDocs.Redaction for Python via .NET آشنا شوید"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       با GroupDocs.Redaction for Python via .NET، توسعه‌دهندگان Python می‌توانند محتوا را در اسناد WORD—مانند نام‌ها، شماره‌ها و بیشتر—پنهان یا حذف کنند.

############################# Steps ############################
steps:
    enable: true
    title: "محتوای خصوصی را در Word مسدود کنید"
    content: |
      GroupDocs.Redaction for Python via .NET این امکان را برای توسعه‌دهندگان Python via .NET فراهم می‌کند که اطلاعات حساس را به سرعت مخفی کنند.
      
      1. یک Redactor بسازید و فایل Word خود را بارگذاری کنید.
      2. تنظیمات مسدودسازی را پیکربندی کنید.
      3. متن مورد نظر برای پنهان کردن و رنگ لایه را انتخاب کنید.
      4. مسدودسازی را اجرا کنید و فایل خود را ذخیره کنید.
   
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

        # پوشش متن در WORD با استفاده از لایه‌ها

        # انتخاب کنید چه چیزی باید مسدود شود
        # متن را وارد کرده و رنگ را تنظیم کنید
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # فایل را با استفاده از Redactor بارگذاری کنید
        with gr.Redactor("input.docx") as redactor:

            # مسدودسازی کنید و ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "راه‌های بیشتری برای مخفی کردن اطلاعات"
  description: "از GroupDocs.Redaction for Python via .NET برای پاکسازی فایل‌های خود با پنهان یا حذف محتوا استفاده کنید، بدون تغییر در ظاهر آن‌ها."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ویژگی‌های متمرکز بر حریم خصوصی"
  features:
    # feature loop
    - title: "پنهان کردن یا جایگزینی متن"
      content: "اطلاعات مهم را با حذف یا تعویض کلمات محافظت کنید."

    # feature loop
    - title: "پوشش تصاویر"
      content: "تصاویر حساس را با اشکال جامد مسدود کنید."

    # feature loop
    - title: "حذف داده‌های پنهان"
      content: "متاداده‌ای که ممکن است شامل اطلاعات سیستم یا کاربر باشد را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پیدا کردن و پنهان کردن متن با Regex"
      content: |
        این مثال نشان می‌دهد چگونه از عبارات منظم برای تطابق و پنهان کردن محتوا استفاده کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # الگو و رنگ لایه را تنظیم کنید
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # فایل را برای ویرایش باز کنید
          with gr.Redactor("source.docx") as redactor:

              # مسدودسازی را اعمال کنید
              result = redactor.apply(redaction)

              # نسخه بروزرسانی شده خود را ذخیره کنید
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
    title: "محافظت از محتوا در WORD با Python"
    exclude: "WORD"
    description: "از Python برای پنهان یا حذف اطلاعات حساس در فایل‌های WORD خود بدون تأثیر بر ساختار یا طرح استفاده کنید."
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