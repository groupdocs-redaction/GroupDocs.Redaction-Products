
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ru
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Скрытие изображений в файлах PPTX с помощью наложений на Python"
head_description: "Используйте GroupDocs.Redaction for Python via .NET для скрытия конфиденциальных изображений в файлах PPTX с помощью цветных наложений. Защитите важные данные, сохраняя формат документа нетронутым."

############################# Header ############################
title: "Скрывайте частные изображения в документах PPTX с помощью Python" 
description: "Защищайте конфиденциальные визуальные данные в файлах PPTX с помощью Python. Наши инструменты делают редактирование изображений простым и быстрым."
subtitle: "Особенности GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET предоставляет разработчикам Python простые инструменты для скрытия или удаления содержания в файлах PPTX. Редактируйте текст, изображения и метаданные в различных форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Защитите конфиденциальные данные в файлах Pptx"
    content: |
      GroupDocs.Redaction for Python via .NET помогает приложениям Python via .NET защищать документы, скрывая конфиденциальное содержание.
      
      1. Создайте экземпляр Redactor и загрузите файл Pptx.
      2. Настройте параметры редактирования в соответствии с вашей задачей.
      3. Выберите область изображения и выберите цвет наложения.
      4. Примените наложение и сохраните файл.
   
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

        # Скрыть частные области изображения в PPTX

        # Задайте цвет и размер наложения
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Выберите область для редактирования
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Откройте документ с помощью Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Примените наложение и сохраните файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Функции для редактирования документов"
  description: "GroupDocs.Redaction for Python via .NET позволяет скрывать или удалять конфиденциальные данные во многих типах документов. Держите файлы чистыми и защищенными."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Полный набор средств редактирования"
  features:
    # feature loop
    - title: "Поиск и замена текста"
      content: "Находите конфиденциальный текст в документах и заменяйте его для защиты вашей информации."

    # feature loop
    - title: "Скрытие областей изображений"
      content: "Закрывайте выбранные области изображений или полные визуальные данные для того, чтобы скрыть личную информацию."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте метаданные, чтобы избежать раскрытия скрытых данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Скрытие содержимого изображения с цветными наложениями"
      content: |
        Посмотрите, как скрыть конфиденциальные части изображения в документах с помощью наложений.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Определите параметры наложения: размер, местоположение, цвет
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Выберите область изображения на первой странице
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Загрузите документ
          with gr.Redactor("source.pptx") as redactor:

              # Наложите выбранную область
              result = redactor.apply(redaction)

              # Сохраните защищенный документ
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Скрытие содержимого в файлах PPTX с помощью Python"
    exclude: "PPTX"
    description: "Используйте Python для скрытия или удаления конфиденциального содержания в файлах PPTX. Надежное средство для обеспечения безопасности документов."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать Изображения"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Популярные форматы изображений"

        # format loop 6
        - name: "Редактировать Фото"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Форматы фотографий"

        # format loop 7
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Презентация PowerPoint Open XML"

        # format loop 10
        - name: "Редактировать JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Изображение JPEG"


---