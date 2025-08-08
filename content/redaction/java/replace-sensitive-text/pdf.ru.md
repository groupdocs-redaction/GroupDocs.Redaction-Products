
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ru
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Удалите конфиденциальный текст в PDF с помощью Java"
head_description: "Используйте GroupDocs.Redaction for Java, чтобы найти и удалить личные данные из ваших файлов PDF. Надежная, быстрая и простая обработка текста."

############################# Header ############################
title: "Удалите конфиденциальные данные из файлов PDF с помощью Java" 
description: "Очистите файлы PDF с помощью Java и GroupDocs.Redaction for Java. Удалите личные, юридические или деловые сведения."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java предоставляет разработчикам Java простой способ очистки файлов PDF. Удаляйте или заменяйте текст, изображения, комментарии и скрытые данные.

############################# Steps ############################
steps:
    enable: true
    title: "Как удалить текст в файлах Pdf"
    content: |
      С помощью GroupDocs.Redaction for Java разработчики Java могут удалять конфиденциальное содержимое всего за несколько шагов.
      
      1. Создайте экземпляр Redactor и загрузите ваш файл Pdf.
      2. Выберите желаемые параметры редактирования.
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
        // Как очистить файл PDF

        // Создайте экземпляр Redactor и загрузите документ
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Настройте ваши правила редактирования
            // Добавьте текст для удаления и его замену
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Примените редактирование и сохраните новый файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Дополнительные функции редактирования"
  description: "GroupDocs.Redaction for Java удаляет конфиденциальную информацию во множестве форматов. Редактируйте текст, изображения и метаданные, сохраняя читаемость файлов."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Инструменты для редактирования текста и изображений"
  features:
    # feature loop
    - title: "Поиск и замена текста"
      content: "Ищите любые слова или фразы и заменяйте их. Работает с простым текстом или регулярными выражениями."

    # feature loop
    - title: "Закрытие содержимого изображений"
      content: "Скрывайте изображения или части изображений с помощью цветных наложений."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удалите имена авторов, даты или другие скрытые детали перед обменом."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Удаление текста с помощью регулярных выражений"
      content: |
        Используйте регулярные выражения, чтобы найти и скрыть шаблоны, такие как электронные адреса, идентификаторы или пользовательские форматы.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте документ, который хотите редактировать
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Добавьте регулярное выражение EMAIL и текст замены
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Примените редактирование к совпадающему содержимому
              redactor.apply(redaction);

              // Сохраните отредактированную версию
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
    title: "Редактируйте файлы PDF с помощью Java"
    exclude: "PDF"
    description: "Защитите личную или деловую информацию, редактируя содержимое PDF с помощью инструментов от Java."
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