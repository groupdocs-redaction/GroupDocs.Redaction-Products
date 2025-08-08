
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ru
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Удаление метаданных из XLSX с помощью Java"
head_description: "GroupDocs.Redaction for Java помогает очистить скрытые метаданные из файлов XLSX. Держите ваши документы конфиденциальными и свободными от лишних деталей."

############################# Header ############################
title: "Очистка метаданных из файлов XLSX в Java" 
description: "Используйте Java для удаления личных или скрытых данных из ваших документов XLSX. Идеально подходит как для работы, так и для личного использования."
subtitle: "Узнайте, чего можно достичь с помощью GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction предоставляет разработчикам Java инструменты для контролирования контента в файлах XLSX. Удаляйте текст, метаданные и изображения по мере необходимости.

############################# Steps ############################
steps:
    enable: true
    title: "Удаление метаданных из файлов Xlsx"
    content: |
      GroupDocs.Redaction позволяет вашему проекту Java быстро очистить чувствительные метаданные.
      
      1. Запустите Redactor и откройте файл Xlsx.
      2. Выберите, какие поля метаданных удалить.
      3. Запустите редактирование, чтобы стереть их из файла.
      4. Сохраните очищенную версию.
   
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
        // Удаление скрытых метаданных в файлах XLSX

        // Откройте файл с помощью Redactor.
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Выберите поля метаданных для удаления.
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Примените редактирование и сохраните файл.
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Защитите ваши файлы, скрыв конфиденциальные сведения"
  description: "С помощью GroupDocs.Redaction for Java вы можете очистить личные данные из нескольких типов документов. Простая способ сохранить ваши файлы в безопасности."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Функции для редактирования контента"
  features:
    # feature loop
    - title: "Удаление текста"
      content: "Ищите и удаляйте слова или фразы, содержащие конфиденциальные данные."

    # feature loop
    - title: "Закрытие изображений"
      content: "Скрывайте части изображений, содержащие личные или конфиденциальные элементы."

    # feature loop
    - title: "Удаление метаданных"
      content: "Удаляйте фоновую информацию, которая может раскрыть личные данные."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Пример удаления метаданных"
      content: |
        В этом примере показано, как удалить метаданные, такие как Автор или Заголовок, из файла XLSX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте ваш документ.
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Выберите поле Автора для редактирования.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Выберите поле Заголовка для редактирования.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Запустите процесс редактирования.
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Сохраните результат.
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
    title: "Очистка метаданных в XLSX с помощью Java"
    exclude: "XLSX"
    description: "Используйте инструменты Java, чтобы удалить скрытые данные из файлов XLSX. Делитесь безопасными, защищенными документами."
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