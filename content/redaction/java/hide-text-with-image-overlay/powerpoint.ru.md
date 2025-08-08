
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ru
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Защита текста в POWERPOINT с помощью наложений Java"
head_description: "С помощью GroupDocs.Redaction for Java вы можете заблокировать личный текст в слайдах POWERPOINT, используя простые наложения, не меняя макет."

############################# Header ############################
title: "Скрытие текста в POWERPOINT с использованием наложений и Java" 
description: "Используйте Java и GroupDocs.Redaction for Java для защиты ваших слайдов POWERPOINT от раскрытия конфиденциального содержимого."
subtitle: "Внутри GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java помогает разработчикам Java очищать слайды POWERPOINT, блокируя или удаляя конфиденциальное содержимое, такое как текст, метаданные или изображения.

############################# Steps ############################
steps:
    enable: true
    title: "Очищайте Powerpoint презентации перед их отправкой"
    content: |
      Используйте GroupDocs.Redaction for Java в приложениях Java для скрытия или удаления чувствительных частей ваших слайдов.
      
      1. Создайте новый Redactor с путем к вашему слайд-деку.
      2. Определите ваши параметры редактирования.
      3. Установите текстовый шаблон и цвет наложения.
      4. Запустите и сохраните отредактированный файл.
   
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
        // Накладывайте текстовые области в POWERPOINT

        // Откройте файл с помощью Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Настройте параметры редактирования
            // Введите текст и выберите цвет наложения
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Редактируйте и сохраняйте обновленный файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Простое редактирование для чувствительных слайдов"
  description: "GroupDocs.Redaction for Java упрощает блокировку или удаление содержимого из слайдов, независимо от применения."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Инструменты редактирования, которые адаптируются"
  features:
    # feature loop
    - title: "Искать и заменять текст"
      content: "Защищайте чувствительные фразы или ярлыки на любом слайде."

    # feature loop
    - title: "Скрыть части визуальных элементов"
      content: "Добавляйте наложения в выбранные области или изображения слайдов."

    # feature loop
    - title: "Удаление скрытого содержимого"
      content: "Очистите метаданные слайда или заметки редактирования перед отправкой."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Регулярные выражения для редактирования текста"
      content: |
        Научитесь определять и редактировать текст с помощью шаблонного сопоставления.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Загрузите слайд-дек
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Примените свои правила регулярных выражений
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Запустите редактирование
              redactor.apply(redaction);

              // Сохраните окончательную версию
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
    title: "Защита слайдов POWERPOINT с помощью Java"
    exclude: "POWERPOINT"
    description: "Используйте функции редактирования и очистки от Java, чтобы сохранить свои слайды POWERPOINT конфиденциальными."
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