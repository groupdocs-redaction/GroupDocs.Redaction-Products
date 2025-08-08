
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: uk
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Видалення приватного тексту з EXCEL за допомогою Python"
head_description: "Швидко очищайте чутливу інформацію з ваших EXCEL файлів з GroupDocs.Redaction for Python via .NET та Python."

############################# Header ############################
title: "Знайдіть та видаліть приватний текст у файлах EXCEL за допомогою Python" 
description: "Використовуйте Python та GroupDocs.Redaction for Python via .NET, щоб очистити чутливі дані з ваших EXCEL документів. Будь то для роботи чи особистого використання, ваш вміст залишається в безпеці."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Знайомтесь із GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає Python розробникам все необхідне для очищення файлів EXCEL. Видаляйте текст, зображення, коментарі та метадані простим кодом.

############################# Steps ############################
steps:
    enable: true
    title: "Як редагувати текст у файлах Excel"
    content: |
      З GroupDocs.Redaction for Python via .NET у ваших Python via .NET проектах ви можете легко видаляти чи приховувати приватний вміст.
      
      1. Створіть Redactor та відкрийте свій Excel файл.
      2. Виберіть налаштування редагування.
      3. Введіть текст, який потрібно знайти, та що з ним замінити.
      4. Запустіть редагування та збережіть оновлений файл.
   
    code:
      platform: "python-net"
      copy_title: "Копіювати"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Приклад редагувань"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "натисніть, щоб скопіювати"
        copy_done: "скопійовано"
      links:
        #  loop
        - title: "Більше прикладів"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Документація"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Як редагувати текст у файлі EXCEL

        # Налаштуйте параметри редагування
        # Виберіть текст для пошуку та що з ним замінити
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Відкрийте ваш файл з конструктором Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # Застосуйте редагування та збережіть новий файл EXCEL
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше функцій редагування"
  description: "GroupDocs.Redaction for Python via .NET допомагає вам очищати чутливий вміст у багатьох формАТах файлів. Дбайте про свою безпеку та можливість обміну."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Інструменти для редагування в дії"
  features:
    # feature loop
    - title: "Заміна приватного тексту"
      content: "Шукайте та замінюйте будь-який відповідний текст. Працює з розумним пошуком та регулярними виразами."

    # feature loop
    - title: "Приховати вміст зображення"
      content: "Приховуйте частини зображень з накладками. Налаштуйте вигляд сторінки відповідно до ваших потреб."

    # feature loop
    - title: "Видалення прихованих деталей"
      content: "Стирайте метадані, такі як інформація про автора, коментарі та відмітки часу."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагуйте шаблони з використанням регулярних виразів"
      content: |
        Використовуйте регулярні вирази для знаходження та очищення текстових шаблонів, таких як електронні адреси, номери телефонів або деталі облікового запису.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Визначте шаблон регулярного виразу EMAIL та текст для заміни
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Відкрийте файл, який потрібно очистити
          with gr.Redactor("source.xlsx") as redactor:

              # Застосуйте правила редагування
              result = redactor.apply(redaction)

              # Збережіть фінальну версію файлу
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "Копіювати"
        install:
          command: "pip install groupdocs-redaction-net"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Документація"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Готові почати?"
  description: "Спробуйте можливості GroupDocs.Redaction безкоштовно або запитайте ліцензію"
  items:
    #  loop
    - title: "Завантаження PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Ліцензування"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Редагуйте вміст у EXCEL за допомогою Python"
    exclude: "EXCEL"
    description: "Використовуйте Python для видалення приватного тексту з файлів EXCEL. Забезпечте свою увагу до безпеки."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Презентація PowerPoint Open XML"


---