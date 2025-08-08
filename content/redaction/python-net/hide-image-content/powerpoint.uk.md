
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: uk
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Замаскувати чутливі зображення у POWERPOINT за допомогою накладок у Python"
head_description: "За допомогою GroupDocs.Redaction for Python via .NET ви можете приховати приватні зображення у файлах POWERPOINT за допомогою накладок. Захистіть інформацію, не змінюючи проект документа."

############################# Header ############################
title: "Приховати приватні зображення в документах POWERPOINT за допомогою накладок Python" 
description: "Забезпечте безпеку чутливих зображень у файлах POWERPOINT з Python. Простий інструмент, призначений для надійного захисту даних."
subtitle: "Досліджуйте функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python інструменти для приховування або видалення чутливого контенту в файлах POWERPOINT. Захистіть свої документи, приховуючи приватний текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Зберігайте ваші документи Powerpoint в безпеці"
    content: |
      GroupDocs.Redaction for Python via .NET полегшує захист документів додатками Python via .NET.
      
      1. Створіть об'єкт Redactor та завантажте файл Powerpoint.
      2. Налаштуйте параметри редагування відповідно до ваших вимог.
      3. Виберіть область зображення та вкажіть колір накладки.
      4. Застосуйте редагування та збережіть документ.
   
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

        # Замаскуйте вміст зображень у файлах POWERPOINT

        # Встановити розмір та колір накладки
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Вибрати область для редагування
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Завантажити файл за допомогою Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Застосуйте накладку та зберегти файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Захистіть приватні дані в документах"
  description: "GroupDocs.Redaction for Python via .NET дозволяє вам приховувати або видаляти чутливий контент у різних форматах файлів. Зберігайте ваші файли в безпеці та готовими до обміну."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Всі функції редагування в одному місці"
  features:
    # feature loop
    - title: "Пошук та редагування тексту"
      content: "Знайдіть приватний текст у документах і замініть його, щоб забезпечити конфіденційність."

    # feature loop
    - title: "Замаскувати області зображень"
      content: "Приховати цілі зображення чи вибрані частини за допомогою накладок."

    # feature loop
    - title: "Видалити метадані"
      content: "Видаліть метадані для запобігання випадковому розкриттю інформації."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використовуйте накладки для приховування даних зображення"
      content: |
        Цей приклад показує, як захистити чутливі зображення у документах за допомогою накладок.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Визначте розміри, колір та положення накладки
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Вирішіть, яку область зображення на першій сторінці закрити
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Відкрийте документ для редагування
          with gr.Redactor("source.pptx") as redactor:

              # Застосуйте накладку для маскування даних
              result = redactor.apply(redaction)

              # Збережіть окончений документ
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
    title: "Зберігайте файли POWERPOINT в безпеці з Python"
    exclude: "POWERPOINT"
    description: "З Python ви можете легко приховувати або видаляти чутливі дані у файлах POWERPOINT. Надійне рішення для захисту важливих документів."
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