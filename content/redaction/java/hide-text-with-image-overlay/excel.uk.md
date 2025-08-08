
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Закрийте текст у EXCEL за допомогою накладок і Java"
head_description: "Захистіть чутливий контент в файлах EXCEL, застосувавши кольорові накладки за допомогою GroupDocs.Redaction for Java. Зберігайте макет документа незмінним."

############################# Header ############################
title: "Редагуйте дані EXCEL за допомогою накладок у Java" 
description: "Використовуйте код Java, щоб замаскувати чутливу інформацію у електронних таблицях EXCEL. Ефективний спосіб зберегти дані приватними."
subtitle: "Основні можливості GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Чому обрати GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java створено для розробників Java, які хочуть швидко приховати чи очистити вміст у електронних таблицях EXCEL.

############################# Steps ############################
steps:
    enable: true
    title: "Приховати інформацію в електронних таблицях Excel"
    content: |
      GroupDocs.Redaction for Java допомагає розробникам Java захистити файли, приховуючи приватну інформацію всього за кілька рядків коду.
      
      1. Запустіть Redactor та завантажте свою електронну таблицю.
      2. Налаштуйте правила редагування за необхідністю.
      3. Виберіть текст і колір накладки.
      4. Застосуйте та збережіть файл.
   
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
        // Використовуйте накладки, щоб приховати текст у EXCEL

        // Створіть Redactor та завантажте свій файл
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Виберіть правила редагування
            // Введіть, що потрібно приховати, та виберіть колір
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Застосуйте редагування та збережіть файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Основні інструменти захисту даних"
  description: "Приховуйте або видаляйте чутливу інформацію з ваших таблиць без порушення макета чи значення, використовуючи GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Розроблено для очищення даних у безпеці"
  features:
    # feature loop
    - title: "Редагувати або приховати текст"
      content: "Знайдіть та закрийте будь-який текст, який потребує захисту."

    # feature loop
    - title: "Приховати чутливі візуали"
      content: "Застосуйте кольорові блоки над ділянками графіків або зображень."

    # feature loop
    - title: "Видалити метадані"
      content: "Очистіть історію документа, імена авторів або часові мітки."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування за допомогою регулярних виразів"
      content: |
        Використовуйте regex, щоб знайти та приховати текст автоматично
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте свою електронну таблицю
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Встановіть шаблон і деталі накладки
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Застосуйте редагування
              redactor.apply(redaction);

              // Збережіть очищену версію
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
    title: "Редагуйте листи EXCEL за допомогою Java"
    exclude: "EXCEL"
    description: "Приховуйте або очищайте чутливі дані у EXCEL за допомогою накладок і інструментів Java."
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