
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Удаление метаданных в PDF с использованием C#"
head_description: "С помощью GroupDocs.Redaction for .NET вы можете удалить или изменить метаданные в файлах PDF. Очистите скрытые данные, которые могут раскрыть личную информацию."

############################# Header ############################
title: "Очистка метаданных в файлах PDF с помощью .NET" 
description: "Защищайте конфиденциальную бизнес- и личную информацию в файлах PDF с использованием C#. Удобные инструменты для надежной защиты данных."
subtitle: "Ключевые функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предлагает разработчикам C# удобные инструменты для редактирования контента в файлах PDF. Маскируйте текст, изображения и метаданные в различных форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Удаление метаданных из документов Pdf"
    content: |
      Используйте GroupDocs.Redaction, чтобы быстро защитить метаданные документов в ваших приложениях .NET.
      
      1. Создайте экземпляр Redactor и загрузите ваш файл Pdf.
      2. Настройте редактирование для удаления всех скрытых метаданных.
      3. Примените редактирование, чтобы очистить документ.
      4. Сохраните обновленный файл.
   
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
        // Сотрите метаданные из файлов PDF

        // Загрузите файл с помощью Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Настройте удаление метаданных
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Примените изменения и сохраните файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редактирование конфиденциальных данных в документах"
  description: "GroupDocs.Redaction for .NET помогает вам скрывать или удалять конфиденциальный контент в различных форматах файлов. Сохраняйте личные данные в безопасности, сохраняя документы четкими и профессиональными."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Мощные функции редактирования"
  features:
    # feature loop
    - title: "Поиск и замена текста"
      content: "Ищите конфиденциальный текст в ваших документах и заменяйте или удаляйте его для защиты конфиденциальности."

    # feature loop
    - title: "Скрыть содержимое изображения"
      content: "Добавьте наложения на изображения или конкретные области, чтобы скрыть чувствительные визуальные данные."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте или редактируйте скрытые метаданные, чтобы предотвратить нежелательную утечку данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удаление скрытых записей метаданных"
      content: |
        Этот пример показывает, как изменить метаданные в файле PDF.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите файл PDF в редактор
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Настройте редактирование для поля 'Автор'
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Настройте редактирование для поля 'Название'
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустите процесс редактирования документа
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Сохраните очищенный файл
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Защита файлов PDF с помощью редактирования метаданных .NET"
    exclude: "PDF"
    description: "Используйте .NET для удаления скрытых данных из файлов PDF. Простой и эффективный способ защитить конфиденциальную информацию в ваших документах."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать Изображения"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Популярные форматы изображений"

        # format loop 6
        - name: "Редактировать Фото"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Форматы фотографий"

        # format loop 7
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "Презентация PowerPoint Open XML"

        # format loop 10
        - name: "Редактировать JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "Изображение JPEG"


---