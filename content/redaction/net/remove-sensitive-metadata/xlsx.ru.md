
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Очистка метаданных в файлах XLSX с использованием C#"
head_description: "С помощью GroupDocs.Redaction for .NET вы можете безопасно удалить метаданные из файлов XLSX. Очистите скрытую информацию, которая может раскрыть личные данные."

############################# Header ############################
title: "Удаление метаданных из файлов XLSX с использованием .NET" 
description: "Защищайте конфиденциальные данные в ваших файлах XLSX с помощью C#. Удобное редактирование для личных и рабочих документов."
subtitle: "Изучите, что может сделать GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Узнайте о GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предоставляет разработчикам C# инструменты для очистки содержимого в документах XLSX. Маскируйте или удаляйте текст, изображения и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка метаданных в файлах Xlsx"
    content: |
      С помощью GroupDocs.Redaction ваши приложения .NET могут быстро удалять скрытые данные.
      
      1. Настройте Redactor и откройте ваш файл Xlsx.
      2. Определите, какие метаданные вы хотите удалить.
      3. Примените правила редактирования.
      4. Сохраните финальный файл.
   
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
        // Очистите скрытые метаданные в XLSX

        // Откройте файл с помощью Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Настройте, какие метаданные удалить
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Примените редактирование и сохраните
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Защитите конфиденциальную информацию в документах"
  description: "Используйте GroupDocs.Redaction for .NET для удаления или скрытия контента во множестве форматов файлов. Поддерживайте файлы частными и готовыми к передаче."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Все-в-одном функции редактирования"
  features:
    # feature loop
    - title: "Заменить или удалить текст"
      content: "Защитите личные данные, найдя и удалив чувствительный текст."

    # feature loop
    - title: "Скрыть визуальные секции"
      content: "Используйте наложения, чтобы заблокировать области изображений с личными визуальными данными."

    # feature loop
    - title: "Удалить метаданные"
      content: "Очистите скрытые поля метаданных, которые могут содержать личные или бизнес-данные."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Как удалить метаданные"
      content: |
        Этот пример кода удаляет свойства метаданных в документе XLSX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте документ
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Целевой авторский метаданные
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Целевой заголовок метаданные
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
    title: "Удалите метаданные в XLSX с помощью .NET"
    exclude: "XLSX"
    description: "Избавьтесь от частных метаданных в файлах XLSX с помощью .NET. Поддерживайте ваши документы чистыми и безопасными."
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