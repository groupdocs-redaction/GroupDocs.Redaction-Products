
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پوشاندن تصاویر حساس در PDF با استفاده از لایه‌ها در Python"
head_description: "با GroupDocs.Redaction for Python via .NET، می‌توانید تصاویر حساس را در فایل‌های PDF با افزودن لایه‌ها پنهان کنید. داده‌های خصوصی را بدون تغییر در چیدمان سند محافظت کنید."

############################# Header ############################
title: "پوشاندن تصاویر در فایل‌های PDF با استفاده از لایه‌ها در Python" 
description: "حفظ امنیت تصاویر شخصی و تجاری در فایل‌های PDF با Python. ابزارهای ما حفاظت از داده‌ها را قابل اعتماد و ساده می‌کنند."
subtitle: "ویژگی‌های GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ابزارهایی را به توسعه‌دهندگان Python می‌دهد تا محتوا را در فایل‌های PDF پنهان یا حذف کنند. متن، تصاویر و متاداده را برای محافظت از اسناد در فرمت‌های مختلف پوشانید.

############################# Steps ############################
steps:
    enable: true
    title: "حفاظت از داده‌های حساس در فایل‌های Pdf"
    content: |
      GroupDocs.Redaction for Python via .NET به برنامه‌های Python via .NET شما این امکان را می‌دهد که سندها را محافظت کنید. محتوای خصوصی را با چند کلیک پنهان کنید.
      
      1. یک شیء Redactor ایجاد کنید و آن را به فایل Pdf اشاره دهید.
      2. تنظیمات را به‌گونه‌ای تنظیم کنید که با نیازهای شما همخوانی داشته باشد.
      3. منطقه‌ای از تصویر را که باید پوشانده شود انتخاب کنید و رنگ لایه را انتخاب کنید.
      4. فرآیند را انجام داده و فایل ویرایش‌شده را ذخیره کنید.
   
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

        # پوشاندن بخش‌های محرمانه تصاویر در PDF

        # رنگ و اندازه لایه را تنظیم کنید.
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # منطقه‌ای برای ویرایش انتخاب کنید.
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # سند را با استفاده از Redactor بارگذاری کنید.
        with gr.Redactor("input.pdf") as redactor:

            # لایه را اعمال کرده و سند را ذخیره کنید.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پوشاندن محتوای حساس در اسناد"
  description: "با GroupDocs.Redaction for Python via .NET، می‌توانید داده‌ها را در انواع فرمت‌های فایل پنهان یا حذف کنید. اطلاعات حساس را در عین حفظ پاکیزگی و قابلیت اشتراک‌گذاری اسناد، محافظت کنید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "عملکردهای کلیدی ویرایش"
  features:
    # feature loop
    - title: "جستجو و ویرایش متن"
      content: "متن‌های حساس را در سند خود پیدا و تغییر دهید تا اطلاعات خصوصی محافظت شود."

    # feature loop
    - title: "پوشاندن مناطق تصویر"
      content: "لایه‌ها را روی عکس‌ها یا بخش‌های انتخاب‌شده قرار دهید تا تصاویر محرمانه را پنهان کنید."

    # feature loop
    - title: "مدیریت متاداده"
      content: "شناسایی یا ویرایش متاداده مخفی را برای جلوگیری از نشت داده‌های ناخواسته."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن اطلاعات تصویر با استفاده از لایه‌ها"
      content: |
        این مثال نشان می‌دهد که چگونه داده‌های حساس تصویری را در اسناد با استفاده از لایه‌ها پنهان کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # تنظیمات لایه را تنظیم کنید: اندازه، رنگ و موقعیت.
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # یک منطقه عکس را در صفحه اول انتخاب کنید.
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # فایل را برای ویرایش باز کنید.
          with gr.Redactor("source.pdf") as redactor:

              # لایه را برای پوشاندن تصویر اعمال کنید.
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
    title: "محافظت از فایل‌های PDF با Python"
    exclude: "PDF"
    description: "از Python برای پوشاندن یا حذف اطلاعات حساس در فایل‌های PDF استفاده کنید. راه‌حلی عملی برای ایمن‌سازی اسناد تجاری و خصوصی."
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