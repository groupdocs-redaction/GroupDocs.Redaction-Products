
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення метаданих з DOCX за допомогою Java"
head_description: "Використовуйте GroupDocs.Redaction for Java для очищення прихованих метаданих у ваших файлах DOCX. Переконайтесь, що ваші документи не передають приватну інформацію."

############################# Header ############################
title: "Очищення метаданих у документах DOCX за допомогою Java" 
description: "Видаліть небажані метадані з ваших файлів DOCX за допомогою Java. Зберігайте свої файли приватними та захищеними для обміну чи зберігання."
subtitle: "Ключові інструменти всередині GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction допомагає розробникам Java видаляти приватний вміст з файлів DOCX. Легко редагуйте текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Стерти приховану інформацію з файлів Docx"
    content: |
      GroupDocs.Redaction спрощує видалення метаданих у ваших додатках Java.
      
      1. Ініціалізуйте Redactor та завантажте файл Docx.
      2. Налаштуйте інструмент для видалення певних полів метаданих.
      3. Застосуйте редагування для видалення прихованої інформації.
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
        // Видалити метадані з файлів DOCX

        // Відкрийте файл за допомогою Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Виберіть, які метадані слід видалити
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Застосуйте та збережіть зміни
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Захист конфіденційних даних у документах"
  description: "GroupDocs.Redaction for Java дозволяє приховувати приватний вміст з усіх типів файлів. Переконайтесь, що жодні приховані дані не підлягають розповсюдженню."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Інструменти для редагування метаданих, тексту та зображень"
  features:
    # feature loop
    - title: "Редакція тексту"
      content: "Знайдіть та видаліть чутливий текст у вашому документі."

    # feature loop
    - title: "Накладки на зображення"
      content: "Закривайте частини зображень, щоб приховати приватні візуальні елементи."

    # feature loop
    - title: "Очищення метаданих"
      content: "Видалити фонові метадані, які можуть розкрити приховану інформацію."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Як видалити метадані"
      content: |
        Цей приклад демонструє, як видалити приховані властивості, такі як Автор та Назва з файлу DOCX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте ваш документ DOCX
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Виберіть поле Автор для очищення
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Виберіть поле Назва для очищення
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Запустіть редагування
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
    title: "Очистка метаданих з DOCX за допомогою Java"
    exclude: "DOCX"
    description: "Використовуйте Java для видалення прихованих метаданих з документів DOCX. Прекрасно підходить для конфіденційності та захисту даних."
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