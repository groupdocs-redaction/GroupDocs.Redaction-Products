
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Захистити текст у POWERPOINT за допомогою накладок Java"
head_description: "За допомогою GroupDocs.Redaction for Java ви можете заблокувати приватний текст у слайдах POWERPOINT за допомогою простих накладок, не змінюючи макет."

############################# Header ############################
title: "Приховати текст у POWERPOINT за допомогою накладок і Java" 
description: "Використовуйте Java та GroupDocs.Redaction for Java, щоб захистити свої слайди POWERPOINT шляхом маскування чутливого контенту."
subtitle: "Всередині GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java допомагає розробникам Java очищати слайди POWERPOINT, блокуючи або видаляючи чутливий вміст, такий як текст, метадані або зображення.

############################# Steps ############################
steps:
    enable: true
    title: "Очищення Powerpoint презентацій перед обміном"
    content: |
      Використовуйте GroupDocs.Redaction for Java в додатках Java для приховування або видалення чутливих частин ваших слайдів.
      
      1. Створіть новий Redactor з шляхом до вашої телепрезентації.
      2. Визначте свої параметри редагування.
      3. Встановіть текстовий шаблон і колір накладки.
      4. Запустіть та збережіть редагований файл.
   
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
        // Накривайте текстові області у POWERPOINT

        // Відкрийте файл за допомогою Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Налаштуйте параметри редагування
            // Введіть текст та виберіть колір накладки
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Редагуйте та збережіть оновлений файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Просте редагування для чутливих слайдів"
  description: "GroupDocs.Redaction for Java полегшує блокування або видалення вмісту зі слайдів, незалежно від мети використання."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Інструменти редагування, які адаптуються"
  features:
    # feature loop
    - title: "Шукати та заміняти текст"
      content: "Захищайте чутливі фрази або маркування на будь-якому слайді."

    # feature loop
    - title: "Закривати частини візуалізації"
      content: "Додавайте накладки на обрані ділянки слайдів або зображення."

    # feature loop
    - title: "Видаляти прихований контент"
      content: "Очистіть метадані слайду або нотатки редактора перед обміном."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Регулярний вираз для редагування тексту"
      content: |
        Дізнайтеся, як виявити та видалити текст, використовуючи маскування шаблонів
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте презентаційний пакет
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Застосуйте свої правила regex
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Запустіть редагування
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
    title: "Захистити слайди POWERPOINT з інструментами Java"
    exclude: "POWERPOINT"
    description: "Використовуйте накладне редагування та інструменти очищення з Java, щоб зберегти свої слайди POWERPOINT приватними."
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