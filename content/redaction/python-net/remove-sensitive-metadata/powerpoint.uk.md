
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Очистка метаданих у POWERPOINT з Python"
head_description: "Захистіть ваші POWERPOINT документи за допомогою GroupDocs.Redaction for Python via .NET, очистивши приховані метадані, що можуть містити приватну інформацію."

############################# Header ############################
title: "Очистка метаданих з POWERPOINT з Python" 
description: "Отримайте краще управління своїми файлами, використовуючи інструменти Python, які швидко видаляють приховані метадані."
subtitle: "Основні функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Дізнайтеся про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction створений для розробників Python, які допомагають редагувати текст, зображення та метадані у файлах POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Кроки для видалення метаданих у Powerpoint"
    content: |
      GroupDocs.Redaction дозволяє вашим додаткам Python via .NET очищати метадані з документів всього за кілька кліків.
      
      1. Створіть екземпляр Redactor та відкрийте ваш документ.
      2. Виберіть, які поля метаданих потрібно видалити.
      3. Налаштуйте та застосуйте налаштування редагування.
      4. Збережіть остаточну версію без прихованих даних.
   
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

        # Очистити метадані з POWERPOINT

        # Виберіть метадані для видалення
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Завантажте файл у редактор
        with gr.Redactor("input.pptx") as redactor:

            # Очистіть і збережіть документ
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Розширене редагування для POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET допомагає очищати файли, видаляючи чутливий вміст. Працює з кількома форматами файлів та типами даних."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Основні опції редагування"
  features:
    # feature loop
    - title: "Стерти приватний текст"
      content: "Шукайте та видаляйте слова або фрази, які не повинні розкриватися."

    # feature loop
    - title: "Закривати частини зображень"
      content: "Сховати частини зображень, що містять особисті або чутливі візуали."

    # feature loop
    - title: "Стерти метадані"
      content: "Очистити метадані, такі як автор, заголовок і коментарі з ваших файлів."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Як видалити приховані метадані"
      content: |
        Цей зразок показує, як стерти вбудовані метадані, такі як автор і заголовок з вашого документа POWERPOINT.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Очистіть поле автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Очистіть поле заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Відкрийте файл у редакторі
          with gr.Redactor("source.pptx") as redactor:

              # Виконайте редагування
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
    title: "Очищення метаданих для POWERPOINT за допомогою Python"
    exclude: "POWERPOINT"
    description: "Використовуйте Python для очищення приватних даних із документів POWERPOINT. Добре підходить для юридичного, бізнесового та особистого використання."
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