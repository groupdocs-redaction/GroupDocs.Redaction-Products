
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Видалення метаданих у PHOTO з Python"
head_description: "З GroupDocs.Redaction for Python via .NET ви можете стерти приховані дані з файлів PHOTO та уникнути витоку приватної інформації."

############################# Header ############################
title: "Очистка метаданих з PHOTO за допомогою Python" 
description: "Захистіть свої документи PHOTO, очищаючи приховану інформацію за допомогою простих інструментів Python."
subtitle: "Основні функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає користувачам Python спосіб очищати файли, видаляючи прихований вміст з тексту, зображень і метаданих у PHOTO.

############################# Steps ############################
steps:
    enable: true
    title: "Кроки для видалення метаданих з Photo"
    content: |
      Використовуйте GroupDocs.Redaction у своєму проекті Python via .NET для очищення метаданих документа всього за кілька кроків.
      
      1. Налаштуйте Redactor та відкрийте ваш файл Photo.
      2. Виберіть, які поля метаданих видалити.
      3. Застосуйте редагування, щоб очистити файл.
      4. Збережіть остаточну версію.
   
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

        # Видалити метадані в документах PHOTO

        # Виберіть, які метадані редагувати
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Використовуйте Redactor, щоб відкрити файл
        with gr.Redactor("input.jpeg") as redactor:

            # Запустіть та збережіть
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Очистити файли перед обміном"
  description: "GroupDocs.Redaction for Python via .NET допомагає видаляти дані, які не повинні бути видимими. Видаліть текст, зображення та приховані деталі всього за кілька кліків."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Корисні функції редагування"
  features:
    # feature loop
    - title: "Видалення тексту"
      content: "Знайдіть і видаліть чутливі слова, номери чи шаблони."

    # feature loop
    - title: "Закриття зображень"
      content: "Сховуйте частини зображень, які містять приватні дані."

    # feature loop
    - title: "Очищення метаданих"
      content: "Видалити деталі файлів, такі як автор, заголовок або коментарі."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Видалення конкретних метаданих"
      content: |
        Слідкуйте за цим прикладом, щоб видалити поля автора та заголовка в документі PHOTO.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Скеровуйте поле автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Скеровуйте поле заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Завантажте файл у редактор
          with gr.Redactor("source.jpeg") as redactor:

              # Редагуйте вибрані метадані
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
    title: "Редагування метаданих з PHOTO за допомогою Python"
    exclude: "PHOTO"
    description: "Використовуйте Python для очищення прихованих метаданих з файлів PHOTO. Зберігайте документи чистими та безпечними."
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