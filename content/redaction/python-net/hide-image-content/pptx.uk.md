
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Замаскувати зображення у файлах PPTX за допомогою накладок у Python"
head_description: "Використовуйте GroupDocs.Redaction for Python via .NET для замаскування чутливих зображень у файлах PPTX за допомогою кольорових накладок. Захистіть важливі дані, не змінюючи форматування документа."

############################# Header ############################
title: "Замаскуйте приватні зображення у документах PPTX за допомогою Python" 
description: "Захистіть чутливі візуальні елементи у файлах PPTX за допомогою Python. Наші інструменти роблять редагування зображень простим і швидким."
subtitle: "Функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python прості інструменти для приховування чи видалення вмісту у файлах PPTX. Закривайте текст, зображення та метадані у різних форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Забезпечте захист чутливих даних у файлах Pptx"
    content: |
      GroupDocs.Redaction for Python via .NET допомагає додаткам Python via .NET захищати документи, маскуючи чутливий контент.
      
      1. Створіть екземпляр Redactor та завантажте файл Pptx.
      2. Установіть параметри редагування відповідно до ваших вимог.
      3. Виберіть область зображення та призначте колір накладки.
      4. Застосуйте накладку та збережіть файл.
   
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

        # Замаскувати приватні зображення у PPTX

        # Встановити колір та розмір накладки
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Позначити область для редагування
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Відкрити документ з Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Застосувати накладку та зберегти файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Функції для редагування документів"
  description: "GroupDocs.Redaction for Python via .NET дозволяє приховувати або видаляти конфіденційні дані у багатьох типах документів. Зберігайте файли чистими та захищеними."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Широка гамма інструментів для редагування"
  features:
    # feature loop
    - title: "Пошук і редагування тексту"
      content: "Знайдіть чутливий текст і відредагуйте його, щоб захистити вашу інформацію."

    # feature loop
    - title: "Закрити області зображень"
      content: "Приховати повні зображення або конкретні секції з накладками."

    # feature loop
    - title: "Очистити метадані"
      content: "Видаляйте або змініть приховані метадані, щоб уникнути розкриття приватних даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Покрити вміст зображення кольоровими накладками"
      content: |
        Дивіться, як замаскувати чутливі частини зображень у документах за допомогою накладок.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Визначте властивості накладки: розмір, місце, колір
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Виберіть область зображення на першій сторінці
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Завантажте документ
          with gr.Redactor("source.pptx") as redactor:

              # Накладайте обрану область
              result = redactor.apply(redaction)

              # Збережіть захищений документ
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Приховувати вміст у файлах PPTX з Python"
    exclude: "PPTX"
    description: "Використовуйте Python для приховування або видалення приватного контенту у файлах PPTX. Надійний інструмент для забезпечення документів."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати Зображення"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Популярні формати зображень"

        # format loop 6
        - name: "Редагувати Фото"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Формати фото"

        # format loop 7
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Презентація PowerPoint Open XML"

        # format loop 10
        - name: "Редагувати JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Зображення JPEG"


---