
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fa
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متادیتا در POWERPOINT با استفاده از Python"
head_description: "اسناد POWERPOINT خود را با GroupDocs.Redaction for Python via .NET ایمن کنید و متادیتای پنهانی که ممکن است حاوی اطلاعات خصوصی باشد را پاک کنید."

############################# Header ############################
title: "پاکسازی متادیتا از POWERPOINT با Python" 
description: "با استفاده از ابزارهای Python که به‌سرعت متادیتای پنهان را حذف می‌کنند، کنترل بهتری بر روی فایل‌های خود داشته باشید."
subtitle: "ویژگی‌های برتر GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "بیشتر درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction برای توسعه‌دهندگان Python طراحی شده است تا در محو کردن متن، تصاویر و متادیتا در فایل‌های POWERPOINT کمک کند.

############################# Steps ############################
steps:
    enable: true
    title: "مراحل حذف متادیتا در Powerpoint"
    content: |
      GroupDocs.Redaction به اپلیکیشن‌های Python via .NET شما این امکان را می‌دهد تا در چند کلیک متادیتا را از اسناد پاک کنید.
      
      1. یک نمونه Redactor ایجاد کرده و سند خود را باز کنید.
      2. فیلدهای متادیتا را برای حذف انتخاب کنید.
      3. تنظیمات محو را پیکربندی و اعمال کنید.
      4. نسخه نهایی را بدون داده‌های پنهان ذخیره کنید.
   
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

        # حذف متادیتا در POWERPOINT

        # فیلدهای متادیتا را انتخاب کنید
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # فایل را در رداکتر بارگذاری کنید
        with gr.Redactor("input.pptx") as redactor:

            # محتوا را پاک کرده و سند را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "محو پیشرفته برای POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET به پاکسازی فایل‌ها با حذف محتویات حساس کمک می‌کند. با فرمت‌ها و نوع داده‌های متنوع کار می‌کند."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "گزینه‌های اصلی محو کردن"
  features:
    # feature loop
    - title: "حذف متن خصوصی"
      content: "کلمات یا عبارات حاوی اطلاعات خصوصی که نباید به اشتراک گذاشته شوند را جستجو و حذف کنید."

    # feature loop
    - title: "پوشاندن بخش‌های تصویر"
      content: "قسمت‌هایی از تصاویر را که حاوی جزئیات خصوصی هستند، پنهان کنید."

    # feature loop
    - title: "حذف متادیتا"
      content: "فیلدهای متادیتا مانند نویسنده، عنوان و نظرات را از فایل‌های خود پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "چگونه متادیتای پنهان را حذف کنیم"
      content: |
        این نمونه نشان می‌دهد که چگونه متادیتای دربرگیرنده مانند نویسنده و عنوان را از سند POWERPOINT خود حذف کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # فیلد نویسنده را پاک کنید
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # فیلد عنوان را پاک کنید
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # فایل را در رداکتر باز کنید
          with gr.Redactor("source.pptx") as redactor:

              # محو کردن را اجرا کنید
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
    title: "پاکسازی متادیتا برای POWERPOINT با استفاده از Python"
    exclude: "POWERPOINT"
    description: "از Python برای پاکسازی داده‌های خصوصی از اسناد POWERPOINT استفاده کنید. برای استفاده‌های قانونی، تجاری و شخصی عالی است."
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