
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ru
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Закрытие изображений в WORD с наложениями с использованием C#"
head_description: "Скрывайте чувствительные области изображений в WORD файлах с помощью GroupDocs.Redaction for .NET. Добавьте цветные наложения для защиты личных данных, сохраняя оригинальный макет документа нетронутым."

############################# Header ############################
title: "Скрытие личных изображений в файлах WORD с наложениями с использованием .NET" 
description: "Защитите свои личные и бизнес-данные в документах WORD с помощью C#. Добейтесь надежной защиты контента с помощью наших простых инструментов."
subtitle: "Ключевые функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# инструменты для скрытия или удаления контента из файлов WORD. Защищайте ваши документы, закрывая чувствительные тексты, изображения и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Защита чувствительных данных в файлах Word"
    content: |
      GroupDocs.Redaction for .NET помогает вашим приложениям .NET быстро скрывать личный контент в документах.
      
      1. Создайте объект Redactor и укажите путь к файлу Word.
      2. Установите параметры редактирования в соответствии с вашими потребностями.
      3. Отметьте область изображения и определите цвет наложения.
      4. Обработайте и сохраните отредактированный файл.
   
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
        // Закройте чувствительные изображения в WORD

        // Загрузите файл через конструктор Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Определите цвет и размеры наложения
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Выберите область изображения для редактирования
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Примените наложение и сохраните документ
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Скрытие или удаление контента документа"
  description: "GroupDocs.Redaction for .NET упрощает скрытие или удаление данных в различных форматах файлов. Защищайте чувствительную информацию, сохраняя документы чистыми и читаемыми."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Детализированные инструменты редактирования"
  features:
    # feature loop
    - title: "Замена текста в любом месте"
      content: "Ищите и изменяйте чувствительный текст в ваших документах для безопасности информации."

    # feature loop
    - title: "Маскировка изображений"
      content: "Добавьте наложения к конкретным областям изображений или полным изображениям, чтобы скрыть частные визуальные данные."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте или изменяйте скрытые метаданные для предотвращения утечек данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Добавьте наложения, чтобы скрыть контент изображения"
      content: |
        Этот пример демонстрирует, как защитить чувствительные данные в изображениях документа, используя наложения.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите документ для редактирования
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Установите размер наложения, положение и цвет
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Сфокусируйтесь на конкретной области изображения на первой странице
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Примените наложение для редактирования
              redactor.Apply(redaction);

              // Сохраните изменения в файле
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
    title: "Защита контента WORD с помощью редактирования .NET"
    exclude: "WORD"
    description: ".NET позволяет скрывать или удалять чувствительный контент в WORD файлах. Надежный способ защиты конфиденциальных и официальных документов."
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