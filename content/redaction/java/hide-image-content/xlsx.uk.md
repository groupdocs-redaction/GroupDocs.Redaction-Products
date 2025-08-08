
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Приховати зображення у файлах XLSX з накладками за допомогою Java"
head_description: "З GroupDocs.Redaction for Java можна приховати чутливі зображення у файлах XLSX, додавши кольорові накладки. Захистіть важливі дані, зберігаючи структуру вашого документа незмінною."

############################# Header ############################
title: "Приховати приватні зображення у документах XLSX за допомогою Java" 
description: "Зберігайте чутливий вміст зображень у файлах XLSX безкоштовно, за допомогою Java.</br> Наші легкі у використанні інструменти забезпечують швидку та надійну обробку зображень."
subtitle: "Ключові особливості GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java надає розробникам Java прості інструменти для приховування або видалення чутливих вмістів з файлів XLSX. Редагуйте текст, зображення та метадані в різних типах документів.

############################# Steps ############################
steps:
    enable: true
    title: "Забезпечте приватні дані у документах Xlsx"
    content: |
      GroupDocs.Redaction for Java дозволяє вашим додаткам Java захищати документи простими кроками.
      
      1. Ініціалізуйте Redactor і завантажте ваш документ Xlsx.
      2. Установіть параметри редагування відповідно до вашого проекту.
      3. Виберіть недоступну частину зображення і оберіть кольор накладки.
      4. Застосуйте редагування та збережіть ваш файл.
   
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
        // Приховати чутливі частини зображень у XLSX

        // Створіть Redactor з шляхом до файлу
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Виберіть розміри накладки та колір
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Визначте область для редагування
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Застосуйте накладку та збережіть документ
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Складні можливості редагування"
  description: "З GroupDocs.Redaction for Java ви можете приховувати або видаляти чутливий контент у різних типах файлів в той же час, зберігаючи макет документа в чистоті та читабельності."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Потужні інструменти редагування"
  features:
    # feature loop
    - title: "Знайти та замінити текст"
      content: "Шукайте приватний текст і редагуйте його, щоб забезпечити безпеку ваших документів."

    # feature loop
    - title: "Приховувати вміст зображення"
      content: "Застосовуйте накладки для приховування конфіденційних зображень або конкретних секцій."

    # feature loop
    - title: "Очищення прихованих метаданих"
      content: "Видаляйте або оновлюйте метадані, щоб уникнути випадкового поширення даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати деталі зображення за допомогою накладок"
      content: |
        Дізнайтеся, як захистити чутливі частини зображень у ваших документах з накладками.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте документ для редагування
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Встановіть розміри, колір і положення накладки
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Виберіть специфічну частину зображення
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Застосуйте накладку для маскування зображення
              redactor.apply(redaction);

              // Збережіть оновлений файл
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
    title: "Приховати вміст у файлах XLSX за допомогою редагувань Java"
    exclude: "XLSX"
    description: "Використовуйте Java для маскування або видалення приватної інформації у файлах XLSX. Зручний спосіб забезпечити конфіденційність документів."
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