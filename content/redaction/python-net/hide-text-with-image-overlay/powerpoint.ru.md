
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ru
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Скрытие конфиденциального текста в POWERPOINT с помощью наложений Python"
head_description: "GroupDocs.Redaction for Python via .NET помогает вам закрывать личный контент в файлах POWERPOINT с помощью цветных наложений. Сохраняйте все на месте, скрывая важное."

############################# Header ############################
title: "Скрытие текста в презентациях POWERPOINT с Python" 
description: "Используйте Python и GroupDocs.Redaction for Python via .NET, чтобы добавить наложения и скрыть конфиденциальный текст в ваших слайдах POWERPOINT."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Узнайте больше о GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET помогает разработчикам Python очищать презентации POWERPOINT, скрывая или удаляя текст, изображения и скрытую информацию.

############################# Steps ############################
steps:
    enable: true
    title: "Редактирование информации в файлах Powerpoint"
    content: |
      С помощью GroupDocs.Redaction for Python via .NET вы можете подготовить файлы Powerpoint к совместному использованию, выполнив простые шаги редактирования.
      
      1. Создайте новый Redactor и загрузите ваш файл.
      2. Выберите, что скрыть и как применить это.
      3. Добавьте поисковый шаблон и установите цвет наложения.
      4. Примените редактирование и сохраните обновленный документ.
   
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

        # Скрытие конфиденциального текста в POWERPOINT с помощью наложений

        # Настройте параметры редактирования
        # Выберите текст и цвет, чтобы скрыть его
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Используйте Redactor для загрузки вашей презентации
        with gr.Redactor("input.pptx") as redactor:

            # Редактируйте и сохраняйте ваш файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Простые способы скрыть информацию"
  description: "GroupDocs.Redaction for Python via .NET упрощает задачу скрытия или удаления конфиденциальных частей документов — отлично подходит для юридических, личных или бизнес-целей."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Полезные инструменты для обеспечения конфиденциальности"
  features:
    # feature loop
    - title: "Находите и заменяйте текст"
      content: "Ищите слова или цифры и скрывайте или изменяйте их."

    # feature loop
    - title: "Закрывайте части изображений"
      content: "Создавайте наложения, чтобы скрыть полные изображения или выбранные места."

    # feature loop
    - title: "Удаляйте скрытую информацию"
      content: "Удаляйте метаданные, такие как имена или временные метки, которые не видны пользователям."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование с использованием поиска по регулярным выражениям"
      content: |
        Посмотрите, как регулярные выражения помогают вам находить и скрывать текст в ваших слайдах.
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

          # Откройте ваш файл POWERPOINT
          with gr.Redactor("source.pptx") as redactor:

              # Выполните редактирование
              result = redactor.apply(redaction)

              # Сохраните финальную версию
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
    title: "Скрытие текста в POWERPOINT с помощью Python"
    exclude: "POWERPOINT"
    description: "Используйте Python, чтобы добавить наложения или удалить содержимое из ваших слайдов POWERPOINT, чтобы сохранить личные данные в безопасности."
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