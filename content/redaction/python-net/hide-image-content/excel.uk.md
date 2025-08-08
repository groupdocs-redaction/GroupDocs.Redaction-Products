
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: uk
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховати зображення у EXCEL з накладками у Python"
head_description: "Захистіть чутливі області зображення у файлах EXCEL з GroupDocs.Redaction for Python via .NET. Додайте накладки, щоб заховати приватні візуальні елементи без зміни вигляду документа."

############################# Header ############################
title: "Захистіть чутливі зображення у файлах EXCEL з накладками за допомогою Python" 
description: "Забезпечте безпеку особистих і бізнес-зображень у файлах EXCEL з Python. Отримайте надійний захист за допомогою наших простих у використанні інструментів."
subtitle: "Ключові функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python прості інструменти для приховування або видалення чутливого контенту у файлах EXCEL. Приховуйте зображення, текст і метадані для захисту ваших документів.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть дані у файлах Excel"
    content: |
      GroupDocs.Redaction for Python via .NET допомагає додаткам Python via .NET швидко та легко приховувати приватну інформацію в документах.
      
      1. Створіть екземпляр Redactor та завантажте файл Excel.
      2. Встановіть параметри редагування за потребою.
      3. Виберіть область зображення та виберіть колір накладки.
      4. Застосуйте редагування та збережіть редагований файл.
   
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

        # Приховати частини зображення у EXCEL

        # Налаштуйте розмір і колір накладки
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Виберіть область для покриття
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Відкрити документ за допомогою Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Застосуйте накладку та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Приховати або видалити чутливий контент"
  description: "GroupDocs.Redaction for Python via .NET дозволяє вам захистити документи, заховуючи або видаляючи чутливі дані в різних форматах. Зберігайте файли безпечними і чистими для обміну."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Функціональні можливості редагування"
  features:
    # feature loop
    - title: "Безпечно редагувати текст"
      content: "Знайдіть чутливий текст у документах і замініть його, щоб захистити конфіденційність."

    # feature loop
    - title: "Приховати зображення"
      content: "Закрийте вибрані частини або повні візуальні елементи з накладками."

    # feature loop
    - title: "Видалити приховані метадані"
      content: "Видаліть невидимі поля метаданих, щоб запобігти витіканню інформації."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використання накладок для приховування зображень"
      content: |
        Цей приклад показує, як застосовувати накладки для покриття чутливих зображень у документах.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Встановіть колір, розмір і положення накладки
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Виберіть конкретну частину зображення на першій сторінці
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Завантажити документ для редагування
          with gr.Redactor("source.xslx") as redactor:

              # Застосуйте накладку для приховування
              result = redactor.apply(redaction)

              # Збережіть оновлений файл
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
    title: "Приховати контент у EXCEL за допомогою Python"
    exclude: "EXCEL"
    description: "З Python ви можете легко приховати або видалити чутливу інформацію у файлах EXCEL. Ефективний спосіб забезпечення безпеки документа."
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