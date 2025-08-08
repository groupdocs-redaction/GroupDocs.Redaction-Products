
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: uk
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Приховати зображення у IMAGE з накладками за допомогою Java"
head_description: "Використовуйте GroupDocs.Redaction for Java для маскування чутливих зон зображень у файлах IMAGE з кольоровими накладками. Зберігайте важливі дані в безпеці без зміни макету документа."

############################# Header ############################
title: "Забезпечте приватні зображення у файлах IMAGE за допомогою накладок з Java" 
description: "Забезпечте бізнесові та особисті зображення у файлах IMAGE за допомогою Java. Легкі інструменти для швидкого та надійного захисту даних."
subtitle: "Основні функції GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java дозволяє розробникам Java можливість для приховування або видалення контенту у файлах IMAGE. Захистіть документи, маскуючи текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть вміст у файлах Image з використанням накладок"
    content: |
      Швидко закривайте чутливі зони у ваших додатках Java з GroupDocs.Redaction for Java.
      
      1. Створіть об'єкт Redactor і вкажіть шлях до вашого файлу Image.
      2. Встановіть налаштування редагування за вимогою.
      3. Вкажіть ділянки зображення, які потрібно закрити, та виберіть кольори накладок.
      4. Обробіть і збережіть свій редагований файл.
   
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
        // Приховати вміст зображення у IMAGE

        // Завантажте файл за допомогою Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Налаштуйте розміри та кольори накладок
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Виберіть область, яку потрібно закрити
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
  title: "Редагувати чутливий вміст у документах"
  description: "GroupDocs.Redaction for Java допомагає вам приховати або видалити приватний контент з різних форматів файлів. Забезпечте, щоб документи залишалися чистими та готовими до поширення."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Рівень контролю над редагуванням"
  features:
    # feature loop
    - title: "Шукати та замінювати текст"
      content: "Знайдіть чутливий текст у документах та замініть його для власної безпеки."

    # feature loop
    - title: "Прикривати частини зображення"
      content: "Використовуйте накладки для приховування цілого зображення або вибраних частин."

    # feature loop
    - title: "Прибирати метадані"
      content: "Проводьте чистку або редагування прихованих метаданих, щоб уникнути витоку даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати ділянки зображення за допомогою накладок"
      content: |
        Цей приклад демонструє, як закрити чутливі частини зображення за допомогою накладок.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте файл для редагування
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Визначте розміри, кольори всі накладки
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Обрати область зображення на першій сторінці
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Прикрийте область накладкою
              redactor.apply(redaction);

              // Збережіть модифікований файл
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
    title: "Забезпечте IMAGE файли за допомогою Java редагувань"
    exclude: "IMAGE"
    description: "З Java ви можете легко приховати або видалити чутливий вміст у файлах IMAGE. Надійне рішення для захисту ваших важливих документів."
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