
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховування вмісту зображення у DOCX за допомогою накладок у Python"
head_description: "Захистіть чутливі зображення у файлах DOCX за допомогою накладок з GroupDocs.Redaction for Python via .NET. Зберігайте форматування документа під час захисту приватних візуальних елементів."

############################# Header ############################
title: "Захист зображень у документах DOCX за допомогою накладок у Python" 
description: "Забезпечте безпеку особистих та бізнес-візуалів у файлах DOCX за допомогою Python. Наші інструменти для редагування роблять захист документів зрозумілим."
subtitle: "Основні моменти GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python можливість приховувати або видаляти контент у файлах DOCX. Захистіть текст, зображення та метадані у різних форматах документів.

############################# Steps ############################
steps:
    enable: true
    title: "Забезпечте безпеку даних у файлах Docx"
    content: |
      GroupDocs.Redaction for Python via .NET спрощує захист документів для додатків Python via .NET. Приховуйте чутливі дані всього за кілька кроків.
      
      1. Створіть екземпляр Redactor та вкажіть шлях до файлу Docx.
      2. Налаштуйте переваги редагування під ваші завдання.
      3. Виберіть частину зображення, яку потрібно закрити, та визначте колір накладки.
      4. Запустіть процес і збережіть редагований файл.
   
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

        # Приховати чутливі частини зображень у DOCX

        # Визначити розмір і колір накладки
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Вказати область для редагування
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Завантажити файл за допомогою Redactor
        with gr.Redactor("input.docx") as redactor:

            # Застосувати накладку та зберегти ваш документ
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Приховування контенту в документах"
  description: "З GroupDocs.Redaction for Python via .NET ви можете легко приховати або видалити чутливу інформацію з різних типів документів. Зберігайте файли безпечними та придатними для обміну."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ефективні функції редагування"
  features:
    # feature loop
    - title: "Пошук і редагування тексту"
      content: "Знайдіть чутливі слова та замініть їх, щоб захистити свої дані."

    # feature loop
    - title: "Приховати зображення"
      content: "Застосуйте накладки до повних зображень або вибраних частин, щоб захистити візуальні дані."

    # feature loop
    - title: "Очистити приховані метадані"
      content: "Видаліть або оновіть метадані, щоб запобігти випадковому обміну даними."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати дані зображення з накладками"
      content: |
        Цей приклад показує спосіб захисту чутливих областей зображення в документах за допомогою накладок.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Встановіть параметри накладки: колір, розмір, положення
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Виберіть область для редагування на першій сторінці
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Завантажте файл, який потрібно редагувати
          with gr.Redactor("source.docx") as redactor:

              # Застосуйте накладку, щоб закрити зображення
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
    title: "Приховати чутливі дані у файлах DOCX за допомогою Python"
    exclude: "DOCX"
    description: "Використовуйте Python для приховування або видалення приватних даних у файлах DOCX. Правильний інструмент для підтримки захисту конфіденційних документів."
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