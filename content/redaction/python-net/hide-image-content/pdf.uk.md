
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховування чутливих зображень у PDF за допомогою накладок у Python"
head_description: "З GroupDocs.Redaction for Python via .NET ви можете приховати чутливі зображення у файлах PDF, додавши накладки. Захистіть приватні дані, не змінюючи макет документа."

############################# Header ############################
title: "Приховування зображень у файлах PDF за допомогою накладок у Python" 
description: "Забезпечте безпеку особистих та бізнес-зображень у файлах PDF за допомогою Python. Наші інструменти роблять захист даних надійним."
subtitle: "Функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET дає розробникам Python інструменти для приховування або видалення контенту в файлах PDF. Закрийте текст, зображення та метадані для захисту документів у різних форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Захист чутливих даних у файлах Pdf"
    content: |
      GroupDocs.Redaction for Python via .NET надає вашим додаткам Python via .NET можливість захищати документи. Приховуйте приватний контент всього за кілька кліків.
      
      1. Створіть об'єкт Redactor та вкажіть його на файл Pdf.
      2. Налаштуйте параметри відповідно до ваших потреб редагування.
      3. Виберіть, яку область зображення приховати, і виберіть колір накладки.
      4. Обробіть і збережіть редагований файл.
   
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

        # Приховати конфіденційні частини зображень у PDF

        # Налаштуйте колір і розмір накладки
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Виберіть область для редагування
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Завантажити документ за допомогою Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Застосуйте накладку та збережіть документ
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Приховування чутливого контенту в документах"
  description: "З GroupDocs.Redaction for Python via .NET ви можете приховати або видалити дані в різних форматах файлів. Захистіть чутливу інформацію, зберігаючи документи чистими та придатними для обміну."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ключові функції редагування"
  features:
    # feature loop
    - title: "Пошук та редагування тексту"
      content: "Знайдіть і змініть чутливий текст у вашому документі, щоб захистити приватну інформацію."

    # feature loop
    - title: "Приховати зображення"
      content: "Розмістіть накладки на зображення або вибрані частини, щоб приховати конфіденційну візуалізацію."

    # feature loop
    - title: "Керувати метаданими"
      content: "Видаліть або редагуйте приховані метадані, щоб запобігти небажаним витокам інформації."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати інформацію про зображення за допомогою накладок"
      content: |
        Цей приклад демонструє, як приховати чутливі дані зображення в документах за допомогою накладок.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Налаштуйте параметри накладки: розмір, колір та місцезнаходження
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

          # Відкрийте файл для редагування
          with gr.Redactor("source.pdf") as redactor:

              # Застосуйте накладку, щоб приховати зображення
              result = redactor.apply(redaction)

              # Збережіть редагований файл
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
    title: "Захистіть файли PDF з Python"
    exclude: "PDF"
    description: "Використовуйте Python для приховування або видалення чутливих даних у файлах PDF. Практичне рішення для забезпечення бізнес-документів та особистих даних."
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