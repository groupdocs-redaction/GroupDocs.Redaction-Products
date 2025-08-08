
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fa
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "پاکسازی متادیتای پنهان در IMAGE با استفاده از Python"
head_description: "GroupDocs.Redaction for Python via .NET به شما کمک می‌کند تا متادیتا خصوصی را از اسناد IMAGE حذف کنید. فایل‌ها را تمیز و امن نگه دارید."

############################# Header ############################
title: "حذف متادیتا در فایل‌های IMAGE با Python" 
description: "با استفاده از ابزارهای Python، اسناد IMAGE را محافظت کنید. اطلاعات پنهان قبل از به اشتراک‌گذاری یا انتشار را حذف کنید."
subtitle: "ویژگی‌های کلیدی GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "درباره GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction به توسعه‌دهندگان Python ابزارهای لازم برای حذف داده‌های حساس از فایل‌های IMAGE از جمله متن، تصویر و متادیتا را می‌دهد.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متادیتا را از فایل‌های Image حذف کنیم"
    content: |
      GroupDocs.Redaction به توسعه‌دهندگان Python via .NET کمک می‌کند تا متادیتای سند را تنها در چند مرحله تمیز کنند.
      
      1. یک Redactor راه‌اندازی کرده و فایل Image را بارگذاری کنید.
      2. متادیتایی را که می‌خواهید حذف کنید، انتخاب کنید.
      3. فرآیند محو را اجرا کنید.
      4. فایل به‌روز شده خود را ذخیره کنید.
   
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

        # حذف فیلدهای پنهان در فایل‌های IMAGE

        # فیلدهای متادیتا را برای محو انتخاب کنید
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # از Redactor برای باز کردن فایل استفاده کنید
        with gr.Redactor("input.png") as redactor:

            # فرآیند را اجرا کرده و صادر کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "حذف داده‌های حساس از هر فایل"
  description: "GroupDocs.Redaction for Python via .NET متن، تصاویر و متادیتایی را که نباید به اشتراک گذاشته شوند، حذف می‌کند. با بسیاری از فرمت‌ها کار می‌کند."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ابزارهای محو متادیتا"
  features:
    # feature loop
    - title: "حذف متن"
      content: "کلمات یا الگوهای خصوصی را از فایل‌های خود حذف کنید تا اطلاعات حساس محفوظ بمانند."

    # feature loop
    - title: "پوشش تصاویر"
      content: "بخش‌های تصاویر را بپوشانید که باید خصوصی باقی بمانند."

    # feature loop
    - title: "حذف متادیتا"
      content: "داده‌های پنهان از خواص فایل را حذف کنید، مانند نویسنده یا عنوان."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف فیلدهای متادیتا"
      content: |
        این مثال نشان می‌دهد که چگونه متادیتاهایی مانند نویسنده و عنوان را در فایل‌های IMAGE حذف کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # فیلد نویسنده را انتخاب کنید
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # فیلد عنوان را انتخاب کنید
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # فایل را در رداکتر باز کنید
          with gr.Redactor("source.png") as redactor:

              # محو را اجرا کنید
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # سند نهایی را ذخیره کنید
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
    title: "با Python متادیتای IMAGE را پاک کنید"
    exclude: "IMAGE"
    description: "متادیتای پنهان را در فایل‌های IMAGE به‌سرعت و به آسانی با Python حذف کنید. اسناد خود را ایمن و خصوصی نگه دارید."
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