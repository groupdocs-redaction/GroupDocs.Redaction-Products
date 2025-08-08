
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ru
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Скрытие текста в PPTX презентациях с помощью наложений на Java"
head_description: "Используйте GroupDocs.Redaction for Java для блокировки конфиденциального содержимого в файлах PPTX с цветными наложениями. Сохраняйте слайды нетронутыми, скрывая ключевую информацию."

############################# Header ############################
title: "Маскировка текста в PPTX презентациях с помощью Java" 
description: "Легко защищайте личные или деловые детали в ваших слайдах PPTX с помощью Java и GroupDocs.Redaction for Java."
subtitle: "Изучите функции GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Что делает GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java позволяет разработчикам Java скрывать или удалять текст, изображения или метаданные в PPTX презентациях всего за несколько шагов.

############################# Steps ############################
steps:
    enable: true
    title: "Редактирование личного содержимого в Pptx слайдах"
    content: |
      GroupDocs.Redaction for Java упрощает защиту контента для разработчиков Java.
      
      1. Настройте Redactor с путем к вашей презентации.
      2. Выберите, как должно работать редактирование.
      3. Добавьте текстовый шаблон и цвет наложения.
      4. Отредактируйте слайд и сохраните его.
   
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
        // Используйте наложения для блокировки текста в PPTX

        // Инициализируйте Redactor с вашей презентацией
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Выберите свои параметры редактирования
            // Установите текст и цвет наложения
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Запустите редактирование и сохраните презентацию
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Мощные инструменты редактирования"
  description: "С помощью GroupDocs.Redaction for Java блокируйте или удаляйте конфиденциальный контент в ваших презентациях, не затрагивая макет или форматирование."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Функции, работающие на разных слайдах"
  features:
    # feature loop
    - title: "Скрыть или заменить текст"
      content: "Защищайте имена, термины или заметки, которые не должны быть видны."

    # feature loop
    - title: "Скрыть визуальные области"
      content: "Добавляйте наложения к фотографиям или графическим участкам слайдов."

    # feature loop
    - title: "Очистка метаданных"
      content: "Стирайте информацию, которая может раскрыть авторство или историю редактирования."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование текста с регулярными выражениями"
      content: |
        Используйте регулярные выражения для поиска и маскировки чувствительных слов.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте файл презентации
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Установите поисковый шаблон и цвет наложения
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Запустите правила редактирования
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
    title: "Защита PPTX слайдов с помощью инструментов Java"
    exclude: "PPTX"
    description: "Закрывайте конфиденциальное содержимое или удаляйте его полностью из PPTX презентаций, используя функции редактирования Java."
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