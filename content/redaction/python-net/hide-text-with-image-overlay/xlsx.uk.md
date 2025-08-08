
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховати текст у XLSX за допомогою Python та накладок"
head_description: "GroupDocs.Redaction for Python via .NET допомагає вам сховати текст у файлах XLSX, додаючи кольорові накладки. Зберігайте свої дані приватними, не змінюючи макет файлу."

############################# Header ############################
title: "Сховати текст у файлах XLSX за допомогою накладок Python" 
description: "Захистіть чутливий текст у ваших файлах XLSX за допомогою GroupDocs.Redaction for Python via .NET і Python, помістивши прості накладки."
subtitle: "Що ви отримуєте з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Що GroupDocs.Redaction for Python via .NET може зробити"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python інструменти для приховування або видалення тексту, зображень та більше в файлах XLSX.

############################# Steps ############################
steps:
    enable: true
    title: "Захистити дані в файлах Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET дозволяє розробникам Python via .NET приховувати приватну інформацію всього за кілька рядків коду.
      
      1. Розпочніть зі створення Redactor та завантажте файл Xlsx.
      2. Встановіть параметри редагування, які підходять для вашого випадку.
      3. Додайте текстовий шаблон, який потрібно приховати, і виберіть колір.
      4. Запустіть редагування та збережіть файл.
   
    code:
      platform: "python-net"
      copy_title: "Копіювати"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Приклад редагувань"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "натисніть, щоб скопіювати"
        copy_done: "скопійовано"
      links:
        #  loop
        - title: "Більше прикладів"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Документація"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # Приховати приватний контент у XLSX за допомогою накладок

        # Налаштуйте параметри редагування
        # Виберіть текст, щоб закрити, та колір накладки
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Використовуйте Redactor для завантаження вашого файлу
        with gr.Redactor("input.xslx") as redactor:

            # Редагуйте та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Корисні інструменти для редагування"
  description: "GroupDocs.Redaction for Python via .NET дозволяє вам приховувати або видаляти контент з багатьох типів файлів. Захищайте особисту або бізнес-інформацію."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Легкі у використанні опції редагування"
  features:
    # feature loop
    - title: "Знайти та редагувати текст"
      content: "Шукайте конкретний текст та замініть або приховайте його."

    # feature loop
    - title: "Приховати вміст зображень"
      content: "Додайте накладки, щоб закрити чутливі частини картин або графіків."

    # feature loop
    - title: "Видалити метадані"
      content: "Очистіть фонову інформацію перед обміном файлами."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати текст за допомогою шаблонів regex"
      content: |
        Цей приклад показує, як знаходити та приховувати контент за допомогою регулярних виразів.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Встановіть свій текстовий шаблон і колір накладки
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Відкрийте файл, який потрібно відредагувати
          with gr.Redactor("source.xslx") as redactor:

              # Застосуйте правила редагування
              result = redactor.apply(redaction)

              # Збережіть відредаговану версію
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "Копіювати"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "натисніть, щоб скопіювати"
          copy_done: "скопійовано"
        top_links:
          #  loop
          - title: "Завантажити результат"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "Більше прикладів"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Документація"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Готові почати?"
  description: "Спробуйте можливості GroupDocs.Redaction безкоштовно або запитайте ліцензію"
  items:
    #  loop
    - title: "Завантаження PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Ліцензування"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Приховати дані в XLSX за допомогою Python"
    exclude: "XLSX"
    description: "Використовуйте інструменти Python, щоб швидко та просто приховати або видалити чутливі частини ваших файлів XLSX."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Презентація PowerPoint Open XML"


---