
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення метаданих з WORD за допомогою Java"
head_description: "З GroupDocs.Redaction for Java ви можете швидко видалити приховані метадані з файлів WORD. Зберігайте свої документи безпечними та приватними."

############################# Header ############################
title: "Очистка прихованих метаданих у файлах WORD за допомогою Java" 
description: "Захистіть свої файли WORD, видаляючи приватну інформацію за допомогою інструментів Java. Чудово підходить для бізнесу та особистого використання."
subtitle: "Як GroupDocs.Redaction for Java допомагає вам" 

############################# About ############################
about:
    enable: true
    title: "Дізнайтеся про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам Java все необхідне для видалення даних з файлів WORD. Очищайте метадані, текст та зображення з легкістю.

############################# Steps ############################
steps:
    enable: true
    title: "Очистка метаданих у файлах Word"
    content: |
      Використовуйте GroupDocs.Redaction для очищення метаданих з документів у ваших додатках Java.
      
      1. Створіть об'єкт Redactor та завантажте ваш файл Word.
      2. Визначте правила для видалення прихованих полів метаданих.
      3. Застосуйте редагування для очищення метаданих.
      4. Збережіть оновлений файл.
   
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
        // Видалити приховані метадані з WORD

        // Завантажте файл за допомогою Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Налаштуйте параметри редагування метаданих
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Запустіть редагування та збережіть
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше інструментів для видалення приватної інформації"
  description: "Використовуйте GroupDocs.Redaction for Java, щоб очищати текст, зображення та метадані з багатьох форматів файлів. Поділіться своїми файлами, не розкриваючи чутливі дані."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Функції редагування метаданих та вмісту"
  features:
    # feature loop
    - title: "Видалити приватний текст"
      content: "ШукайтеSensitive content in files and remove or change it as needed."

    # feature loop
    - title: "Перекриття зображень"
      content: "Закрийте конкретні частини зображень, що можуть містити приватні деталі."

    # feature loop
    - title: "Видалення полів метаданих"
      content: "Видаліть приховані теги, такі як автор, заголовок та більше, щоб забезпечити конфіденційність."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очищення полів метаданих у документах"
      content: |
        Цей приклад пояснює, як стерти метадані, такі як Автор та Назва, у файлі WORD.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте файл для обробки
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Стерти поле Автор
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Стерти поле Назва
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Виконати редагування
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Зберегти очищений файл
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
    title: "Стерти метадані в WORD за допомогою Java"
    exclude: "WORD"
    description: "Java дозволяє очищати приховані метадані з файлів WORD. Простий спосіб захистити ваші документи."
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