
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ru
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Скрытие изображений в PDF с наложениями с использованием C#"
head_description: "С помощью GroupDocs.Redaction for .NET вы можете защитить чувствительные изображения в файлах PDF, добавив цветные наложения. Защитите личную информацию, не изменяя макет документа."

############################# Header ############################
title: "Защита чувствительных изображений в документах PDF с наложениями с использованием .NET" 
description: "Сохраните безопасность бизнес- и личных данных в файлах PDF с помощью C#. Наши инструменты помогают добиться надежной защиты данных."
subtitle: "Характеристики GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# мощные инструменты для скрытия или удаления контента из файлов PDF. Защищайте документы, закрывая тексты, изображения и метаданные в различных форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Обеспечение безопасности бизнес-данных в документах Pdf"
    content: |
      GroupDocs.Redaction for .NET: предназначен для того, чтобы помочь вашим приложениям .NET защищать документы. Быстро и эффективно редактируйте личную информацию.
      
      1. Создайте экземпляр Redactor и укажите путь к файлу Pdf, который вы хотите защитить.
      2. Настройте параметры редактирования, чтобы добиться необходимого результата.
      3. Выберите область изображения и установите цвет наложения.
      4. Обработайте файл и сохраните отредактированный документ.
   
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
        // Скрытие чувствительного контента изображений в PDF

        // Загрузите файл с помощью конструктора Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Настройте цвет и размер наложения
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Выберите область для редактирования
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Примените наложение к изображению и сохраните файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редактирование контента в документах"
  description: "С помощью GroupDocs.Redaction for .NET вы можете скрыть или удалить контент в широком спектре форматов файлов. Защитите конфиденциальную информацию, сохранив документы легкими для чтения и обмена."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Расширенные функции редактирования"
  features:
    # feature loop
    - title: "Редактируйте текст где угодно"
      content: "Ищите и заменяйте чувствительный текст во всем вашем документе, чтобы сохранить безопасность личных данных."

    # feature loop
    - title: "Закрывайте изображения"
      content: "Применяйте наложения к целым изображениям или выбранным областям, чтобы скрыть важные визуальные данные."

    # feature loop
    - title: "Работа с метаданными"
      content: "Удаляйте или изменяйте скрытые метаданные, чтобы предотвратить случайное раскрытие данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Используйте наложения, чтобы скрыть данные изображения"
      content: |
        Этот пример показывает, как закрыть чувствительную информацию в изображениях документов.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите документ для редактирования
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Настройте параметры наложения: размер, положение и цвет
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Выберите конкретную область изображения на первой странице
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Примените наложение, чтобы скрыть изображение
              redactor.Apply(redaction);

              // Сохраните отредактированный документ
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
    title: "Защита контента PDF с помощью редактирования .NET"
    exclude: "PDF"
    description: "Используйте .NET для скрытия или удаления чувствительного контента в файлах PDF. Эффективное решение для защиты официальных и конфиденциальных документов."
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