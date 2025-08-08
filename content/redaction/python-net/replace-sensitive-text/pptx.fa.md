
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fa
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متن خصوصی از PPTX با استفاده از Python"
head_description: "فایل‌های PPTX خود را با GroupDocs.Redaction for Python via .NET و Python ایمن نگه دارید. به سرعت محتویات خصوصی را پیدا کنید و حذف کنید."

############################# Header ############################
title: "ویرایش یا حذف متن خصوصی در فایل‌های PPTX با Python" 
description: "با استفاده از GroupDocs.Redaction for Python via .NET و Python اطلاعات حساس را در اسناد PPTX خود پیدا و از بین ببرید. فایل‌های شخصی یا کاری خود را محرمانه نگه دارید."
subtitle: "کارهایی که می‌توانید با GroupDocs.Redaction for Python via .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "آشنا شوید با GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python کنترل کامل بر محتوای PPTX را می‌دهد. به راحتی متن، تصاویر، یادداشت‌ها، و متاداده را پاک کنید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متن را در اسناد Pptx حذف کنیم"
    content: |
      از GroupDocs.Redaction for Python via .NET در محیط Python via .NET خود برای پنهان کردن یا حذف محتواهای حساس به سرعت استفاده کنید.
      
      1. یک Redactor ایجاد کرده و فایل Pptx خود را بارگذاری کنید.
      2. تنظیمات حذف خود را انتخاب کنید.
      3. متن مورد نظر برای جستجو و آنچه باید جایگزین شود را وارد کنید.
      4. حذف را اعمال کرده و فایل به روز شده خود را ذخیره کنید.
   
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

        # چگونه متن را در یک فایل PPTX حذف کنیم

        # تنظیمات حذف خود را انتخاب کنید
        # متن مورد نظر برای جستجو و جایگزینی را وارد کنید
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # از سازنده Redactor برای بارگذاری فایل خود استفاده کنید
        with gr.Redactor("input.pptx") as redactor:

            # حذف‌ها را اجرا کرده و فایل نهایی PPTX را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ویژگی‌های بیشتر برای حذف"
  description: "GroupDocs.Redaction for Python via .NET به شما کمک می‌کند محتوای حساس را از بین ببرید یا پنهان کنید. اسناد را به‌طور ایمن به اشتراک بگذارید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "بررسی اجمالی ویژگی‌های حذف"
  features:
    # feature loop
    - title: "تبادل متن حساس"
      content: "به سرعت کلمات یا اعداد حساس را تعویض کنید. با regex و جستجوی کلید واژه کار می‌کند."

    # feature loop
    - title: "پوشاندن قسمت‌های تصاویر"
      content: "قسمت‌های خاصی از فایل خود را با لایه‌ها بپوشانید. تنظیمات بصری را مطابق نیاز تنظیم کنید."

    # feature loop
    - title: "حذف اطلاعات مخفی"
      content: "جزئیات مخفی مانند تاریخ ایجاد، نام نویسنده یا یادداشت‌های داخلی را تمیز کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف الگو با استفاده از Regex"
      content: |
        از عبارات منظم برای جستجوی متنی به مانند آدرس‌های ایمیل، شماره تلفن یا شناسه‌ها استفاده کنید.
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

          # فایل مورد نظر برای ویرایش را باز کنید
          with gr.Redactor("source.pptx") as redactor:

              # فرآیند حذف را اجرا کنید
              result = redactor.apply(redaction)

              # فایل پاک شده را ذخیره کنید
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
    title: "حذف محتوا در PPTX با استفاده از Python"
    exclude: "PPTX"
    description: "با استفاده از Python می‌توانید متن‌های حساس را از اسناد PPTX حذف کنید و داده‌های خود را ایمن نگه دارید."
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