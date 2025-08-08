
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Захистіть конфіденційний текст у PDF за допомогою Python"
head_description: "Зберігайте особисті дані в безпеці у ваших PDF документах за допомогою GroupDocs.Redaction for Python via .NET. Швидко знаходьте та приховуйте чутливу інформацію."

############################# Header ############################
title: "Видаліть конфіденційний текст з файлів PDF за допомогою Python" 
description: "Використовуйте Python та GroupDocs.Redaction for Python via .NET для пошуку та видалення особистих, правових чи комерційних даних з ваших PDF файлів."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python всі необхідні інструменти для редагування вмісту у файлах PDF — текстів, зображень, коментарів та інших елементів.

############################# Steps ############################
steps:
    enable: true
    title: "Як редагувати вміст у файлах Pdf"
    content: |
      Забезпечте безпеку вашого вмісту в будь-яких Python via .NET додатках за допомогою GroupDocs.Redaction for Python via .NET.
      
      1. Створіть Redactor та завантажте свій Pdf файл.
      2. Виберіть налаштування редагування, які вам потрібні.
      3. Введіть текст для пошуку та те, чим його замінити.
      4. Застосуйте редагування та збережіть файл.
   
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше можливостей редагування"
  description: "GroupDocs.Redaction for Python via .NET дозволяє вам приховувати приватний вміст у багатьох типах файлів. Зберігайте свої дані в безпеці та готовими до обміну."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Інструменти для редагування тексту, зображень та метаданих"
  features:
    # feature loop
    - title: "Знайти та замінити приватний текст"
      content: "Шукайте та замінюйте відповідний текст. Працює з регулярними виразами та пошуком за ключовими словами."

    # feature loop
    - title: "Приховати приватні зображення"
      content: "Приховайте повні зображення або їх частини за допомогою накладок. Налаштуйте параметри зовнішнього вигляду."

    # feature loop
    - title: "Стерти приховані метадані"
      content: "Видаліть приховану інформацію, таку як імена авторів, відмітки часу та примітки до змін."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування з використанням регулярних виразів"
      content: |
        Використовуйте регулярні вирази для пошуку та видалення шаблонів, таких як електронні адреси, ідентифікаційні номери або числа.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Встановіть шаблон регулярного виразу та текст для заміни
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Відкрийте файл, який ви хочете очистити
          with gr.Redactor("source.pdf") as redactor:

              # Застосуйте ваші правила редагування
              result = redactor.apply(redaction)

              # Збережіть ваш відредагований файл
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
    title: "Редагуйте вміст у PDF за допомогою Python"
    exclude: "PDF"
    description: "Забезпечте збереження особистих чи комерційних даних, редагуючи текст у файлах PDF за допомогою інструментів Python."
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