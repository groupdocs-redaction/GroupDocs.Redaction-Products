
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Удаление метаданных из WORD с использованием C#"
head_description: "Используйте GroupDocs.Redaction for .NET для поиска и удаления скрытых метаданных в файлах WORD. Держите ваши документы частными и защищенными от нежелательного раскрытия."

############################# Header ############################
title: "Удаление метаданных в файлах WORD с помощью .NET" 
description: "Защищайте личные и корпоративные данные в файлах WORD с помощью C#. Простые инструменты для надежной конфиденциальности файлов."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction помогает разработчикам C# защищать содержимое в файлах WORD. Быстрая и удобная очистка текста, изображений и метаданных.

############################# Steps ############################
steps:
    enable: true
    title: "Удаление метаданных из файлов Word"
    content: |
      С помощью GroupDocs.Redaction легко чистить метаданные документов в вашей среде .NET.
      
      1. Инициализируйте объект Redactor и откройте документ Word.
      2. Настройте правила для удаления всех скрытых метаданных.
      3. Запустите редактирование для удаления чувствительных тегов.
      4. Сохраните очищенный документ.
   
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
        // Сотрите метаданные из файлов WORD

        // Откройте документ с помощью Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Настройте параметры удаления метаданных
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Редактируйте и сохраняйте очищенный файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редактирование конфиденциальных данных из документов"
  description: "С помощью GroupDocs.Redaction for .NET вы можете удалить частный контент из различных форматов. Держите ваши файлы в безопасности, сохраняя их структуру."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Инструменты редактирования метаданных и контента"
  features:
    # feature loop
    - title: "Заменить конфиденциальный текст"
      content: "ищите текст в документах и безопасно удаляйте или изменяйте его для защиты личной информации."

    # feature loop
    - title: "Маскирование изображений"
      content: "Закрывайте чувствительные области изображений наложениями, чтобы скрыть визуальные данные."

    # feature loop
    - title: "Стирание метаданных"
      content: "Находите и очищайте скрытые данные, чтобы избежать утечки информации."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование или удаление скрытых метаданных"
      content: |
        Этот пример показывает, как нацелиться на записи метаданных и очистить их в документе WORD.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите файл для редактирования
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Удалите метаданные авторства
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Удалите метаданные заглавия
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустите процесс редактирования
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Экспортируйте чистый документ
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
    title: "Редактирование метаданных в WORD с .NET"
    exclude: "WORD"
    description: "Используйте .NET для очистки скрытых метаданных из файлов WORD. Простые инструменты для защиты конфиденциальной информации."
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