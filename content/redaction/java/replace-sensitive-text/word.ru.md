
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ru
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Удалите личный текст из WORD с помощью Java"
head_description: "Сохраняйте ваши файлы WORD в безопасности, редактируя конфиденциальные данные с помощью GroupDocs.Redaction for Java и Java. Быстрая и простая чистка."

############################# Header ############################
title: "Редактируйте или удаляйте текст в файлах WORD с помощью Java" 
description: "Защитите важное содержимое в ваших файлах WORD с помощью GroupDocs.Redaction for Java и Java. Удаляйте данные бизнеса, юриспруденции или личные данные с уверенностью."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java предоставляет разработчикам Java надежный способ редактирования файлов WORD. Очищайте текст, изображения, комментарии и скрытые детали всего за несколько строк кода.

############################# Steps ############################
steps:
    enable: true
    title: "Шаги для редактирования документов Word"
    content: |
      Используйте GroupDocs.Redaction for Java в ваших проектах Java, чтобы очищать файлы перед тем, как делиться ими.
      
      1. Создайте экземпляр Redactor и загрузите документ Word.
      2. Установите предпочитаемые параметры редактирования.
      3. Выберите текст, который хотите найти и заменить.
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
        // Редактирование документа WORD

        // Загрузите файл с помощью Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Выберите свои правила редактирования
            // Введите текст для поиска и замены
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Запустите редактирование и сохраните новый файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Дополнительные функции редактирования"
  description: "GroupDocs.Redaction for Java поможет вам очистить конфиденциальные сведения из различных типов файлов. Удаляйте текст, изображения и скрытые метаданные быстро."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Редактируйте текст, изображения и метаданные"
  features:
    # feature loop
    - title: "Поиск и замена текста"
      content: "Находите конкретное содержимое и заменяйте или удаляйте его по всему файлу. Поддержка регулярных выражений."

    # feature loop
    - title: "Закрыть части страниц"
      content: "Используйте наложения, чтобы скрывать фотографии или разделы документа."

    # feature loop
    - title: "Очистка метаданных"
      content: "Стирайте лишнюю информацию, такую как автор, временные метки или отследованные изменения."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование с помощью регулярных выражений"
      content: |
        Ищите текст с использованием регулярных выражений для скрытия таких содержимого, как номера телефонов, даты или идентификаторы.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Загрузите свой документ
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Установите регулярное выражение EMAIL и значение замены
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Примените редактирование
              redactor.apply(redaction);

              // Сохраните обновленный документ
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
    title: "Редактируйте содержимое в WORD с помощью Java"
    exclude: "WORD"
    description: "Скрывайте или удаляйте личное и конфиденциальное содержимое из документов WORD с помощью Java. Простой способ защитить ваши файлы."
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