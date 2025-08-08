
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редактирование и удаление метаданных в EXCEL через C#"
head_description: "Обеспечьте безопасность своих документов EXCEL, удаляя метаданные с помощью GroupDocs.Redaction for .NET. Устраните скрытые данные, которые могут компрометировать конфиденциальность."

############################# Header ############################
title: "Защита метаданных в файлах EXCEL через .NET" 
description: "С помощью C# вы можете очищать конфиденциальные данные из файлов EXCEL. Инструменты, предназначенные для сохранения вашей информации в безопасности."
subtitle: "Топовые преимущества GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предлагает надежный способ для разработчиков C# управлять редактированием в файлах EXCEL. Работает с текстом, изображениями и метаданными.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка метаданных в файлах Excel"
    content: |
      Используйте GroupDocs.Redaction в ваших проектах .NET для безопасной работы с метаданными документов.
      
      1. Создайте объект Redactor и загрузите целевой файл Excel.
      2. Настройте редактирование для очистки скрытых метаданных.
      3. Запустите процесс очистки.
      4. Сохраните финальную версию.
   
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
        // Очистите метаданные из EXCEL

        // Инициализируйте редактор и загрузите файл
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Настройте параметры удаления метаданных
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Редактируйте и сохраните результат
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Удалите личные данные в ваших файлах"
  description: "GroupDocs.Redaction for .NET позволяет вам очищать текст, изображения и метаданные в нескольких форматах. Идеально для личных, юридических и корпоративных документов."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Инструменты удаления метаданных"
  features:
    # feature loop
    - title: "Поиск и удаление текста"
      content: "Найдите личный или конфиденциальный текст в документах и безопасно удалите его."

    # feature loop
    - title: "Скрывайте визуальные элементы"
      content: "Накладывайте чувствительные части изображений, чтобы предотвратить просмотр."

    # feature loop
    - title: "Удалите метаданные"
      content: "Устраните встроенные данные, которые могут утечку конфиденциальную информацию."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Целевая метадата для редактирования"
      content: |
        Узнайте, как находить и удалять метаданные, такие как Автор или Название из документа EXCEL.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Импортируйте документ в редактор
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Целевое авторское метадата
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Целевое метадата заглавия
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Примените изменения
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Сохраните обновленный документ
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
    title: "Удалите метаданные в EXCEL с использованием .NET"
    exclude: "EXCEL"
    description: "Избавьтесь от личных метаданных в EXCEL с помощью .NET. Поддерживайте ваши документы чистыми и безопасными."
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