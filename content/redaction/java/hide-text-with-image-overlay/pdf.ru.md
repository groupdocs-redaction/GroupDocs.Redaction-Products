
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ru
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Скрытие личного текста в PDF с помощью наложений на Java"
head_description: "GroupDocs.Redaction for Java позволяет скрывать конфиденциальную информацию в файлах PDF, накладывая цветные прямоугольники. Защищайте данные, не меняя внешний вид вашего документа."

############################# Header ############################
title: "Маскировка текста в документах PDF с использованием наложений в Java" 
description: "Полный контроль над содержимым файлов PDF с помощью Java. Используйте редактирование для защиты финансовых, юридических или личных данных."
subtitle: "Ключевые функции GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Что предлагает GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java дает разработчикам Java простой способ скрывать или удалять содержимое из файлов PDF. Закрывайте текст, изображения и метаданные в разных типах документов.

############################# Steps ############################
steps:
    enable: true
    title: "Защитите конфиденциальную информацию в файлах Pdf"
    content: |
      GroupDocs.Redaction for Java предоставляет разработчикам Java простой способ скрытия личного контента несколькими простыми шагами.
      
      1. Запустите Redactor и загрузите ваш файл Pdf.
      2. Настройте параметры редактирования.
      3. Выберите, что искать, и выберите цвет наложения.
      4. Примените редактирование и сохраните документ.
   
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
        // Скрытие текста в PDF с помощью цветных наложений

        // Передайте путь к файлу в Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Настройте параметры редактирования
            // Установите целевой текст и цвет
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Примените изменения и сохраните отредактированный PDF
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Управление видимостью документов"
  description: "GroupDocs.Redaction for Java позволяет блокировать или удалять части ваших файлов, оставаясь при этом простым в использовании."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Мощные инструменты редактирования"
  features:
    # feature loop
    - title: "Целевая маскировка текста"
      content: "Ищите в вашем документе и скрывайте конкретные слова или фразы для защиты личной информации."

    # feature loop
    - title: "Скрытие изображений"
      content: "Добавляйте наложения, чтобы полностью или частично скрыть визуальные элементы."

    # feature loop
    - title: "Удаление метаданных"
      content: "Очистите скрытые детали документа, чтобы избежать непреднамеренного раскрытия."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Скрытие текста с помощью регулярных выражений"
      content: |
        Этот пример использует регулярные выражения для поиска и скрытия конкретного содержимого.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Загрузите файл, который хотите обработать
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Установите текстовый шаблон и цвет наложения
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Примените редактирование
              redactor.apply(redaction);

              // Сохраните изменения
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Защита файлов PDF с помощью Java"
    exclude: "PDF"
    description: "Используйте Java для маскировки или удаления содержимого в документах PDF. Отличный способ сохранить конфиденциальную информацию в безопасности."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Презентация PowerPoint Open XML"


---