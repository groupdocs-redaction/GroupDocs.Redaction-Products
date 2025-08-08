
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ru
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Очистка метаданных из EXCEL с помощью Python"
head_description: "Используйте GroupDocs.Redaction for Python via .NET для удаления метаданных из документов EXCEL. Устраните скрытые данные и защитите конфиденциальную информацию."

############################# Header ############################
title: "Удаление скрытых метаданных в EXCEL с помощью Python" 
description: "Контролируйте свои файлы EXCEL с помощью Python. Удалите нежелательные данные, чтобы сохранить файлы приватными."
subtitle: "Ключевые функции GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Познакомьтесь с GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction создан для разработчиков Python, которым нужно очищать и защищать файлы EXCEL. Удаляйте нежелательные метаданные, текст и изображения легко.

############################# Steps ############################
steps:
    enable: true
    title: "Шаги для очистки метаданных в файлах Excel"
    content: |
      В ваших приложениях Python via .NET GroupDocs.Redaction помогает удалить метаданные всего за несколько шагов.
      
      1. Запустите Redactor и откройте файл Excel.
      2. Выберите поля метаданных для удаления.
      3. Запустите процесс редактирования.
      4. Экспортируйте финальный файл.
   
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

        # Удалите скрытые данные в EXCEL

        # Выберите, какие метаданные удалить
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Откройте файл с помощью редактора
        with gr.Redactor("input.xslx") as redactor:

            # Обработайте и сохраните файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Очистите все виды конфиденциальных данных"
  description: "GroupDocs.Redaction for Python via .NET предоставляет вам инструменты для удаления метаданных, текста и изображений во множестве форматов. Идеально подходит для безопасного обмена документами."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Инструменты для работы с метаданными и конфиденциальностью"
  features:
    # feature loop
    - title: "Удалите личный текст"
      content: "Обнаруживайте и удаляйте личную или скрытую информацию из ваших документов."

    # feature loop
    - title: "Замаскировать детали изображений"
      content: "Закройте части изображений, чтобы заблокировать личные визуальные данные."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удалите скрытые поля метаданных, которые могут содержать конфиденциальные данные."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удаление метаданных автора и заголовка"
      content: |
        Смотрите, как GroupDocs.Redaction for Python via .NET очищает определенные поля метаданных в документах EXCEL.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Удалите данные автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Удалите поле заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Откройте документ для редактирования
          with gr.Redactor("source.xslx") as redactor:

              # Примените изменения
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Сохраните очищенный документ
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
    title: "Очистка метаданных в EXCEL с помощью Python"
    exclude: "EXCEL"
    description: "Используйте Python для удаления конфиденциальных метаданных из ваших файлов EXCEL. Защитите контент перед отправкой."
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