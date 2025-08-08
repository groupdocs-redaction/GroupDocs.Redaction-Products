
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متادیتا از DOCX با استفاده از Python"
head_description: "با استفاده از GroupDocs.Redaction for Python via .NET جزئیات پنهان را در فایل‌های DOCX پاک کنید. با حذف ورودی‌های متادیتا، داده‌های خود را محافظت کنید."

############################# Header ############################
title: "حذف متادیتای پنهان از فایل‌های DOCX با Python" 
description: "با Python می‌توانید متادیتای پنهان را از فایل‌های DOCX با استفاده از GroupDocs.Redaction for Python via .NET حذف کنید. فایل‌های خود را تمیز و خصوصی نگه دارید."
subtitle: "امکانات اصلی در GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "چیست GroupDocs.Redaction for Python via .NET؟"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Python قابلیت حذف داده‌های پنهان را در فایل‌های DOCX می‌دهد. متن، تصاویر و متادیتا را به آسانی از اسناد پاک کنید.

############################# Steps ############################
steps:
    enable: true
    title: "حذف متادیتا از فایل‌های Docx"
    content: |
      GroupDocs.Redaction به اپلیکیشن‌های Python via .NET شما ابزارهایی برای حذف سریع متادیتا می‌دهد.
      
      1. یک Redactor راه‌اندازی کرده و سند Docx خود را بارگذاری کنید.
      2. فیلدهای متادیتا را برای حذف تنظیم کنید.
      3. محو کردن را برای پاکسازی محتوای پنهان اعمال کنید.
      4. نسخه نهایی فایل را ذخیره کنید.
   
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

        # حذف متادیتا در فایل‌های DOCX

        # ورودی‌های متادیتا را برای حذف انتخاب کنید
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # از Redactor برای باز کردن سند استفاده کنید
        with gr.Redactor("input.docx") as redactor:

            # محو کردن را اعمال کرده و فایل را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ایمن‌سازی همه قسمت‌های یک سند"
  description: "با GroupDocs.Redaction for Python via .NET، می‌توانید متن، تصاویر و متادیتا را در چندین فرمت فایل تمیز کنید. ایدئال برای حریم خصوصی و امنیت."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ابزارهای محو کردن سند در عمل"
  features:
    # feature loop
    - title: "پاک‌کننده متن"
      content: "نام‌ها، اصطلاحات یا هر کلمه خصوصی را پیدا و حذف کنید."

    # feature loop
    - title: "پوشش تصاویر"
      content: "قسمت‌های تصویر را با قرار دادن یک پوشش رنگی پنهان کنید."

    # feature loop
    - title: "حذف متادیتا"
      content: "از اطلاعات پنهان سند مانند نویسنده یا جزئیات نرم‌افزار خلاص شوید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "مثال: حذف متادیتای پنهان"
      content: |
        در اینجا نحوه حذف فیلدهای نویسنده و عنوان از یک سند DOCX با استفاده از محو کردن آورده شده است.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # برای حذف فیلد نویسنده را انتخاب کنید
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # برای حذف فیلد عنوان را انتخاب کنید
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # فایل DOCX را باز کنید
          with gr.Redactor("source.docx") as redactor:

              # فرآیند محو کردن را اجرا کنید
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
    title: "حذف متادیتا در DOCX با Python"
    exclude: "DOCX"
    description: "متادیتای پنهان را در فایل‌های DOCX با استفاده از Python حذف کنید. عالی برای تامین امنیت فایل‌های شما پیش از به اشتراک‌گذاری یا آرشیو."
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