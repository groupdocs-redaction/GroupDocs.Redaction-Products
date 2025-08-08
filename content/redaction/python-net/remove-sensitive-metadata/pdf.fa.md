
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متادیتا از PDF با استفاده از Python"
head_description: "GroupDocs.Redaction for Python via .NET به شما کمک می‌کند تا داده‌های پنهان را از فایل‌های PDF پاک کنید. از به اشتراک‌گذاری اطلاعات خصوصی با ویرایش یا حذف متادیتا پرهیز کنید."

############################# Header ############################
title: "حذف متادیتا در فایل‌های PDF با Python" 
description: "با استفاده از Python و GroupDocs.Redaction for Python via .NET اطلاعات حساس را از اسناد PDF خود پاک کنید. کنترل داده‌های خود را با ابزارهای ساده محو کردن حفظ کنید."
subtitle: "امکاناتی که GroupDocs.Redaction for Python via .NET ارائه می‌دهد" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Python کمک می‌کند تا فایل‌های PDF را با حذف متن، محتوای تصویری و متادیتا تمیز کنند.

############################# Steps ############################
steps:
    enable: true
    title: "حذف متادیتا از اسناد Pdf"
    content: |
      با استفاده از GroupDocs.Redaction در اپلیکیشن‌های Python via .NET خود شروع به حفاظت از فایل‌های خود کنید.
      
      1. یک Redactor ایجاد کرده و فایل Pdf خود را بارگذاری کنید.
      2. قوانینی برای حذف متادیتای پنهان اضافه کنید.
      3. فرآیند محو کردن را برای حذف ورودی‌های متادیتا اجرا کنید.
      4. فایل را بدون داده‌های پنهان ذخیره کنید.
   
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

        # حذف متادیتا از اسناد PDF

        # فیلدهای متادیتا را برای حذف انتخاب کنید
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # فایل را با استفاده از Redactor باز کنید
        with gr.Redactor("input.pdf") as redactor:

            # محتوا را محو کرده و سند خود را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پاک کردن محتوای پنهان در اسناد"
  description: "با GroupDocs.Redaction for Python via .NET، می‌توانید متن، تصاویر و متادیتا را به‌طور ایمن حذف کنید. قبل از به اشتراک‌گذاری فایل‌های خود را خصوصی و ایمن نگه دارید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "گزینه‌های محو کردن"
  features:
    # feature loop
    - title: "حذف متن"
      content: "متن‌های حساس را در سراسر اسناد جستجو و پاک کنید."

    # feature loop
    - title: "پوشش تصاویر"
      content: "قسمت‌های خاصی از تصاویر را با پوشش‌های ساده پنهان کنید."

    # feature loop
    - title: "پاکسازی متادیتا"
      content: "از متادیتای ناخواسته که ممکن است داده‌های خصوصی را افشا کند، خلاص شوید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ویرایش و حذف فیلدهای متادیتا"
      content: |
        این مثال توضیح می‌دهد که چگونه متادیتای پنهان را از یک فایل PDF پاک کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # متادیتای نویسنده را حذف کنید
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # متادیتای عنوان را حذف کنید
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # فایل را در Redactor باز کنید
          with gr.Redactor("source.pdf") as redactor:

              # فرآیند محو کردن را اجرا کنید
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # فایل به‌روزشده را ذخیره کنید
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
    title: "پاکسازی متادیتا از PDF با Python"
    exclude: "PDF"
    description: "فیلدهای داده پنهان را در PDF با استفاده از Python حذف کنید. راهی هوشمندانه برای حفاظت از حریم خصوصی و حفظ تمیزی فایل‌ها."
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