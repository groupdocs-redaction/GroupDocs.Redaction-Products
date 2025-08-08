
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ru
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Удаление метаданных в PHOTO с помощью Java"
head_description: "GroupDocs.Redaction for Java помогает вам удалить скрытые данные из файлов PHOTO, которые могут раскрыть личные или деловые детали."

############################# Header ############################
title: "Удаление метаданных из PHOTO с помощью Java" 
description: "Обеспечьте безопасность своих файлов PHOTO, удаляя скрытые метаданные с использованием инструментов Java."
subtitle: "Основные моменты GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предоставляет разработчикам Java инструменты для скрытия конфиденциального контента в файлах PHOTO, включая текст, области изображений и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Как удалить метаданные из файлов Photo"
    content: |
      Используйте GroupDocs.Redaction в своем приложении Java, чтобы стереть метаданные из документов.
      
      1. Запустите Redactor и откройте файл Photo.
      2. Установите правила для удаления скрытых полей.
      3. Примените редактирование, чтобы очистить файл.
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
        // Очистите метаданные в файлах PHOTO

        // Загрузите файл с помощью Redactor.
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Выберите поля метаданных для редактирования.
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Примените и сохраните файл.
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Удаление конфиденциальной информации из документов"
  description: "GroupDocs.Redaction for Java помогает очищать файлы, удаляя чувствительный текст, содержание изображений и метаданные. Отлично подходит для личной и корпоративной безопасности."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Полезные функции редактирования"
  features:
    # feature loop
    - title: "Очистка текста"
      content: "Ищите и удаляйте слова или цифры, которые не должны быть общими."

    # feature loop
    - title: "Редактирование изображений"
      content: "Добавляйте покрытия на части изображений с конфиденциальным содержимым."

    # feature loop
    - title: "Удаление метаданных"
      content: "Очистите детали файла, которые могут нести личную информацию."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удаление скрытых полей метаданных"
      content: |
        Этот пример показывает, как удалить поля, такие как Автор и Заголовок, из документа PHOTO.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте файл PHOTO в редакторе.
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Редактируйте поле Автора.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Редактируйте поле Заголовка.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Запустите процесс.
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
    title: "Используйте Java для удаления метаданных PHOTO"
    exclude: "PHOTO"
    description: "Защитите свои документы PHOTO, удаляя метаданные с помощью инструментов Java."
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