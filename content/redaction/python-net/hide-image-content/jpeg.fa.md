
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fa
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پوشاندن تصاویر خصوصی در JPEG با لایه‌ها در Python"
head_description: "با افزودن لایه‌ها برای تصاویر در JPEG با GroupDocs.Redaction for Python via .NET امنیت فایل‌های خود را حفظ کنید. داده‌های حساس را در عین حفظ چیدمان سند محافظت کنید."

############################# Header ############################
title: "محافظت از تصاویر حساس در فایل‌های JPEG با لایه‌ها در Python" 
description: "تصاویر خود را در فایل‌های JPEG با استفاده از Python ایمن نگه‌دارید. ابزارهایی آسان برای کمک به محافظت از محتوای خصوصی تنها در چند مرحله."
subtitle: "ویژگی‌های برتر GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python ابزارهای ساده‌ای را می‌دهد تا محتوای حساسی را در فایل‌های JPEG پنهان یا حذف کنند. از متن، تصاویر و متاداده محافظت کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حفظ امنیت فایل‌های Jpeg"
    content: |
      GroupDocs.Redaction for Python via .NET به برنامه‌های Python via .NET شما اجازه می‌دهد تا به سرعت و به طور مؤثر داده‌های حساس را پوشش دهند.
      
      1. یک شیء Redactor ایجاد کنید و مسیر فایل Jpeg را مشخص کنید.
      2. تنظیمات پنهان‌سازی را در صورت لزوم تنظیم کنید.
      3. ناحیه تصویر را علامت‌گذاری کرده و رنگ لایه را انتخاب کنید.
      4. پنهان‌سازی را اجرا کرده و فایل محافظت شده را ذخیره کنید.
   
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

        # پوشاندن نواحی تصویر در فایل‌های JPEG

        # اندازه و رنگ لایه را مشخص کنید.
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # ناحیه‌ای برای پوشاندن انتخاب کنید.
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # فایل را از طریق Redactor بارگذاری کنید.
        with gr.Redactor("input.jpg") as redactor:

            # لایه را اعمال کرده و سند را ذخیره کنید.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پوشاندن محتوا در چندین سند"
  description: "GroupDocs.Redaction for Python via .NET به شما این امکان را می‌دهد که محتواهای حساس را در فرمت‌های مختلف پنهان کنید یا حذف کنید. فایل‌های خود را ایمن و آماده برای اشتراک‌گذاری نگه‌دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای مؤثر ویرایش"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "متن‌های محرمانه را در اسناد جستجو کرده و آن‌ها را برای حفظ داده‌های خود جایگزین کنید."

    # feature loop
    - title: "پوشاندن نواحی تصویر"
      content: "لایه‌ها را برای پوشاندن تصاویر یا بخش‌های انتخاب‌شده اعمال کنید تا محتوای حساس را محافظت کنید."

    # feature loop
    - title: "پاک کردن متاداده"
      content: "متاداده‌های مخفی را حذف کنید تا از نشت غیرارادی داده‌ها جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "محافظت از نواحی تصویری با لایه‌ها"
      content: |
        این مثال راهی را برای پوشاندن بخش‌های حساس تصویر در یک سند با استفاده از لایه‌ها نشان می‌دهد.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ابعاد، رنگ و محل لایه را تنظیم کنید.
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # یک ناحیه تصویر را در صفحه اول انتخاب کنید.
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # فایل را برای ویرایش بارگذاری کنید.
          with gr.Redactor("source.jpg") as redactor:

              # لایه را برای پنهان کردن ناحیه اعمال کنید.
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
    title: "محافظت از فایل‌های JPEG با ابزارهای ویرایش Python"
    exclude: "JPEG"
    description: "با Python، می‌توانید داده‌های خصوصی را در JPEG پنهان کنید یا حذف کنید. راه‌حلی قابل اعتماد برای حفظ دقت و امنیت اسناد."
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