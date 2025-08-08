
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ru
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Закрытие изображений в DOCX с наложениями с использованием C#"
head_description: "Используйте GroupDocs.Redaction for .NET для закрытия чувствительных изображений в файлах DOCX цветными наложениями. Защищайте личные данные, сохраняя макет документа неизменным."

############################# Header ############################
title: "Закрытие чувствительных изображений в документах DOCX с наложениями с использованием .NET" 
description: "Защитите личную и бизнес-информацию в файлах DOCX с помощью C#. Наши инструменты делают защиту данных простой и надежной."
subtitle: "Функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Узнайте о GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# инструменты для скрытия или удаления контента в файлах DOCX. Защищайте документы, закрывая тексты, изображения и метаданные в различных форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Защита данных в файлах Docx"
    content: |
      GroupDocs.Redaction for .NET: создан для того, чтобы помочь вашим приложениям .NET защищать документы. Редактируйте чувствительную информацию всего в несколько шагов.
      
      1. Инициализируйте Redactor и укажите путь к вашему файлу Docx.
      2. Настройте параметры редактирования для ваших нужд.
      3. Выберите область изображения и выберите цвет наложения.
      4. Запустите редактирование и сохраните файл.
   
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
        // Закройте чувствительные области изображения в DOCX

        // Загрузите файл через конструктор Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Настройте цвет и размер наложения
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Определите область для редактирования
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
  title: "Редактирование контента в файлах"
  description: "С помощью GroupDocs.Redaction for .NET вы можете скрыть или удалить чувствительный контент во многих типах файлов. Держите документы в безопасности, сохраняя читабельность."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Гибкие параметры редактирования"
  features:
    # feature loop
    - title: "Легко редактируйте текст"
      content: "Находите и заменяйте личный текст в вашем документе для большей безопасности данных."

    # feature loop
    - title: "Закрывайте области изображений"
      content: "Накладывайте полные изображения или выбирайте отдельные части, чтобы защитить визуальную информацию."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте или изменяйте скрытые метаданные, чтобы избежать непреднамеренных утечек данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Примените наложения, чтобы скрыть детали изображения"
      content: |
        Этот пример демонстрирует, как скрыть чувствительные области в изображениях документа.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите документ, который вы хотите отредактировать
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Укажите параметры наложения: размер, положение, цвет
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Выберите конкретную область на первой странице
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Поместите наложение на изображение
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
    title: "Защитите файлы DOCX с помощью редактирования .NET"
    exclude: "DOCX"
    description: "Используйте .NET для закрытия или удаления чувствительных данных в файлах DOCX. Идеально для сохранения безопасности конфиденциальных документов."
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