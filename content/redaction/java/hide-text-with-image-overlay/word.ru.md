
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
head_title: "Редактирование текста в WORD с помощью наложений на Java"
head_description: "Используйте GroupDocs.Redaction for Java для маскировки конфиденциального текста в файлах WORD цветными блоками, удерживая структуру документа без изменений."

############################# Header ############################
title: "Наложение редактирования в файлах WORD с помощью Java" 
description: "Скрывайте важные детали в ваших документах WORD с помощью цветных наложений на основе Java и GroupDocs.Redaction for Java."
subtitle: "Что может GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Знакомьтесь с GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java дает пользователям Java полный контроль над редактированием WORD. Скрывайте все, что хотите—текст, визуальные элементы или метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Защита личной информации в формате Word"
    content: |
      GroupDocs.Redaction for Java предоставляет разработчикам Java быстрые способы очистки файлов и защиты их содержимого.
      
      1. Запустите Redactor и загрузите файл Word.
      2. Выберите ваши параметры редактирования.
      3. Добавьте текстовый шаблон и цвет наложения.
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
        // Скрытие текста с использованием наложений в WORD

        // Используйте Redactor, чтобы открыть документ
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Установите параметры редактирования
            // Добавьте ключевые слова и выберите цвет
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Примените и сохраните отредактированный файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Больше возможностей редактирования"
  description: "Используйте GroupDocs.Redaction for Java для удаления как видимого, так и скрытого содержимого из файлов, сохраняя при этом макет нетронутым."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Простой, чистый результат"
  features:
    # feature loop
    - title: "Замена текста"
      content: "Скрывайте слова или термины, которые не должны быть видны."

    # feature loop
    - title: "Маскирование визуальных элементов"
      content: "Используйте цветные наложения для скрытия изображений или их частей."

    # feature loop
    - title: "Удаление метаданных"
      content: "Удаляйте детали, скрытые в свойствах файла."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование на основе регулярных выражений"
      content: |
        Узнайте, как использовать регулярные выражения для автоматического скрытия определенного содержимого.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Загрузите документ для редактирования
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Определите шаблон регулярных выражений и цвет наложения
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Примените редактирование
              redactor.apply(redaction);

              // Сохраните свою очищенную версию
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
    title: "Редактирование содержимого в WORD с помощью Java"
    exclude: "WORD"
    description: "Сохраните ваши документы WORD конфиденциальными, скрывая или удаляя чувствительные данные с помощью Java."
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