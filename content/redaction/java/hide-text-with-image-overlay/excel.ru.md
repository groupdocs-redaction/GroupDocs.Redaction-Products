
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ru
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Скрытие текста в EXCEL с наложениями и Java"
head_description: "Защищайте конфиденциальное содержимое в файлаEXCEL с помощью цветных наложений, используя GroupDocs.Redaction for Java. Сохраните макет документа без изменений."

############################# Header ############################
title: "Редактирование данных EXCEL с помощью наложений в Java" 
description: "Используйте код Java для маскировки конфиденциальной информации в электронных таблицах EXCEL. Эффективный способ сохранить данные конфиденциальными."
subtitle: "Ключевые функции GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Почему стоит выбрать GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java предназначен для разработчиков Java, которым необходимо быстро скрывать или очищать содержимое в электронной таблице EXCEL.

############################# Steps ############################
steps:
    enable: true
    title: "Скрытие информации в электронных таблицах Excel"
    content: |
      GroupDocs.Redaction for Java помогает разработчикам Java защитить файлы, скрывая личную информацию всего за несколько строк.
      
      1. Запустите Redactor и загрузите вашу электронную таблицу.
      2. Настройте правила редактирования по мере необходимости.
      3. Выберите текст и цвет наложения.
      4. Примените и сохраните файл.
   
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
        // Используйте наложения для скрытия текста в EXCEL

        // Создайте Redactor и загрузите ваш файл
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Выберите правила редактирования
            // Укажите, что скрыть, и выберите цвет
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Примените редактирование и сохраните файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Основные инструменты защиты данных"
  description: "Скрывайте или удаляйте конфиденциальную информацию из своих электронных таблиц, не нарушая макет или значение с GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Разработано для безопасной очистки данных"
  features:
    # feature loop
    - title: "Редактировать или скрывать текст"
      content: "Найдите и закройте любой текст, который нуждается в защите."

    # feature loop
    - title: "Скрытие чувствительных визуалов"
      content: "Применяйте цветные блоки к областям диаграмм или изображениям."

    # feature loop
    - title: "Удаление метаданных"
      content: "Очистите историю документа, имена авторов или временные метки."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование с помощью регулярных выражений"
      content: |
        Используйте регулярные выражения для автоматического поиска и скрытия текста.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте свою электронную таблицу
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Установите шаблон и детали наложения
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Примените редактирование
              redactor.apply(redaction);

              // Сохраните очищенную версию
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
    title: "Редактирование листов EXCEL с помощью Java"
    exclude: "EXCEL"
    description: "Скрывайте или очищайте конфиденциальные данные в EXCEL с помощью наложений и инструментов Java."
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