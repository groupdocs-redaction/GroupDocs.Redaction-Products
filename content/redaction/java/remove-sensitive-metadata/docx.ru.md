
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ru
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Удаление метаданных из DOCX с помощью Java"
head_description: "Используйте GroupDocs.Redaction for Java для очистки скрытых метаданных в ваших файлах DOCX. Убедитесь, что ваши документы не раскрывают личную информацию."

############################# Header ############################
title: "Очистка метаданных в документах DOCX с помощью Java" 
description: "Удалите ненужные метаданные из ваших файлов DOCX с помощью Java. Держите ваши файлы в безопасности для обмена или хранения."
subtitle: "Ключевые инструменты в GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction помогает разработчикам Java удалять конфиденциальный контент из файлов DOCX. Легко редактируйте текст, изображения и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Удаление скрытой информации из файлов Docx"
    content: |
      GroupDocs.Redaction упрощает удаление метаданных в ваших приложениях Java.
      
      1. Инициализируйте Redactor и загрузите файл Docx.
      2. Настройте инструмент для удаления конкретных полей метаданных.
      3. Примените редактирование, чтобы удалить скрытую информацию.
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
        // Удаление метаданных из файлов DOCX

        // Откройте файл с помощью Redactor.
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Выберите, какие метаданные удалить.
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Примените и сохраните изменения.
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Защита конфиденциальных данных в документах"
  description: "GroupDocs.Redaction for Java позволяет скрывать конфиденциальные данные во всех типах файлов. Убедитесь, что никакие скрытые данные не будут переданы."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Инструменты для редактирования метаданных, текста и изображений"
  features:
    # feature loop
    - title: "Редактирование текста"
      content: "Найдите и удалите конфиденциальный текст на своем документе."

    # feature loop
    - title: "Покрытие изображений"
      content: "Закрывайте части изображений, чтобы скрыть личные визуальные элементы."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте фоновые метаданные, которые могут раскрыть скрытую информацию."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Как удалить метаданные"
      content: |
        Этот пример показывает, как удалить скрытые свойства, такие как Автор и Заголовок, из файла DOCX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте ваш документ DOCX.
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Выделите поле Автора для очистки.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Выделите поле Заголовка для очистки.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Запустите редактирование.
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Сохраните итоговый файл.
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
    title: "Очистка метаданных из DOCX с помощью Java"
    exclude: "DOCX"
    description: "Используйте Java для удаления скрытых метаданных из документов DOCX. Отлично подходит для защиты конфиденциальности и защиты данных."
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