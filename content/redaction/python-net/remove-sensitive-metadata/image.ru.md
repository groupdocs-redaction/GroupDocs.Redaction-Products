
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ru
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Удаление скрытых метаданных в IMAGE с помощью Python"
head_description: "GroupDocs.Redaction for Python via .NET помогает вам удалить личные метаданные из документов IMAGE. Держите файлы чистыми и защищенными."

############################# Header ############################
title: "Удаление метаданных в файлах IMAGE с помощью Python" 
description: "Используйте инструменты Python, чтобы защитить документы IMAGE. Удаляйте скрытую информацию перед отправкой или публикацией."
subtitle: "Ключевые функции GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предоставляет разработчикам Python инструменты для удаления конфиденциальных данных из файлов IMAGE, включая текст, изображения и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Как удалить метаданные из файлов Image"
    content: |
      GroupDocs.Redaction помогает разработчикам Python via .NET очищать метаданные в документах всего за несколько шагов.
      
      1. Настройте Redactor и загрузите ваш файл Image.
      2. Выберите метаданные, которые вы хотите стереть.
      3. Запустите процесс редактирования.
      4. Сохраните ваш обновленный файл.
   
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

        # Очистите скрытые поля в файлах IMAGE

        # Выберите поля метаданных для редактирования
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Используйте Redactor для открытия файла
        with gr.Redactor("input.png") as redactor:

            # Обработайте и экспортируйте
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Удалите конфиденциальные данные из любого файла"
  description: "GroupDocs.Redaction for Python via .NET удаляет текст, изображения и метаданные, которые не должны быть общедоступными. Работает с многими форматами."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Основные инструменты редактирования"
  features:
    # feature loop
    - title: "Удаление текста"
      content: "Удаляйте слова или паттерны из ваших файлов, чтобы защитить конфиденциальную информацию."

    # feature loop
    - title: "Скрытие изображений"
      content: "Скрывайте части изображений, которые должны оставаться конфиденциальными."

    # feature loop
    - title: "Удаление метаданных"
      content: "Стирайте скрытые данные из свойств файлов, такие как Автор или Заголовок."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удаление полей метаданных"
      content: |
        Этот пример показывает, как удалить метаданные, такие как Автор и Заголовок в файлах IMAGE.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Выберите поле автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Выберите поле заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Откройте файл в редакторе
          with gr.Redactor("source.png") as redactor:

              # Запустите редактирование
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Сохраните финальный документ
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
    title: "Используйте Python для удаления метаданных IMAGE"
    exclude: "IMAGE"
    description: "Быстро очищайте метаданные в файлах IMAGE с помощью Python. Держите ваши документы в безопасности и конфиденциальности."
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