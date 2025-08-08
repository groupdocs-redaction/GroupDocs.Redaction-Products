
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ru
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Удалите личный текст из XLSX с помощью Java"
head_description: "Сохраняйте ваши данные XLSX в безопасности, удаляя текст и метаданные с помощью GroupDocs.Redaction for Java. Эффективная и надежная защита."

############################# Header ############################
title: "Очистите файлы XLSX с помощью Java" 
description: "Удалите конфиденциальное содержимое из файлов XLSX с помощью Java и GroupDocs.Redaction for Java. Обеспечьте безопасность ваших таблиц."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Почему стоит использовать GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java предоставляет разработчикам Java инструменты для очистки файлов XLSX.Удаляйте текст, метаданные, изображения и многое другое с помощью нескольких строк кода.

############################# Steps ############################
steps:
    enable: true
    title: "Удалите данные из файлов Xlsx"
    content: |
      Используйте GroupDocs.Redaction for Java в любом приложении Java, чтобы удалить текст или скрытое содержимое перед обменом.
      
      1. Создайте экземпляр Redactor и загрузите файл.
      2. Выберите желаемые параметры редактирования.
      3. Выберите текст для поиска и его замену.
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
        // Как удалить текст из таблицы XLSX

        // Создайте экземпляр Redactor и загрузите файл
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // Выберите настройки редактирования
            // Введите текст для поиска и замены
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Примените изменения и сохраните
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Полезные инструменты редактирования"
  description: "GroupDocs.Redaction for Java помогает удалять личное содержимое из различных файлов. Очистите документы, не потеряв форматирование."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Умная защита контента"
  features:
    # feature loop
    - title: "Поиск и замена текста"
      content: "Ищите и обновляйте или скрывайте конфиденциальные данные в ячейках."

    # feature loop
    - title: "Закрытие визуалов"
      content: "Скрывайте графики, изображения или диапазоны с помощью цветных наложений."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удалите информацию об авторе, даты создания и другие фоновый данные."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удаление с использованием регулярных выражений"
      content: |
        Находите и удаляйте значения, такие как номера счетов или шаблоны, используя regex.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте файл для обработки
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // Добавьте правило регулярного выражения EMAIL и замените текст
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Примените правила редактирования
              redactor.apply(redaction);

              // Сохраните обновлённый файл
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
    title: "Редактируйте содержимое в XLSX с помощью Java"
    exclude: "XLSX"
    description: "Очистите и защитите файлы XLSX с помощью функций Java для редактирования и удаления содержимого."
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