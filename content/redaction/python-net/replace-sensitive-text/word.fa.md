
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fa
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متن خصوصی از WORD با استفاده از Python"
head_description: "با GroupDocs.Redaction for Python via .NET و Python داده‌های خصوصی را در فایل‌های WORD خود حفاظت کنید. حذف متن سریع و کارآمد."

############################# Header ############################
title: "ویرایش یا پنهان کردن متن خصوصی در فایل‌های WORD با Python" 
description: "با استفاده از GroupDocs.Redaction for Python via .NET و Python محتوای حساس را در فایل‌های WORD پاک کنید. اسناد شخصی یا کاری خود را ایمن نگه دارید."
subtitle: "کارهایی که می‌توانید با GroupDocs.Redaction for Python via .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "آشنا شوید با GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python کمک می‌کند به راحتی فایل‌های WORD را پاک‌سازی کنند. متن، تصاویر، یادداشت‌ها و متاداده را با فقط چند مرحله حذف کنید.

############################# Steps ############################
steps:
    enable: true
    title: "مراحل حذف متن در فایل‌های Word"
    content: |
      با استفاده از GroupDocs.Redaction for Python via .NET در برنامه‌های Python via .NET خود به راحتی اطلاعات حساس را حذف یا پنهان کنید.
      
      1. یک Redactor شروع کرده و فایل Word را بارگذاری کنید.
      2. تنظیمات حذف را که می‌خواهید انتخاب کنید.
      3. متن مورد نظر برای جستجو و آنچه باید جایگزین شود را وارد کنید.
      4. حذف را اجرا کرده و سند خود را ذخیره کنید.
   
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

        # چگونه متن را در یک فایل WORD حذف کنیم

        # گزینه‌های حذف را تنظیم کنید
        # متن جایگزین و مقدار جدید را انتخاب کنید
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # فایل را با استفاده از سازنده Redactor بارگیری کنید
        with gr.Redactor("input.docx") as redactor:

            # تغییرات را اعمال کرده و فایل WORD حذف شده خود را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای بیشتر برای حذف"
  description: "GroupDocs.Redaction for Python via .NET به شما ابزارهایی می‌دهد تا محتوای حساس را در چندین فرمت فایل پاک کنید. اسناد خود را به صورت ایمن به اشتراک بگذارید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "بررسی اجمالی ویژگی‌های حذف"
  features:
    # feature loop
    - title: "تبادل متن حساس"
      content: "به دنبال کلمات یا الگوهای خاص بگردید و آنها را با موارد دیگر تعویض کنید. از regex نیز پشتیبانی می‌شود."

    # feature loop
    - title: "پوشاندن تصاویر خصوصی"
      content: "قسمت‌های تصاویر را پنهان کنید یا با لایه‌ها بپوشانید. تنظیمات ظاهری و ابعاد را متناسب با نیاز خود تغییر دهید."

    # feature loop
    - title: "پاک کردن متاداده‌های مخفی"
      content: "جزئیات مخفی مانند نام نویسندگانی که فایل را ایجاد کرده‌اند، تاریخ‌ها و یادداشت‌ها را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف الگوها با استفاده از Regex"
      content: |
        برای یافتن و پاک‌سازی الگوهای متنی مانند ایمیل‌ها، نام‌ها یا شناسه‌ها از عبارات منظم استفاده کنید.
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

          # سند خود را باز کنید
          with gr.Redactor("source.docx") as redactor:

              # تنظیمات حذف را اعمال کنید
              result = redactor.apply(redaction)

              # نسخه نهایی را ذخیره کنید
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
    title: "حذف محتوا در WORD با استفاده از Python"
    exclude: "WORD"
    description: "از ابزارهای Python برای پاک‌سازی و ایمن‌سازی اسناد WORD با حذف متن و جزئیات حساس استفاده کنید."
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