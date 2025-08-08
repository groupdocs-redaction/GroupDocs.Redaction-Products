
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fa
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پوشاندن تصاویر در IMAGE با استفاده از لایه‌ها در Python"
head_description: "محتوای حساس تصویر را در فایل‌های IMAGE با استفاده از لایه‌های رنگی با GroupDocs.Redaction for Python via .NET پنهان کنید. چیدمان اصلی فایل خود را در عین محافظت از تصاویر مهم حفظ کنید."

############################# Header ############################
title: "پوشاندن تصاویر حساس در فایل‌های IMAGE با استفاده از لایه‌های Python" 
description: "حفظ امنیت تصاویر شخصی و تجاری در فایل‌های IMAGE با Python. ابزارهای ساده برای محافظت سریع و موثر."
subtitle: "ویژگی‌های GroupDocs.Redaction for Python via .NET که نیاز دارید" 

############################# About ############################
about:
    enable: true
    title: "آموزش درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ابزارهای لازم را به توسعه‌دهندگان Python می‌دهد تا محتوای حساسی را در فایل‌های IMAGE پنهان یا حذف کنند. با پوشاندن متن، تصاویر و متاداده، اسناد خود را امن نگه‌دارید.

############################# Steps ############################
steps:
    enable: true
    title: "پوشاندن محتوای خصوصی در فایل‌های Image"
    content: |
      GroupDocs.Redaction for Python via .NET این امکان را می‌دهد که سریعاً داده‌های حساس را در برنامه‌های Python via .NET خود پنهان کنید.
      
      1. یک Redactor را راه‌اندازی کرده و به فایل Image خود اشاره کنید.
      2. تنظیمات ویرایش را به‌گونه‌ای پیکربندی کنید که متناسب با نیاز شما باشد.
      3. بخش‌های تصویر را انتخاب کرده و رنگ‌های لایه را تعریف کنید.
      4. فایل را پردازش کرده و نسخه‌ی ویرایش‌شده را ذخیره کنید.
   
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

        # پوشاندن محتوای تصویر در IMAGE

        # اندازه و رنگ لایه را مشخص کنید.
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # ناحیه‌ای برای پنهان کردن انتخاب کنید.
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # فایل را با استفاده از Redactor بارگذاری کنید.
        with gr.Redactor("input.png") as redactor:

            # لایه را اعمال کرده و فایل را ذخیره کنید.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حفاظت از داده‌ها در انواع اسناد"
  description: "GroupDocs.Redaction for Python via .NET می‌تواند به شما در پنهان کردن یا حذف محتوای حساس در فرمت‌های مختلف کمک کند. اسناد شما را تمیز، امن و ساده برای اشتراک‌گذاری نگه‌دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهایی برای کنترل ویرایش"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن حساس"
      content: "در اسناد خود جستجو کرده و متن‌های خصوصی را برای حفظ حریم خصوصی جایگزین کنید."

    # feature loop
    - title: "پوشاندن تصاویر با لایه‌ها"
      content: "به نواحی تصویر رنگی پوشانده و یا قسمت‌های خاصی از آن‌ها را پنهان کنید."

    # feature loop
    - title: "حذف متاداده"
      content: "متاداده را حذف یا ویرایش کنید تا از نشت داده‌های خصوصی جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن محتوای تصویری با لایه‌ها"
      content: |
        این مثال نشان می‌دهد که چگونه از لایه‌ها برای محافظت از داده‌های حساس تصویر در یک سند استفاده کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ابعاد، رنگ و موقعیت لایه را تنظیم کنید.
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # منطقه‌ای از تصویر را در صفحه اول انتخاب کنید.
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # فایل را برای ویرایش باز کنید.
          with gr.Redactor("source.png") as redactor:

              # لایه را برای پوشاندن محتوای تصویر اعمال کنید.
              result = redactor.apply(redaction)

              # فایل را پس از پنهان‌سازی ذخیره کنید.
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
    title: "محافظت از محتوا در فایل‌های IMAGE با Python"
    exclude: "IMAGE"
    description: "با Python، می‌توانید به راحتی داده‌های حساس را در فایل‌های IMAGE پنهان یا حذف کنید. راهی قابل‌اعتماد برای حفظ امنیت و حرفه‌ای باقی ماندن اسناد."
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