
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ru
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Редактирование метаданных в JPEG с помощью Java"
head_description: "Используйте GroupDocs.Redaction for Java для очистки или изменения метаданных в файлах JPEG. Защитите конфиденциальность, удаляя скрытые данные."

############################# Header ############################
title: "Удаление метаданных из файлов JPEG с помощью Java" 
description: "Держите ваши документы JPEG в безопасности с помощью простых инструментов Java, удаляющих личные детали."
subtitle: "Основные функции GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предоставляет разработчикам Java инструменты для удаления нежелательного текста, изображений и метаданных из файлов JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка метаданных в документах Jpeg"
    content: |
      GroupDocs.Redaction упрощает удаление метаданных в ваших проектах Java.
      
      1. Создайте Redactor и загрузите файл Jpeg.
      2. Выберите параметры для удаления всех полей метаданных.
      3. Запустите редактирование, чтобы очистить файл.
      4. Сохраните обновленный файл без скрытых данных.
   
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
        // Очистите метаданные из файлов JPEG

        // Загрузите файл с помощью Redactor.
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Настройте очистку метаданных.
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Запустите и сохраните изменения.
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Защитите ваши документы"
  description: "GroupDocs.Redaction for Java помогает удалить личный контент из многих типов документов. Держите конфиденциальную информацию под контролем в своих файлах при обмене."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ключевые функции редактирования"
  features:
    # feature loop
    - title: "Удаление текста"
      content: "Найдите и удалите личные слова или фразы из своих файлов."

    # feature loop
    - title: "Скрытие содержимого изображения"
      content: "Добавьте наложения, чтобы скрыть области изображений с личной информацией."

    # feature loop
    - title: "Редактирование метаданных"
      content: "Очистите или измените поля метаданных, чтобы избежать раскрытия личной информации."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удаление скрытых полей метаданных"
      content: |
        Этот пример показывает, как удалить или изменить метаданные, такие как Автор и Заголовок, в документах JPEG.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте файл JPEG с редактором.
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Целитесь в метаданные Автора.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Целитесь в метаданные Заголовка.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Запустите редактирование.
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
    title: "Удаление метаданных из JPEG с помощью Java"
    exclude: "JPEG"
    description: "Используйте Java, чтобы удалить скрытые данные из файлов JPEG и защитить конфиденциальную информацию."
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