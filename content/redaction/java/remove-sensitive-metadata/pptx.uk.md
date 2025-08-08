
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення метаданих з файлів PPTX за допомогою Java"
head_description: "Використовуйте GroupDocs.Redaction for Java для видалення або редагування прихованих метаданих у ваших файлах PPTX. Захистіть свій вміст та зберігайте ваші документи чистими."

############################# Header ############################
title: "Очистка метаданих у PPTX за допомогою інструментів Java" 
description: "Очистіть особисті дані, що зберігаються у метаданих, за допомогою Java. Прекрасно підходить як для особистих, так і для бізнес-документів."
subtitle: "Ключові функції GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction є інструментом редагування для розробників Java. Він допомагає вам очищати текст, зображення та метадані у файлах PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Видалення метаданих у файлах Pptx"
    content: |
      За допомогою GroupDocs.Redaction ваші проекти Java можуть очищати приховані метадані всього за кілька кроків.
      
      1. Налаштуйте Redactor та завантажте ваш файл Pptx.
      2. Виберіть, які поля метаданих слід очистити.
      3. Запустіть процес редагування.
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
        // Видалити метадані з PPTX

        // Використовуйте Redactor для відкриття файлу
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Налаштуйте поля метаданих для видалення
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
  title: "Додаткові інструменти редагування, які ви можете використовувати"
  description: "GroupDocs.Redaction for Java допомагає очищати чутливу інформацію з усіх основних типів файлів. Зберігайте документи чистими і готовими до обміну."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Функції конфіденційності, закладені в продукті"
  features:
    # feature loop
    - title: "Видалення чутливого тексту"
      content: "Знайдіть і видаліть імена, електронні адреси та іншу персональну інформацію з ваших файлів."

    # feature loop
    - title: "Приховування частин зображень"
      content: "Додайте накладки, щоб закрити області в зображеннях, які ви хочете зберегти приватними."

    # feature loop
    - title: "Очищення метаданих"
      content: "Стерти фонові дані, такі як автор або заголовок, перед розповсюдженням ваших файлів."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приклад видалення метаданих"
      content: |
        Цей приклад показує, як можна видалити метадані, такі як автор та заголовок з документа PPTX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте ваш файл PPTX
          final Redactor redactor = new Redactor("source.pptx");
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

              // Застосуйте правила редагування
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Збережіть очищений файл
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
    title: "Видалення метаданих з PPTX за допомогою Java"
    exclude: "PPTX"
    description: "Java робить простим видалення прихованих даних у файлах PPTX. Чудово для збереження документів у безпеці перед обміном."
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