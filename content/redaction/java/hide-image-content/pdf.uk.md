
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Приховування зображень у PDF з накладками за допомогою Java"
head_description: "З GroupDocs.Redaction for Java ви можете приховати приватні зображення у файлах PDF, накладаючи кольорові накладки. Захистіть чутливі візуальні матеріали, зберігаючи дизайн вашого документа."

############################# Header ############################
title: "Приховайте конфіденційні зображення у файлах PDF з накладками за допомогою Java" 
description: "Захистіть особисті та бізнес-дані у файлах PDF за допомогою Java. Наші інструменти роблять редагування зображень простим та ефективним."
subtitle: "Особливості GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java пропонує розробникам Java ефективні інструменти для приховування або стирання вмісту у файлах PDF. Приховуйте текст, зображення та метадані, щоб забезпечити безпеку ваших документів в декількох форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть бізнес-інформацію у файлах Pdf"
    content: |
      GroupDocs.Redaction for Java допомагає вашим додаткам Java забезпечити безпеку документів. Приховуйте приватні зображення у кілька простих кроків.
      
      1. Ініціалізуйте Redactor та вкажіть шлях до вашого файлу Pdf.
      2. Виберіть параметри редагування для досягнення найкращих результатів.
      3. Виберіть область зображення та колір накладки.
      4. Обробіть і збережіть захищений файл.
   
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
        // Приховати чутливі зображення у PDF

        // Завантажте файл з Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Встановіть колір і розміри накладки
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Виберіть область для редагування
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Застосуйте накладку і збережіть файл
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Приховати вміст у документах"
  description: "З GroupDocs.Redaction for Java ви можете приховати або видалити чутливі дані в різних форматах файлів. Захистіть приватну інформацію, зберігаючи файли читабельними та зручними для поширення."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Потужні можливості редагування"
  features:
    # feature loop
    - title: "Редагуйте текст де завгодно"
      content: "Знайдіть і замініть чутливі слова по всьому документу для захисту приватного вмісту."

    # feature loop
    - title: "Приховати зображення"
      content: "Додавайте накладки на зображення або їх частини, щоб зберегти чутливі візуальні матеріали непрозорими."

    # feature loop
    - title: "Очищення метаданих"
      content: "Видалити або редагувати приховані метадані, щоб запобігти ненавмисним витокам інформації."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати дані зображення за допомогою накладок"
      content: |
        Цей приклад демонструє, як приховати конфіденційні візуальні матеріали в документах за допомогою накладок.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте документ для редагування
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Визначте розмір, колір і положення накладки
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Виберіть область зображення для редагування на першій сторінці
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Додайте накладку для приховування чутливих даних
              redactor.apply(redaction);

              // Збережіть оновлений документ
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
    title: "Захистіть файли PDF за допомогою редагувань Java"
    exclude: "PDF"
    description: "Використовуйте Java для приховування або видалення чутливих даних у файлах PDF. Ідеально підходить для захисту офіційних та конфіденційних документів."
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