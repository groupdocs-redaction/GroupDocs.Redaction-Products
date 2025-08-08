
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ru
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Очистка метаданных в DOCX с помощью Python"
head_description: "Используйте GroupDocs.Redaction for Python via .NET для удаления скрытых деталей в файлах DOCX. Защитите ваши данные, удалив конфиденциальные записи метаданных."

############################# Header ############################
title: "Удаление скрытых метаданных из файлов DOCX с помощью Python" 
description: "С помощью Python вы можете удалять скрытые метаданные из файлов DOCX с использованием GroupDocs.Redaction for Python via .NET. Поддерживайте свои файлы чистыми и конфиденциальными."
subtitle: "Основные функции GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction дает разработчикам Python возможность стирать скрытые данные в файлах DOCX. Очищайте текст, визуальные материалы и метаданные из документов.

############################# Steps ############################
steps:
    enable: true
    title: "Удаление метаданных из файлов Docx"
    content: |
      GroupDocs.Redaction предоставляет вашим приложениям Python via .NET инструменты для быстрого удаления метаданных.
      
      1. Запустите Redactor и загрузите ваш документ Docx.
      2. Настройте метаданные для удаления.
      3. Примените редактирование для очистки скрытого содержимого.
      4. Сохраните окончательную версию файла.
   
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

        # Очистите метаданные в файлах DOCX

        # Выберите записи метаданных для удаления
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Используйте Redactor для открытия документа
        with gr.Redactor("input.docx") as redactor:

            # Примените редактирование и сохраните файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Защитите каждую часть документа"
  description: "С помощью GroupDocs.Redaction for Python via .NET вы можете очищать текст, изображения и метаданные в нескольких форматах документов. Идеально для обеспечения конфиденциальности и безопасности."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Инструменты редактирования документов в действии"
  features:
    # feature loop
    - title: "Очищение текста"
      content: "Находите и удаляйте имена, термины или любые конфиденциальные слова."

    # feature loop
    - title: "Закрытие изображений"
      content: "Скрывайте части изображения, размещая цветную накладку."

    # feature loop
    - title: "Удаление метаданных"
      content: "Избавляйтесь от скрытой информации документов, такой как автор или данные о программном обеспечении."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Пример: Удаление скрытых метаданных"
      content: |
        Вот как вы можете удалить поля автора и заголовка из документа DOCX с помощью редактирования.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Выберите для удаления поле автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Выберите для удаления поле заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Откройте файл DOCX
          with gr.Redactor("source.docx") as redactor:

              # Запустите редактирование метаданных
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Сохраните очищенный файл
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
    title: "Удалите метаданные в DOCX с помощью Python"
    exclude: "DOCX"
    description: "Удалите скрытые метаданные в файлах DOCX с помощью Python. Отлично подходит для обеспечения безопасности ваших файлов перед отправкой или архивацией."
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