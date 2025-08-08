
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Очистка метаданих у PDF за допомогою Java"
head_description: "Використовуйте GroupDocs.Redaction for Java для видалення або оновлення прихованих метаданих у файлах PDF. Видаліть особисту інформацію перед розповсюдженням ваших документів."

############################# Header ############################
title: "Видалення метаданих з файлів PDF за допомогою Java" 
description: "Забезпечте безпеку особистої та бізнесової інформації у ваших файлах PDF за допомогою Java. Простий інструмент, що допомагає захистити ваші дані."
subtitle: "Основні функції GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам Java інструменти для приховування тексту, вмісту зображень та метаданих у файлах PDF.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка метаданих у документах Pdf"
    content: |
      Розпочніть роботу з GroupDocs.Redaction, щоб захистити метадані у ваших проектах Java.
      
      1. Налаштуйте Redactor та відкрийте ваш файл Pdf.
      2. Виберіть, щоб видалити всі поля метаданих.
      3. Запустіть редагування для очищення прихованих даних.
      4. Збережіть файл без метаданих.
   
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
        // Очистіть метадані у файлах PDF

        // Використовуйте Redactor для відкриття файлу
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Налаштуйте параметри очищення метаданих
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Застосуйте і збережіть зміни
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Видалення конфіденційної інформації з файлів"
  description: "GroupDocs.Redaction for Java дозволяє очищати приватний контент у різних форматах документів. Забезпечте безпеку ваших файлів та легкість їх розповсюдження."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Основні функції очищення"
  features:
    # feature loop
    - title: "Редакція тексту"
      content: "Знайдіть та видаліть особисті або чутливі слова у ваших документах."

    # feature loop
    - title: "Закриття зображень"
      content: "Додайте накладки на зображення, щоб приховати приватні візуальні елементи."

    # feature loop
    - title: "Видалення метаданих"
      content: "Стерти приховані метадані, що можуть містити приватну інформацію."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очистка прихованих метаданих"
      content: |
        Цей приклад демонструє, як змінити або видалити метадані у файлах PDF.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте файл PDF за допомогою редуктора
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Виберіть поле метаданих 'Автор'
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Виберіть поле метаданих 'Назва'
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Запустіть очищення метаданих
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
    title: "Захищені файли PDF з метаданми Java"
    exclude: "PDF"
    description: "Стерти приховані поля у ваших файлах PDF за допомогою Java. Захистіть конфіденційність за допомогою простого інструмента очищення метаданих."
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