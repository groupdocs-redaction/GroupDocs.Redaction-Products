
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Видалення приватного тексту з XLSX за допомогою Python"
head_description: "Захистіть ваші XLSX файли, приховуючи або видаляючи чутливі дані за допомогою GroupDocs.Redaction for Python via .NET та Python."

############################# Header ############################
title: "Приховування або видалення приватного тексту у файлах XLSX за допомогою Python" 
description: "З GroupDocs.Redaction for Python via .NET та Python ви можете видаляти приватний текст з XLSX документів — швидко та надійно."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Знайомтесь із GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python все, що потрібно для видалення або приховування приватних даних у файлах XLSX — тексту, зображень, нотаток та іншого.

############################# Steps ############################
steps:
    enable: true
    title: "Як видалити вміст у файлах Xlsx"
    content: |
      Використовуйте GroupDocs.Redaction for Python via .NET у вашому Python via .NET додатку для швидкого очищення або приховування чутливого вмісту.
      
      1. Запустіть Redactor та завантажте файл Xlsx.
      2. Виберіть необхідні налаштування редагування.
      3. Визначте текст для пошуку та чим його замінити.
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

        # Як редагувати текст у файлі XLSX

        # Виберіть переваги редагування
        # Встановіть параметри для пошуку і заміни
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Використовуйте конструктор Redactor, щоб завантажити ваш файл
        with gr.Redactor("input.xlsx") as redactor:

            # Застосуйте редагування та збережіть обновлений файл XLSX
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Додаткові функції редагування"
  description: "GroupDocs.Redaction for Python via .NET полегшує приховування або видалення приватної інформації в різних форматах файлів. Діліться лише тим, що має бути видно."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Функції для редагування тексту, зображень і метаданих"
  features:
    # feature loop
    - title: "Заміна приватного тексту"
      content: "Шукайте та замінюйте відповідні слова або шаблони. Підтримується regex та пошук за ключовими словами."

    # feature loop
    - title: "Приховати зображення"
      content: "Приховайте частини вашого документа за допомогою накладок. Налаштуйте зовнішній вигляд та що потрібно приховати."

    # feature loop
    - title: "Видалити метадані"
      content: "Стирайте приховану інформацію, таку як історія документів, імена авторів або внутрішні помітки."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагуйте шаблони за допомогою регулярних виразів"
      content: |
        Шукайте шаблони тексту, такі як номери телефонів, ідентифікаційні номери або електронні адреси, з регулярними виразами та швидко їх видаляйте.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Визначте ваш шаблон регулярного виразу EMAIL та текст для заміни
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Відкрийте документ, який ви хочете очистити
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
    title: "Редагуйте вміст у XLSX за допомогою Python"
    exclude: "XLSX"
    description: "Тримайте чутливі дані приватними, видаляючи їх з файлів XLSX за допомогою інструментів Python."
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