
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ru
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Маскировка изображений в EXCEL с наложениями с использованием C#"
head_description: "Скрывайте личные изображения в файлах EXCEL с помощью GroupDocs.Redaction for .NET. Размещайте цветные наложения, чтобы сохранить конфиденциальные данные, сохраняя макет документа неизменным."

############################# Header ############################
title: "Закрытие чувствительных изображений в файлах EXCEL с наложениями с участием .NET" 
description: "Защитите личные и бизнес-данные в файлах EXCEL с помощью C#. Возьмите быстрые и надежные инструменты защиты данных."
subtitle: "Изучите функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# инструменты для скрытия или удаления чувствительного контента в EXCEL файлах. Закрывайте тексты, изображения и метаданные, чтобы обеспечить безопасность документов.

############################# Steps ############################
steps:
    enable: true
    title: "Сохраните ваши данные в файлах Excel"
    content: |
      GroupDocs.Redaction for .NET помогает вашим приложениям .NET защищать документы, скрывая чувствительный контент.
      
      1. Создайте экземпляр Redactor и укажите путь к файлу Excel.
      2. Настройте параметры редактирования для достижения желаемых результатов.
      3. Выберите область изображения и цвет наложения.
      4. Примените редактирование и сохраните файл.
   
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
        // Маскируйте содержимое изображений в EXCEL

        // Загрузите документ с помощью Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Настройте размер и цвет наложения
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Выберите область для маскировки
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
  title: "Редактируйте любой контент в документах"
  description: "GroupDocs.Redaction for .NET помогает вам скрывать или удалять чувствительный контент в различных форматах документов. Защищайте данные, сохраняя документы удобными для использования."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Мощные параметры редактирования"
  features:
    # feature loop
    - title: "Поиск и редактирование текста"
      content: "Находите чувствительный текст и заменяйте его для защиты личных данных в ваших документах."

    # feature loop
    - title: "Накладывать области изображений"
      content: "Скрывайте полные изображения или отдельные части наложениями, чтобы сохранить визуальные данные конфиденциальными."

    # feature loop
    - title: "Удаление метаданных"
      content: "Удаляйте скрытые поля метаданных, чтобы не допустить случайных утечек информации."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Маскировать данные изображения с наложениями"
      content: |
        Этот пример показывает, как скрыть чувствительную информацию в изображениях документа.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте файл для редактирования
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Определите размер наложения, цвет и размещение
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Выберите конкретный раздел изображения на первой странице
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Примените наложение для маскировки изображения
              redactor.Apply(redaction);

              // Сохраните окончательный документ
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
    title: "Защита файлов EXCEL с помощью инструментов редактирования .NET"
    exclude: "EXCEL"
    description: "Используйте .NET для скрытия или удаления чувствительной информации в файла EXCEL. Доверенное решение для безопасности документов."
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