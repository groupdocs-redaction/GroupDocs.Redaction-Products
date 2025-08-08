
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ru
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Удалите личный текст из DOCX с помощью Java"
head_description: "Защитите содержимое в ваших файлах DOCX с помощью GroupDocs.Redaction for Java. Быстрое и надежное редактирование текста, изображений и метаданных."

############################# Header ############################
title: "Редактируйте или удаляйте текст в документах DOCX с помощью Java" 
description: "Защитите личное или деловое содержимое в ваших файлах DOCX с помощью Java и GroupDocs.Redaction for Java."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java помогает разработчикам Java очищать и редактировать файлы DOCX. Удаляйте текст, изображения, комментарии и скрытые данные.

############################# Steps ############################
steps:
    enable: true
    title: "Как удалить содержимое в файлах Docx"
    content: |
      Используйте GroupDocs.Redaction for Java в своих проектах Java, чтобы очистить файлы перед обменом.
      
      1. Создайте экземпляр Redactor и загрузите файл.
      2. Выберите ваши параметры редактирования.
      3. Введите текст для поиска и его замену.
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
        // Редактирование содержимого в файле DOCX

        // Загрузите документ с помощью Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Настройте параметры редактирования
            // Определите, что нужно найти и чем заменить
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Примените редактирование и сохраните
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Параметры редактирования"
  description: "GroupDocs.Redaction for Java позволяет очищать конфиденциальное содержимое из многих типов файлов. Сохраняйте безопасность своих документов, не теряя структуры."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Инструменты для удаления содержимого"
  features:
    # feature loop
    - title: "Замена текста"
      content: "Ищите конкретное содержимое и заменяйте его по всему документу."

    # feature loop
    - title: "Скрыть изображения или части"
      content: "Закрывайте конфиденциальные визуальные материалы с помощью цветных наложений."

    # feature loop
    - title: "Удаление скрытых данных"
      content: "Очистите метаданные, такие как имена авторов, временные метки или свойства документа."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование с использованием регулярных выражений"
      content: |
        Используйте регулярные выражения для обнаружения и удаления шаблонов, таких как номера телефонов или электронные адреса.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Загрузите документ
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Установите регулярное выражение EMAIL и текст замены
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Запустите редактирование
              redactor.apply(redaction);

              // Сохраните очищенный файл
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Очистите файлы DOCX с помощью Java"
    exclude: "DOCX"
    description: "Редактируйте или заменяйте конфиденциальное содержимое в документах DOCX с использованием инструментов, предоставленных Java."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Презентация PowerPoint Open XML"


---