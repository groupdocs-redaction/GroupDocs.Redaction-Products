
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Удаление метаданных из DOCX с использованием C#"
head_description: "Используйте GroupDocs.Redaction for .NET для удаления или изменения скрытых метаданных в файлах DOCX. Защитите свои документы от раскрытия частных данных."

############################# Header ############################
title: "Удаление метаданных в файлах DOCX с помощью .NET" 
description: "Используйте C# для очистки конфиденциальных метаданных из файлов DOCX. Сохраните свои бизнес и личные данные под защитой."
subtitle: "Топовые функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предлагает разработчикам C# инструменты для сокрытия или удаления контента в файлах DOCX. Быстрая очистка текста, изображений и метаданных.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка скрытых данных в файлах Docx"
    content: |
      GroupDocs.Redaction помогает вашим проектам .NET быстро удалять ненужные метаданные.
      
      1. Создайте экземпляр Redactor и откройте ваш файл Docx.
      2. Настройте редактирование для целевых записей метаданных.
      3. Примените изменения для очистки документа.
      4. Сохраните очищенный файл.
   
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
        // Удалите метаданные из документов DOCX

        // Загрузите файл с использованием Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Настройте параметры удаления метаданных
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Примените и сохраните изменения
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Скрыть конфиденциальную информацию в любом документе"
  description: "GroupDocs.Redaction for .NET позволяет очищать конфиденциальный контент во множестве типов файлов. Делайте ваши документы более безопасными для передачи или хранения."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Умные возможности редактирования"
  features:
    # feature loop
    - title: "Удаление частного текста"
      content: "Ищите и удаляйте личный или бизнес-текст из ваших файлов."

    # feature loop
    - title: "Маскирование изображений"
      content: "Скрывайте изображения или выбранные области, чтобы скрыть конфиденциальный контент."

    # feature loop
    - title: "Стирание метаданных"
      content: "Очистите скрытые записи метаданных, чтобы избежать утечки фоновых данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очистка полей метаданных"
      content: |
        Этот пример демонстрирует, как удалить скрытые данные из файлов DOCX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите ваш файл DOCX
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Целевой авторский поле для удаления
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Целевое поле заглавия для удаления
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустите процесс редактирования
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Сохраните обновленный файл
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
    title: "Удаление метаданных в DOCX с помощью .NET"
    exclude: "DOCX"
    description: "Удалите ненужные метаданные в файлах DOCX с помощью .NET. Простой способ защитить скрытые детали файла."
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