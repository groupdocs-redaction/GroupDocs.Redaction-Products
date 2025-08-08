
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پوشاندن تصاویر در EXCEL با استفاده از لایه‌ها در Python"
head_description: "مناطق حساس تصاویر در فایل‌های EXCEL را با GroupDocs.Redaction for Python via .NET محافظت کنید. افزودن لایه‌ها به پوشاندن تصاویر خصوصی بدون تغییر شکل سند کمک می‌کند."

############################# Header ############################
title: "محافظت از تصاویر حساس در فایل‌های EXCEL با لایه‌ها در Python" 
description: "تصاویر شخصی و تجاری خود را با Python در فایل‌های EXCEL ایمن کنید. با ابزارهای قابل اعتماد ما، محافظت مطمئن و سریع را تجربه کنید."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ابزارهایی را به توسعه‌دهندگان Python ارائه می‌دهد تا محتوای حساس را در فایل‌های EXCEL پنهان کنند. تصاویر، متن و متاداده را مخفی کنید تا از اسناد خود محافظت نمایید.

############################# Steps ############################
steps:
    enable: true
    title: "محافظت از داده‌ها در فایل‌های Excel"
    content: |
      GroupDocs.Redaction for Python via .NET به برنامه‌های Python via .NET شما این امکان را می‌دهد که به سرعت و به راحتی اطلاعات خصوصی را در اسناد پنهان کنید.
      
      1. یک نمونه Redactor ایجاد کنید و فایل Excel را بارگذاری کنید.
      2. تنظیمات ویرایش را در صورت نیاز مشخص کنید.
      3. ناحیه تصویری را انتخاب کنید و رنگ لایه را انتخاب کنید.
      4. ویرایش را اعمال کرده و فایل ویرایش‌شده را ذخیره کنید.
   
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

        # پوشاندن نواحی تصویر در EXCEL

        # اندازه و رنگ لایه را تنظیم کنید.
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # ناحیه‌ای از تصویر را انتخاب کنید.
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # سند را با Redactor بارگذاری کنید.
        with gr.Redactor("input.xslx") as redactor:

            # لایه را اعمال کرده و فایل را ذخیره کنید.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پوشاندن یا حذف محتوای حساس"
  description: "GroupDocs.Redaction for Python via .NET به شما این امکان را می‌دهد که با پنهان کردن یا حذف داده‌های حساس در فرمت‌های مختلف، اسناد را محافظت کنید. فایل‌ها را برای اشتراک‌گذاری آماده و ایمن نگه‌دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ابزارهای سرشار از قابلیت ویرایش"
  features:
    # feature loop
    - title: "ویرایش متن به طور ایمن"
      content: "متن حساس را در اسناد شناسایی کرده و آن را برای حفظ حریم خصوصی جایگزین کنید."

    # feature loop
    - title: "پوشاندن المان‌های تصویر"
      content: "بخش‌های انتخاب‌شده یا کل تصاویر را با لایه‌ها مسدود نمایید."

    # feature loop
    - title: "حذف متاداده‌های مخفی"
      content: "فیلدهای متاداده‌های نامرئی را برای جلوگیری از نشت اطلاعات پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "استفاده از لایه‌ها برای پنهان کردن داده‌های تصویری"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان لایه‌ها را برای پوشاندن تصاویر حساس در اسناد اعمال کرد.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # رنگ، اندازه و موقعیت لایه را مشخص کنید.
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # قسمت خاصی از تصویر را در صفحه اول انتخاب کنید.
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # سند را بارگذاری کنید.
          with gr.Redactor("source.xslx") as redactor:

              # لایه را برای پنهان کردن آن اعمال کنید.
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
    title: "پوشاندن محتوا در EXCEL با Python"
    exclude: "EXCEL"
    description: "با Python، می‌توانید داده‌های حساس را در EXCEL به راحتی پنهان یا حذف کنید. راهی موثر برای حفظ امنیت سند."
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