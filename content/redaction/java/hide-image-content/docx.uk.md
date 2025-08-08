
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Приховати зображення у DOCX з накладками за допомогою Java"
head_description: "З GroupDocs.Redaction for Java ви можете приховати чутливі зображення у файлах DOCX, застосовуючи кольорові накладки. Захистіть приватну інформацію, не змінюючи макет документа."

############################# Header ############################
title: "Приховати конфіденційні зображення у документах DOCX з накладками за допомогою Java" 
description: "Захистіть бізнес-дані та особисту інформацію у файлах DOCX за допомогою Java. Наші інструменти допоможуть зберегти чутливу інформацію в безпеці та ваше документи в чистоті."
subtitle: "Ключові особливості GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java надає розробникам Java інструменти для приховування або видалення вмісту у файлах DOCX. Захистіть текст, зображення та метадані у різних форматах документів.

############################# Steps ############################
steps:
    enable: true
    title: "Забезпечте дані у документах Docx"
    content: |
      GroupDocs.Redaction for Java надає вашим додаткам Java можливість редагувати документи. Швидко і ефективно приховуйте приватний вміст.
      
      1. Створіть Redactor і вкажіть шлях до вашого документа Docx.
      2. Регулюйте налаштування редагування відповідно до ваших потреб.
      3. Виберіть область зображення, яку потрібно накрити, і оберіть колір накладки.
      4. Запустіть процес редагування та збережіть файл.
   
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
        // Сховати чутливі ділянки зображень у DOCX

        // Завантажте документ за допомогою Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Встановіть колір і розмір накладки
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Визначте область для редагування
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Застосуйте накладку та збережіть файл
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Приховати чутливий вміст у файлах"
  description: "З GroupDocs.Redaction for Java ви можете швидко редагувати або видаляти вміст з кількох типів файлів. Зберігайте ваші документи безпечними та читабельними."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Функції редагування для документів"
  features:
    # feature loop
    - title: "Редагувати текстовий контент"
      content: "Знайдіть і замініть чутливий текст у ваших файлах для збереження конфіденційності даних."

    # feature loop
    - title: "Накладка на зображення"
      content: "Сховати цілі зображення або вибрані частини, щоб приховати конфіденційну візуальну інформацію."

    # feature loop
    - title: "Видалити метадані"
      content: "Очисити сховані метадані з документів, щоб запобігти витоку даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Накладка на зображення, щоб приховати чутливі дані"
      content: |
        Цей приклад показує, як застосувати накладки для приховування чутливих ділянок зображень у документах.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте документ для редагування
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Встановіть розмір, колір і положення накладки
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Виберіть цільову область на першій сторінці
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Застосуйте накладку для приховування зображення
              redactor.apply(redaction);

              // Збережіть редактований документ
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
    title: "Редагувати файли DOCX за допомогою Java"
    exclude: "DOCX"
    description: "Використовуйте Java для приховування або видалення приватних даних у файлах DOCX. Ідеально підходить для збереження бізнесових та конфіденційних документів у безпеці."
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