
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ru
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редактирование изображений в PPTX с наложениями с использованием C#"
head_description: "С помощью GroupDocs.Redaction for .NET вы можете скрывать чувствительный контент изображений в файлах PPTX, применяя цветные наложения. Защитите конфиденциальные данные, не меняя структуру вашего документа."

############################# Header ############################
title: "Редактирование чувствительных изображений в документах PPTX с использованием .NET" 
description: "Защитите частные и бизнес-данные в файлах PPTX с помощью C#. Наши инструменты делают редактирование изображений быстрым и удобным."
subtitle: "Что предлагает GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# удобные инструменты для скрытия или удаления контента из файлов PPTX. Защищайте документы, редактируя тексты, изображения и метаданные в различных форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Сохраняйте безопасность бизнес-данных в документах Pptx"
    content: |
      GroupDocs.Redaction for .NET: помогает приложениям .NET защищать документы, скрывая чувствительную информацию.
      
      1. Создайте объект Redactor и загрузите файл Pptx.
      2. Настройте параметры редактирования в соответствии с вашими потребностями.
      3. Выберите области изображения и назначьте цвета наложений.
      4. Обработайте редактирование и сохраните файл.
   
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
        // Редактируйте чувствительные области изображения в PPTX

        // Откройте файл с помощью Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Определите цвет и размеры наложения
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Выберите область для редактирования
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
  title: "Инструменты редактирования документа"
  description: "GroupDocs.Redaction for .NET позволяет скрывать или удалять чувствительный контент в различных типах файлов. Защитите информацию, сохраняя документы чистыми и удобными для обмена."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Мощные инструменты редактирования"
  features:
    # feature loop
    - title: "Поиск и замена текста"
      content: "Найдите и отредактируйте личный текст, чтобы улучшить безопасность документа."

    # feature loop
    - title: "Редактирование контента изображений"
      content: "Закрывайте целые изображения или выбранные области с помощью наложений, чтобы скрыть частные визуальные данные."

    # feature loop
    - title: "Удаление метаданных"
      content: "Удалите или измените скрытые метаданные, чтобы предотвратить утечку данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Скрыть данные изображения с наложениями"
      content: |
        Этот пример демонстрирует, как редактировать чувствительные изображения в документах.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите документ
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Установите размер наложения, положение и цвет
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Укажите область для редактирования на первой странице
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Примените наложение
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
    title: "Редактируйте контент PPTX с помощью .NET"
    exclude: "PPTX"
    description: "Используйте .NET для скрытия или удаления чувствительного контента в файлах PPTX. Надежное решение для безопасности документов."
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