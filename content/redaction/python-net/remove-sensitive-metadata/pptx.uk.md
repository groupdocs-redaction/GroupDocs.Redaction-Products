
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Видалення метаданих з файлів PPTX за допомогою Python"
head_description: "GroupDocs.Redaction for Python via .NET допомагає очищати приховані дані у файлах PPTX. Видаліть деталі, які можуть розкривати чутливу інформацію."

############################# Header ############################
title: "Видалення метаданих у PPTX з Python" 
description: "Стерти приватні метадані, збережені у файлах PPTX за допомогою Python. Розумний спосіб захистити вашу інформацію."
subtitle: "Основні інструменти GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Більше про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction створений для розробників Python, які хочуть зберігати документи в чистоті. Використовуйте його, щоб видалити текст, закрити зображення або видалити метадані з файлів PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Очищення метаданих у файлах Pptx"
    content: |
      Використовуйте GroupDocs.Redaction, щоб швидко видалити метадані з вашого додатку Python via .NET.
      
      1. Створіть Redactor та відкрийте документ Pptx.
      2. Виберіть, які метадані ви хочете стерти.
      3. Застосуйте редагування для видалення прихованих даних.
      4. Збережіть оновлений файл.
   
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

        # Очистіть метадані у PPTX

        # Виберіть, які поля редагувати
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Відкрийте файл за допомогою Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Запустіть та збережіть зміни
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Інші способи приховування чутливої інформації"
  description: "GroupDocs.Redaction for Python via .NET підтримує редагування в багатьох форматах. Швидкий спосіб видалити особистий вміст з документів."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Інструменти редагування файлів"
  features:
    # feature loop
    - title: "Шукати та видаляти текст"
      content: "Швидко видали слова або фрази, які містять особисті або чутливі дані."

    # feature loop
    - title: "Додавати накладення зображень"
      content: "Закривайте частини зображень, які не слід ділитися."

    # feature loop
    - title: "Видалити приховані метадані"
      content: "Позбавтеся від імен авторів, заголовків та інших прихованих тегів."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приклад: Видалення полів метаданих"
      content: |
        Слідкуйте за цим прикладом, щоб видалити загальні поля метаданих з файлу PPTX перед обміном.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Позначте поле автора для редагування
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Позначте поле заголовка для редагування
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Завантажте файл
          with gr.Redactor("source.pptx") as redactor:

              # Застосуйте редагування
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Експортуйте очищений файл
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
    title: "Використання Python для очищення метаданих з PPTX"
    exclude: "PPTX"
    description: "Видаліть фонові дані з PPTX за допомогою Python. Формуєте конфіденційність і відповідність."
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