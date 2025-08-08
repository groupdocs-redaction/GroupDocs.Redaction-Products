
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: uk
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Приховати зображення у PHOTO з накладками за допомогою Java"
head_description: "Використовуйте GroupDocs.Redaction for Java для маскування чутливих зон зображень у файлах PHOTO за допомогою накладок. Захистіть приватний контент, зберігаючи макет файлу незмінним."

############################# Header ############################
title: "Захистіть вміст зображень у PHOTO файлах з накладками за допомогою Java" 
description: "Забезпечте безпеку особистих та бізнес-зображень у PHOTO файлах з Java. Прості інструменти, розроблені для швидкого і ефективного захисту."
subtitle: "Основні функції GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java надає розробникам Java можливість відігривати чи видаляти вміст з PHOTO. Захистіть документи, маскуючи тексти, зображення, та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Приховати вміст у файлах Photo за допомогою накладок"
    content: |
      GroupDocs.Redaction for Java спрощує процес приховування чутливих ділянок у ваших додатках Java.
      
      1. Ініціалізуйте Redactor та завантажте ваш файл Photo.
      2. Встановіть параметри для редагування за потребою.
      3. Обрати ділянки зображення і виберіть кольори накладок.
      4. Процес та збереження файлу.
   
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
        // Закрити частини зображень у PHOTO

        // Завантажте файл через Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Визначте розміри накладки та колір
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Виберіть область, яку потрібно закрити
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Застосуйте накладку та збережіть редагування
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редагуйте чутливий контент у будь-яких документах"
  description: "GroupDocs.Redaction for Java допомагає вам сховати чи видалити приватний вміст у кількох форматах файлів. Забезпечте збереження документів чистими та готовими до обміну."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Інструменти редагування з повним контролем"
  features:
    # feature loop
    - title: "Пошук і заміна тексту"
      content: "Знайдіть чутливий текст у документах і замініть його для захисту інформації."

    # feature loop
    - title: "Закрити зображення накладками"
      content: "Використовуйте накладки для покриття цілого зображення або частин."

    # feature loop
    - title: "Очистка метаданих"
      content: "Очистіть або відредагуйте метадані, щоб уникати витоків даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати дані з накладками"
      content: |
        Цей приклад показує, як закрити зображення у документах накладками.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте документ для редагування
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Визначте розмір, колір та позицію накладки
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Виберіть цільову частину зображення на першій сторінці
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Прикрийте вміст накладкою
              redactor.apply(redaction);

              // Збережіть редагований файл
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
    title: "Забезпечте PHOTO файли з редагувань Java"
    exclude: "PHOTO"
    description: "З Java ви можете сховати або видалити чутливий контент у PHOTO файлах. Надійне рішення для захисту важливих документів."
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