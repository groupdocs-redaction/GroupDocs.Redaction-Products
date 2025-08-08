
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ru
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Добавление наложений для скрытия изображений в PHOTO с использованием C#"
head_description: "Скрывайте чувствительное содержание изображения в PHOTO файлах с помощью GroupDocs.Redaction for .NET, применяя наложения. Защитите личные данные, сохранив при этом макет документа."

############################# Header ############################
title: "Скрытие содержимого изображений в PHOTO файлов с наложениями с использованием .NET" 
description: "Защитите личные и бизнес-изображения в PHOTO файлах с помощью C#. Простые в использовании инструменты для эффективной защиты контента."
subtitle: "Основные функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# мощные инструменты для скрытия или удаления контента из файлов PHOTO. Защитите документы, маскируя тексты, изображения и метаданные быстро.

############################# Steps ############################
steps:
    enable: true
    title: "Обеспечение безопасности контента в файлах Photo"
    content: |
      GroupDocs.Redaction for .NET помогает быстро и легко защитить контент в ваших приложениях .NET.
      
      1. Создайте объект Redactor и укажите путь к файлу Photo.
      2. Настройте параметры редактирования под ваши требования.
      3. Выберите области изображений и установите цвет наложения.
      4. Запустите редактирование и сохраните защищенный файл.
   
    code:
      platform: "net"
      copy_title: "Копировать"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Примеры редактирования"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "нажмите для копирования"
        copy_done: "скопировано"
      links:
        #  loop
        - title: "Больше примеров"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Документация"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Примените наложения, чтобы скрыть изображения в PHOTO

        // Загрузите файл с Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Настройте размер и цвет наложения
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Выберите область изображения для скрытия
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Примените наложение и сохраните изменения
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Легкое редактирование чувствительного контента"
  description: "GroupDocs.Redaction for .NET поможет вам скрыть или удалить чувствительный контент во многих типах файлов. Защитите личные данные, сохранив свои документы чистыми и удобными для чтения."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Все-в-одном инструменты редактирования"
  features:
    # feature loop
    - title: "Редактирование текста в документах"
      content: "Ищите и заменяйте личный текст в своих документах, чтобы защитить чувствительную информацию."

    # feature loop
    - title: "Скрытие областей изображений"
      content: "Добавляйте наложения к изображениям или выбранным частям, чтобы скрыть чувствительные визуалы."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте скрытые метаданные, чтобы избежать случайных утечек данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Скрыть данные изображений с наложениями"
      content: |
        Этот пример кода показывает, как закрить области изображения в файле с наложениями.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите файл для редактирования
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Настройте положение, размер и цвет наложения
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Выберите конкретную область изображения на первой странице
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Примените наложение, чтобы замаскировать изображение
              redactor.Apply(redaction);

              // Сохраните отредактированный файл
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
          }
          ```
        platform: "net"
        copy_title: "Копировать"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Документация"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Готовы начать?"
  description: "Попробуйте функции GroupDocs.Redaction бесплатно или запросите лицензию"
  items:
    #  loop
    - title: "Скачать Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Лицензирование"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Защита файлов PHOTO с помощью редактирования .NET"
    exclude: "PHOTO"
    description: "С помощью .NET вы можете скрывать или удалять частный контент в PHOTO файлах. Простое и эффективное решение для защиты официальных документов."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать Изображения"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Популярные форматы изображений"

        # format loop 6
        - name: "Редактировать Фото"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Форматы фотографий"

        # format loop 7
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Презентация PowerPoint Open XML"

        # format loop 10
        - name: "Редактировать JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Изображение JPEG"


---