
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fa
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پاکسازی متادیتا از فایل‌های WORD با Python"
head_description: "با استفاده از GroupDocs.Redaction for Python via .NET متادیتای پنهان را از فایل‌های WORD حذف کنید. اسناد را از فاش کردن اطلاعات شخصی یا داخلی محافظت کنید."

############################# Header ############################
title: "حذف متادیتا در WORD با استفاده از ابزارهای Python" 
description: "با حذف متادیتای ناخواسته با Python، فایل‌های خود را ایمن نگه دارید. مناسب برای شرکت‌ها و کاربران فردی."
subtitle: "ویژگی‌های GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "ملاقات با GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction برای توسعه‌دهندگان Python طراحی شده است که می‌خواهند فایل‌های WORD را خصوصی نگه دارند. به شما این امکان را می‌دهد که متن، بخش‌های تصاویر را حذف کرده و متادیتا را پاک کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حذف متادیتای پنهان در Word"
    content: |
      با GroupDocs.Redaction، اپلیکیشن Python via .NET شما می‌تواند به‌سرعت متادیتای سند را پاک کند.
      
      1. یک شی Redactor ایجاد کرده و فایل Word را باز کنید.
      2. قوانین محو کردن را برای فیلدهای متادیتا تنظیم کنید.
      3. محو را اجرا کنید تا داده‌های انتخاب‌شده را حذف کنید.
      4. نسخه تمیز شده فایل را ذخیره کنید.
   
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

        # پاکسازی متادیتا در WORD

        # متادیتا را برای حذف انتخاب کنید
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # سند را با استفاده از Redactor باز کنید
        with gr.Redactor("input.docx") as redactor:

            # محو کردن را اجرا کرده و فایل را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حفاظت از بیش از فقط متادیتا"
  description: "متن، تصاویر را محو کنید و با استفاده از GroupDocs.Redaction for Python via .NET متادیتا را حذف کنید. اسناد خود را تمیز و خصوصی نگه دارید."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "گزینه‌های حفاظت از اسناد"
  features:
    # feature loop
    - title: "یافتن و جایگزینی متن"
      content: "کلمات و عبارات حاوی داده‌های خصوصی یا حساس را حذف یا جایگزین کنید."

    # feature loop
    - title: "اضافه کردن پوشش‌های تصویری"
      content: "پوشش‌هایی برای پنهان‌نگه‌داشتن بخش‌هایی از تصاویر در اسناد خود قرار دهید."

    # feature loop
    - title: "پاکسازی متادیتا"
      content: "نام‌های نویسنده، عناوین، نظرات و سایر اطلاعات پنهان را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف متادیتا از فایل‌های WORD"
      content: |
        این مثال نشان می‌دهد که چگونه فیلدهای مانند نویسنده و عنوان را از یک سند WORD حذف کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # متادیتای نویسنده را هدف قرار دهید
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # متادیتای عنوان را هدف قرار دهید
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # سند خود را وارد کنید
          with gr.Redactor("source.docx") as redactor:

              # ابزار محو کردن را اجرا کنید
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # فایل به‌روزرسانی‌شده را ذخیره کنید
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
    title: "حذف متادیتا در WORD با Python"
    exclude: "WORD"
    description: "از Python برای پاکسازی متادیتای پنهان از WORD استفاده کنید. قبل از به اشتراک‌گذاری یا آرشیو، فایل‌ها را ایمن نگه دارید."
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