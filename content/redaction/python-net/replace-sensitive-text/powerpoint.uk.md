
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: uk
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Видалення приватного тексту з POWERPOINT за допомогою Python"
head_description: "Швидко захистіть чутливі дані у ваших POWERPOINT файлах за допомогою GroupDocs.Redaction for Python via .NET та Python."

############################# Header ############################
title: "Знайдіть і сховайте чутливий текст у файлах POWERPOINT з Python" 
description: "Використовуйте GroupDocs.Redaction for Python via .NET та Python для видалення чи приховування приватного вмісту у ваших POWERPOINT файлах. Зберігайте все конфіденційним, незалежно від того, чи це особисте, чи робочі питання."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Знайомтеся із GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET надає Python розробникам інструменти для очищення POWERPOINT файлів зсередини та зовні. Легко видаляйте вміст, зображення, нотатки та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Як очистити текст у файлах Powerpoint"
    content: |
      Використовуйте GroupDocs.Redaction for Python via .NET всередині ваших Python via .NET додатків для швидкого видалення або заміни чутливого даних.
      
      1. Створіть Redactor та відкрийте файл Powerpoint.
      2. Виберіть налаштування редагування, які вам потрібні.
      3. Введіть текст, який вам потрібно знайти, і те, чим його замінити.
      4. Запустіть редагування та збережіть фінальний файл.
   
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

        # Як редагувати текст у файлі POWERPOINT

        # Виберіть свої налаштування редагування
        # Введіть текст, який потрібно знайти, і що з ним замінити
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Завантажте ваш файл з конструктора Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Запустіть редагування та збережіть фінальний файл POWERPOINT
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше інструментів для видалення приватних даних"
  description: "GroupDocs.Redaction for Python via .NET дозволяє вам очистити приватний вміст у багатьох форматах. Ідеально підходить для безпечного обміну або архівування файлів."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Опції та інструменти редагування"
  features:
    # feature loop
    - title: "Знайти та замінити текст"
      content: "Швидко замініть чутливі слова чи цифри. Працює з регулярними виразами та розумними фільтрами."

    # feature loop
    - title: "Приховати частини зображень"
      content: "Накладайте або приховуйте специфічні області в зображеннях. Налаштуйте вигляд так, як вам потрібно."

    # feature loop
    - title: "Видалити приховану інформацію"
      content: "Очищайте метадані, такі як авторство файлу, коментарі чи історія змін."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування за шаблоном з використанням регулярних виразів"
      content: |
        Використовуйте регулярні вирази для знаходження та редагування шаплонів, таких як електронні адреси, контактна інформація чи інші приватні деталі.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Встановіть шаблон регулярного виразу EMAIL і значення для заміни
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Відкрийте презентацію для очищення
          with gr.Redactor("source.pptx") as redactor:

              # Застосуйте кроки редагування
              result = redactor.apply(redaction)

              # Збережіть ваш фінальний чернетковий файл
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
    title: "Редагуйте вміст у POWERPOINT за допомогою Python"
    exclude: "POWERPOINT"
    description: "З Python ви можете очистити POWERPOINT файли, видаляючи чи приховуючи приватний текст. Забезпечте безпечність всього."
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