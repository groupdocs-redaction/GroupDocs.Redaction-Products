
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Очистка метаданих з файлів WORD за допомогою Python"
head_description: "Використовуйте GroupDocs.Redaction for Python via .NET, щоб видалити приховані метадані у файлах WORD. Захистіть документи від розкриття особистої чи внутрішньої інформації."

############################# Header ############################
title: "Видалення метаданих у WORD за допомогою інструментів Python" 
description: "Зберігайте свої файли в безпеці, видаляючи небажані метадані за допомогою Python. Ідеально підходить для компаній та індивідуальних користувачів."
subtitle: "Функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Знайомтесь з GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction створений для розробників Python, які хочуть зберігати файли WORD приватними. Він дозволяє видаляти текст, закривати частини зображень і очищати метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Видалення прихованих метаданих у Word"
    content: |
      З GroupDocs.Redaction ваш додаток Python via .NET може швидко очищати метадані документа.
      
      1. Створіть об'єкт Redactor та відкрийте файл Word.
      2. Задайте правила редагування для полів метаданих.
      3. Запустіть редагування, щоб видалити вибрані дані.
      4. Збережіть очищену версію файлу.
   
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

        # Очистіть метадані у WORD

        # Виберіть метадані для видалення
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Відкрийте документ за допомогою Redactor
        with gr.Redactor("input.docx") as redactor:

            # Застосуйте редагування та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Захистіть не тільки метадані"
  description: "Редагуйте текст, закривайте зображення і видаляйте метадані за допомогою GroupDocs.Redaction for Python via .NET. Зберігайте свої документи чистими та приватними."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Опції захисту документів"
  features:
    # feature loop
    - title: "Знайти та замінити текст"
      content: "Видаліть або замініть слова та фрази, які містять приватні або чутливі дані."

    # feature loop
    - title: "Додавати накладки зображень"
      content: "Розмістіть накладення, щоб приховати частини зображень у ваших документах."

    # feature loop
    - title: "Очистіть метадані"
      content: "Очистіть імена авторів, заголовки, коментарі та іншу приховану інформацію."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Видалення метаданих з файлів WORD"
      content: |
        Цей приклад показує, як видалити поля, такі як автор та заголовок з документа WORD.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Скеровуйте метадані автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Скеровуйте метадані заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Імпортуйте ваш документ
          with gr.Redactor("source.docx") as redactor:

              # Запустіть інструмент редагування
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
    title: "Видалення метаданих у WORD за допомогою Python"
    exclude: "WORD"
    description: "Використовуйте Python для очищення прихованих метаданих з WORD. Зберігайте свої файли в безпеці перед обміном чи архівуванням."
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