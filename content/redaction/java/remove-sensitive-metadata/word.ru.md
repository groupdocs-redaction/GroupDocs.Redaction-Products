
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ru
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Удаление метаданных из WORD с помощью Java"
head_description: "С GroupDocs.Redaction for Java вы можете быстро удалить скрытые метаданные из файлов WORD. Держите ваши документы в безопасности и конфиденциальности."

############################# Header ############################
title: "Очистка скрытых метаданных в файлах WORD с помощью Java" 
description: "Защитите свои файлы WORD, удалив личные данные с помощью инструментов Java. Отлично подходит для бизнеса и личного использования."
subtitle: "Как GroupDocs.Redaction for Java может помочь вам" 

############################# About ############################
about:
    enable: true
    title: "Узнайте о GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предоставляет разработчикам Java все необходимые инструменты для удаления данных из файлов WORD. Очищайте метаданные, текст и изображения без лишних усилий.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка метаданных в файлах Word"
    content: |
      Используйте GroupDocs.Redaction для очистки метаданных из документов в ваших приложениях Java.
      
      1. Создайте объект Redactor и загрузите свой файл Word.
      2. Определите правила для удаления скрытых полей метаданных.
      3. Примените редактирование для удаления метаданных.
      4. Сохраните обновленный файл.
   
    code:
      platform: "java"
      copy_title: "Копировать"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Примеры редактирования"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "нажмите для копирования"
        copy_done: "скопировано"
      links:
        #  loop
        - title: "Больше примеров"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Документация"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Удалите скрытые метаданные из WORD

        // Загрузите файл с помощью Redactor.
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Настройте параметры редактирования метаданных.
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Запустите редактирование и сохраните.
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Дополнительные инструменты для удаления личной информации"
  description: "Используйте GroupDocs.Redaction for Java, чтобы очистить текст, изображения и метаданные из множества форматов файлов. Делитесь своими файлами, не раскрывая конфиденциальные данные."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Функции редактирования метаданных и контента"
  features:
    # feature loop
    - title: "Удаление личного текста"
      content: "Ищите конфиденциальный контент в файлах и удаляйте или изменяйте его по мере необходимости."

    # feature loop
    - title: "Закрытие областей изображения"
      content: "Скрывайте конкретные части изображений, которые могут содержать личные детали."

    # feature loop
    - title: "Удаление полей метаданных"
      content: "Удаляйте скрытые тегирование, такие как автор, заголовок и более, чтобы обеспечить конфиденциальность."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очистка полей метаданных в документах"
      content: |
        Этот пример объясняет, как стереть метаданные, такие как Автор и Заголовок, в файле WORD.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Загрузите файл для обработки.
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Сотрите поле Автора.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Сотрите поле Заголовка.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Выполните редактирование.
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Сохраните очищенный файл.
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Копировать"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Документация"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Готовы начать?"
  description: "Попробуйте функции GroupDocs.Redaction бесплатно или запросите лицензию"
  items:
    #  loop
    - title: "Скачать Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Лицензирование"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Удаление метаданных из WORD с помощью Java"
    exclude: "WORD"
    description: "Java позволяет вам очищать скрытые метаданные из файлов WORD. Простой способ защитить ваши документы."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать Изображения"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Популярные форматы изображений"

        # format loop 6
        - name: "Редактировать Фото"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Форматы фотографий"

        # format loop 7
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Презентация PowerPoint Open XML"

        # format loop 10
        - name: "Редактировать JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Изображение JPEG"


---