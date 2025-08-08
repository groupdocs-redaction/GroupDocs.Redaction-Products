
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: uk
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Закрити зображення в IMAGE за допомогою накладок у Python"
head_description: "Приховати чутливий вміст зображень у файлах IMAGE за допомогою кольорових накладок з GroupDocs.Redaction for Python via .NET. Зберігайте оригінальний макет файлу незайманим при безпеці важливого вмісту."

############################# Header ############################
title: "Приховати чутливі зображення у файлах IMAGE за допомогою накладок Python" 
description: "Захистіть особисті та бізнес-дані зображень у файлах IMAGE за допомогою Python. Простий інструмент для швидкого та ефективного захисту."
subtitle: "Функції GroupDocs.Redaction for Python via .NET, які вам потрібні" 

############################# About ############################
about:
    enable: true
    title: "Дізнатися про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python інструменти для приховування або видалення контенту у файлах IMAGE. Захистіть свої документи, закриваючи текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Приховати приватний вміст у файлах Image"
    content: |
      GroupDocs.Redaction for Python via .NET робить легким приховування чутливих даних у ваших програмах Python via .NET.
      
      1. Ініціалізуйте Redactor та вкажіть свій файл Image.
      2. Налаштуйте параметри редагування за потребою.
      3. Виберіть секції зображення та визначте кольори накладки.
      4. Обробіть файл і збережіть відредаговану версію.
   
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

        # Закрити вміст зображення в IMAGE

        # Вкажіть розмір та кольори накладки
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Виберіть область для приховування
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Завантажте файл, використовуючи Redactor
        with gr.Redactor("input.png") as redactor:

            # Застосуйте накладку та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Захистіть дані в різних типах документів"
  description: "GroupDocs.Redaction for Python via .NET дозволяє вам приховати або видалити чутливий контент в різних форматах файлів. Зберігайте ваші документи чистими, безпечними та легкими для обміну."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Інструменти, що контролюють кожен редагування"
  features:
    # feature loop
    - title: "Пошук і заміна чутливого тексту"
      content: "Скануйте документи, щоб замінити приватний текст і підтримувати безпеку даних."

    # feature loop
    - title: "Приховати зображення з накладками"
      content: "Додайте кольорові накладки для приховування зображень або конкретних частин."

    # feature loop
    - title: "Видалити метадані"
      content: "Видалити або редагувати приховані метадані, щоб запобігти витоку приватних даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати вміст зображення за допомогою накладок"
      content: |
        Цей приклад демонструє, як застосовувати накладки для захисту чутливих даних зображення в документі.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Визначте розміри, колір і положення накладки
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
          with gr.Redactor("source.png") as redactor:

              # Застосуйте накладку, щоб маскувати вміст зображення
              result = redactor.apply(redaction)

              # Збережіть файл після редагування
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
    title: "Захистити вміст у IMAGE файлах за допомогою Python"
    exclude: "IMAGE"
    description: "З Python ви можете приховати або видалити чутливу інформацію у файлах IMAGE. Надійний спосіб забезпечити документи безпечними та професійними."
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