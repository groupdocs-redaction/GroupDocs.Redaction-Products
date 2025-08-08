
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Удаление скрытых метаданных в IMAGE с C#"
head_description: "Используйте GroupDocs.Redaction for .NET для очистки метаданных в ваших файлах IMAGE. Убедитесь, что личные детали остаются личными."

############################# Header ############################
title: "Очистка метаданных в IMAGE файлах через .NET" 
description: "Держите ваши IMAGE файлы в безопасности с помощью C#. Защищайте бизнес и личные данные простым способом."
subtitle: "Что вы получаете с GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction помогает пользователям C# очищать файлы, удаляя ненужный текст, части изображений и метаданные в файлах IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка метаданных в файлах Image"
    content: |
      Начните с GroupDocs.Redaction в вашем приложении .NET для очистки метаданных файлов.
      
      1. Создайте Redactor и откройте ваш файл Image.
      2. Выберите параметры для удаления скрытых записей метаданных.
      3. Примените настройки редактирования.
      4. Сохраните результат.
   
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
        // Удалите скрытые метаданные из файлов IMAGE

        // Откройте файл с помощью Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Добавьте правила редактирования для метаданных
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Процесс и сохранить
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Очистка контента в любом документе"
  description: "GroupDocs.Redaction for .NET удаляет личный текст, части изображения или скрытые поля. Делайте документы безопасными для передачи."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Основные функции"
  features:
    # feature loop
    - title: "Редактирование текста"
      content: "Находите и удаляйте личные слова и цифры."

    # feature loop
    - title: "Закрытие изображений"
      content: "Добавьте маски изображений, чтобы скрыть визуальную информацию."

    # feature loop
    - title: "Редактирование метаданных"
      content: "Очистите поля метаданных, которые могут утечку информации."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Стирайте чувствительные метаданные"
      content: |
        Этот пример объясняет, как удалить конкретные поля метаданных в документе IMAGE.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте IMAGE с редактором
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Нацельте поле автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Нацельте поле заглавия
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Редактируйте поля
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Сохраните свой документ
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
    title: "Удалите метаданные из IMAGE с использованием .NET"
    exclude: "IMAGE"
    description: "Удалите чувствительные данные из файлов IMAGE с помощью редактирования .NET. Держите ваши файлы в безопасности для передачи или хранения."
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