
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Видалення метаданих з PDF за допомогою Python"
head_description: "GroupDocs.Redaction for Python via .NET допомагає очистити приховані дані з файлів PDF. Уникайте розкриття приватної інформації, редагуючи або видаляючи метадані."

############################# Header ############################
title: "Видалення метаданих у файлах PDF з Python" 
description: "Використовуйте Python та GroupDocs.Redaction for Python via .NET, щоб очистити чутливу інформацію з ваших документів PDF. Підтримуйте контроль над даними за допомогою зручних інструментів редагування."
subtitle: "Що може зробити GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction допомагає розробникам Python очищати документи PDF шляхом видалення тексту, вмісту зображень і метаданих.

############################# Steps ############################
steps:
    enable: true
    title: "Видалення метаданих з документів Pdf"
    content: |
      Розпочніть захист ваших файлів за допомогою GroupDocs.Redaction у додатках Python via .NET.
      
      1. Створіть Redactor та завантажте ваш файл Pdf.
      2. Додайте правила для видалення прихованих метаданих.
      3. Запустіть редагування, щоб видалити записи метаданих.
      4. Збережіть файл без прихованих даних.
   
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

        # Видалення метаданих з документів PDF

        # Виберіть метадані для видалення
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Відкрийте файл за допомогою Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Застосуйте редагування та збережіть документ
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Очищення прихованого вмісту в документах"
  description: "З GroupDocs.Redaction for Python via .NET ви можете безпечно видаляти текст, зображення та метадані. Зберігайте свої файли приватними та безпечними перед поширенням."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Опції редагування"
  features:
    # feature loop
    - title: "Видалення тексту"
      content: "Шукайте та стирайте чутливий текст по документах."

    # feature loop
    - title: "Замаскування зображень"
      content: "Сховати конкретні частини зображень простими накладеннями."

    # feature loop
    - title: "Очищення метаданих"
      content: "Позбавтеся небажаних метаданих, які можуть розкривати приватні дані."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування та видалення полів метаданих"
      content: |
        Цей приклад пояснює, як очистити приховані метадані у файлі PDF.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Видаліть метадані автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Видаліть метадані заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Відкрийте файл у Redactor
          with gr.Redactor("source.pdf") as redactor:

              # Запустіть процес редагування
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

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
    title: "Очистка метаданих з PDF за допомогою Python"
    exclude: "PDF"
    description: "Видаліть приховані поля даних у PDF за допомогою Python. Розумний спосіб захистити конфіденційність та зберегти ваші файли в чистоті."
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