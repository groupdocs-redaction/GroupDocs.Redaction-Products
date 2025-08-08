
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Видалення приватного тексту з WORD за допомогою Python"
head_description: "Захистіть конфіденційні дані у ваших WORD файлах за допомогою GroupDocs.Redaction for Python via .NET та Python. Швидке та легке видалення тексту."

############################# Header ############################
title: "Редагуйте або приховуйте приватний текст у файлах WORD за допомогою Python" 
description: "Очищайте чутливий вміст у ваших WORD файлах за допомогою GroupDocs.Redaction for Python via .NET та Python. Тримайте свої особисті або робочі документи безпечними."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Знайомтесь із GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET допомагає Python розробникам легко очищати WORD файли. Видаляйте текст, зображення, нотатки та метадані з кількома кроками.

############################# Steps ############################
steps:
    enable: true
    title: "Кроки для редагування тексту в файлах Word"
    content: |
      Використовуйте GroupDocs.Redaction for Python via .NET у ваших Python via .NET додатках для швидкого видалення або приховування чутливої інформації.
      
      1. Запустіть Redactor та завантажте файл Word.
      2. Виберіть бажані налаштування редагування.
      3. Введіть текст, який потрібно знайти, та що з ним замінити.
      4. Запустіть редагування та збережіть свій документ.
   
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

        # Як редагувати текст у файлі WORD

        # Встановіть параметри редагування
        # Виберіть текст для заміни та нове значення
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Завантажте файл за допомогою конструктора Redactor
        with gr.Redactor("input.docx") as redactor:

            # Застосуйте зміни та збережіть відредагований WORD файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше інструментів для редагування"
  description: "GroupDocs.Redaction for Python via .NET надає вам інструменти для очищення чутливого вмісту у багатьох форматах файлів. Тримайте ваші документи в безпеці для обміну."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Огляд варіантів редагування"
  features:
    # feature loop
    - title: "Заміна чутливого тексту"
      content: "Шукайте текст або шаблони й замініть їх на інші. Також підтримуються регулярні вирази."

    # feature loop
    - title: "Приховати приватні зображення"
      content: "Приховайте або накладайте частини зображень. Налаштуйте вигляд та розмір за потребою."

    # feature loop
    - title: "Очищайте приховані метадані"
      content: "Стирайте приховані деталі, такі як імена авторів, дати створення та коментарі."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування шаблонів з використанням регулярних виразів"
      content: |
        Використовуйте регулярні вирази для пошуку та очищення текстових шаблонів, таких як електронні адреси, імена чи ідентифікаційні номери.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Встановіть правило регулярного виразу EMAIL та текст для заміни
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Відкрийте свій документ
          with gr.Redactor("source.docx") as redactor:

              # Застосуйте налаштування редагування
              result = redactor.apply(redaction)

              # Збережіть фінальну версію
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
    title: "Редагуйте вміст у WORD за допомогою Python"
    exclude: "WORD"
    description: "Використовуйте Python інструменти для очищення та захисту WORD документів, редагуючи чутливий текст та деталі."
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