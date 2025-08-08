
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Приховати текст в DOCX за допомогою накладок у Java"
head_description: "Використовуйте GroupDocs.Redaction for Java, щоб заблокувати приватний текст у файлах DOCX. Зберігайте макет незмінним, приховуючи чутливі дані."

############################# Header ############################
title: "Захистіть текст DOCX за допомогою накладок у Java" 
description: "Швидко приховуйте особисті, юридичні або бізнес-деталі у файлах DOCX за допомогою Java та GroupDocs.Redaction for Java."
subtitle: "Основні інструменти GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java дає розробникам Java інструменти для очищення файлів DOCX. Редагуйте імена, числа або нотатки в комфортному режимі.

############################# Steps ############################
steps:
    enable: true
    title: "Редагуйте чутливий вміст у Docx"
    content: |
      Легко очищайте документи у своєму проекті Java за допомогою GroupDocs.Redaction for Java.
      
      1. Ініціалізуйте Redactor з вашим файлом.
      2. Виберіть, як має працювати редагування.
      3. Виберіть текст для приховування та колір накладки.
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
        // Приховати текст із накладками в DOCX

        // Створіть Redactor та завантажте свій документ
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Виберіть параметри редагування
            // Обрати текст і колір
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Збережіть редаговану версію
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Інструменти редагування для щоденного використання"
  description: "GroupDocs.Redaction for Java надає прості опції для приховування чутливих деталей у документах, зберігаючи їх використання."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Прості варіанти редагування"
  features:
    # feature loop
    - title: "Знайти та змінити текст"
      content: "Приховуйте або замініть слова за лічені секунди."

    # feature loop
    - title: "Блокувати частини зображень"
      content: "Замаскуйте секції малюнків або відсканованого контенту."

    # feature loop
    - title: "Стерти фонову інформацію"
      content: "Видаліть приховані метадані, такі як авторство чи дати."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Знайти текст з регулярними виразами та приховати його"
      content: |
        Використовуйте шаблони для автоматичного приховування ключових фраз
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте документ, який потрібно редагувати
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Встановіть шаблон regex та стиль накладки
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Застосуйте логіку редагування
              redactor.apply(redaction);

              // Збережіть свій очищений документ
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Редагуйте файли DOCX за допомогою Java"
    exclude: "DOCX"
    description: "Захистіть чутливий вміст у DOCX шляхом приховування або видалення його, використовуючи інструменти у Java."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Презентація PowerPoint Open XML"


---