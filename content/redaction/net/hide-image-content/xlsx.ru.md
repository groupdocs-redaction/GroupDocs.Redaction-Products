
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ru
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Маскировка изображений в файлах XLSX с наложениями с использованием C#"
head_description: "С помощью GroupDocs.Redaction for .NET вы можете маскировать чувствительный контент изображений в файлах XLSX, применяя цветные наложения. Защитите важные данные, сохранив структуру документа нетронутой."

############################# Header ############################
title: "Маскировка чувствительных изображений в документах XLSX с использованием .NET" 
description: "Обеспечьте конфиденциальность данных в файлах XLSX с C#. Наши инструменты разработаны для быстрого и эффективного редактирования изображений."
subtitle: "Ключевые функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предлагает разработчикам C# простые инструменты для скрытия или удаления контента из файлов XLSX. Защищайте документы, редактируя тексты, изображения и метаданные в различных форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Защита частных данных в документах Xlsx"
    content: |
      GroupDocs.Redaction for .NET: помогает вашим приложениям .NET эффективно защищать документы.
      
      1. Создайте экземпляр Redactor и загрузите файл Xlsx.
      2. Настройте параметры редактирования в соответствии с вашими требованиями.
      3. Определите область изображения и выберите цвет наложения.
      4. Примените редактирование и сохраните выходной файл.
   
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
        // Маскируйте чувствительные области изображения в XLSX

        // Инициализируйте Redactor с путем к файлу
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Выберите размер и цвет наложения
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Отметьте область для редактирования
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Примените и сохраните изменения
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Функции редактирования документов"
  description: "С помощью GroupDocs.Redaction for .NET вы можете удалить или скрыть контент в различных форматах файлов. Защищайте чувствительные данные, сохраняя чистый макет."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Мощные функции редактирования"
  features:
    # feature loop
    - title: "Поиск и замена текста"
      content: "Быстро ищите и редактируйте конфиденциальный текст для защиты чувствительных данных."

    # feature loop
    - title: "Маскирование контента изображений"
      content: "Применяйте наложения ко всем изображениям или конкретным областям для скрытия частных визуальных данных."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте или настраивайте скрытые метаданные, чтобы предотвратить непреднамеренное раскрытие данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Скрыть контент изображения с наложениями"
      content: |
        Узнайте, как маскировать чувствительные области изображения в ваших документах.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте документ для редактирования
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Определите параметры наложения: размер, местоположение, цвет
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Сосредоточьтесь на конкретной области изображения
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Наложите область изображения
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
    title: "Маскируйте контент XLSX с помощью редактирования .NET"
    exclude: "XLSX"
    description: "Используйте .NET для редактирования или удаления чувствительного контента в файлах XLSX. Практичное решение для защиты бизнес- и личных документов."
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