
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: uk
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Приховати зображення у JPEG з накладками за допомогою Java"
head_description: "Зберігайте чутливі зображення приватними у JPEG файлах за допомогою GroupDocs.Redaction for Java. Додавайте накладки, щоб приховати інформацію без зміни макету документа."

############################# Header ############################
title: "Приховати чутливі зображення у файлах JPEG з накладками за допомогою Java" 
description: "Захистіть особисті та бізнес-зображення у файлах JPEG за допомогою Java. Простих інструментів для того, щоб допомогти вам безпечно зберігати ваші документи."
subtitle: "Основні функції GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java надає розробникам Java можливість приховувати або стирати контент у JPEG файлах. Захистіть документи, маскуючи текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Приховати приватні дані у файлах Jpeg"
    content: |
      GroupDocs.Redaction for Java робить це швидко для ваших додатків Java покрити приватний контент.
      
      1. Ініціалізуйте Redactor і завантажте ваш файл Jpeg.
      2. Встановіть налаштування редагування відповідно до ваших потреб.
      3. Виберіть область зображення і виберіть колір накладки.
      4. Застосуйте редагування та збережіть файл.
   
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
        // Закрити дані зображень у файлах JPEG

        // Завантажте файл за допомогою Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Встановіть розміри та кольори накладки
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Оберіть дію, яку хочете замаскувати
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Застосуйте накладку та збережіть зміни
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Приховати чутливі дані у документах"
  description: "GroupDocs.Redaction for Java допомагає вам зберегти або видалити приватний вміст з кількох форм ф mhaithreDocumentation. Підтримуйте ваші документи чистими та готовими до розгортання."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Функції редагування з повним контролем"
  features:
    # feature loop
    - title: "Знайти та замінити текст"
      content: "Знайдіть чутливий текст у документах та замініть його, щоб захистити інформацію."

    # feature loop
    - title: "Приховати вміст зображень"
      content: "Застосовуйте накладки для приховування цілого зображення або вибраних частин."

    # feature loop
    - title: "Очистити метадані"
      content: "Очищайте або редагуйте сховані метадані, щоб уникнути витоку даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використовуйте накладки для приховування даних зображення"
      content: |
        Цей приклад демонструє, як приховати чутливі частини зображень у документах з накладками.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте файл для редагування
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Визначте розміри, кольори і положення накладки
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

              // Прикрийте область накладкою
              redactor.apply(redaction);

              // Збережіть оновлений дамп
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
    title: "Надавайте захист JPEG файлам за допомогою редагувань Java"
    exclude: "JPEG"
    description: "Використовуйте Java для приховування або видалення чутливих даних у JPEG файлах. Надійне рішення для захисту важливих документів."
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