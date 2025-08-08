
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Видалення приватного тексту з PPTX за допомогою Python"
head_description: "Забезпечте безпеку ваших PPTX файлів за допомогою GroupDocs.Redaction for Python via .NET та Python. Швидко знаходьте та видаляйте чутливий вміст."

############################# Header ############################
title: "Редагуйте або видаляйте приватний текст у файлах PPTX з Python" 
description: "Використовуйте GroupDocs.Redaction for Python via .NET та Python для пошуку та очищення чутливих даних у ваших PPTX документах. Зберігайте свої особисті або робочі файли конфіденційними."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Знайомтесь з GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає Python розробникам повний контроль над вмістом PPTX. Легко очищайте текст, зображення, нотатки та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Як редагувати текст у документах Pptx"
    content: |
      Використовуйте GroupDocs.Redaction for Python via .NET у вашому Python via .NET середовищі, щоб швидко приховати або видалити чутливий вміст.
      
      1. Створіть Redactor та завантажте ваш Pptx файл.
      2. Виберіть свої налаштування редагування.
      3. Введіть текст для пошуку та те, чим його замінити.
      4. Застосуйте редагування та збережіть оновлений файл.
   
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

        # Як редагувати текст у файлі PPTX

        # Встановіть свої налаштування редагування
        # Виберіть текст для пошуку та заміни
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Використовуйте конструктор Redactor для завантаження вашого файлу
        with gr.Redactor("input.pptx") as redactor:

            # Запустіть редагування та збережіть фінальний більший PPTX
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше функцій редагування"
  description: "GroupDocs.Redaction for Python via .NET допомагає вам видаляти або приховувати чутливі дані в різних форматах. Безпечно діліться документами."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Огляд функцій редагування"
  features:
    # feature loop
    - title: "Знайти та замінити текст"
      content: "Швидко замініть чутливі слова або числа. Працює з регулярними виразами та розумними фільтрами."

    # feature loop
    - title: "Приховати частини зображень"
      content: "Покривайте специфічні області у зображеннях. Налаштуйте параметри, такі як кольори та макет."

    # feature loop
    - title: "Видалити приховану інформацію"
      content: "Очищайте метадані, такі як імена авторів, відмітки часу чи коментарі."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування за шаблоном з використанням регулярних виразів"
      content: |
        Використовуйте регулярні вирази для пошуку та видалення тексту, такого як електронні адреси, номери телефонів або ідентифікаційні номери.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Встановіть шаблон регулярного виразу EMAIL та текст для заміни
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Відкрийте файл, який ви хочете редагувати
          with gr.Redactor("source.pptx") as redactor:

              # Запустіть процес редагування
              result = redactor.apply(redaction)

              # Збережіть очищений файл
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
    title: "Редагуйте вміст у PPTX за допомогою Python"
    exclude: "PPTX"
    description: "За допомогою Python ви можете видаляти чутливий текст з документів PPTX і протистояти загрозам для ваших даних."
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