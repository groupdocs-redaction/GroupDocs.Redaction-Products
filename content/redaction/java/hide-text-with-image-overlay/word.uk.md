
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Редагувати текст в WORD за допомогою накладок від Java"
head_description: "Використовуйте GroupDocs.Redaction for Java, щоб закривати чутливий текст у файлах WORD кольоровими блоками, зберігаючи структуру документа незмінною."

############################# Header ############################
title: "Редагування накладок у файлах WORD за допомогою Java" 
description: "Приховуйте важливі деталі у ваших документах WORD за допомогою кольорових накладок, які реалізовані на базі Java та GroupDocs.Redaction for Java."
subtitle: "Що може GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Знайомтеся з GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java надає користувачам Java повний контроль над редагуванням WORD. Приховуйте все, що потрібно — текст, візуали або метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть приватну інформацію у форматі Word"
    content: |
      GroupDocs.Redaction for Java надає розробникам Java швидкі способи очищення файлів і забезпечення їх вмісту.
      
      1. Запустіть Redactor і завантажте файл Word.
      2. Виберіть свої налаштування редагування.
      3. Додайте шаблон тексту і колір накладки.
      4. Запустіть редагування та збережіть файл.
   
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
        // Приховати текст за допомогою накладок у WORD

        // Використовуйте Redactor для відкриття документа
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Налаштуйте параметри редагування
            // Додайте ключові слова й виберіть колір
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Застосуйте та збережіть ваш редагований файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше можливостей редагування"
  description: "Використовуйте GroupDocs.Redaction for Java, щоб видаляти як видимий, так і прихований контент з файлів, зберігаючи макет незмінним."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Прості, чисті результати"
  features:
    # feature loop
    - title: "Замінити текст"
      content: "Приховувати слова чи терміни, які не повинні бути видними."

    # feature loop
    - title: "Замаскувати візуальні елементи"
      content: "Використовуйте кольорові накладки, щоб приховати зображення або частини з них."

    # feature loop
    - title: "Стерти метадані"
      content: "Видалити деталі, приховані у властивостях файлу."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування на основі регулярних виразів"
      content: |
        Дізнайтеся, як використовувати regex для автоматичного приховування конкретного контенту
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте документ для редагування
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Визначте свій шаблон regex і колір накладки
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Застосуйте редагування
              redactor.apply(redaction);

              // Збережіть свою чисту версію
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
    title: "Редагуйте вміст у WORD за допомогою Java"
    exclude: "WORD"
    description: "Зберігайте свої документи WORD приватними, приховуючи або видаляючи чутливі дані за допомогою Java."
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