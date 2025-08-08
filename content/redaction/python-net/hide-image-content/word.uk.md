
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Захистіть зображення у WORD з накладками у Python"
head_description: "Приховати чутливі зображення у файлах WORD з GroupDocs.Redaction for Python via .NET. Застосуйте накладки для захисту приватних даних, зберігаючи при цьому макет документа."

############################# Header ############################
title: "Приховати приватні зображення у файлах WORD за допомогою Python" 
description: "Забезпечте безпеку особистих та бізнес-візуалів у файлах WORD за допомогою Python. Просте та швидке редагування, на яке ви можете покладатися."
subtitle: "Основні функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python прості інструменти для приховування або видалення вмісту у файлах WORD. Захистіть чутливий текст, зображення та метадані в різних форматах документів.

############################# Steps ############################
steps:
    enable: true
    title: "Захист чутливій інформації в файлах Word"
    content: |
      GroupDocs.Redaction for Python via .NET допомагає вашим додаткам Python via .NET захищати документи, покриваючи приватний контент накладками.
      
      1. Створіть об'єкт Redactor та завантажте файл Word.
      2. Налаштуйте параметри редагування за потребою.
      3. Виберіть область зображення і налаштуйте колір накладки.
      4. Застосуйте накладку та збережіть редагований файл.
   
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

        # Приховати чутливі частини зображень у WORD

        # Визначити колір та розмір накладки
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Вибрати область зображення для приховування
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Завантажити файл за допомогою Redactor
        with gr.Redactor("input.docx") as redactor:

            # Застосувати й зберегти документ
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Розширені функції редагування"
  description: "GroupDocs.Redaction for Python via .NET дозволяє приховувати чи видаляти чутливий контент у різних форматах документів. Зберігайте файли чистими і безпечними для обміну."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Всюди функції редагування"
  features:
    # feature loop
    - title: "Пошук і заміна тексту"
      content: "Знаходьте чутливий текст і редагуйте його для забезпечення конфіденційності."

    # feature loop
    - title: "Накладення зображень"
      content: "Приховуйте вибрані частини чи повні зображення для захисту приватної інформації."

    # feature loop
    - title: "Видалити метадані"
      content: "Видаліть приховані метадані, щоб запобігти розкриттю невидимих даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати вміст зображення з накладками"
      content: |
        Цей приклад демонструє, як приховати чутливі зображення в документах за допомогою накладок.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Налаштуйте розміри, колір і положення накладки
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Виберіть область на першій сторінці для накладки
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Відкрийте документ
          with gr.Redactor("source.docx") as redactor:

              # Застосуйте редагування накладки
              result = redactor.apply(redaction)

              # Збережіть оновлений документ
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
    title: "Редагувати вміст у WORD за допомогою Python"
    exclude: "WORD"
    description: "Python дозволяє вам приховувати або видаляти чутливі дані у файлах WORD. Надійне рішення для безпеки документів."
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