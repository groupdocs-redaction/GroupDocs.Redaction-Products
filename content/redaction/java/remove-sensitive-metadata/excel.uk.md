
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення метаданих з EXCEL за допомогою Java"
head_description: "Захистіть свої документи EXCEL шляхом очищення прихованих метаданих за допомогою GroupDocs.Redaction for Java. Уникайте розкриття приватних даних."

############################# Header ############################
title: "Очистка метаданих у файлах EXCEL за допомогою Java" 
description: "За допомогою Java видаліть чутливі дані з файлів EXCEL. Розумний спосіб зберегти ваші документи в безпеці."
subtitle: "Чому обирати GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам Java інструменти для контролю вмісту у файлах EXCEL. Видалення тексту, метаданих та зображень за потреби.

############################# Steps ############################
steps:
    enable: true
    title: "Як видалити метадані з файлів Excel"
    content: |
      У Java GroupDocs.Redaction спрощує очищення метадантів у документах.
      
      1. Створіть Redactor та завантажте ваш файл Excel.
      2. Установіть правила для видалення прихованих полів.
      3. Запустіть процес очищення.
      4. Збережіть очищений документ.
   
    code:
      platform: "java"
      copy_title: "Копіювати"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Приклад редагувань"
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
        copy_tip: "натисніть, щоб скопіювати"
        copy_done: "скопійовано"
      links:
        #  loop
        - title: "Більше прикладів"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Документація"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Видалити приховані метадані з EXCEL

        // Запустіть редуктора та відкрийте файл
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Установіть параметри для видалення метаданих
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Очисліть і збережіть документ
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Видалення чутливого вмісту з файлів"
  description: "За допомогою GroupDocs.Redaction for Java ви можете видаляти метадані, редагувати текст та маскувати зображення в багатьох типах документів. Чудово підходить для юридичного, особистого або корпоративного використання."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Інструменти для очищення метаданих та вмісту"
  features:
    # feature loop
    - title: "Знайдіть та видаліть текст"
      content: "Шукайте чутливий текст і видаляйте його, щоб захистити інформацію."

    # feature loop
    - title: "Перекриття вмісту зображення"
      content: "Закрийте конфіденційні частини зображення, використовуючи накладки."

    # feature loop
    - title: "Видалення метаданих"
      content: "Видаліть вбудовані деталі, які можуть містити приватні дані."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Сфокусуйтесь на конкретних полях метаданих"
      content: |
        Цей приклад показує, як видалити поля, такі як Автор та Назва, з файлу EXCEL.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте файл у редактор
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Виберіть поле Автор
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Виберіть поле Назва
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Застосуйте редагування
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Збережіть фінальний файл
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Копіювати"
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
          copy_tip: "натисніть, щоб скопіювати"
          copy_done: "скопійовано"
        top_links:
          #  loop
          - title: "Завантажити результат"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Більше прикладів"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Документація"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Готові почати?"
  description: "Спробуйте можливості GroupDocs.Redaction безкоштовно або запитайте ліцензію"
  items:
    #  loop
    - title: "Завантаження Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Ліцензування"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Очищення метаданих у EXCEL за допомогою Java"
    exclude: "EXCEL"
    description: "Використовуйте інструменти Java для видалення прихованих даних з файлів EXCEL. Поділіться чистими, захищеними документами."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати Зображення"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Популярні формати зображень"

        # format loop 6
        - name: "Редагувати Фото"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Формати фото"

        # format loop 7
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Презентація PowerPoint Open XML"

        # format loop 10
        - name: "Редагувати JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Зображення JPEG"


---