
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ru
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Защита изображений в IMAGE с помощью наложений с C#"
head_description: "С помощью GroupDocs.Redaction for .NET вы можете скрыть чувствительные данные изображений в IMAGE файлах, используя цветные наложения. Защитите важную информацию, сохранив оригинальный дизайн файла."

############################# Header ############################
title: "Скрытие личных изображений в IMAGE файлах с наложениями с .NET" 
description: "Защитите конфиденциальные бизнес- и личные изображения в IMAGE файлах с помощью C#. Простые инструменты для быстрой и эффективной защиты контента."
subtitle: "Ключевые функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# мощные инструменты для скрытия или удаления контента из файлов IMAGE. Защищайте ваши документы, скрывая чувствительные тексты, изображения и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Защита данных в файлах Image с наложениями"
    content: |
      Используйте GroupDocs.Redaction for .NET для быстрого скрытия частного контента в ваших приложениях .NET.
      
      1. Создайте экземпляр Redactor и укажите путь к вашему файлу Image.
      2. Настройте параметры редактирования по мере необходимости.
      3. Выберите области изображений и определите цвета наложений.
      4. Обработайте файл и сохраните защищенную версию.
   
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
        // Защитите содержимое изображений в IMAGE

        // Откройте файл, используя Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Определите размеры и цвета наложения
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Выберите область, которую хотите скрыть
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Примените наложение и сохраните результат
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редактирование контента в различных форматах файлов"
  description: "С помощью GroupDocs.Redaction for .NET вы можете скрыть или удалить контент в различных форматах файлов. Защитите чувствительные данные, сохранив чистый и читаемый формат."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Полный контроль над редактированием"
  features:
    # feature loop
    - title: "Поиск и замена текста"
      content: "Ищите по документам и заменяйте чувствительный текст, чтобы защитить личные данные."

    # feature loop
    - title: "Наложение изображений"
      content: "Применяйте цветные наложения, чтобы скрыть целые изображения или выбранные части."

    # feature loop
    - title: "Редактирование метаданных"
      content: "Удаляйте или изменяйте скрытые поля метаданных, чтобы предотвратить раскрытие данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Закрыть содержимое изображений с наложениями"
      content: |
        Этот пример кода показывает, как применить наложения, чтобы скрыть чувствительное содержимое изображения.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите файл для редактирования
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Настройте размеры, цвет и положение наложения
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Выберите область изображения на первой странице
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Добавьте наложение, чтобы скрыть содержимое изображения
              redactor.Apply(redaction);

              // Сохраните обновленный файл
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
    title: "Скрытие контента в файлах IMAGE с помощью редактирования .NET"
    exclude: "IMAGE"
    description: "Используйте .NET для скрытия или удаления чувствительных данных в IMAGE файлах. Надежный метод для обеспечения защиты официальных файлов и конфиденциальной информации."
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