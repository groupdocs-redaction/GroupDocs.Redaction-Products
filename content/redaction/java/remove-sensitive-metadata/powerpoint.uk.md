
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення метаданих з POWERPOINT за допомогою Java"
head_description: "Використовуйте GroupDocs.Redaction for Java для очищення прихованих метаданих з файлів POWERPOINT та зберігання ваших документів приватними та у безпеці."

############################# Header ############################
title: "Видалення метаданих у POWERPOINT за допомогою Java" 
description: "Захищайте свої файли, використовуючи прості у використанні інструменти, призначені для Java. Видаляйте метадані всього за кілька кроків."
subtitle: "Що ви отримуєте з GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction — це інструмент редагування для розробників Java. Це допомагає вам очищати текст, зображення та метадані в файлах POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Як очищати метадані з файлів Powerpoint"
    content: |
      З GroupDocs.Redaction ваші додатки Java можуть швидко очищати метадані з документів.
      
      1. Створіть об'єкт Redactor та завантажте документ.
      2. Виберіть поля метаданих, які ви хочете видалити.
      3. Застосуйте ваші налаштування редагування.
      4. Експортуйте документ без прихованих даних.
   
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
        // Видалити метадані з файлів POWERPOINT

        // Відкрийте файл з редактором
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Встановіть, які метадані видалити
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Очистіть і збережіть файл
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Зберігайте свої файли у безпеці з редакцією"
  description: "GroupDocs.Redaction for Java допомагає очищати приватний або прихований вміст, щоб документи могли бути безпечно поділені. Підтримує багато типів файлів."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Що можна редагувати"
  features:
    # feature loop
    - title: "Видалення чутливого тексту"
      content: "Знайдіть та видаліть особисті чи конфіденційні слова з ваших файлів."

    # feature loop
    - title: "Закриття областей зображень"
      content: "Закрийте частини зображень, які не повинні бути видимими."

    # feature loop
    - title: "Очистка метаданих"
      content: "Видаліть поля, які можуть розкрити приховані деталі."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Видалення прихованих полів метаданих"
      content: |
        Цей приклад демонструє, як очистити вбудовану інформацію, таку як Автор і Заголовок з документа POWERPOINT.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте файл з редактором
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Видаліть поле автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Видаліть поле заголовка
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Застосуйте редагування
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Збережіть оновлений документ
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
    title: "Очищення метаданих POWERPOINT в Java"
    exclude: "POWERPOINT"
    description: "Використовуйте Java для видалення приватних даних з POWERPOINT. Ідеально для очищення та обміну чутливими документами."
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