
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fa
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ویرایش متادیتا در JPEG با استفاده از Python"
head_description: "GroupDocs.Redaction for Python via .NET به شما کمک می‌کند تا متادیتا را در اسناد JPEG پاک کرده یا به‌روزرسانی کنید. فیلدهای پنهان که ممکن است جزئیات خصوصی را فاش کند را حذف کنید."

############################# Header ############################
title: "پاکسازی متادیتا در JPEG با Python" 
description: "فایل‌های JPEG خود را با حذف متادیتا‌های پنهان با استفاده از ابزارهای ساده ایجاد شده برای Python ایمن کنید."
subtitle: "ویژگی‌های اصلی GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Python ابزارهای ساده‌ای برای حذف متن، تصاویر و متادیتا از اسناد JPEG می‌دهد.

############################# Steps ############################
steps:
    enable: true
    title: "مراحل پاکسازی متادیتا Jpeg"
    content: |
      GroupDocs.Redaction حذف متادیتا را برای اپلیکیشن‌های Python via .NET شما سریع و آسان می‌کند.
      
      1. یک Redactor راه‌اندازی کرده و سند Jpeg خود را باز کنید.
      2. گزینه‌ها را برای حذف فیلدهای متادیتا انتخاب کنید.
      3. فرآیند محو را اجرا کنید.
      4. نسخه جدید را با داده‌های پنهان ذخیره کنید.
   
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

        # حذف متادیتا در JPEG

        # فیلدهای متادیتا را برای پاکسازی انتخاب کنید
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # فایل را با استفاده از Redactor باز کنید
        with gr.Redactor("input.jpg") as redactor:

            # محو را اعمال کرده و فایل را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حفاظت از حریم خصوصی در هر فایل"
  description: "GroupDocs.Redaction for Python via .NET به شما کنترل بر اطلاعات حساس در اسناد را می‌دهد. محتوای پنهان در متن، تصاویر و متادیتا را حذف کنید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های محو متادیتا"
  features:
    # feature loop
    - title: "یافتن و حذف متن"
      content: "کلمات یا اطلاعات خصوصی را جستجو کنید و آن‌ها را از سند حذف کنید."

    # feature loop
    - title: "پوشاندن جزئیات تصویر"
      content: "قسمت‌های تصاویر را بپوشانید تا توسط دیگران دیده نشوند."

    # feature loop
    - title: "ویرایش متادیتای فایل"
      content: "فیلدهای متادیتای سند را تغییر داده یا حذف کنید تا اطلاعات سند محافظت شود."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ویرایش فیلدهای متادیتا"
      content: |
        این مثال مراحل حذف یا ویرایش فیلدهایی مانند نویسنده و عنوان را در یک سند JPEG نشان می‌دهد.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # فیلد نویسنده را هدف قرار دهید
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # فیلد عنوان را هدف قرار دهید
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # فایل JPEG را باز کنید
          with gr.Redactor("source.jpg") as redactor:

              # فرآیند پاکسازی را اجرا کنید
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # نسخه جدید را ذخیره کنید
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "پاکسازی متادیتا JPEG با Python"
    exclude: "JPEG"
    description: "برای حذف داده‌های پنهان و خصوصی از اسناد JPEG خود به‌سرعت و به آسانی از Python استفاده کنید."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت تصویر"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "فرمت‌های رایج تصویر"

        # format loop 6
        - name: "رداکت عکس"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "فرمت‌های عکاسی"

        # format loop 7
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 8
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 9
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"

        # format loop 10
        - name: "رداکت JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "تصویر JPEG"


---