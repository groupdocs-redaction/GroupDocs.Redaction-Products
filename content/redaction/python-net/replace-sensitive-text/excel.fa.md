
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fa
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متن خصوصی از EXCEL با استفاده از Python"
head_description: "به سرعت اطلاعات حساس را از فایل‌های EXCEL خود با GroupDocs.Redaction for Python via .NET و Python پاک کنید."

############################# Header ############################
title: "پیدا کردن و حذف متن خصوصی در فایل‌های EXCEL با استفاده از Python" 
description: "از Python و GroupDocs.Redaction for Python via .NET برای پاک‌سازی جزئیات حساس از اسناد EXCEL خود استفاده کنید. چه برای کار و چه برای استفاده شخصی، محتوای شما محفوظ است."
subtitle: "کارهایی که می‌توانید با GroupDocs.Redaction for Python via .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "آشنا شوید با GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python هر آنچه برای پاک‌سازی فایل‌های EXCEL نیاز دارند را می‌دهد. متن، تصاویر، نظرات و متاداده را با کد ساده حذف کنید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متن را در فایل‌های Excel حذف کنیم"
    content: |
      با GroupDocs.Redaction for Python via .NET در پروژه‌های Python via .NET خود می‌توانید به راحتی محتوای خصوصی را حذف یا پنهان کنید.
      
      1. یک Redactor ایجاد کنید و فایل Excel خود را باز کنید.
      2. تنظیمات حذف خود را انتخاب کنید.
      3. متن مورد نظر برای جستجو و آنچه باید جایگزین شود را وارد کنید.
      4. عملیات حذف را اجرا کرده و فایل به‌روزرسانی شده خود را ذخیره کنید.
   
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

        # چگونه متن را در یک فایل EXCEL حذف کنیم

        # تنظیمات حذف خود را مشخص کنید
        # متن‌های جستجو و جایگزینی را وارد کنید
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # فایل خود را با استفاده از سازنده Redactor بارگیری کنید
        with gr.Redactor("input.xslx") as redactor:

            # حذف‌ها را اعمال کرده و فایل EXCEL به روز شده خود را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های بیشتر حذف"
  description: "GroupDocs.Redaction for Python via .NET به شما این امکان را می‌دهد تا محتوای حساس را در بین فرمت‌های مختلف پاک‌ کنید. اسناد را ایمن و قابل اشتراک‌گذاری نگه دارید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ابزارهای حذف در حال کار"
  features:
    # feature loop
    - title: "جایگزین کردن متن خصوصی"
      content: "به جستجو و جایگزین کردن هر متن مطابق بپردازید. به همراه جستجوی هوشمند و الگوهای regex."

    # feature loop
    - title: "پوشاندن محتوای تصویر"
      content: "قسمت‌هایی از تصاویر را با لایه‌ها پنهان کنید. ظاهری که در صفحه دارد را تنظیم کنید."

    # feature loop
    - title: "حذف جزئیات مخفی"
      content: "جزئیات متاداده مانند نام مؤلف، نظرات و تاریخ‌ها را حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف الگوهای Regex"
      content: |
        برای پیدا کردن و پاک‌سازی الگوهای متنی مانند ایمیل‌ها، شماره‌های تلفن یا جزئیات حساب از regex استفاده کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # الگوی regex ایمیل و متن جایگزین را مشخص کنید
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # فایل مورد نیاز خود را پاک کنید
          with gr.Redactor("source.xslx") as redactor:

              # قوانین حذف را اعمال کنید
              result = redactor.apply(redaction)

              # نسخه نهایی فایل را ذخیره کنید
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "حذف محتوا در EXCEL با استفاده از Python"
    exclude: "EXCEL"
    description: "از Python برای حذف متن خصوصی از فایل‌های EXCEL استفاده کنید. اطمینان حاصل کنید که محتوای شما برای ذخیره یا اشتراک‌گذاری ایمن است."
    items: 
        # format loop 1
        - name: "رداکت PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "فرمت سند قابل حمل Adobe"

        # format loop 2
        - name: "رداکت ورد"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "اسناد MS Word و Open Office"
          
        # format loop 3
        - name: "رداکت اکسل"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "صفحات گسترده MS Excel و Open Office"

        # format loop 4
        - name: "رداکت پاورپوینت"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "مجموعه‌های ارائه پاورپوینت و Open Office"

        # format loop 5
        - name: "رداکت DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "سند Microsoft Word Open XML"
          
        # format loop 6
        - name: "رداکت XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "صفحه گسترده Microsoft Excel Open XML"
          
        # format loop 7
        - name: "رداکت PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "مجموعه ارائه پاورپوینت Open XML"


---