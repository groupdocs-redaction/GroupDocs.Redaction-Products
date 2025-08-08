
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: ru
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Удаление конфиденциального текста из XLSX с использованием Python"
head_description: "Защитите свои XLSX файлы, скрывая или удаляя чувствительные данные с помощью GroupDocs.Redaction for Python via .NET и Python."

############################# Header ############################
title: "Скрытие или удаление конфиденциального текста в XLSX файлах с Python" 
description: "С помощью GroupDocs.Redaction for Python via .NET и Python вы можете удалить конфиденциальный текст из XLSX документов — быстро и надежно."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Познакомьтесь с GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET предоставляет разработчикам Python все необходимое для удаления или скрытия конфиденциальных данных в XLSX файлах — текста, изображений, заметок и многое другое.

############################# Steps ############################
steps:
    enable: true
    title: "Как удалить содержимое в Xlsx файлах"
    content: |
      Используйте GroupDocs.Redaction for Python via .NET в своем приложении Python via .NET для быстрого удаления или скрытия чувствительного содержимого.
      
      1. Запустите Redactor и загрузите Xlsx файл.
      2. Выберите необходимые настройки редактирования.
      3. Установите текст для поиска и чем его заменить.
      4. Примените редактирование и сохраните ваш файл.
   
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

        # Как редактировать текст в файле XLSX

        # Выберите свои предпочтения редактирования
        # Установите значения для поиска и замены
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Используйте конструктор Redactor для загрузки вашего файла
        with gr.Redactor("input.xslx") as redactor:

            # Примените изменения и сохраните обновленный XLSX
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Дополнительные функции редактирования"
  description: "GroupDocs.Redaction for Python via .NET упрощает процесс сокрытия или удаления конфиденциальной информации в различных форматах файлов. Делитесь только тем, что можно показать."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Функции для редактирования текста, изображений и метаданных"
  features:
    # feature loop
    - title: "Заменить конфиденциальный текст"
      content: "Найдите и замените соответствующие слова или шаблоны. Поддерживаются регулярные выражения и ключевой поиск."

    # feature loop
    - title: "Скрыть чувствительные изображения"
      content: "Закрывайте части файла с наложениями. Настройте, как это будет выглядеть и что должно скрываться."

    # feature loop
    - title: "Стереть метаданные"
      content: "Удалите скрытую информацию, такую как история документа, имена авторов или внутренние теги."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактируйте с помощью регулярных выражений"
      content: |
        Найдите текстовые шаблоны, такие как номера телефонов, идентификаторы или адреса электронной почты с помощью регулярных выражений и удалите их.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Установите регулярное выражение для EMAIL и текст замены
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Откройте документ, который вы хотите очистить
          with gr.Redactor("source.xslx") as redactor:

              # Примените правила редактирования
              result = redactor.apply(redaction)

              # Сохраните очищенный файл
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Редактируйте содержимое в XLSX с помощью Python"
    exclude: "XLSX"
    description: "Сохраняйте конфиденциальные данные в безопасности, удаляя их из XLSX файлов с использованием инструментов Python."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Презентация PowerPoint Open XML"


---