
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: uk
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховати зображення у файлах PHOTO за допомогою накладок у Python"
head_description: "Застосуйте накладки для маскування чутливих даних зображень у файлах PHOTO з GroupDocs.Redaction for Python via .NET. зберігаючи дизайн документа без змін."

############################# Header ############################
title: "Приховати чутливі зображення у файлах PHOTO з накладками через Python" 
description: "Захистіть вміст зображення у файлах PHOTO з Python. Простий інструмент для швидкого та ефективного захисту даних."
subtitle: "Основні функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python потужні інструменти для захисту чутливого контенту у файлах PHOTO. Зберігайте важливі дані, маскуючи текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть зображення в Photo файлах"
    content: |
      Використовуйте GroupDocs.Redaction for Python via .NET, щоб легко закривати чутливі області зображення у ваших програмах Python via .NET.
      
      1. Створіть об'єкт Redactor та зв'яжіть його з файлом Photo.
      2. Налаштуйте параметри редагування, щоб відповідати вашому завданню.
      3. Підкресліть секції зображення та вкажіть кольори накладок.
      4. Застосуйте редагування та збережіть захищений файл.
   
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

        # Використовуйте накладки, щоб приховати дані зображень у PHOTO

        # Налаштуйте розміри накладки та кольори
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Виберіть зображення для маскування
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Відкрити файл з Redactor
        with gr.Redactor("input.jpeg") as redactor:

            # Застосуйте накладку та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редагування чутливих даних у багатьох форматах"
  description: "GroupDocs.Redaction for Python via .NET дозволяє приховувати або видаляти чутливий контент у різних типах документів. Підтримуйте чисті, безпечні та легкі для обміну документи."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Усі функції редагування в одному місці"
  features:
    # feature loop
    - title: "Знайти та редагувати текст"
      content: "Шукайте чутливий текст і замінюйте його для забезпечення безпеки документів."

    # feature loop
    - title: "Приховати зображення з накладками"
      content: "Додайте накладки, щоб закрити повні зображення або конкретні секції."

    # feature loop
    - title: "Видалити метадані"
      content: "Видалити приховані метадані, щоб уникнути витоків даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати секції зображень за допомогою накладок"
      content: |
        Цей код приклад показує, як маскувати чутливі області зображення в документі за допомогою накладок.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Визначте розмір накладки, колір і розміщення
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
          with gr.Redactor("source.jpeg") as redactor:

              # Застосуйте накладку для приховування вмісту
              result = redactor.apply(redaction)

              # Збережіть захищений файл
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
    title: "Редагувати чутливий контент у PHOTO за допомогою Python"
    exclude: "PHOTO"
    description: "Приховувати або видаляти приватні дані в PHOTO за допомогою Python. Легкий спосіб забезпечити безпечні офіційні документи."
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