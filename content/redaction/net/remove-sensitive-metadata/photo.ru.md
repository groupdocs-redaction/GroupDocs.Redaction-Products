
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Удаление метаданных в PHOTO с C#"
head_description: "GroupDocs.Redaction for .NET помогает вам удалить скрытые данные в PHOTO файлах, которые могут раскрыть личную или бизнес-информацию."

############################# Header ############################
title: "Удаление метаданных из PHOTO с помощью .NET" 
description: "Легко защищайте свои документы, удаляя скрытую информацию из файлов PHOTO с использованием C#."
subtitle: "Основные моменты GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction помогает разработчикам C# скрывать личный контент в файлах PHOTO, включая текст, части изображений и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Удаление метаданных в файлах Photo"
    content: |
      Используйте GroupDocs.Redaction в вашем проекте .NET для очистки метаданных документов.
      
      1. Запустите Redactor и откройте ваш файл Photo.
      2. Установите правила для удаления метаданных.
      3. Примените редактирование и очистите файл.
      4. Сохраните файл результата.
   
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
        // Удалите метаданные из документов PHOTO

        // Используйте Redactor для загрузки документа
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Установите поля метаданных для редактирования
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Очистите документ и сохраните
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Удаление личной информации из файлов"
  description: "GroupDocs.Redaction for .NET предлагает вам способы удаления личных данных из текста, изображений и деталей файлов. Идеально для безопасности данных."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Полезные функции редактирования"
  features:
    # feature loop
    - title: "Очистка текста"
      content: "Сканируйте и удаляйте любой текст, который не следует делиться."

    # feature loop
    - title: "Закрытие областей изображения"
      content: "Закрывайте части изображений с личными деталями."

    # feature loop
    - title: "Удаление метаданных"
      content: "Удаляйте скрытые данные файла перед обменом или публикацией."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удалите скрытые поля метаданных"
      content: |
        Этот пример покажет, как удалить метаданные в документе PHOTO.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите файл PHOTO в редактор
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Редактируйте поле автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Редактируйте поле заглавия
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Обработайте документ
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Сохраните очищенную версию
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
    title: "Используйте .NET для редактирования метаданных PHOTO"
    exclude: "PHOTO"
    description: "Держите ваши документы PHOTO в безопасности, очищая метаданные с помощью инструментов .NET."
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