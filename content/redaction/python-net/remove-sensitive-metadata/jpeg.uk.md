
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Редагування метаданих у JPEG за допомогою Python"
head_description: "GroupDocs.Redaction for Python via .NET допомагає вам очищати або оновлювати метадані в документах JPEG. Видаліть приховані поля, які можуть розкрити приватні деталі."

############################# Header ############################
title: "Очистка метаданих у JPEG через Python" 
description: "Захистіть свої файли JPEG, видаляючи приховані метадані за допомогою простих інструментів, розроблених для Python."
subtitle: "Основні функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Дізнайтеся про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам Python прості інструменти для видалення тексту, зображень та метаданих із документів JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Кроки для очищення метаданих Jpeg"
    content: |
      GroupDocs.Redaction робить видалення метаданих швидким та зручним для ваших додатків Python via .NET.
      
      1. Налаштуйте Redactor та відкрийте документ Jpeg.
      2. Виберіть опції для видалення полів метаданих.
      3. Запустіть редагування, щоб очистити файл.
      4. Збережіть нову версію без прихованих даних.
   
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

        # Очистіть метадані в JPEG

        # Виберіть поля метаданих, які потрібно очистити
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Відкрийте файл, використовуючи Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Застосуйте редагування та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Захистити конфіденційність у кожному файлі"
  description: "GroupDocs.Redaction for Python via .NET надає вам контроль над чутливими даними в документах. Видаляйте прихований вміст у тексті, зображеннях і метаданих."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Функції редагування метаданих"
  features:
    # feature loop
    - title: "Знайти та стерти текст"
      content: "Скануйте на наявність ключових слів або приватної інформації та видаляйте їх з документа."

    # feature loop
    - title: "Закрити деталі зображення"
      content: "Приховувати частини зображень, які не повинні відображатися іншим."

    # feature loop
    - title: "Редагувати метадані файлу"
      content: "Змінюйте або видаляйте поля метаданих для захисту інформації документу."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування полів метаданих"
      content: |
        Цей приклад описує, як видалити або змінити поля, такі як Автор і Заголовок у документі JPEG.
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

          # Відкрийте файл JPEG
          with gr.Redactor("source.jpg") as redactor:

              # Запустіть процес очищення
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Збережіть нову версію
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
    title: "Очистка метаданих JPEG з Python"
    exclude: "JPEG"
    description: "Використовуйте Python для видалення прихованих та приватних даних з ваших документів JPEG швидко та легко."
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