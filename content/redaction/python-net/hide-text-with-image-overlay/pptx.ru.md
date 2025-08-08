
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
head_title: "Скрытие текста в PPTX с использованием Python и наложений"
head_description: "Скрывайте конфиденциальный контент в ваших файлах PPTX с помощью цветных наложений и GroupDocs.Redaction for Python via .NET. Ваша разметка остается прежней."

############################# Header ############################
title: "Защита текста в PPTX с наложениями и Python" 
description: "Используйте GroupDocs.Redaction for Python via .NET и Python для скрытия личной информации в ваших презентациях PPTX, закрывая ее цветными блоками."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Что предлагает GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       С помощью GroupDocs.Redaction for Python via .NET разработчики Python могут скрывать или удалять содержимое в файлах PPTX — от текста до изображений и скрытых данных.

############################# Steps ############################
steps:
    enable: true
    title: "Защита личной информации в файлах Pptx"
    content: |
      Используйте GroupDocs.Redaction for Python via .NET для защиты ваших презентаций за несколько простых шагов.
      
      1. Создайте Redactor и загрузите файл, который хотите отредактировать.
      2. Выберите параметры редактирования, которые соответствуют вашим требованиям.
      3. Установите текстовый шаблон и выберите цвет для наложения.
      4. Примените редактирование и сохраните изменения.
   
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

        # Используйте наложения для скрытия текста в PPTX

        # Определите параметры редактирования
        # Выберите текст и цвет
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Начните с загрузки вашего файла с помощью Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Редактируйте и сохраняйте файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Дополнительные опции редактирования"
  description: "GroupDocs.Redaction for Python via .NET предоставляет вам инструменты для скрытия или очистки данных в различных форматах файлов, не затрагивая разметку."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Полезные инструменты для обеспечения конфиденциальности"
  features:
    # feature loop
    - title: "Изменение или скрытие текста"
      content: "Защитите конфиденциальную информацию, редактируя или пряча ее от глаз."

    # feature loop
    - title: "Скрытие изображений или частей"
      content: "Создавайте наложения для блокировки полных изображений или выбранных областей."

    # feature loop
    - title: "Удаление скрытых деталей"
      content: "Стирайте метаданные, которые могут содержать конфиденциальную или системную информацию."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Используйте регулярные выражения для поиска текста"
      content: |
        Посмотрите, как регулярные выражения помогают находить и скрывать конфиденциальный контент.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Определите шаблон и цвет наложения
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Откройте ваш файл для редактирования
          with gr.Redactor("source.pptx") as redactor:

              # Примените редактирование
              result = redactor.apply(redaction)

              # Сохраните отредактированный файл
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
    title: "Защита слайдов PPTX с использованием Python"
    exclude: "PPTX"
    description: "Используйте Python, чтобы закрыть или удалить личный контент в файлах PPTX, сохранив слайды аккуратными."
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