
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
head_title: "Скрытие текста в XLSX с помощью Python и наложений"
head_description: "GroupDocs.Redaction for Python via .NET помогает вам скрыть текст в файлах XLSX, добавляя цветные наложения. Сохраните конфиденциальность ваших данных, не изменяя разметку файла."

############################# Header ############################
title: "Скрытие текста в файлах XLSX с помощью наложений Python" 
description: "Защитите конфиденциальный текст в ваших файлах XLSX с помощью GroupDocs.Redaction for Python via .NET и Python, нанося простые наложения."
subtitle: "Что вы получаете с GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Что GroupDocs.Redaction for Python via .NET может сделать"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET предоставляет разработчикам Python инструменты для скрытия или удаления текста, изображений и многого в файлах XLSX.

############################# Steps ############################
steps:
    enable: true
    title: "Защита данных в файлах Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET позволяет разработчикам Python via .NET скрывать личную информацию всего за несколько строк кода.
      
      1. Начните с создания Redactor и загрузите ваш файл Xlsx.
      2. Настройте параметры редактирования, которые подходят для вашего случая.
      3. Добавьте текстовый шаблон, который хотите скрыть, и выберите цвет.
      4. Запустите редактирование и сохраните файл.
   
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
        import groupdocs.pydrawing as grd

        # Скрытие личного контента в XLSX с помощью наложений

        # Настройте предпочтения редактирования
        # Выберите текст для закрытия и цвет наложения
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Используйте Redactor для загрузки своего файла
        with gr.Redactor("input.xslx") as redactor:

            # Редактируйте и сохраняйте файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Полезные инструменты для редактирования данных"
  description: "GroupDocs.Redaction for Python via .NET позволяет скрывать или удалять контент из многих файлов. Защитите личную или бизнес-информацию."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Простые в использовании инструменты редактирования"
  features:
    # feature loop
    - title: "Поиск и редактирование текста"
      content: "Ищите конкретный текст и заменяйте или скрывайте его."

    # feature loop
    - title: "Закрытие изображения"
      content: "Создайте наложения на картинки, чтобы скрыть личные области."

    # feature loop
    - title: "Удаление метаданных"
      content: "Очистите информацию на фоне перед публикацией ваших файлов."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Скрытие текста с использованием регулярных выражений"
      content: |
        Этот пример показывает, как находить и скрывать содержимое с использованием регулярных выражений.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Установите текстовый шаблон и цвет наложения
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Откройте файл, который вы хотите отредактировать
          with gr.Redactor("source.xslx") as redactor:

              # Примените правила редактирования
              result = redactor.apply(redaction)

              # Сохраните отредактированную версию
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Скрытие данных в XLSX с помощью Python"
    exclude: "XLSX"
    description: "Используйте инструменты Python для быстрого скрытия или удаления конфиденциальных частей ваших файлов XLSX."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Презентация PowerPoint Open XML"


---