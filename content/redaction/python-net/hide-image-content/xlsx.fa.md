
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پوشاندن مناطق تصویر در فایل‌های XLSX با لایه‌ها در Python"
head_description: "با GroupDocs.Redaction for Python via .NET، مناطق حساس تصویر در فایل‌های XLSX را با لایه‌ها محافظت کنید. ساختار سند خود را بدون تغییر حفظ کنید."

############################# Header ############################
title: "پوشاندن تصاویر حساس در اسناد XLSX با استفاده از Python" 
description: "به راحتی تصاویر محرمانه در فایل‌های XLSX را با Python محافظت کنید. ابزارهای ما اطمینان از ویرایش سریع و تاثیرگذار تصویر را فراهم می‌کنند."
subtitle: "ویژگی‌های اصلی GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python ابزارهایی را می‌دهد تا محتوای حساس را در فایل‌های XLSX پوشانده یا حذف کنند. برای محافظت از متن، تصاویر و متاداده در فرمت‌های مختلف به کار می‌رود.

############################# Steps ############################
steps:
    enable: true
    title: "حفاظت از داده‌های حساس در فایل‌های Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET این امکان را به شما می‌دهد که برای برنامه‌های Python via .NET اسناد را به سادگی محافظت کنید.
      
      1. یک Redactor را راه‌اندازی کنید و سند Xlsx را بارگذاری کنید.
      2. تنظیمات پنهان‌سازی را مطابق با کار خود تنظیم کنید.
      3. بخش تصویری را که می‌خواهید پوشش دهید انتخاب کرده و رنگ را انتخاب کنید.
      4. پنهان‌سازی را اعمال کرده و فایل نهایی را ذخیره کنید.
   
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

        # پوشاندن بخش‌های محرمانه تصویر در XLSX

        # اندازه و رنگ لایه را انتخاب کنید.
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # منطقه ویرایش را مشخص کنید.
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # سند را با Redactor بارگذاری کنید.
        with gr.Redactor("input.xslx") as redactor:

            # ویرایشی را انجام داده و فایل را ذخیره کنید.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان کردن محتوا در اسناد"
  description: "با GroupDocs.Redaction for Python via .NET، می‌توانید داده‌های حساس را در انواع فرمت‌های سند پنهان یا حذف کنید. مستندات را ایمن و جذاب نگه دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای موثر ویرایش"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "متن‌های خصوصی را در اسناد شناسایی و تغییر دهید."

    # feature loop
    - title: "پوشاندن تصاویر با لایه‌ها"
      content: "بخش‌های کامل تصاویر یا بخش‌های خاصی را برای محافظت از داده‌های حساس پنهان کنید."

    # feature loop
    - title: "حذف متاداده‌های مخفی"
      content: "متاداده را از فایل‌ها حذف کنید تا از به اشتراک‌گذاری داده‌های خصوصی جلوگیری شود."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پوشاندن محتوای تصویری با لایه‌ها"
      content: |
        این راهنما نشان می‌دهد چگونه مناطق حساس تصویر را در اسناد با استفاده از لایه‌ها پوشش دهید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # اندازه، موقعیت و رنگ لایه را تنظیم کنید.
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # منطقه‌ای را برای ویرایش در صفحه اول مشخص کنید.
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # فایل را برای ویرایش بارگذاری کنید.
          with gr.Redactor("source.xslx") as redactor:

              # لایه را برای پوشاندن بخش تصویر اعمال کنید.
              result = redactor.apply(redaction)

              # فایل ویرایش‌شده را ذخیره کنید.
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
    title: "پوشاندن محتوا در فایل‌های XLSX با Python"
    exclude: "XLSX"
    description: "با Python می‌توانید به راحتی داده‌های حساس را در فایل‌های XLSX پنهان یا حذف کنید. راهی موثر برای تضمین امنیت اسناد."
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