
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ru
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Редактирование метаданных в JPEG с помощью Python"
head_description: "GroupDocs.Redaction for Python via .NET помогает вам очистить или обновить метаданные в документах JPEG. Удаляйте скрытые поля, которые могут раскрыть личные детали."

############################# Header ############################
title: "Чистка метаданных в JPEG через Python" 
description: "Защитите ваши файлы JPEG, удаляя скрытые метаданные с помощью простых инструментов, созданных для Python."
subtitle: "Основные функции GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Узнайте о GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction дает разработчикам Python простые инструменты для удаления текста, изображений и метаданных из документов JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Шаги для чистки метаданных Jpeg"
    content: |
      GroupDocs.Redaction делает удаление метаданных быстрым и простым для ваших приложений Python via .NET.
      
      1. Настройте Redactor и откройте ваш документ Jpeg.
      2. Выберите параметры для удаления полей метаданных.
      3. Запустите редактирование, чтобы очистить файл.
      4. Сохраните новую версию без скрытых данных.
   
    code:
      platform: "python-net"
      copy_title: "Копировать"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Примеры редактирования"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "нажмите для копирования"
        copy_done: "скопировано"
      links:
        #  loop
        - title: "Больше примеров"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Документация"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Очистите метаданные в JPEG

        # Выберите поля метаданных для очистки
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Откройте файл с помощью Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Примените редактирование и сохраните файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Защита конфиденциальности в каждом файле"
  description: "GroupDocs.Redaction for Python via .NET дает вам контроль над конфиденциальными данными в документах. Удаляйте скрытый контент в текстах, изображениях и метаданных."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Функции удаления метаданных"
  features:
    # feature loop
    - title: "Найдите и удалите текст"
      content: "Сканируйте на наличие ключевых слов или личной информации и удаляйте это из документа."

    # feature loop
    - title: "Скрытие деталей изображений"
      content: "Скрывайте области изображений, которые не должны быть видны другим."

    # feature loop
    - title: "Редактирование метаданных файла"
      content: "Изменяйте или удаляйте поля метаданных, чтобы защитить информацию документа."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование полей метаданных"
      content: |
        Этот пример описывает, как удалить или изменить такие поля, как Автор и Заголовок в документе JPEG.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Нацелитесь на поле автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Нацелитесь на поле заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Откройте файл JPEG
          with gr.Redactor("source.jpg") as redactor:

              # Запустите процесс очистки
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Сохраните новую версию
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "Копировать"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "нажмите для копирования"
          copy_done: "скопировано"
        top_links:
          #  loop
          - title: "Скачать результат"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Больше примеров"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Документация"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Готовы начать?"
  description: "Попробуйте функции GroupDocs.Redaction бесплатно или запросите лицензию"
  items:
    #  loop
    - title: "Скачать PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Лицензирование"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Очистка метаданных JPEG с помощью Python"
    exclude: "JPEG"
    description: "Используйте Python для быстрого удаления скрытых и личных данных из ваших документов JPEG."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать Изображения"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Популярные форматы изображений"

        # format loop 6
        - name: "Редактировать Фото"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Форматы фотографий"

        # format loop 7
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Презентация PowerPoint Open XML"

        # format loop 10
        - name: "Редактировать JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Изображение JPEG"


---