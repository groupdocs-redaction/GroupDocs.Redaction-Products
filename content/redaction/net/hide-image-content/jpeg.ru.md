
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ru
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Скрытие изображений в JPEG с наложениями с использованием C#"
head_description: "Защитите личные изображения в JPEG файлах с помощью GroupDocs.Redaction for .NET, добавив цветные наложения. Сохраните чувствительную информацию в безопасности, не изменяя макет файла."

############################# Header ############################
title: "Закрытие чувствительных изображений в JPEG файлах с наложениями с использованием .NET" 
description: "Обеспечьте безопасность ваших личных и бизнес-изображений в файлах JPEG с помощью C#. Наши простые инструменты упрощают защиту файлов."
subtitle: "Основные функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# инструменты для скрытия или удаления контента в JPEG файлах. Закрывайте текст, изображения и метаданные, чтобы защитить ваши документы.

############################# Steps ############################
steps:
    enable: true
    title: "Защита чувствительных данных в файлах Jpeg"
    content: |
      GroupDocs.Redaction for .NET предназначен для того, чтобы помочь вашим приложениям .NET быстро скрывать личный контент.
      
      1. Создайте объект Redactor и укажите путь к вашему файлу Jpeg.
      2. Настройте параметры редактирования в соответствии с вашими нуждами.
      3. Отметьте область изображений и выберите цвет наложения.
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
        // Закройте содержимое изображений в JPEG файлах

        // Загрузите файл, используя Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Настройте размер и цвет наложения
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Выберите область для наложения
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Примените наложение и сохраните файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редактирование любого контента в документах"
  description: "GroupDocs.Redaction for .NET упрощает скрытие или удаление контента в различных форматах файлов. Защитите чувствительную информацию, сохранив свои файлы аккуратными и легкими для обмена."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Инструменты редактирования для полного контроля"
  features:
    # feature loop
    - title: "Редактируйте текст где угодно"
      content: "Ищите и заменяйте чувствительный текст в своих документах, чтобы защитить личную информацию."

    # feature loop
    - title: "Маскирование изображений"
      content: "Применяйте наложения к изображениям или конкретным областям для скрытия чувствительных визуалов."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте или обновляйте скрытые метаданные, чтобы предотвратить случайные утечки данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Скрыть данные изображения с наложениями"
      content: |
        Этот пример демонстрирует, как маскировать чувствительные области изображения в файлах.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте файл для редактирования
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Настройте размер наложения, положение и цвет
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
    title: "Защита файлов JPEG с помощью редактирования .NET"
    exclude: "JPEG"
    description: "С помощью .NET вы можете скрывать или удалять чувствительный контент в JPEG файлах. Надежное решение для защиты ваших документов."
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