
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховати чутливий текст у файлах PDF за допомогою накладок Python"
head_description: "З GroupDocs.Redaction for Python via .NET ви можете приховати чутливий текст у файлах PDF, додаючи кольорові накладки. Захистіть приватні дані, не змінюючи вигляд вашого файлу."

############################# Header ############################
title: "Приховати чутливий текст у PDF за допомогою Python" 
description: "Забезпечте свої файли PDF за допомогою Python. Використовуйте накладки, щоб заблокувати юридичну, особисту або конфіденційну інформацію."
subtitle: "GroupDocs.Redaction for Python via .NET Основні особливості" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає розробникам Python зручний спосіб приховувати або видаляти контент у файлах PDF. Приховайте чутливий текст, зображення або метадані в різних форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Забезпечте безпеку чутливої інформації у файлах Pdf"
    content: |
      Використовуйте GroupDocs.Redaction for Python via .NET з вашими додатками Python via .NET для швидкого приховання приватного контенту.
      
      1. Налаштуйте Redactor та завантажте свій файл Pdf.
      2. Виберіть, як має працювати редагування.
      3. Виберіть текст для приховування та виберіть колір для накладки.
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
        import groupdocs.pydrawing as grd

        # Сховати чутливий текст у PDF за допомогою кольорових накладок

        # Налаштуйте параметри редагування
        # Визначте, що приховувати, та виберіть колір
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Завантажте файл, передавши його шлях до Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Редагуйте та збережіть ваш файл PDF
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Сховати або видалити інформацію з документів"
  description: "З GroupDocs.Redaction for Python via .NET ви можете приховати текст, зображення та інші дані в багатьох форматах. Захистіть те, що важливо, зберігаючи документи зрозумілими для читання та обміну."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Гнучкі функції редагування"
  features:
    # feature loop
    - title: "Редагувати будь-який текст"
      content: "Знайдіть та замініть чутливий текст, щоб забезпечити безпеку ваших документів."

    # feature loop
    - title: "Приховати зображення"
      content: "Використовуйте накладки, щоб заблокувати повні зображення або конкретні області."

    # feature loop
    - title: "Очищення метаданих"
      content: "Видаліть приховані дані, щоб зупинити ненавмисні витоки інформації."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використовуйте Regex для пошуку та приховування тексту"
      content: |
        Цей приклад показує, як шукати та приховувати текст за допомогою шаблонів regex.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Встановіть текстовий шаблон та колір накладки
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Завантажте свій документ
          with gr.Redactor("source.pdf") as redactor:

              # Приховати вибраний контент
              result = redactor.apply(redaction)

              # Збережіть оновлений файл
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Захистіть файли PDF за допомогою інструментів Python"
    exclude: "PDF"
    description: "Використовуйте Python, щоб приховати або видалити контент у файлах PDF. Надійний спосіб зберегти приватну інформацію в безпеці."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Презентація PowerPoint Open XML"


---