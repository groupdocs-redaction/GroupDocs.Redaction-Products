
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення метаданих з XLSX за допомогою Java"
head_description: "GroupDocs.Redaction for Java допомагає очистити приховані метадані у файлах XLSX. Зберігайте свої документи приватними та без небажаних деталей."

############################# Header ############################
title: "Очистка метаданих з файлів XLSX у Java" 
description: "Використовуйте Java, щоб позбутися особистих або прихованих деталей у ваших документах XLSX. Ідеально підходить для роботи та особистого користування."
subtitle: "Дивіться, що ви можете робити за допомогою GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам Java інструменти для контролю контенту у файлах XLSX. Видалення тексту, метаданих та зображень за потреби.

############################# Steps ############################
steps:
    enable: true
    title: "Видалення метаданих з файлів Xlsx"
    content: |
      GroupDocs.Redaction допомагає вашому проекту Java швидко очищати чутливі метадані.
      
      1. Запустіть Redactor та відкрийте файл Xlsx.
      2. Виберіть, які поля метаданих потрібно видалити.
      3. Запустіть редагування, щоб стерти їх з файлу.
      4. Збережіть очищену версію.
   
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
        // Видалити приховані метадані у файлах XLSX

        // Відкрийте файл за допомогою Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Виберіть поля метаданих для видалення
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Застосуйте редагування та збережіть файл
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Захистіть свої файли, скриваючи чутливу інформацію"
  description: "З GroupDocs.Redaction for Java ви можете очищати особисті дані з кількох типів документів. Простий спосіб зберегти ваші файли в безпеці."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Функції для редагування вмісту"
  features:
    # feature loop
    - title: "Видалити текст"
      content: "Шукайте та видаляйте слова чи фрази, що містять приватні дані."

    # feature loop
    - title: "Закриття зображень"
      content: "Сховати частини зображень, які містять приватні чи чутливі частини."

    # feature loop
    - title: "Видалення метаданих"
      content: "Видалити фонову інформацію, що може розкрити особисті чи корпоративні деталі."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приклад видалення метаданих"
      content: |
        Цей приклад демонструє, як видалити метадані, такі як Автор або Назва з файлу XLSX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте ваш документ
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Виберіть поле Автор для редагування
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Виберіть поле Назва для редагування
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Запустіть інструмент редагування
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Збережіть результат
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
    title: "Очистка метаданих у XLSX за допомогою Java"
    exclude: "XLSX"
    description: "Використовуйте інструменти Java для видалення прихованих даних з файлів XLSX. Поділіться чистими, захищеними документами."
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