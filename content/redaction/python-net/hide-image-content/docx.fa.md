
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پوشاندن محتوای تصویر در DOCX با استفاده از لایه‌ها در Python"
head_description: "با افزودن لایه‌ها در DOCX با GroupDocs.Redaction for Python via .NET، تصاویر حساس را محافظت کنید. فرمت‌سازی سند را بدون تغییر حفظ کنید."

############################# Header ############################
title: "محافظت از تصاویر در اسناد DOCX با استفاده از لایه‌ها در Python" 
description: "حفاظت از تصاویر شخصی و تجاری در فایل‌های DOCX با Python. ابزارهای ویرایش ما ایمنی اسناد را ساده و سریع می‌کنند."
subtitle: "نکات برجسته GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python این امکان را می‌دهد تا محتوای موجود در فایل‌های DOCX را پنهان یا حذف کنند. متن، تصاویر و متاداده را در فرمت‌های مختلف محافظت نمایید.

############################# Steps ############################
steps:
    enable: true
    title: "نگه‌داشتن داده‌ها در فایل‌های Docx امن"
    content: |
      GroupDocs.Redaction for Python via .NET این امکان را به برنامه‌های Python via .NET می‌دهد تا اسناد را محافظت کنند. داده‌های حساس را در چند مرحله ویرایش کنید.
      
      1. یک نمونه Redactor ایجاد کنید و مسیر فایل Docx را مشخص کنید.
      2. تنظیمات ویرایش را برای تطابق با کارتان تنظیم کنید.
      3. بخشی از تصویر را که می‌خواهید پوشانید انتخاب کرده و رنگ لایه را تعریف کنید.
      4. فرآیند را اجرا کرده و فایل ویرایش‌شده را ذخیره کنید.
   
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

        # پوشاندن بخش‌های حساس تصاویر در DOCX

        # اندازه و رنگ لایه را تعیین کنید.
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # منطقه برای ویرایش را مشخص کنید.
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # فایل را با استفاده از Redactor بارگذاری کنید.
        with gr.Redactor("input.docx") as redactor:

            # روی لایه اعمال کنید و سند را ذخیره کنید.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پوشاندن محتوا در اسناد"
  description: "با GroupDocs.Redaction for Python via .NET، می‌توانید اطلاعات حساستان را از انواع اسناد پنهان یا حذف کنید. امنیت فایل‌ها را حفظ کرده و اجازه دهید قابل اشتراک گذاری باقی بمانند."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ویژگی‌های موثر ویرایش"
  features:
    # feature loop
    - title: "جستجو و ویرایش متن"
      content: "کلمات حساس را پیدا کرده و تغییر دهید تا اطلاعات شما محافظت شود."

    # feature loop
    - title: "پوشاندن تصاویر"
      content: "لایه‌ها را به تصاویر کامل یا بخش‌های انتخاب‌شده اعمال کنید تا داده‌های تصویری را محافظت کنید."

    # feature loop
    - title: "پاک کردن متاداده‌های مخفی"
      content: "متاداده را از فایل‌ها حذف یا به‌روزرسانی کنید تا از اشتراک‌گذاری تصادفی داده‌ها جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن داده‌های تصویری با استفاده از لایه‌ها"
      content: |
        این مثال نشان می‌دهد که چگونه به محافظت از مناطق حساس تصاویر در اسناد با لایه‌ها بپردازید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # تنظیمات لایه: رنگ، اندازه و موقعیت را تنظیم کنید.
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # منطقه‌ای را برای ویرایش در صفحه اول انتخاب کنید.
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # فایل مورد نظر برای ویرایش را بارگذاری کنید.
          with gr.Redactor("source.docx") as redactor:

              # لایه را اعمال کرده و فایل ویرایش‌شده را ذخیره کنید.
              result = redactor.apply(redaction)

              # 
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "پوشاندن داده‌های حساس در فایل‌های DOCX با Python"
    exclude: "DOCX"
    description: "از Python برای پوشاندن یا حذف داده‌های خصوصی در فایل‌های DOCX استفاده کنید. ابزار صحیحی برای حفظ امنیت اسناد محرمانه."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت تصویر"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "فرمت‌های رایج تصویر"

        # format loop 6
        - name: "رداکت عکس"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "فرمت‌های عکاسی"

        # format loop 7
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 8
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 9
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"

        # format loop 10
        - name: "رداکت JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "تصویر JPEG"


---