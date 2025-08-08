
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پاکسازی متادیتا از EXCEL با استفاده از Python"
head_description: "با GroupDocs.Redaction for Python via .NET متادیتا را از اسناد EXCEL حذف کنید. داده‌های پنهان را حذف کرده و اطلاعات حساس را محافظت کنید."

############################# Header ############################
title: "حذف متادیتای پنهان در EXCEL با Python" 
description: "کنترل فایل‌های EXCEL خود را با Python به دست آورید. داده‌های ناخواسته را حذف کنید تا فایل‌های شما خصوصی بمانند."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "با GroupDocs.Redaction for Python via .NET آشنا شوید"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction برای توسعه‌دهندگان Python ساخته شده است که باید فایل‌های EXCEL را تمیز و محافظت کنند. به‌راحتی متادیتا، متن و تصاویر ناخواسته را حذف کنید.

############################# Steps ############################
steps:
    enable: true
    title: "مراحل پاکسازی متادیتا در فایل‌های Excel"
    content: |
      در اپلیکیشن‌های Python via .NET شما، GroupDocs.Redaction به حذف متادیتا در چند مرحله کمک می‌کند.
      
      1. یک Redactor راه‌اندازی کرده و فایل Excel را باز کنید.
      2. فیلدهای متادیتا را برای حذف انتخاب کنید.
      3. فرآیند محو کردن را اجرا کنید.
      4. فایل نهایی را صادر کنید.
   
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

        # حذف داده‌های پنهان در EXCEL

        # انتخاب کنید که چه متادیتایی را باید حذف کنید
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # فایل خود را با رداکتر باز کنید
        with gr.Redactor("input.xslx") as redactor:

            # فرآیند را اجرا کرده و فایل را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "تمام انواع داده‌های حساس را پاک کنید"
  description: "GroupDocs.Redaction for Python via .NET ابزارهایی را برای حذف متادیتا، متن و تصاویر در بسیاری از فرمت‌ها به شما می‌دهد. عالی برای به اشتراک‌گذاری اسناد امن."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ابزارهای متادیتا و حریم خصوصی"
  features:
    # feature loop
    - title: "حذف متن خصوصی"
      content: "اطلاعات شخصی یا پنهان را از اسناد شناسایی و حذف کنید."

    # feature loop
    - title: "جزییات تصویر را مخفی کنید"
      content: "قسمت‌هایی از تصاویر را بپوشانید تا بصری خصوصی باقی بمانند."

    # feature loop
    - title: "پاکسازی متادیتا"
      content: "فیلدهای متادیتای پنهان را که ممکن است حاوی داده‌های حساس باشند، حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف متادیتای نویسنده و عنوان"
      content: |
        نحوه‌ای را که GroupDocs.Redaction for Python via .NET فیلدهای متادیتای خاص را از اسناد EXCEL پاک می‌کند ببینید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # اطلاعات نویسنده را حذف کنید
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # فیلد عنوان را حذف کنید
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # سند را برای محو کردن باز کنید
          with gr.Redactor("source.xslx") as redactor:

              # تغییرات را اعمال کنید
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # سند پاک شده را ذخیره کنید
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
    title: "پاکسازی متادیتا در EXCEL با Python"
    exclude: "EXCEL"
    description: "برای حذف متادیتای حساس از فایل‌های EXCEL خود از Python استفاده کنید. محتوای خود را قبل از به اشتراک‌گذاری ایمن کنید."
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