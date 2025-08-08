
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Удаление метаданных из файлов PPTX с помощью C#"
head_description: "GroupDocs.Redaction for .NET помогает вам удалить или отредактировать метаданные в файлах PPTX. Защитите свои документы, удалив частные фоновые данные."

############################# Header ############################
title: "Удаление метаданных в PPTX с помощью инструментов .NET" 
description: "Скрывайте конфиденциальные метаданные в файлах PPTX с помощью C#. Идеально для бизнес- и личной конфиденциальности."
subtitle: "Основные функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Познакомьтесь с GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction разработан для разработчиков C#, которым необходимо удалить данные из файлов PPTX. Быстрая очистка текста, изображений и метаданных.

############################# Steps ############################
steps:
    enable: true
    title: "Удаление скрытых метаданных в файлах Pptx"
    content: |
      GroupDocs.Redaction помогает вашим решениям .NET быстро очистить скрытые данные.
      
      1. Создайте экземпляр Redactor и загрузите файл Pptx.
      2. Настройте правила редактирования для полей метаданных.
      3. Примените редактирование для удаления данных.
      4. Сохраните свой редактированный файл.
   
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
        // Удалите метаданные в PPTX

        // Откройте файл с помощью Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Настройте редактирование для очистки метаданных
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Примените и сохраните файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Дополнительные инструменты редактирования для любого файла"
  description: "GroupDocs.Redaction for .NET поддерживает редактирование контента в разных форматах. Убедитесь, что ваши данные остаются частными, а файлы чистыми."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Встроенные инструменты конфиденциальности"
  features:
    # feature loop
    - title: "Найдите и удалите текст"
      content: "Быстро удаляйте личные текстовые записи из ваших файлов."

    # feature loop
    - title: "Скрывайте изображения с помощью наложений"
      content: "Скрывайте секции изображений, которые не должны быть видны."

    # feature loop
    - title: "Удалите метаданные"
      content: "Стирайте скрытые поля, такие как автор, название и т.д., чтобы оставаться в безопасности."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очистите поля метаданных"
      content: |
        Этот пример показывает, как безопасно очистить метаданные из файла PPTX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Импортируйте файл PPTX
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Редактируйте поле автор
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

              // Запустите процесс редактирования
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Экспортируйте редактированный файл
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
    title: "Очистка метаданных в файлах PPTX с использованием .NET"
    exclude: "PPTX"
    description: "Легко удаляйте фоновые метаданные из файлов PPTX с помощью .NET. Идеально подходит для безопасности документов."
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