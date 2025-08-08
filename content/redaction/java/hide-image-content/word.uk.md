
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Приховати зображення у WORD з накладками за допомогою Java"
head_description: "За допомогою GroupDocs.Redaction for Java ви можете закривати чутливі зображення у файлах WORD, використовуючи кольорові накладки. Захищайте приватні дані, не змінюючи макет документа."

############################# Header ############################
title: "Захистіть чутливі зображення у файлах WORD за допомогою Java" 
description: "Забезпечте безпеку особистих та бізнес-візуалів у документах WORD за допомогою Java. Швидка та надійна обробка зображень."
subtitle: "Головні риси GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java дає розробникам Java легкі у використанні інструменти для приховування або видалення вмісту з файлів WORD. Захищайте текст, зображення та метадані в різних форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Залишайте конфіденційні дані безпечними у файлах Word"
    content: |
      GroupDocs.Redaction for Java спрощує завдання вашим додаткам Java для приховування приватної інформації всередині документів.
      
      1. Ініціюйте Redactor і завантажте Word файл.
      2. Визначте необхідні налаштування редагування.
      3. Вирізайте область зображення та оберіть колір накладки.
      4. Запустіть редагування та збережіть оновлений документ.
   
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
        // Заховати чутливі зображення у WORD

        // Завантажте файл за допомогою Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Обрати колір і розмір накладки
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Визначте область зображення для редагування
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
  title: "Інструменти, щоб приховати та видалити вміст"
  description: "GroupDocs.Redaction for Java допомагає вам приховувати або видаляти чутливі дані у різних форматах файлів. Захищайте ваші документи та зберігайте чіткість."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ефективні функції редагування"
  features:
    # feature loop
    - title: "Знайдіть та замініть текст"
      content: "Пошуковий текст в документах та змініть його для забезпечення безпеки даних."

    # feature loop
    - title: "Прикрити області зображень"
      content: "Приховувайте повні зображення або вибрані ділянки нікладками."

    # feature loop
    - title: "Стирайте метадані"
      content: "Видаляйте або модифікуйте приховані метадані для захисту конфіденційності."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використовуйте накладки для приховування даних зображень"
      content: |
        Цей приклад демонструє, як захистити чутливі зображення у документах накладками.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте документ для редагування
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Встановіть властивості накладки, як розмір, положення та колір
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Визначте область зображення на першій сторінці
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Прикрийте область накладкою
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
    title: "Захистіть вміст у файлах WORD за допомогою Java"
    exclude: "WORD"
    description: "Використовуйте Java для приховування або видалення чутливих даних у файлах WORD. Ефективний спосіб зберегти безпечність документів."
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