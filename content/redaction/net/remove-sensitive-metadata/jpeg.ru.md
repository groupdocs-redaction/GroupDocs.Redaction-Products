
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редактирование метаданных в JPEG с использованием C#"
head_description: "С помощью GroupDocs.Redaction for .NET вы можете очищать или изменять метаданные в ваших файлах JPEG. Удаляйте скрытые детали, которые могут содержать личные данные."

############################# Header ############################
title: "Удаление метаданных из файлов JPEG с использованием .NET" 
description: "Защищайте личные детали в ваших файлах JPEG с помощью C#. Простые инструменты для лучшей безопасности документов."
subtitle: "Топовые функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction помогает разработчикам C# удалять текст, изображения и метаданные из файлов JPEG с помощью простых инструментов.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка метаданных в документах Jpeg"
    content: |
      GroupDocs.Redaction упрощает удаление метаданных в ваших приложениях .NET.
      
      1. Настройте Redactor и загрузите файл Jpeg, который вы хотите очистить.
      2. Выберите настройки для очистки всех метаданных.
      3. Запустите редактирование, чтобы очистить файл.
      4. Сохраните файл с очищенными метаданными.
   
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
        // Удалите метаданные из файлов JPEG

        // Используйте Redactor, чтобы загрузить файл
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Настройте редактирование метаданных
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Примените и сохраните
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Удалите чувствительные данные из документов"
  description: "GroupDocs.Redaction for .NET позволяет вам скрывать или очищать личный контент в различных форматах. Защищайте конфиденциальные данные, сохраняя файлы полезными и четкими."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ключевые функции редактирования"
  features:
    # feature loop
    - title: "Поиск и удаление текста"
      content: "Найдите чувствительные слова или фразы в ваших файлах и очистите их."

    # feature loop
    - title: "Закрытие областей изображения"
      content: "Используйте наложения, чтобы скрыть личные части изображений."

    # feature loop
    - title: "Редактирование метаданных"
      content: "Удаляйте или изменяйте метаданные, чтобы избежать их распространения."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очистите скрытые поля метаданных"
      content: |
        Этот пример показывает, как удалить или изменить скрытые метаданные в документах JPEG.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте файл JPEG с редактором
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Добавьте редактирование для поля 'Автор'
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Добавьте редактирование для поля 'Название'
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустите процесс редактирования
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Сохраните очищенный документ
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
    title: "Очистите метаданные JPEG с помощью .NET"
    exclude: "JPEG"
    description: "Используйте .NET для удаления скрытых данных из ваших документов JPEG. Отличный способ защитить конфиденциальные детали."
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