
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fa
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پوشاندن تصاویر حساس در POWERPOINT با استفاده از لایه‌ها در Python"
head_description: "با GroupDocs.Redaction for Python via .NET می‌توانید مناطق تصاویر خصوصی را در فایل‌های POWERPOINT با استفاده از لایه‌ها پوشانده و اطلاعات را بدون تغییر شکل سند محافظت کنید."

############################# Header ############################
title: "پوشاندن تصاویر خصوصی در اسناد POWERPOINT با لایه‌های Python" 
description: "حفظ امنیت تصاویر حساسی در فایل‌های POWERPOINT با Python. ابزارهای ساده برای حفاظت از داده‌ها."
subtitle: "ویژگی‌های GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ابزارهای مؤثری برای توسعه‌دهندگان Python فراهم می‌آورد تا محتوای حساس را در POWERPOINT پنهان یا حذف کنند. اسناد خود را با پوشاندن متن، تصاویر و متاداده محافظت کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حفظ امنیت داده‌های حساس در فایل‌های Powerpoint"
    content: |
      GroupDocs.Redaction for Python via .NET به برنامه‌های Python via .NET این امکان را می‌دهد که اسناد را با پوشاندن محتوای حساس محافظت کنند.
      
      1. یک Redactor بسازید و فایل Powerpoint را بارگذاری کنید.
      2. تنظیمات ویرایش را طبق نیاز خود تنظیم کنید.
      3. منطقه تصویری را انتخاب کنید و رنگ لایه را تعیین کنید.
      4. لایه را اعمال کرده و سند را ذخیره کنید.
   
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

        # پوشاندن محتوای تصویری در POWERPOINT

        # اندازه و رنگ لایه را تعیین کنید.
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # ناحیه‌ای برای ویرایش را انتخاب کنید.
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
  title: "حفاظت از داده‌های خصوصی در اسناد"
  description: "GroupDocs.Redaction for Python via .NET به شما این امکان را می‌دهد که محتوای حساس را در فرمت‌های مختلف پنهان کنید. فایل‌های خود را امن و آماده برای اشتراک‌گذاری نگه‌دارید."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ویژگی‌های جامع ویرایش"
  features:
    # feature loop
    - title: "جستجو و ویرایش متن"
      content: "متن خصوصی را در اسناد پیدا کرده و تغییر دهید تا از حریم خصوصی شما محافظت شود."

    # feature loop
    - title: "پوشاندن مناطق تصویر"
      content: "بخش‌های کامل تصاویر یا نواحی خاص را با لایه‌ها پنهان کنید."

    # feature loop
    - title: "حذف متاداده"
      content: "متاداده را حذف کنید تا از اشتراک‌گذاری تصادفی داده‌ها جلوگیری کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "پنهان کردن داده‌های تصویری با لایه‌ها"
      content: |
        این مثال نشان می‌دهد که چگونه می‌توان تصاویر حساس را در اسناد با استفاده از لایه‌ها محافظت کرد.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ابعاد، رنگ و موقعیت لایه را مشخص کنید.
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # یک منطقه از تصویر را در صفحه اول انتخاب کنید.
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # سند را برای ویرایش بارگذاری کنید.
          with gr.Redactor("source.pptx") as redactor:

              # لایه را برای پوشاندن آن اعمال کنید.
              result = redactor.apply(redaction)

              # سند نهایی را ذخیره کنید.
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
    title: "حفظ امنیت فایل‌های POWERPOINT با Python"
    exclude: "POWERPOINT"
    description: "با Python، می‌توانید به راحتی داده‌های حساس را در POWERPOINT پنهان یا حذف کنید. راه حلی مورد اعتماد برای محافظت از اسناد مهم."
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