
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fa
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "حذف متن خصوصی از POWERPOINT با استفاده از Python"
head_description: "به سرعت داده‌های حساسی را در فایل‌های POWERPOINT خود با GroupDocs.Redaction for Python via .NET و Python حفاظت کنید."

############################# Header ############################
title: "پیدا کردن و پنهان کردن متن حساس در فایل‌های POWERPOINT با Python" 
description: "با استفاده از GroupDocs.Redaction for Python via .NET و Python می‌توانید محتوای خصوصی را در فایل‌های POWERPOINT خود پنهان یا حذف کنید. همه چیز را محرمانه نگه دارید، چه شخصی و چه مربوط به کار."
subtitle: "کارهایی که می‌توانید با GroupDocs.Redaction for Python via .NET انجام دهید" 

############################# About ############################
about:
    enable: true
    title: "آشنا شوید با GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "بیشتر بیاموزید"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET به توسعه‌دهندگان Python ابزارهایی را می‌دهد تا محتوای POWERPOINT را به طور کامل پاک کنند. محتوای غیرضروری، تصاویر، یادداشت‌ها و متاداده را به راحتی حذف کنید.

############################# Steps ############################
steps:
    enable: true
    title: "چگونه متن را در فایل‌های Powerpoint حذف کنیم"
    content: |
      از GroupDocs.Redaction for Python via .NET در برنامه‌های Python via .NET خود برای پاک‌سازی یا جایگزینی داده‌های حساس به سرعت استفاده کنید.
      
      1. یک Redactor ایجاد کرده و فایل Powerpoint خود را بارگذاری کنید.
      2. گزینه‌های حذف مورد نیاز خود را انتخاب کنید.
      3. متن مورد نظر برای جستجو و آنچه باید جایگزین شود را وارد کنید.
      4. حذف را اجرا کرده و فایل به روز شده خود را ذخیره کنید.
   
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

        # چگونه متن را در یک فایل POWERPOINT حذف کنیم

        # تنظیمات حذف مورد نیاز خود را انتخاب کنید
        # متن را برای جستجو و جایگزینی وارد کنید
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # فایل خود را با استفاده از سازنده Redactor بارگیری کنید
        with gr.Redactor("input.pptx") as redactor:

            # حذف‌ها را اجرا کرده و فایل POWERPOINT نهایی شده را ذخیره کنید
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ابزارهای بیشتری برای حذف داده‌های خصوصی"
  description: "GroupDocs.Redaction for Python via .NET به شما اجازه می‌دهد محتوای خصوصی را در بسیاری از فرمت‌ها پاک کنید. ایده‌آل برای اشتراک‌گذاری یا آرشیو ایمن فایل‌ها."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "گزینه‌ها و ابزارهای حذف"
  features:
    # feature loop
    - title: "پیدا کردن و جایگزینی متن"
      content: "سریعاً کلمات یا عبارات حساس را تعویض کنید. با regex و فیلترهای هوشمند کار می‌کند."

    # feature loop
    - title: "پوشاندن قسمت‌هایی از تصاویر"
      content: "قسمت‌های خاصی را با اشکال یا لایه‌ها پنهان کنید. بصری‌ها را مطابق نیاز خود تنظیم کنید."

    # feature loop
    - title: "حذف اطلاعات مخفی"
      content: "جزئیات مخفی مربوط به سازنده فایل، نظرات یا تاریخچه تغییرات را پاک کنید."
      
  code_samples_ext:
    # code sample ext loop
    - title: "حذف الگو با استفاده از Regex"
      content: |
        با استفاده از عبارات منظم، الگوهایی همچون ایمیل ها، اطلاعات تماس یا جزئیات دیگر را پیدا و حذف کنید.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # الگوی regex ایمیل و مقدار جایگزین را مشخص کنید
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # پرزنتیشن مورد نظر برای تمیز کردن را باز کنید
          with gr.Redactor("source.pptx") as redactor:

              # مراحل حذف را اجرا کنید
              result = redactor.apply(redaction)

              # فایل پاک شده نهایی را ذخیره کنید
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
    title: "حذف محتوا در POWERPOINT با استفاده از Python"
    exclude: "POWERPOINT"
    description: "با استفاده از Python می‌توانید محتوای حساس را از اسناد POWERPOINT حذف کنید و همه چیز را ایمن نگه دارید."
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