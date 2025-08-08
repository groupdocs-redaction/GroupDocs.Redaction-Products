
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: uk
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення приватного тексту з POWERPOINT за допомогою Java"
head_description: "Захистіть чутливі дані у ваших файлах POWERPOINT за допомогою GroupDocs.Redaction for Java та Java."

############################# Header ############################
title: "Редагуйте або приховуйте чутливий текст у документах POWERPOINT з Java" 
description: "Захистіть чутливий контент у ваших файлах POWERPOINT з використанням Java та GroupDocs.Redaction for Java. Для економіки, юридичних або особистих потреб, ваші дані залишаються приватними."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Знайомтеся з GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java надає розробникам Java все необхідне для редагування змісту POWERPOINT. Очищуйте текст, зображення, анотації, коментарі та метадані в популярних файлових типах.

############################# Steps ############################
steps:
    enable: true
    title: "Кроки для очищення контенту в документах Powerpoint"
    content: |
      Використовуйте GroupDocs.Redaction for Java для видалення або закриття приватного контенту у ваших додатках Java.
      
      1. Ініціалізуйте Redactor та завантажте ваш файл Powerpoint.
      2. Налаштуйте необхідні опції редагування.
      3. Вкажіть текст для пошуку та текст для заміни.
      4. Запустіть процес редагування та збережіть файл.
   
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
        // Як редагувати текст у файлі POWERPOINT

        // Завантажте ваш файл, використовуючи конструктор Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Встановіть свої преференції редагування
            // Виберіть, що шукати та з чим замінити
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Примените редагування та збережіть новий файл POWERPOINT
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Додаткові інструменти редагування"
  description: "GroupDocs.Redaction for Java допомагає видаляти або приховувати чутливий контент у різних форматах файлів. Підтримуйте документи чистими та безпечними для обміну."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Інструменти та опції редагування"
  features:
    # feature loop
    - title: "Заменить конфіденційний текст"
      content: "Знайдіть та замініть відповідний текст у вашому файлі. Підтримується regex і розумні варіанти пошуку."

    # feature loop
    - title: "Приховати чутливі зображення"
      content: "Приховати зображення або конкретні області за допомогою накладок. Налаштуйте параметри сторінки, кольори та інше."

    # feature loop
    - title: "Очистити приховані метадані"
      content: "Видаліть приховані дані, такі як авторство, мітки часу або коментарі, щоб захистити приватність."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування на основі шаблона з Regex"
      content: |
        Використовуйте регулярні вирази для пошуку та редагування чутливих текстових шаблонів, таких як електронні адреси або ІД.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте документ, який потрібно очистити
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Визначте шаблон EMAIL regex і текст для використовувати як заміну
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Застосуйте правила редагування
              redactor.apply(redaction);

              // Збережіть відредагований файл
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Редагування контенту у POWERPOINT за допомогою Java"
    exclude: "POWERPOINT"
    description: "Захищайте офіційні та особисті дані, редагуючи текст у файлах POWERPOINT з інструментами Java. Зберігайте документи безпечними та приватними."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Презентація PowerPoint Open XML"


---