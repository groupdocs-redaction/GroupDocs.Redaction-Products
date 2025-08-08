
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Видалення приватного тексту з DOCX за допомогою Python"
head_description: "Зберігайте ваші DOCX файли в безпеці, видаляючи чутливий вміст за допомогою GroupDocs.Redaction for Python via .NET та Python. Швидке та надійне редагування."

############################# Header ############################
title: "Редагуйте або приховуйте приватний текст у файлах DOCX за допомогою Python" 
description: "Контролюйте вміст ваших DOCX файлів за допомогою GroupDocs.Redaction for Python via .NET та Python. Чудово підходить для особистого чи комерційного використання."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Знайомтесь із GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python інструменти для очищення вмісту у файлах DOCX. Редагуйте текст, зображення, коментарі та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Як очистити текст у файлах Docx"
    content: |
      Використовуйте GroupDocs.Redaction for Python via .NET у ваших Python via .NET додатках, щоб видалити або приховати приватний текст. Швидкий та простий процес редагування.
      
      1. Створіть Redactor та відкрийте ваш Docx файл.
      2. Встановіть бажані правила редагування.
      3. Виберіть текст для пошуку та те, чим його замінити.
      4. Запустіть редагування та збережіть свій новий файл.
   
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

        # Як редагувати текст у файлі DOCX

        # Виберіть налаштування редагування
        # Введіть текст для пошуку та заміни
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Відкрийте ваш файл за допомогою конструктора Redactor
        with gr.Redactor("input.docx") as redactor:

            # Застосуйте зміни та збережіть оновлений файл DOCX
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше інструментів для редагування"
  description: "GroupDocs.Redaction for Python via .NET дозволяє вам видаляти або приховувати чутливий текст у різних форматах. Діліться чистими та безпечними файлами з упевненістю."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Інструменти для редагування тексту, зображень і метаданих"
  features:
    # feature loop
    - title: "Знайти та замінити приватний текст"
      content: "Шукайте конкретні слова чи шаблони та замінюйте їх. Підтримується робота з регулярними виразами та ключовими словами."

    # feature loop
    - title: "Приховати чутливі зображення"
      content: "Накладайте або приховуйте області зображення. Змінюйте кольори, непрозорість та розміри на ваш розсуд."

    # feature loop
    - title: "Видалити метадані"
      content: "Стирайте приховану інформацію, таку як імена авторів, відмітки часу та внутрішні нотатки, щоб зберегти файли в безпеці."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використовуйте регулярні вирази для редагування шаблонів"
      content: |
        Шукайте електронні адреси, ідентифікаційні номери або шаблони, використовуючи регулярні вирази, та замініть їх.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Встановіть шаблон регулярного виразу для EMAIL та текст для заміни
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Відкрийте файл, який ви хочете очистити
          with gr.Redactor("source.docx") as redactor:

              # Застосуйте свої налаштування редагування
              result = redactor.apply(redaction)

              # Збережіть відредагований документ
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
    title: "Редагуйте вміст у DOCX за допомогою Python"
    exclude: "DOCX"
    description: "Використовуйте Python для видалення чутливого тексту з файлів DOCX. Забезпечте захист особистих та ділових документів."
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