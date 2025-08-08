
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Стерти метадані з XLSX за допомогою Python"
head_description: "Позбудьтеся прихованих метаданих у ваших документах XLSX за допомогою GroupDocs.Redaction for Python via .NET. Чистий спосіб захистити свою конфіденційність."

############################# Header ############################
title: "Видалення метаданих у файлах XLSX з Python" 
description: "За допомогою Python ви можете безпечно видаляти приватні деталі з ваших файлів XLSX. Ідеально підходить для особистого та професійного використання."
subtitle: "Основні функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам Python інструменти для видалення або приховування будь-якого чутливого вмісту в файлах XLSX — від тексту до зображень до метаданих.

############################# Steps ############################
steps:
    enable: true
    title: "Видалення метаданих з файлів Xlsx"
    content: |
      GroupDocs.Redaction дозволяє вашим проектам Python via .NET швидко видаляти небажані дані файлів.
      
      1. Створіть екземпляр Redactor та завантажте ваш файл Xlsx.
      2. Виберіть записи метаданих, які ви хочете стерти.
      3. Запустіть редагування, щоб очистити ці записи.
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

        # Видалити приховані метадані у вашому документі XLSX

        # Встановіть, які поля метаданих слід видалити
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Відкрийте файл, використовуючи Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Застосуйте зміни та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Приховувати чутливий вміст у будь-якій частині файлу"
  description: "GroupDocs.Redaction for Python via .NET дозволяє очищати приватну інформацію з кількох форматів файлів. Тримайте ваш вміст готовим до обміну."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Очищення метаданих та вмісту"
  features:
    # feature loop
    - title: "Видалити чутливий текст"
      content: "Знайдіть та видаліть імена, електронні адреси або інші приватні деталі з документів."

    # feature loop
    - title: "Закриття областей зображень"
      content: "Розмістіть накладення, щоб сховати області в зображеннях, які не потрібно бачити."

    # feature loop
    - title: "Очистка метаданих"
      content: "Видаляйте приховані поля, такі як автор, заголовок або дата створення."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Видалення метаданих з документа"
      content: |
        Ось як видалити метадані з вашого файлу XLSX за допомогою кількох рядків коду.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Позначте поле автора для видалення
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Позначте поле заголовка для видалення
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Відкрийте документ
          with gr.Redactor("source.xslx") as redactor:

              # Запустіть правила редагування
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Збережіть чистий файл
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
    title: "Видалення метаданих у XLSX за допомогою Python"
    exclude: "XLSX"
    description: "Використовуйте Python для очищення приватних метаданих у ваших файлах XLSX. Добрий спосіб підготувати файли до обміну або публікації."
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