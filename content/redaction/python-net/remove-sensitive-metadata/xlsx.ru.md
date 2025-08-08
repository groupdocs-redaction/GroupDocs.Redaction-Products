
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ru
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Удаление метаданных из XLSX с помощью Python"
head_description: "Избавьтесь от скрытых метаданных в ваших документах XLSX с помощью GroupDocs.Redaction for Python via .NET. Чистый способ защитить вашу конфиденциальность."

############################# Header ############################
title: "Удаление метаданных из файлов XLSX с помощью Python" 
description: "С помощью Python вы можете безопасно удалить личные данные из ваших файлов XLSX. Идеально подходит для личного и профессионального использования."
subtitle: "Основные функции GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предоставляет разработчикам Python инструменты для стирания или скрытия любых конфиденциальных данных в файлах XLSX — от текста до изображений и метаданных.

############################# Steps ############################
steps:
    enable: true
    title: "Удаление метаданных из файлов Xlsx"
    content: |
      GroupDocs.Redaction дает вашим проектам Python via .NET возможность быстро удалять нежелательные данные из файлов.
      
      1. Создайте экземпляр Redactor и загрузите ваш файл Xlsx.
      2. Выберите записи метаданных, которые вы хотите удалить.
      3. Запустите редактирование, чтобы очистить данные.
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

        # Удалите скрытые метаданные в вашем документе XLSX

        # Установите, какие поля метаданных должны быть удалены
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Откройте файл, используя Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Примените изменения и сохраните файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Скрывайте конфиденциальное содержимое в любом месте файла"
  description: "GroupDocs.Redaction for Python via .NET позволяет очищать личную информацию из нескольких форматов файлов. Держите ваш контент готовым к отправке."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Редактирование метаданных и содержимого"
  features:
    # feature loop
    - title: "Удаление конфиденциального текста"
      content: "Ищите и удаляйте имена, адреса электронной почты или другие личные данные из документов."

    # feature loop
    - title: "Закрытие зон изображений"
      content: "Размещайте накладки, чтобы скрыть области на изображениях, которые не должны быть видны."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте скрытые поля, такие как автор, заголовок или дата создания."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удалить метаданные из документа"
      content: |
        Вот как удалить метаданные из вашего файла XLSX с помощью нескольких строк кода.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Отметьте поле автора для удаления
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Отметьте поле заголовка для удаления
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Откройте документ
          with gr.Redactor("source.xslx") as redactor:

              # Запустите правила редактирования
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
    title: "Удаление метаданных в XLSX с помощью Python"
    exclude: "XLSX"
    description: "Используйте Python для очищения личных метаданных в ваших файлах XLSX. Хороший способ подготовить файлы к отправке или публикации."
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