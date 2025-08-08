
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ru
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Удаление метаданных из PHOTO с помощью Python"
head_description: "С помощью GroupDocs.Redaction for Python via .NET вы можете удалить скрытые данные из файлов PHOTO и избежать утечки личной информации."

############################# Header ############################
title: "Чистка метаданных из PHOTO с помощью Python" 
description: "Защитите ваши документы PHOTO, удаляя скрытую информацию с помощью удобных инструментов Python."
subtitle: "Ключевые функции GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предоставляет пользователям Python способ очистки файлов, удаляя скрытое содержимое из текста, изображений и метаданных в PHOTO.

############################# Steps ############################
steps:
    enable: true
    title: "Шаги для удаления метаданных из Photo"
    content: |
      Используйте GroupDocs.Redaction в вашем проекте Python via .NET, чтобы очистить метаданные документов всего за несколько шагов.
      
      1. Настройте Redactor и откройте ваш файл Photo.
      2. Выберите, какие поля метаданных удалить.
      3. Примените редактирование, чтобы очистить файл.
      4. Сохраните финальную версию.
   
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

        # Удалите метаданные в документах PHOTO

        # Выберите, какие метаданные отредактировать
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Используйте Redactor для открытия вашего файла
        with gr.Redactor("input.jpeg") as redactor:

            # Запустите и сохраните
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Очистка файлов перед отправкой"
  description: "GroupDocs.Redaction for Python via .NET помогает удалить данные, которые не должны быть видны. Удаляйте текст, изображения и скрытые детали всего за несколько кликов."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Полезные функции редактирования"
  features:
    # feature loop
    - title: "Удаление текста"
      content: "Находите и удаляйте конфиденциальные слова, числа или паттерны."

    # feature loop
    - title: "Замаскировка изображений"
      content: "Закрывайте части изображений, содержащие личные данные."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте детали файлов, такие как Автор, Заголовок или Комментарии."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удаление конкретных метаданных"
      content: |
        Следуйте этому примеру, чтобы удалить поля автора и заголовка в документе PHOTO.
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

          # Загрузите файл в редактор
          with gr.Redactor("source.jpeg") as redactor:

              # Отредактируйте выбранные метаданные
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Сохраните обновленный файл
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
    title: "Редактирование метаданных из PHOTO с помощью Python"
    exclude: "PHOTO"
    description: "Используйте Python для удаления скрытых метаданных из файлов PHOTO. Держите документы чистыми и безопасными."
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