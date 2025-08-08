
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fa
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پوشاندن تصاویر در فایل‌های PPTX با لایه‌ها در Python"
head_description: "از GroupDocs.Redaction for Python via .NET برای پوشاندن تصاویر حساس در فایل‌های PPTX با لایه‌های رنگی استفاده کنید. داده‌های مهم را در عین حفظ فرمت سند پا نگه دارید."

############################# Header ############################
title: "پوشاندن تصاویر خصوصی در اسناد PPTX با لایه‌های Python" 
description: "حفاظت از تصاویر حساس در فایل‌های PPTX با Python. ابزارهای ما اقدامات ویرایش سریع و ساده‌اند."
subtitle: "ویژگی‌های GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ابزارهایی را به توسعه‌دهندگان Python می‌دهد تا محتواهای حساس موجود در PPTX را پوشانده یا حذف کنند. اطلاعات مهم خود را با پوشاندن متن، تصاویر و متاداده به‌طور مؤثر محافظت کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حفاظت از داده‌های حساس در فایل‌های Pptx"
    content: |
      GroupDocs.Redaction for Python via .NET به برنامه‌های Python via .NET کمک می‌کند تا اسناد را با پوشاندن محتوای حساس محافظت کنند.
      
      1. یک Redactor را ایجاد کرده و فایل Pptx را بارگذاری کنید.
      2. تنظیمات ویرایش را متناسب با کار خود تنظیم کنید.
      3. منطقه تصویری را انتخاب کرده و رنگ لایه را اعمال کنید.
      4. لایه را اعمال کرده و فایل را ذخیره کنید.
   
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

        # پوشاندن مناطق تصویری در PPTX

        # رنگ و اندازه لایه را تعیین کنید.
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # منطقه‌ای برای ویرایش انتخاب کنید.
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # سند را با Redactor بارگذاری کنید.
        with gr.Redactor("input.pptx") as redactor:

            # لایه را اعمال کرده و فایل را ذخیره کنید.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های ویرایش اسناد"
  description: "GroupDocs.Redaction for Python via .NET به شما این امکان را می‌دهد که داده‌های محرمانه را در انواع مختلف اسناد پنهان یا حذف کنید. فایل‌های خود را فنی و امن نگه‌دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای جامع ویرایش"
  features:
    # feature loop
    - title: "جستجو و جایگزینی متن"
      content: "متن‌های حساس را پیدا و ویرایش کنید تا اطلاعات شما محفوظ بماند."

    # feature loop
    - title: "پوشاندن مناطق تصویر"
      content: "تصاویر کامل یا بخش‌های خاص را با لایه‌ها پوشش دهید تا داده‌های خصوصی محفوظ بماند."

    # feature loop
    - title: "پاک کردن متاداده"
      content: "متاداده‌های مخفی را حذف کرده تا از انتشار اطلاعات خصوصی جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پوشاندن محتوای تصویری با لایه‌های رنگی"
      content: |
        این مثال نشان می‌دهد که چگونه مناطق حساس تصویر را در اسناد با استفاده از لایه‌ها پوشش دهید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ابعاد، موقعیت و رنگ لایه را مشخص کنید.
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # منطقه‌ای را در صفحه اول انتخاب کنید.
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # فایل را بارگذاری کنید.
          with gr.Redactor("source.pptx") as redactor:

              # لایه‌ای را روی منطقه انتخاب‌شده قرار دهید.
              result = redactor.apply(redaction)

              # سند محافظت‌شده را ذخیره کنید.
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
    title: "پوشاندن محتوا در PPTX با Python"
    exclude: "PPTX"
    description: "از Python برای پنهان یا حذف داده‌های حساس در فایل‌های PPTX استفاده کنید. راهی مطمئن برای محافظت از اسناد مهم."
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