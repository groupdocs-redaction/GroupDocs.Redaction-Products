
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Очистка прихованих метаданих у IMAGE за допомогою Python"
head_description: "GroupDocs.Redaction for Python via .NET допомагає вам видаляти приватні метадані з документів IMAGE. Зберігайте файли чистими та безпечними."

############################# Header ############################
title: "Видалення метаданих у файлах IMAGE з Python" 
description: "Використовуйте інструменти Python, щоб захистити документи IMAGE. Видаліть приховану інформацію перед поширенням або публікацією."
subtitle: "Основні функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам Python інструменти для видалення чутливих даних з файлів IMAGE, включаючи текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Як видалити метадані з файлів Image"
    content: |
      GroupDocs.Redaction допомагає розробникам Python via .NET очищати метадані документів всього за кілька кроків.
      
      1. Налаштуйте Redactor та завантажте ваш файл Image.
      2. Виберіть метаданцію, яку ви хочете стерти.
      3. Запустіть процес редагування.
      4. Збережіть ваш оновлений файл.
   
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

        # Очистіть приховані поля у файлах IMAGE

        # Виберіть поля метаданих для редагування
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Використовуйте Redactor для відкриття файлу
        with gr.Redactor("input.png") as redactor:

            # Обробіть та експортуйте файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Очистити чутливі дані з будь-якого файлу"
  description: "GroupDocs.Redaction for Python via .NET видаляє текст, зображення та метадані, які не повинні бути поділені. Працює з багатьма форматами."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Основні інструменти редагування"
  features:
    # feature loop
    - title: "Видалити текст"
      content: "Видаліть слова або шаблони з ваших файлів, щоб захистити чутливу інформацію."

    # feature loop
    - title: "Закрити зображення"
      content: "Сховати частини зображень, які повинні залишатися приватними."

    # feature loop
    - title: "Видалити метадані"
      content: "Видаліть приховані дані з властивостей файлів, таких як автор або заголовок."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Видалення полів метаданих"
      content: |
        Цей приклад показує, як видалити метадані, такі як Автор і Заголовок у файлах IMAGE.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Виберіть поле автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Виберіть поле заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Відкрийте файл у редакторі
          with gr.Redactor("source.png") as redactor:

              # Запустіть редагування
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Збережіть фінальний документ
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Використовуйте Python для видалення метаданих IMAGE"
    exclude: "IMAGE"
    description: "Швидко очищайте метадані у файлах IMAGE за допомогою Python. Зберігайте свої документи в безпеці та приватності."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати Зображення"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Популярні формати зображень"

        # format loop 6
        - name: "Редагувати Фото"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Формати фото"

        # format loop 7
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Презентація PowerPoint Open XML"

        # format loop 10
        - name: "Редагувати JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Зображення JPEG"


---