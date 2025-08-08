
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ru
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Удалите личный текст из EXCEL с помощью Java"
head_description: "Сохраняйте ваши таблицы EXCEL в безопасности, удаляя конфиденциальное содержимое с помощью GroupDocs.Redaction for Java и Java. Быстрота и простота редактирования."

############################# Header ############################
title: "Редактируйте или удаляйте текст в файлах EXCEL с помощью Java" 
description: "Очистите ваши файлы EXCEL с помощью GroupDocs.Redaction for Java и Java. Отлично подходит для защиты бизнес- или личных данных."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Познакомьтесь с GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java предоставляет разработчикам Java все необходимое для очистки файлов EXCEL. Редактируйте или скрывайте текст, изображения, метаданные и заметки с точностью.

############################# Steps ############################
steps:
    enable: true
    title: "Как удалить содержимое в файлах Excel"
    content: |
      Используйте GroupDocs.Redaction for Java в ваших проектах Java, чтобы удалить или скрыть текст, который вы не хотите делиться.
      
      1. Создайте экземпляр Redactor и загрузите файл Excel.
      2. Выберите свои параметры редактирования.
      3. Определите, что нужно найти и на что поменять.
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
        // Как удалить текст в файле EXCEL

        // Загрузите файл с помощью Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Установите правила редактирования
            // Введите целевой текст и замену
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Примените и сохраните очищенный файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Дополнительные инструменты редактирования"
  description: "GroupDocs.Redaction for Java помогает очищать личное содержимое во многих типах документов. Отлично подходит для приватности до обмена."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Функции редактирования текста, изображений и метаданных"
  features:
    # feature loop
    - title: "Заменить личный текст"
      content: "Находите и изменяйте соответствующие слова или числа по всему файлу. Используйте шаблоны для поиска или точные совпадения."

    # feature loop
    - title: "Скрыть части изображений"
      content: "Добавьте наложения, чтобы скрыть изображения или ячейки. Выбирайте цвета, размеры и позиции."

    # feature loop
    - title: "Удалить фоновую информацию"
      content: "Очистите скрытые данные, такие как авторство, временные метки или комментарии документа."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удаление шаблонов с помощью регулярных выражений"
      content: |
        Используйте регулярные выражения, чтобы находить и скрывать шаблоны, такие как адреса электронной почты или номера счетов.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте файл, который вы хотите очистить
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Создайте правило регулярного выражения EMAIL и установите текст замены
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Запустите процесс редактирования
              redactor.apply(redaction);

              // Сохраните обновленную версию
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
    title: "Редактируйте содержимое в EXCEL с помощью Java"
    exclude: "EXCEL"
    description: "Очистите личные данные из файлов EXCEL с помощью Java. Умный способ обеспечить безопасность ваших таблиц."
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