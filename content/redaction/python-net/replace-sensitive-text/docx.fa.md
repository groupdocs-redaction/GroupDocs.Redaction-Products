
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fa
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متن خصوصی از DOCX با استفاده از Python"
head_description: "با استفاده از GroupDocs.Redaction for Python via .NET و Python محتوای حساس را از فایل‌های DOCX خود حذف کنید. حذف سریع و ساده."

############################# Header ############################
title: "ویرایش یا پنهان کردن متن خصوصی در فایل‌های DOCX با Python" 
description: "با استفاده از GroupDocs.Redaction for Python via .NET و Python بر محتوای DOCX خود کنترل داشته باشید. عالی برای استفاده شخصی یا تجاری."
subtitle: "کارهایی که می‌توانید با GroupDocs.Redaction for Python via .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "آشنا شوید با GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python ابزارهایی برای پاک‌سازی مطالب در فایل‌های DOCX ارائه می‌دهد. متن، تصاویر، نظرات و متاداده را به سادگی حذف کنید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متن را در فایل‌های Docx پاک کنیم"
    content: |
      از GroupDocs.Redaction for Python via .NET در برنامه‌های Python via .NET خود برای حذف یا پنهان کردن متن خصوصی استفاده کنید. فرآیند حذف سریع و ساده است.
      
      1. یک Redactor ایجاد کرده و فایل Docx خود را باز کنید.
      2. قوانین حذف را که می‌خواهید تنظیم کنید.
      3. متن مورد نظر برای جستجو و جایگزینی را انتخاب کنید.
      4. عملیات حذف را اجرا کرده و فایل جدید خود را ذخیره کنید.
   
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

        # چگونه متن را در یک فایل DOCX حذف کنیم

        # تنظیمات حذف خود را انتخاب کنید
        # متن‌های جستجو و جایگزینی را وارد کنید
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # فایل خود را با استفاده از سازنده Redactor باز کنید
        with gr.Redactor("input.docx") as redactor:

            # تغییرات را اعمال کرده و فایل DOCX به روزرسانی شده خود را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای بیشتر برای حذف"
  description: "GroupDocs.Redaction for Python via .NET به شما اجازه می‌دهد متن‌های حساس را در فرمت‌های مختلف حذف یا پنهان کنید. فایل‌های تمیز و ایمن را با اطمینان به اشتراک بگذارید."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ابزارهایی برای حذف متن، تصویر و متاداده"
  features:
    # feature loop
    - title: "پیدا کردن و جایگزینی متن خصوصی"
      content: "برای جستجوی کلمات یا الگوهای خاص و تعویض آنها استفاده کنید. با عبارات منظم و گزینه‌های کلید واژه کار می‌کند."

    # feature loop
    - title: "پوشاندن تصاویر حساس"
      content: "منطقه‌های تصویر را بپوشانید یا پنهان کنید. رنگ‌ها، شفافیت و اندازه را در صورت نیاز تغییر دهید."

    # feature loop
    - title: "حذف متاداده"
      content: "اطلاعات مخفی مانند نام نویسندگان، زمان‌ها و یادداشت‌های داخلی را برای حفظ حریم خصوصی فایل‌ها حذف کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "استفاده از Regex برای حذف الگوها"
      content: |
        برای جستجوی ایمیل‌ها، شماره‌های شناسایی یا الگوها با استفاده از عبارات منظم و آساناً آنها را جایگزین کنید.
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
          with gr.Redactor("source.docx") as redactor:

              # تنظیمات حذف خود را اعمال کنید
              result = redactor.apply(redaction)

              # سند حذف شده را ذخیره کنید
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
    title: "حذف محتوا در DOCX با استفاده از Python"
    exclude: "DOCX"
    description: "از Python برای حذف متن حساس از فایل‌های DOCX استفاده کنید. اطمینان حاصل کنید که اسناد شخصی و کاری محفوظ مانده‌اند."
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