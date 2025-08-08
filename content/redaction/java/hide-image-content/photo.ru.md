
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ru
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Скрытие изображений в PHOTO с наложениями, используя Java"
head_description: "Используйте GroupDocs.Redaction for Java для маскировки конфиденциальных областей изображений в файлах PHOTO с наложениями. Защитите частное содержимое, не меняя макет файла."

############################# Header ############################
title: "Защита содержимого изображений в файлах PHOTO с наложениями, используя Java" 
description: "Обеспечьте безопасность личных и деловых данных изображений в файлах PHOTO с помощью Java. Простые инструменты, разработанные для быстрой и эффективной защиты."
subtitle: "Основные функции GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Узнайте о GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java дает разработчикам Java надежные инструменты для скрытия или удаления содержимого в файлах PHOTO. Защитите документы, маскируя текст, изображения и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Скрытие содержимого в файлах Photo с наложениями"
    content: |
      GroupDocs.Redaction for Java облегчает скрытие конфиденциальных областей в ваших приложениях Java.
      
      1. Инициализируйте Redactor и загрузите свой файл Photo.
      2. Установите параметры редактирования по мере необходимости.
      3. Выберите регионы изображения и выберите цвета наложения.
      4. Запустите редактирование и сохраните файл.
   
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
        // Закрытие областей изображений в PHOTO с наложениями

        // Загрузите файл с помощью Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Определите цвет и размеры наложения
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Отметьте область изображения, которую нужно закрыть
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Примените наложение и сохраните результат
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редактирование конфиденциального содержания с легкостью"
  description: "GroupDocs.Redaction for Java позволяет вам скрывать или удалять частные данные в различных форматах документов. Держите файлы чистыми и готовыми к обмену."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Полный контроль над редактированием"
  features:
    # feature loop
    - title: "Поиск и замена текста"
      content: "Находите конфиденциальный текст в документах и заменяйте его для защиты информации."

    # feature loop
    - title: "Наложение областей изображения"
      content: "Используйте наложения, чтобы закрыть целые изображения или выбранные части."

    # feature loop
    - title: "Удаление метаданных"
      content: "Очищайте или редактируйте скрытые метаданные, чтобы предотвратить случайное раскрытие данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Маска для изображений с наложениями"
      content: |
        Этот пример показывает, как скрыть содержимое изображений с наложениями в документе.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Загрузите документ для редактирования
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Установите размер, цвет и положение наложения
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Выберите целевую область изображения на первой странице
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Примените наложение для скрытия содержимого
              redactor.apply(redaction);

              // Сохраните отредактированный файл
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Защита файлов PHOTO с использованием редактирования Java"
    exclude: "PHOTO"
    description: "С помощью Java вы можете скрыть или удалить конфиденциальные данные в PHOTO файлах. Доверенное решение для защиты официальных документов."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать Изображения"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Популярные форматы изображений"

        # format loop 6
        - name: "Редактировать Фото"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Форматы фотографий"

        # format loop 7
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "Презентация PowerPoint Open XML"

        # format loop 10
        - name: "Редактировать JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "Изображение JPEG"


---