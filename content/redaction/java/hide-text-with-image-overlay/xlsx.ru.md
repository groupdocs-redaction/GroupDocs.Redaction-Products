
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
head_title: "Блокировка текста в XLSX с помощью наложений на Java"
head_description: "GroupDocs.Redaction for Java позволяет вам скрыть конфиденциальную информацию в файлах XLSX с помощью цветных блоков. Скрывайте данные, сохраняя макет без изменений."

############################# Header ############################
title: "Скрытие данных в XLSX с помощью наложений в Java" 
description: "Используйте Java и GroupDocs.Redaction for Java для маскировки личного контента в файлах XLSX без изменения формата."
subtitle: "Основные функции GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Почему GroupDocs.Redaction for Java работает"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java позволяет разработчикам Java защитить файлы XLSX. Быстро скрывайте текст, изображения или метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Защита информации в документах Xlsx"
    content: |
      Держите ваши документы в безопасности, используя простой код с GroupDocs.Redaction for Java в Java.
      
      1. Создайте Redactor с путем к файлу.
      2. Настройте логику редактирования.
      3. Выберите ключевое слово и цвет наложения.
      4. Редактируйте и сохраняйте файл.
   
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
        // Скрытие информации в XLSX с помощью блоков

        // Загрузите файл с помощью Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Настройте параметры редактирования
            // Добавьте текст и цвет для блока
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Сохраните обновленный документ
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Встроенные функции конфиденциальности"
  description: "Используйте GroupDocs.Redaction for Java для блокировки или удаления содержимого в ваших файлах, сохраняя при этом структуру нетронутой."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Простые инструменты конфиденциальности"
  features:
    # feature loop
    - title: "Изменение или скрытие текста"
      content: "Редактируйте или редактируйте конкретные слова быстро."

    # feature loop
    - title: "Маскирование частей изображения"
      content: "Добавляйте наложения, чтобы скрыть фотографии или графические детали."

    # feature loop
    - title: "Удаление скрытой информации"
      content: "Очистите метаданные, такие как информация о пользователе или история файлов."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Используйте регулярные выражения для редактирования содержимого"
      content: |
        Автоматически находите и скрывайте текст с помощью шаблонного соответствия.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте электронную таблицу
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Определите шаблон и цвет наложения
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Примените правила редактирования
              redactor.apply(redaction);

              // Экспортируйте ваш результат
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
    title: "Редактирование данных XLSX с использованием Java"
    exclude: "XLSX"
    description: "Используйте наложения или удаляйте содержимое в XLSX, удерживая конфиденциальные данные под контролем с Java."
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