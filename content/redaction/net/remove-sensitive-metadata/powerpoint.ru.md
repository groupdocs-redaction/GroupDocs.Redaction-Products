
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Очистка метаданных в POWERPOINT с помощью C#"
head_description: "Удалите нежелательные метаданные из файлов POWERPOINT с помощью GroupDocs.Redaction for .NET. Защитите свою конфиденциальность, стирая скрытые данные."

############################# Header ############################
title: "Удаление метаданных в POWERPOINT через .NET" 
description: "Защищайте данные документа в POWERPOINT файлах с помощью простых инструментов, разработанных для C#. Удаляйте метаданные всего за несколько шагов."
subtitle: "Функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Больше о GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction — это инструмент редактирования для разработчиков C#, который помогает работать с текстом, изображениями и метаданными в файлах POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка метаданных из документов Powerpoint"
    content: |
      С помощью GroupDocs.Redaction ваши приложения .NET могут легко удалять метаданные из документов.
      
      1. Начните с объекта Redactor и загрузите ваш файл.
      2. Выберите поля метаданных для удаления.
      3. Примените настройки редактирования.
      4. Экспортируйте финальный, очищенный документ.
   
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
        // Устраните метаданные в POWERPOINT

        // Откройте документ с помощью редактора
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Настройте параметры очистки метаданных
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Примените редактирование и сохраните
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Защитите документы с помощью редактирования"
  description: "GroupDocs.Redaction for .NET помогает удалять скрытый контент из документов, чтобы вы могли безопасно их передавать. Работает с множеством форматов и типов контента."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Возможности редактирования"
  features:
    # feature loop
    - title: "Удалите частный текст"
      content: "Ищите чувствительные слова или фразы и удаляйте их из вашего документа."

    # feature loop
    - title: "Замаскируйте данные изображения"
      content: "Используйте наложения, чтобы закрыть области изображений, которые должны оставаться скрытыми."

    # feature loop
    - title: "Удалите метаданные"
      content: "Очистите метаданные, которые могут содержать скрытую информацию."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очистите скрытые поля метаданных"
      content: |
        Этот пример поможет вам удалить встроенные данные, такие как автор и название из файла POWERPOINT.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Импортируйте файл в редактор
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Удалите данные автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Удалите данные заглавия
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустите редактирование
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
    title: "Очистка файлов POWERPOINT с помощью .NET"
    exclude: "POWERPOINT"
    description: "Используйте .NET для удаления скрытых данных в файлах POWERPOINT. Идеально для очистки конфиденциальных документов."
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