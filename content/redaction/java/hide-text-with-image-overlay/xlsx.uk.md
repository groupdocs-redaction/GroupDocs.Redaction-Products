
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Заблокувати текст у XLSX за допомогою накладок Java"
head_description: "GroupDocs.Redaction for Java дозволяє закривати чутливу інформацію в файлах XLSX кольоровими блоками. Приховувати дані, зберігаючи макет незмінним."

############################# Header ############################
title: "Приховати дані в XLSX за допомогою накладок у Java" 
description: "Використовуйте Java та GroupDocs.Redaction for Java, щоб замаскувати приватний вміст у файлах XLSX без впливу на формат."
subtitle: "Основні можливості GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Чому GroupDocs.Redaction for Java працює"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java дозволяє розробникам Java гарантувати безпечність файлів XLSX. Швидко приховуйте текст, зображення або метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть інформацію в документах Xlsx"
    content: |
      Зберігайте свої документи в безпеці, використовуючи простий код з GroupDocs.Redaction for Java у Java.
      
      1. Створіть Redactor з шляхом до файлу.
      2. Налаштуйте свою логіку редагування.
      3. Виберіть ключове слово та колір накладки.
      4. Редагуйте та збережіть файл.
   
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
        // Приховати інформацію в XLSX за допомогою блоків

        // Завантажте файл з Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Налаштуйте переваги редагування
            // Додайте текст і колір для блокування
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Збережіть оновлений документ
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Вбудовані функції конфіденційності"
  description: "Використовуйте GroupDocs.Redaction for Java, щоб блокувати або видаляти вміст у ваших файлах, зберігаючи структуру незмінною."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Прості інструменти конфіденційності"
  features:
    # feature loop
    - title: "Змінити або приховати текст"
      content: "Редагуйте або редагуйте конкретні слова без зайвих зусиль."

    # feature loop
    - title: "Замаскувати частини зображення"
      content: "Додавайте накладки, щоб приховати фотографії або графічні деталі."

    # feature loop
    - title: "Видалити приховану інформацію"
      content: "Стерти метадані, такі як інформація про користувача або історію файлу."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використовуйте регулярні вирази для редагування вмісту"
      content: |
        Автоматично знаходьте та приховуйте текст з використанням шаблонного збігу
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте таблицю
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Визначте шаблон та колір накладки
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Застосуйте правила редагування
              redactor.apply(redaction);

              // Експортуйте свій результат
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
    title: "Редагуйте дані XLSX за допомогою Java"
    exclude: "XLSX"
    description: "Використовуйте накладки або видаляйте вміст у файлах XLSX, щоб зберегти чутливі дані приватними за допомогою Java."
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