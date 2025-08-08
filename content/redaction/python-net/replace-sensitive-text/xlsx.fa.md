
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fa
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متن خصوصی از XLSX با استفاده از Python"
head_description: "بارگیری یا حذف داده‌های حساس از فایل‌های XLSX خود با GroupDocs.Redaction for Python via .NET و Python."

############################# Header ############################
title: "پنهان یا حذف کردن متن خصوصی در فایل‌های XLSX با استفاده از Python" 
description: "با GroupDocs.Redaction for Python via .NET و Python می‌توانید متن‌های خصوصی را از اسناد XLSX پاک کرده و به صورت سریع و مطمئن به کار ببرید."
subtitle: "کارهایی که می‌توانید با GroupDocs.Redaction for Python via .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "آشنا شوید با GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python همه ابزارهایی که برای حذف یا پنهان کردن داده‌های خصوصی در فایل‌های XLSX نیاز دارند، ارائه می‌دهد—متن، تصاویر، یادداشت‌ها و غیره.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه محتوا را در فایل‌های Xlsx حذف کنیم"
    content: |
      از GroupDocs.Redaction for Python via .NET در برنامه‌های Python via .NET خود برای پاک‌سازی یا پنهان کردن محتواهای حساس به صورت سریع استفاده کنید.
      
      1. یک Redactor ایجاد کرده و فایل Xlsx را بارگذاری کنید.
      2. تنظیمات حذف مورد نیاز خود را انتخاب کنید.
      3. متن جستجو و آنچه را که باید جایگزین شود، تنظیم کنید.
      4. حذف را اعمال کرده و فایل خود را ذخیره کنید.
   
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

        # چگونه متن را در یک فایل XLSX حذف کنیم

        # تنظیمات حذف خود را انتخاب کنید
        # مقدار جستجو و جایگزینی را تنظیم کنید
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # از سازنده Redactor استفاده کرده و فایل خود را بارگذاری کنید
        with gr.Redactor("input.xslx") as redactor:

            # تغییرات را اعمال کرده و فایل XLSX به روز شده خود را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های اضافی حذف"
  description: "GroupDocs.Redaction for Python via .NET به شما این امکان را می‌دهد تا اطلاعات خصوصی را در بین فرمت‌های مختلف پنهان یا حذف کنید. فقط مواردی را که باید نمایش داده شوند، به اشتراک بگذارید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ویژگی‌ها برای حذف متن، تصویر و متاداده"
  features:
    # feature loop
    - title: "جایگزین کردن متن خصوصی"
      content: "متن‌های مشابه یا الگوها را پیدا کرده و تعویض کنید. از regex و جستجوی کلید واژه پشتیبانی می‌شود."

    # feature loop
    - title: "پوشاندن تصاویر حساس"
      content: "قسمت‌های تصویر را با لایه‌ها بپوشانید. تنظیمات ظاهری را مطابق نیاز خود سفارشی کنید."

    # feature loop
    - title: "حذف متاداده"
      content: "جزئیات مخفی مانند تاریخچه سند، نام نویسنده یا برچسب‌های داخلی را حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف با استفاده از الگوهای Regex"
      content: |
        با استفاده از regex الگوهای متنی مانند شماره‌های تلفن، شناسه‌ها یا آدرس‌های ایمیل را پیدا کرده و به سرعت آنها را حذف کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # الگوی regex ایمیل و متن جایگزین را تنظیم کنید
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # فایل مورد نظر خود را باز کنید
          with gr.Redactor("source.xslx") as redactor:

              # قوانین حذف را اعمال کنید
              result = redactor.apply(redaction)

              # فایل حذف شده خود را ذخیره کنید
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
    title: "حذف محتوا در XLSX با استفاده از Python"
    exclude: "XLSX"
    description: "با استفاده از ابزارهای Python داده‌های حساس را از فایل‌های XLSX حذف کنید. مطمئن شوید که داده‌های شما برای ذخیره یا اشتراک‌گذاری ایمن هستند."
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