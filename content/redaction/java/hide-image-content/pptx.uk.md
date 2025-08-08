
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Приховати зображення у PPTX з накладками за допомогою Java"
head_description: "З GroupDocs.Redaction for Java ви можете приховати чутливі зображення у файлах PPTX, додаючи кольорові накладки. Захистіть конфіденційні дані, зберігаючи макет документа незмінним."

############################# Header ############################
title: "Приховати чутливі зображення у документах PPTX за допомогою Java" 
description: "Захистіть особисті та бізнес-дані у файлах PPTX за допомогою Java. Наші інструменти роблять редагування зображень швидким та простим."
subtitle: "Ключові переваги GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java пропонує розробникам Java практичні інструменти для приховування або видалення чутливих вмістів у файлах PPTX. Перекривайте текст, зображення та метадані через різні формати документів.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть приватні дані у документах Pptx"
    content: |
      GroupDocs.Redaction for Java спрощує завдання вашим додаткам Java для захисту документів, приховуючи чутливий контент.
      
      1. Ініціюйте Redactor і завантажте файл Pptx.
      2. Встановіть параметри редагування відповідно до ваших потреб.
      3. Виберіть зображення області та визначте кольори накладок.
      4. Застосуйте редагування та збережіть оновлений файл.
   
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
        // Приховати чутливі ділянки зображень у PPTX

        // Відкрийте документ за допомогою Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Обрати колір та розмір накладки
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Виділити область для маскування
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Застосуйте та збережіть документ
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Інструменти редагування вмісту"
  description: "GroupDocs.Redaction for Java допомагає вам приховувати або видаляти чутливу інформацію у багатьох форматах файлів. Зберігайте документи безпечними, зберігаючи професійний вигляд."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Розширені можливості редагування"
  features:
    # feature loop
    - title: "Знайти і замінити текст"
      content: "Швидко шукайте приватний текст та редагуйте його, щоб забезпечити конфіденційність документів."

    # feature loop
    - title: "Закрити зображення накладками"
      content: "Приховати повні зображення або вибрані області, застосовуючи накладки."

    # feature loop
    - title: "Очистити метадані"
      content: "Видаляти або редагувати приховані метадані, щоб запобігти поширенню конфіденційної інформації."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати дані зображення за допомогою накладок"
      content: |
        Цей приклад показує, як приховати чутливі зображення у ваших документах.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте документ
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Визначте розмір, колір і положення накладки
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Виберіть область зображення на першій сторінці
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Застосуйте накладку, щоб закрити її
              redactor.apply(redaction);

              // Збережіть редагований документ
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Редагувати PPTX вміст за допомогою Java"
    exclude: "PPTX"
    description: "З використанням Java ви можете приховати або видалити чутливі дані у файлах PPTX. Надійне рішення для захисту документів."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати Зображення"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Популярні формати зображень"

        # format loop 6
        - name: "Редагувати Фото"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Формати фото"

        # format loop 7
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "Презентація PowerPoint Open XML"

        # format loop 10
        - name: "Редагувати JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "Зображення JPEG"


---