
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fa
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پوشاندن تصاویر در فایل‌های PHOTO با استفاده از لایه‌ها در Python"
head_description: "با افزوده‌شدن لایه‌ها برای پوشاندن نقاط حساس تصویری در فایل‌های PHOTO با GroupDocs.Redaction for Python via .NET، طراحی سند خود را با محافظت از اطلاعات خصوصی حفظ کنید."

############################# Header ############################
title: "پوشاندن تصاویر حساس در فایل‌های PHOTO با لایه‌ها از طریق Python" 
description: "محافظت کردن از محتوای تصویری در فایل‌های PHOTO با Python. ابزاری آسان برای محافظت سریع و تأثیرگذار از داده‌ها."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ابزارهای موثری برای توسعه‌دهندگان Python فراهم می‌آورد، تا محتوای حساس را در فایل‌های PHOTO پنهان یا حذف کنند. از متن، تصاویر و متاداده به طور مؤثر محافظت کنید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از نواحی تصویر در فایل‌های Photo"
    content: |
      GroupDocs.Redaction for Python via .NET به سادگی برای پوشاندن نواحی حساس در برنامه‌های Python via .NET شما طراحی شده است.
      
      1. یک شیء Redactor ایجاد کنید و به فایل Photo خود وصل کنید.
      2. تنظیمات ویرایش را بر اساس نیازهای خود پیکربندی کنید.
      3. ناحیه‌های تصویری را علامت‌گذاری کرده و رنگ لایه‌ها را انتخاب کنید.
      4. پنهان‌کاری را اعمال کرده و فایل ویرایش‌شده را ذخیره کنید.
   
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

        # استفاده از لایه‌ها برای پوشاندن داده‌های تصویری در PHOTO

        # تنظیمات ابعاد لایه و رنگ را انجام دهید.
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # ناحیه‌های تصویری را انتخاب کنید.
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # فایل را با Redactor باز کنید.
        with gr.Redactor("input.jpeg") as redactor:

            # لایه را اعمال کرده و فایل را ذخیره کنید.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پوشاندن داده‌های خصوصی در چندین فرمت"
  description: "GroupDocs.Redaction for Python via .NET به شما این امکان را می‌دهد که محتوای حساس را در فرمت‌های مختلف پنهان یا حذف کنید. به اسناد خود نظم و ایمنی ببخشید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ویژگی‌های جامع ویرایش"
  features:
    # feature loop
    - title: "یافتن و ویرایش متن"
      content: "به جستجوی متن‌های حساس پرداخته و آن‌ها را برای حفاظت از داده‌های خود جایگزین کنید."

    # feature loop
    - title: "پوشاندن تصاویر با لایه‌ها"
      content: "با افزودن لایه‌ها بر روی تصاویر یا بخش‌های خاصی از آن‌ها، محتوای حساس را پنهان نمایید."

    # feature loop
    - title: "حذف متاداده"
      content: "با حذف یا ویرایش متاداده‌های نامرئی، از نشت داده‌های خصوصی جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پوشاندن نقاط تصویری با لایه‌ها"
      content: |
        این مثال نشان می‌دهد که چگونه بخش‌های حساس تصاویر را با لایه‌ها در یک سند پوشش دهیم.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # اندازه، رنگ و موقعیت لایه را تنظیم نمایید.
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # ناحیه یک تصویر در صفحه اول را انتخاب کنید.
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # فایل را برای ویرایش بارگذاری کنید.
          with gr.Redactor("source.jpeg") as redactor:

              # لایه را برای پوشاندن محتوای آن اعمال کنید.
              result = redactor.apply(redaction)

              # فایل محافظت‌شده را ذخیره کنید.
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
    title: "پوشانده محتوا در PHOTO با Python"
    exclude: "PHOTO"
    description: "با Python می‌توانید به آسانی داده‌های حساس را در فایل‌های PHOTO پنهان یا حذف کنید. راهی مطمئن برای تهیه ایمنی اسنادی."
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