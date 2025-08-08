
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ru
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Закрытие изображений в JPEG с наложениями, используя Java"
head_description: "Сохраняйте конфиденциальные изображения в файлах JPEG с помощью GroupDocs.Redaction for Java. Добавьте наложения, чтобы скрыть информацию, не изменяя макет документа."

############################# Header ############################
title: "Скрытие конфиденциальных изображений в файлах JPEG с наложениями, используя Java" 
description: "Защищайте персональные и деловые изображения в файлах JPEG с помощью Java. Простые инструменты, чтобы помочь вам надежно защитить ваши документы."
subtitle: "Основные функции GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java предоставляет разработчикам Java инструменты для скрытия или удаления содержания в файлах JPEG. Защитите ваши документы, закрывая текст, изображения и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Скрытие личных данных в файлах Jpeg"
    content: |
      GroupDocs.Redaction for Java быстро помогает вашим приложениям Java закрывать личное содержимое.
      
      1. Создайте объект Redactor и загрузите ваш файл Jpeg.
      2. Настройте параметры редактирования под ваши потребности.
      3. Выберите область изображения и выберите цвет наложения.
      4. Примените редактирование и сохраните файл.
   
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
        // Закрытие изображений в JPEG

        // Откройте файл с помощью Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Определите размеры и цвет наложения
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Выберите область для закрытия
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Примените наложение и сохраняйте изменения
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Скрытие конфиденциальной информации в документах"
  description: "GroupDocs.Redaction for Java помогает вам скрывать или удалять частное содержимое в нескольких типах файлов. Убедитесь, что ваши документы остаются чистыми и готовы к распространению."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Функции редактирования с полным контролем"
  features:
    # feature loop
    - title: "Поиск и замена текста"
      content: "Ищите конфиденциальный текст в документах и заменяйте его, чтобы защитить информацию."

    # feature loop
    - title: "Скрытие изображений с наложениями"
      content: "Используйте наложения, чтобы скрыть целые изображения или конкретные области."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удалите скрытые метаданные, чтобы избежать случайного раскрытия конфиденциальной информации."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Использование наложений для скрытия содержания изображений"
      content: |
        Этот пример показывает, как защитить конфиденциальные области изображений в документах с помощью наложений.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Загрузите файл для редактирования
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Установите размер, цвет и положение наложения
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Выберите область изображения на первой странице
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Закройте область наложением
              redactor.apply(redaction);

              // Сохраните обновленный файл
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
    title: "Защита файлов JPEG с помощью редактирования Java"
    exclude: "JPEG"
    description: "Используйте Java для скрытия или удаления конфиденциальных данных в файлах JPEG. Надежное решение для защиты ваших важных документов."
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