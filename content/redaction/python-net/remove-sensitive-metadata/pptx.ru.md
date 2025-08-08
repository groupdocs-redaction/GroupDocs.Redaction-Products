
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ru
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Удаление метаданных из файлов PPTX с помощью Python"
head_description: "GroupDocs.Redaction for Python via .NET помогает очистить скрытые данные в файлах PPTX. Удалите детали, которые могут раскрыть конфиденциальную информацию."

############################# Header ############################
title: "Удаление метаданных в PPTX с помощью Python" 
description: "Стирайте личные метаданные, содержащиеся в файлах PPTX, с помощью Python. Умный способ защитить вашу информацию."
subtitle: "Основные инструменты GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Больше о GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction разработан для разработчиков Python, которые хотят сохранять документы чистыми. Используйте его для удаления текста, закрытия изображений или удаления метаданных из файлов PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка метаданных в файлах Pptx"
    content: |
      Используйте GroupDocs.Redaction для быстрого удаления метаданных из вашего приложения Python via .NET.
      
      1. Создайте Redactor и откройте документ Pptx.
      2. Выберите, какие метаданные вы хотите стереть.
      3. Примените редактирование, чтобы удалить скрытые данные.
      4. Сохраните обновленный файл.
   
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

        # Стирайте метаданные в PPTX

        # Выберите, какие поля редактировать
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Откройте файл с помощью Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Запустите и сохраните изменения
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Другие способы скрытия конфиденциальной информации"
  description: "GroupDocs.Redaction for Python via .NET поддерживает редактирование во множестве форматов. Быстрый способ удалить личный контент из документов."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Инструменты редактирования файлов"
  features:
    # feature loop
    - title: "Поиск и удаление текста"
      content: "Быстро удаляйте слова или фразы, содержащие личные или конфиденциальные данные."

    # feature loop
    - title: "Добавление накладок на изображения"
      content: "Скрывайте разделы изображения, которые нельзя делиться."

    # feature loop
    - title: "Удаление скрытых метаданных"
      content: "Избавляйтесь от имен авторов, заголовков и других скрытых тегов."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Пример: Удаление полей метаданных"
      content: |
        Следуйте этому примеру, чтобы удалить общие поля метаданных из файла PPTX перед отправкой.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Отметьте поле автора для редактирования
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Отметьте поле заголовка для редактирования
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Загрузите файл
          with gr.Redactor("source.pptx") as redactor:

              # Примените редактирование
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Экспортируйте очищенный файл
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
    title: "Используйте Python для очистки метаданных из PPTX"
    exclude: "PPTX"
    description: "Удалите фоновую информацию из PPTX с помощью Python. Отлично подходит для обеспечения конфиденциальности и соблюдения требований."
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