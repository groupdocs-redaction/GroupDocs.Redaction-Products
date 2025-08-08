
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fa
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متادیتا از فایل‌های PPTX با استفاده از Python"
head_description: "GroupDocs.Redaction for Python via .NET به پاک‌سازی داده‌های پنهان در فایل‌های PPTX کمک می‌کند. جزییاتی را که ممکن است اطلاعات حساس را فاش کنند حذف کنید."

############################# Header ############################
title: "حذف متادیتا در PPTX با Python" 
description: "متادیتای خصوصی که در فایل‌های PPTX ذخیره شده است را با استفاده از Python پاک کنید. روشی هوشمندانه برای حفاظت از اطلاعات شما."
subtitle: "ابزارهای اصلی در GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "بیشتر درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction برای توسعه‌دهندگان Python طراحی شده است که می‌خواهند اسناد را تمیز نگه دارند. از آن برای حذف متن، پوشاندن تصاویر یا پاک کردن متادیتا از فایل‌های PPTX استفاده کنید.

############################# Steps ############################
steps:
    enable: true
    title: "پاک‌سازی متادیتا در فایل‌های Pptx"
    content: |
      با استفاده از GroupDocs.Redaction به‌سرعت متادیتا را از اپلیکیشن Python via .NET خود حذف کنید.
      
      1. یک Redactor ایجاد کرده و سند Pptx را باز کنید.
      2. مشخص کنید که کدام متادیتا را می‌خواهید حذف کنید.
      3. محو را برای حذف داده‌های پنهان اعمال کنید.
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

        # حذف متادیتا در PPTX

        # انتخاب کنید که کدام فیلدها باید محو شوند
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # فایل خود را با Redactor باز کنید
        with gr.Redactor("input.pptx") as redactor:

            # اجرا کرده و تغییرات را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "روش‌های دیگر برای پنهان‌سازی اطلاعات حساس"
  description: "GroupDocs.Redaction for Python via .NET از محو کردن در بسیاری از فرمت‌ها پشتیبانی می‌کند. راهی سریع برای حذف محتوای شخصی از اسناد."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ابزارهای محو کردن فایل"
  features:
    # feature loop
    - title: "جستجو و حذف متن"
      content: "به‌سرعت کلمات یا عبارات حاوی داده‌های شخصی یا حساس را حذف کنید."

    # feature loop
    - title: "اضافه کردن پوشش‌های تصویری"
      content: "نواحی از تصویر را که نباید به اشتراک گذاشته شوند، بپوشانید."

    # feature loop
    - title: "حذف متادیتا"
      content: "از اطلاعات پنهان مانند نام نویسنده، عنوان و سایر تگ‌های پنهان خلاص شوید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "مثال: حذف فیلدهای متادیتا"
      content: |
        این مثال مراحل حذف فیلدهای متادیتایی همچون نویسنده و عنوان را قبل از به اشتراک‌گذاری نشان می‌دهد.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # فیلد نویسنده را برای محو مشخص کنید
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # فیلد عنوان را برای محو مشخص کنید
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # فایل را بارگذاری کنید
          with gr.Redactor("source.pptx") as redactor:

              # محو کردن را اعمال کنید
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # فایل پاک‌شده را صادر کنید
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
    title: "از Python برای پاکسازی متادیتا از PPTX استفاده کنید"
    exclude: "PPTX"
    description: "داده‌های پس‌زمینه را از PPTX با Python حذف کنید. عالی برای حریم خصوصی و انطباق."
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