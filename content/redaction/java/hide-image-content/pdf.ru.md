
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ru
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Закрытие изображений в PDF с наложениями, используя Java"
head_description: "С помощью GroupDocs.Redaction for Java вы можете скрыть частные изображения в файлах PDF с помощью цветных наложений. Защитите конфиденциальные визуальные данные, сохранив дизайн вашего документа."

############################# Header ############################
title: "Скрытие конфиденциальных изображений в файлах PDF с наложениями, используя Java" 
description: "Защитите личные и деловые данные в файлах PDF с помощью Java. Наши инструменты делают редактирование изображений простым и эффективным."
subtitle: "Функции GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java предоставляет разработчикам Java эффективные инструменты для скрытия или удаления содержимого в файлах PDF. Закройте текст, изображения и метаданные, чтобы ваши документы оставались безопасными в различных форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Защита бизнес-информации в файлах Pdf"
    content: |
      GroupDocs.Redaction for Java помогает вашим приложениям Java защищать документы. Закройте частные изображения всего за несколько шагов.
      
      1. Создайте Redactor и задайте путь к вашему файлу Pdf.
      2. Выберите настройки редактирования для наилучших результатов.
      3. Выберите область изображения и выберите цвет наложения.
      4. Обработайте и сохраните защищенный файл.
   
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
        // Закройте конфиденциальные изображения в PDF

        // Загрузите файл с помощью Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Установите цвет и размеры наложения
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Выберите целевую область для редактирования
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Примените наложение и сохраните файл
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Скрытие содержимого в документах"
  description: "С помощью GroupDocs.Redaction for Java вы можете скрыть или удалить конфиденциальные данные в различных форматах файлов. Защищайте личную информацию, сохраняя файлы читаемыми и удобными для распространения."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Мощные параметры редактирования"
  features:
    # feature loop
    - title: "Изменение текста в любом месте"
      content: "Найдите и замените конфиденциальные слова по всему документу, чтобы обеспечить безопасность частного контента."

    # feature loop
    - title: "Скрытие изображений"
      content: "Добавьте наложения к изображениям или их частям, чтобы сохранить конфиденциальные визуальные данные в тайне."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удалите или измените скрытые метаданные, чтобы предотвратить утечку информации."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Закрытие данных изображения с наложениями"
      content: |
        Этот пример демонстрирует, как скрыть конфиденциальные визуальные элементы в документах с помощью наложений.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте документ для редактирования
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Определите размер, цвет и положение наложения
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Выберите область изображения для редактирования на первой странице
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Добавьте наложение для закрытия конфиденциальных данных
              redactor.apply(redaction);

              // Сохраните обновленный документ
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
    title: "Защита файлов PDF с использованием редактирования Java"
    exclude: "PDF"
    description: "Используйте Java для скрытия или удаления конфиденциальных данных в файлах PDF. Идеально подходит для защиты официальных и личных документов."
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