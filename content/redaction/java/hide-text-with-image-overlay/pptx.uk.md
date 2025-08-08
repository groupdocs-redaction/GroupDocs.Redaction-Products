
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Приховати текст у PPTX презентаціях за допомогою накладок Java"
head_description: "Використовуйте GroupDocs.Redaction for Java, щоб заблокувати чутливий контент у файлах PPTX за допомогою кольорових накладок. Зберігайте слайди незмінними, приховуючи ключову інформацію."

############################# Header ############################
title: "Замаскуйте текст у презентаціях PPTX за допомогою Java" 
description: "Легко захистіть особисті чи бізнес-дані у ваших слайдах PPTX, використовуючи Java та GroupDocs.Redaction for Java."
subtitle: "Досліджуйте можливості GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Що робить GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java дозволяє розробникам Java приховувати або видаляти текст, зображення або метадані в презентаціях PPTX всього за кілька кроків.

############################# Steps ############################
steps:
    enable: true
    title: "Редагуйте приватний вміст у слайдах Pptx"
    content: |
      GroupDocs.Redaction for Java спрощує захист вмісту для розробників Java.
      
      1. Налаштуйте Redactor зі шляхом до вашої презентації.
      2. Виберіть, як має виконуватися редагування.
      3. Додайте шаблон тексту і колір накладки.
      4. Редагуйте слайд і збережіть його.
   
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
        // Використовуйте накладки для блокування тексту в PPTX

        // Ініціалізуйте Redactor з вашою презентацією
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Виберіть ваші переваги редагування
            // Встановіть текст і колір накладки
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Запустіть редагування та збережіть слайд
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Потужні інструменти редагування"
  description: "З GroupDocs.Redaction for Java ви можете блокувати або видаляти чутливий контент у ваших презентаціях без змін у макеті чи форматуванні."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Функції, які працюють через слайди"
  features:
    # feature loop
    - title: "Приховати або замінити текст"
      content: "Захищайте імена, терміни або нотатки, які не повинні бути видні."

    # feature loop
    - title: "Закривати візуальні області"
      content: "Додавайте накладки на фотографії або графічні частини слайдів."

    # feature loop
    - title: "Очищати метадані"
      content: "Стирати інформацію про авторство або історію редагування, що може бути виявлена."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагуйте текст із регулярними виразами"
      content: |
        Використовуйте регулярні вирази, щоб знаходити та закривати чутливі слова
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте файл презентації
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Встановіть шаблон для пошуку та колір накладки
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Запустіть правила редагування
              redactor.apply(redaction);

              // Збережіть фінальну версію
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
    title: "Захищайте PPTX слайди за допомогою Java"
    exclude: "PPTX"
    description: "Прикривайте чутливий вміст або повністю видаляйте його з презентацій PPTX за допомогою функцій редагування Java."
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