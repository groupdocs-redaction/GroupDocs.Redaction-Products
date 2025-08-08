
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення прихованих метаданих у IMAGE за допомогою Java"
head_description: "Використовуйте GroupDocs.Redaction for Java для очищення метаданих у файлах IMAGE. Забезпечте, щоб приватна інформація залишалася прихованою."

############################# Header ############################
title: "Очистка метаданих з файлів IMAGE за допомогою Java" 
description: "Забезпечте безпеку ваших документів IMAGE, використовуючи інструменти, створені для Java. Видаліть чутливі деталі без зайвих зусиль."
subtitle: "Що ви можете зробити за допомогою GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction дозволяє розробникам Java видаляти чутливий вміст — включаючи текст, зображення та метадані — з файлів IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Як очистити метадані у файлах Image"
    content: |
      Почніть використовувати GroupDocs.Redaction у вашому додатку Java для швидкого видалення прихованих метаданих.
      
      1. Створіть Redactor та відкрийте ваш документ Image.
      2. Виберіть поля метаданих для видалення.
      3. Застосуйте налаштування редагування.
      4. Збережіть очищений файл.
   
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
        // Очистіть приховані метадані з IMAGE

        // Завантажте ваш файл з Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Виберіть поля метаданих, які потрібно видалити
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Застосуйте зміни та збережіть
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Очищення вмісту в будь-якому файлі"
  description: "GroupDocs.Redaction for Java допомагає видаляти приватний текст, приховані деталі зображень та метадані з ваших документів перед їх розповсюдженням."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Основні функції"
  features:
    # feature loop
    - title: "Очищення тексту"
      content: "Шукайте приватні слова або цифри та безпечно їх видаліть."

    # feature loop
    - title: "Закриття областей зображень"
      content: "Приховуйте чутливі частини зображень, використовуючи накладки."

    # feature loop
    - title: "Видалення метаданих"
      content: "Очистіть поля метаданих, які можуть містити приватну інформацію."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Видалення чутливих метаданих"
      content: |
        Цей посібник показує, як очистити поля, такі як Автор та Заголовок, з документа IMAGE.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте IMAGE в редакторі
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Виберіть метадані автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Виберіть метадані заголовка
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Застосуйте редакцію
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
    title: "Очистка метаданих у IMAGE за допомогою Java"
    exclude: "IMAGE"
    description: "Використовуйте Java, щоб стерти приховані дані у файлах IMAGE. Чудово для очищення документів перед їх розповсюдженням або архівуванням."
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