
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ru
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Скрытие текста в DOCX с помощью наложений на Java"
head_description: "Используйте GroupDocs.Redaction for Java для блокировки личного текста в файлах DOCX. Сохраните макет нетронутым, скрывая конфиденциальные данные."

############################# Header ############################
title: "Защита текста DOCX с помощью наложений в Java" 
description: "Быстро скрывайте личные, юридические или деловые детали в файлах DOCX с помощью Java и GroupDocs.Redaction for Java."
subtitle: "Ключевые инструменты в GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java дает разработчикам Java инструменты для очистки файлов DOCX. Редактируйте имена, номера или заметки эффективно.

############################# Steps ############################
steps:
    enable: true
    title: "Редактирование конфиденциального содержимого в Docx"
    content: |
      Эффективно очищайте документы в вашем проекте Java с помощью GroupDocs.Redaction for Java.
      
      1. Инициализируйте Redactor с вашим файлом.
      2. Выберите, как должно работать редактирование.
      3. Выберите текст для скрытия и цвет наложения.
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
        // Скрытие текста с помощью наложений в DOCX

        // Создайте Redactor и загрузите ваш документ
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Выберите параметры редактирования
            // Выберите текст и цвет
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Сохраните отредактированную версию
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Инструменты редактирования для повседневного использования"
  description: "GroupDocs.Redaction for Java предоставляет вам простые варианты для скрытия конфиденциальных деталей по документам, оставаясь при этом функциональным."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Простые варианты редактирования"
  features:
    # feature loop
    - title: "Поиск и изменение текста"
      content: "Скрывайте или заменяйте слова за считанные секунды."

    # feature loop
    - title: "Блокировка частей изображений"
      content: "Маскируйте участки фотографий или отсканированного контента."

    # feature loop
    - title: "Удаление фоновой информации"
      content: "Удаляйте скрытые метаданные, такие как авторство или даты."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Поиск текста с помощью регулярных выражений и его скрытие"
      content: |
        Используйте шаблонное совпадение для автоматического скрытия ключевых фраз.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Откройте документ, который хотите отредактировать
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Установите регулярный шаблон и стиль наложения
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Примените логику редактирования
              redactor.apply(redaction);

              // Сохраните очищенный документ
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
    title: "Редактирование файлов DOCX с использованием Java"
    exclude: "DOCX"
    description: "Защищайте конфиденциальное содержимое в DOCX с помощью инструментов Java по скрытию или удалению."
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