
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fa
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متادیتا در PHOTO با Python"
head_description: "با GroupDocs.Redaction for Python via .NET می‌توانید داده‌های پنهان را از فایل‌های PHOTO حذف کنید و از نشت اطلاعات خصوصی جلوگیری نمایید."

############################# Header ############################
title: "پاکسازی متادیتا از PHOTO با استفاده از Python" 
description: "فایل‌های PHOTO خود را با پاکسازی اطلاعات پنهان با ابزارهای ساده Python ایمن کنید."
subtitle: "ویژگی‌های اصلی GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Python کاربران را راهی برای تمیز کردن فایل‌ها با حذف محتوای پنهان از متن، تصاویر و متادیتا در PHOTO می‌دهد.

############################# Steps ############################
steps:
    enable: true
    title: "مراحل حذف متادیتا از Photo"
    content: |
      از GroupDocs.Redaction در پروژه Python via .NET خود برای پاکسازی متادیتای سند در چند مرحله استفاده کنید.
      
      1. یک Redactor راه‌اندازی کرده و فایل Photo خود را باز کنید.
      2. فیلدهای متادیتایی را که باید حذف شوند، انتخاب کنید.
      3. محو را برای تمیز کردن فایل اعمال کنید.
      4. نسخه نهایی را ذخیره کنید.
   
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

        # حذف متادیتا در پرونده‌های PHOTO

        # انتخاب کنید که کدام متادیتا را محو کنید
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # فایل خود را با Redactor باز کنید
        with gr.Redactor("input.jpeg") as redactor:

            # اجرا کرده و ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "قبل از به اشتراک‌گذاری فایل‌ها را پاک کنید"
  description: "GroupDocs.Redaction for Python via .NET به حذف داده‌هایی کمک می‌کند که نباید دیده شوند. متن، تصاویر و جزئیات پنهان را تنها در چند کلیک حذف کنید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ویژگی‌های مفید محو کردن"
  features:
    # feature loop
    - title: "حذف متن"
      content: "کلمات حساس، اعداد یا الگوها را پیدا کرده و حذف کنید."

    # feature loop
    - title: "پوشش تصویری"
      content: "بخش‌هایی از تصاویر را به‌طور مناسب بپوشانید."

    # feature loop
    - title: "پاکسازی متادیتا"
      content: "جزئیات فایل مانند نویسنده، عنوان یا نظرات را حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف متادیتای خاص"
      content: |
        این مثال نشان می‌دهد که چگونه فیلدهای نویسنده و عنوان را در یک سند PHOTO حذف کنید.
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

          # فایل را در رداکتر بارگذاری کنید
          with gr.Redactor("source.jpeg") as redactor:

              # متادیتای انتخاب‌شده را محو کنید
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # فایل به‌روز شده را ذخیره کنید
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
    title: "حذف متادیتای PHOTO با Python"
    exclude: "PHOTO"
    description: "از Python برای پاکسازی متادیتای پنهان از فایل‌های PHOTO استفاده کنید. اسناد خود را تمیز و امن نگه دارید."
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