
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متادیتا از XLSX با استفاده از Python"
head_description: "با استفاده از GroupDocs.Redaction for Python via .NET متادیتای پنهان را از اسناد XLSX خود حذف کنید. راهی تمیز برای حفاظت از حریم خصوصی."

############################# Header ############################
title: "حذف متادیتا در فایل‌های XLSX با Python" 
description: "با Python، می‌توانید جزئیات خصوصی را به‌طور ایمن از فایل‌های XLSX خود حذف کنید. مناسب برای استفاده شخصی و حرفه‌ای."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "چیست GroupDocs.Redaction for Python via .NET؟"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Python ابزارهایی می‌دهد برای حذف یا پنهان کردن هر محتوای حساسی در فایل‌های XLSX — از متن تا تصاویر و متادیتا.

############################# Steps ############################
steps:
    enable: true
    title: "حذف متادیتا از فایل‌های Xlsx"
    content: |
      GroupDocs.Redaction به پروژه‌های Python via .NET شما این امکان را می‌دهد که به‌سرعت داده‌های ناخواسته فایل را حذف کنید.
      
      1. یک شیء Redactor ایجاد کرده و فایل Xlsx خود را بارگذاری کنید.
      2. ورودی‌های متادیتا را که می‌خواهید پاک کنید، انتخاب کنید.
      3. فرآیند محو کردن را برای پاکسازی این ورودی‌ها اجرا کنید.
      4. فایل به‌روز شده را ذخیره کنید.
   
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

        # حذف متادیتای پنهان در سند XLSX

        # مشخص کنید که کدام فیلدهای متادیتا باید حذف شوند
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # فایل را با استفاده از Redactor باز کنید
        with gr.Redactor("input.xslx") as redactor:

            # تغییرات را اعمال کرده و فایل را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "پنهان کردن محتوای حساس در هر قسمت از فایل"
  description: "GroupDocs.Redaction for Python via .NET به شما این امکان را می‌دهد که اطلاعات خصوصی را از فرمت‌های فایل متعدد پاک کنید. محتوای خود را برای به اشتراک‌گذاری آماده نگه دارید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "محو متادیتا و محتوا"
  features:
    # feature loop
    - title: "حذف متن حساس"
      content: "نام‌ها، آدرس‌های الکترونیکی یا جزئیات خصوصی دیگر را از اسناد پیدا و حذف کنید."

    # feature loop
    - title: "پوشش نواحی تصویر"
      content: "پوشش‌هایی را برای پنهان کردن نواحی در تصاویر که نباید دیده شوند، قرار دهید."

    # feature loop
    - title: "پاک‌کننده متادیتا"
      content: "فیلدهای پنهان مانند نویسنده، عنوان یا تاریخ ایجاد را حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف متادیتا از سند"
      content: |
        در اینجا شرح داده شده که چگونه متادیتا را از فایل XLSX خود با چند خط کد حذف کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # فیلد نویسنده را برای حذف مشخص کنید
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # فیلد عنوان را برای حذف مشخص کنید
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # سند را باز کنید
          with gr.Redactor("source.xslx") as redactor:

              # قوانین محو کردن را اجرا کنید
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # فایل پاک شده را ذخیره کنید
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
    title: "حذف متادیتا در XLSX با Python"
    exclude: "XLSX"
    description: "از Python برای حذف متادیتای خصوصی در فایل‌های XLSX خود استفاده کنید. راهی مناسب برای آماده‌سازی فایل‌ها برای به اشتراک‌گذاری یا انتشار."
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