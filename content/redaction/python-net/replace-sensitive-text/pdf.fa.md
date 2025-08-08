
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fa
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متن حساس از PDF با استفاده از Python"
head_description: "جزئیات خصوصی خود را در اسناد PDF با GroupDocs.Redaction for Python via .NET ایمن نگه دارید. به سرعت اطلاعات حساس را پیدا کرده و پنهان کنید."

############################# Header ############################
title: "حذف متن حساس از فایل‌های PDF با استفاده از Python" 
description: "با استفاده از Python و GroupDocs.Redaction for Python via .NET متن‌های خصوصی، حقوقی یا شخصی را از فایل‌های PDF خود جستجو و حذف کنید."
subtitle: "کارهایی که می‌توانید با GroupDocs.Redaction for Python via .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET چیست؟"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python تمام ابزارهایی را که برای حذف محتوای فایل‌های PDF نیاز دارند، ارائه می‌دهد—متن، تصاویر، نظرات و بیشتر.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه محتوا را در فایل‌های Pdf حذف کنیم"
    content: |
      محتوای خود را در هر برنامه Python via .NET با استفاده از GroupDocs.Redaction for Python via .NET ایمن نگه دارید.
      
      1. یک Redactor ایجاد کنید و فایل Pdf خود را بارگذاری کنید.
      2. تنظیمات حذف را که می‌خواهید انتخاب کنید.
      3. متن مورد نظر برای جستجو و جایگزینی را وارد کنید.
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های بیشتر حذف"
  description: "GroupDocs.Redaction for Python via .NET به شما اجازه می‌دهد محتوای خصوصی را در انواع فایل‌های مختلف پنهان کنید. داده‌های خود را ایمن نگه دارید و آماده اشتراک‌گذاری کنید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ابزارهایی برای حذف متن، تصویر و متاداده"
  features:
    # feature loop
    - title: "پیدا کردن و جایگزینی متن خصوصی"
      content: "برای جستجو و تعویض متن مشابه استفاده کنید. با regex و جستجوی کلید واژه کار می‌کند."

    # feature loop
    - title: "پوشاندن تصاویر خصوصی"
      content: "کلیه تصاویر یا قسمتی از آنها را با استفاده از لایه‌ها بپوشانید. تنظیمات ظاهری را سفارشی کنید."

    # feature loop
    - title: "حذف متاداده‌های مخفی"
      content: "اطلاعات مخفی مانند نام نویسندگان، زمان‌ها و یادداشت‌های اصلاحی را حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف با استفاده از Regex"
      content: |
        برای پیدا کردن و حذف الگوهایی مانند ایمیل، شماره شناسایی یا شماره‌ها از regex استفاده کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # الگوی regex و متن جایگزین را تنظیم کنید
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # فایل مورد نظر خود را باز کنید
          with gr.Redactor("source.pdf") as redactor:

              # قوانین حذف خود را اعمال کنید
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
    title: "حذف محتوا در PDF با استفاده از Python"
    exclude: "PDF"
    description: "با استفاده از ابزارهای Python متن‌های شخصی یا تجاری را با حذف متن در فایل‌های PDF ایمن نگه دارید."
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