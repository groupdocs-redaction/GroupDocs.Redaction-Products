
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ru
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Удаление метаданных из PDF с помощью Python"
head_description: "GroupDocs.Redaction for Python via .NET позволяет очистить скрытые данные из файлов PDF. Избегайте передачи личной информации, редактируя или удаляя метаданные."

############################# Header ############################
title: "Удаление метаданных из файлов PDF с помощью Python" 
description: "Используйте Python и GroupDocs.Redaction for Python via .NET для очистки конфиденциальной информации из ваших документов PDF. Сохраняйте контроль над своими данными с помощью удобных инструментов редактирования."
subtitle: "Что может GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction помогает разработчикам Python очищать документы PDF, удаляя текст, изображения и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Удаление метаданных из документов Pdf"
    content: |
      Начните защищать свои файлы с помощью GroupDocs.Redaction в приложениях Python via .NET.
      
      1. Создайте Redactor и загрузите ваш файл Pdf.
      2. Добавьте правила для удаления скрытых метаданных.
      3. Запустите редактирование, чтобы удалить записи метаданных.
      4. Сохраните файл без скрытых данных.
   
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

        # Удалите метаданные из документов PDF

        # Выберите поля метаданных для удаления
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Откройте файл с помощью Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Ремонтируйте и сохраняйте ваш документ
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Очистка скрытого содержимого в документах"
  description: "С помощью GroupDocs.Redaction for Python via .NET вы можете безопасно удалить текст, изображения и метаданные. Сохраняйте ваши файлы приватными и защищенными перед отправкой."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Опции редактирования"
  features:
    # feature loop
    - title: "Удаление текста"
      content: "Ищите и стирайте конфиденциальные тексты по документам."

    # feature loop
    - title: "Замаскируйте изображения"
      content: "Скрывайте определенные части изображений простыми накладками."

    # feature loop
    - title: "Очистка метаданных"
      content: "Избавьтесь от нежелательных метаданных, которые могут раскрыть личные данные."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование и удаление полей метаданных"
      content: |
        Этот пример объясняет, как очистить скрытые метаданные в файле PDF.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Удалите метаданные автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Удалите метаданные заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Откройте файл в Redactor
          with gr.Redactor("source.pdf") as redactor:

              # Запустите процесс редактирования
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
    title: "Очистка метаданных из PDF с помощью Python"
    exclude: "PDF"
    description: "Удалите скрытые поля данных в PDF с помощью Python. Умный способ защитить конфиденциальность и сохранить ваши файлы в чистоте."
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