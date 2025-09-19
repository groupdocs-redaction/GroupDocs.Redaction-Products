---
############################# Static ############################
layout: "family"
date:  2025-09-19T19:29:16
draft: false

product: "Redaction"
product_tag: "redaction"

lang: uk

############################# Head ############################
head_title: "Рішення для редагування документів. Редагуйте або видаляйте будь-які чутливі дані."
head_description: "Видаляйте, приховуйте або ховайте текст, зображення або метадані у PDF, Word документах, Excel таблицях, PowerPoint презентаціях, зображеннях та інших файлах. Використовуйте нашу бібліотеку у своїх додатках на .NET, Java, Python або у хмарі."

############################# Header ############################
title: "Бібліотека для Редагування Документів"
description:  |
  Приховуйте або видаляйте приватну інформацію з різних типів файлів.

  Редагуйте текст або зображення, щоб усунути чутливий контент.

  Управляйте метаданими файлів за допомогою наших розширених можливостей.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "Виберіть свою платформу"
  title: "Платформна Незалежність"
  description: "Бібліотека GroupDocs.Redaction підтримує наступні операційні системи та фреймворки:"
  details_link_title: "Дізнайтеся більше"

  items:
    # items loop
    - title: ".NET"
      description: GroupDocs.Redaction .NET 
      color: "blue"
      tag: "net"
      link: "/redaction/net/"
      features_link: "https://docs.groupdocs.com/redaction/net/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    NET 6.0+ <br> .NET Core 3.1 <br> .NET Framework 4.6.2+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS <br> Microsoft Azure
      
          # features loop
          - rows: "3"
            content: |
                    Microsoft Visual Studio <br> JetBrains Rider <br> Microsoft Visual Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats
      

    # items loop
    - title: "Java"
      description: GroupDocs.Redaction Java
      color: "red"
      tag: "java"
      link: "/redaction/java/"
      features_link: "https://docs.groupdocs.com/redaction/java/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    Java 8 or higher <br> Kotlin
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IntelliJ IDEA <br> Eclipse <br> NetBeans
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

    # items loop
    - title: "Python"
      description: GroupDocs.Redaction Python
      color: "yellow"
      tag: "python-net"
      link: "/redaction/python-net/"
      features_link: "https://docs.groupdocs.com/redaction/python-net/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    Python 3.9+ and .Net 6+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IDLE <br> PyCharm <br> Visual Studio Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

############################# Features ###############################
features:
  enable: true
  title: "GroupDocs.Redaction на Перший Погляд"
  description: "Рішення для управління контентом у PDF, Office документах, зображеннях та інших бізнес-файлах."

  items:
    # items loop
    - icon: "text"
      title: "Видалення або Редагування Тексту"
      content: "Знаходьте та редагуйте чутливий текст у ваших документах без зайвих зусиль."

    # items loop
    - icon: "image"
      title: "Редагування Зображень"
      content: "Приховуйте області зображень у ваших файлах без додаткових зусиль."

    # items loop
    - icon: "template"
      title: "Управління Метаданими"
      content: "Видаляйте або замінюйте метадані, такі як автор у Word документах або EXIF дані в зображеннях."

    # items loop
    - icon: "pdf"
      title: "Розширені Можливості"
      content: "Шукайте дані для редагування за допомогою регулярних виразів або інтеграції ШІ."

############################# Code samples ############################
code_samples:
  enable: true
  title: "GroupDocs.Redaction Приклади Коду"
  description: "Типові випадки використання операцій редагування GroupDocs.Redaction."
  items:
    # code sample loop
    - title: "Як Редагувати Текст у PDF Документах"
      content: |
       GroupDocs.Redaction - це найкраще рішення для редагування тексту у ваших документах всього за кілька кроків.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // Передайте шлях до файлу, який потрібно редагувати, в екземпляр Redactor
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // Надайте параметри редагування
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Редагуйте та збережіть результат
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // Передайте шлях до файлу, який потрібно редагувати, в екземпляр Redactor
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // Надайте параметри редагування
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Редагуйте та збережіть результат
                redactor.apply(redaction);
                redactor.save();
            }
            finally { redactor.close(); } 
            ```
        - language: "Python"
          color: "yellow"
          content: |
            ```python {style=abap}
            import groupdocs.redaction as gr
            import groupdocs.redaction.options as gro
            import groupdocs.redaction.redactions as grr

            def run():

                # Передайте шлях до файлу, який потрібно редагувати, в екземпляр Redactor
                with gr.Redactor("source.pdf") as redactor:

                    # Надайте параметри редагування
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # Редагуйте та збережіть результат
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "Підтримується 30+ Форматів Файлів"
  description: "GroupDocs.Redaction підтримує операції редагування у всіх широко використовуваних бізнесових форматах файлів."

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction Досягнення"
  description: "Досліджуйте ключові метрики, що підкреслюють успіх нашої бібліотеки"

  items:
    # items loop
    - number: "30+"
      title: "Підтримувані Формати"
      content: "GroupDocs.Redaction підтримує операції з більш ніж 30 широко використовуваними формами файлів."

    # items loop
    - number: "440k"
      title: "Завантаження з NuGet"
      content: "GroupDocs.Redaction для .NET було завантажено понад 440 000 разів з NuGet."

    # items loop
    - number: "12k"
      title: "Завантаження з Maven"
      content: "GroupDocs.Redaction має понад 12 000 завантажень на Maven, пропонуючи потужні функції редагування для Java."

    # items loop
    - number: "140+"
      title: "Задоволені Клієнти"
      content: "Як глобальні корпорації, так і окремі розробники покладаються на продукцію GroupDocs для створення інноваційних рішень."


############################# Customers ###############################
customers:
  enable: true
  title: "Наші Задоволені Клієнти"
  description: "Бібліотеки GroupDocs користуються довірою визнаних і поважаних брендів по всьому світу."

  items:
    # items loop
    - title: "BenQ Corporation"
      logo: "benq"
      
    # items loop
    - title: "Nasdaq Stock Market"
      logo: "nasdaq"
      
    # items loop
    - title: "AT&T Inc."
      logo: "att"
      
    # items loop
    - title: "Customer logo AstraZeneca"
      logo: "astrazeneca"
      
    # items loop
    - title: "Central Bank of Argentina"
      logo: "argentinacentralbank"
      
    # items loop
    - title: "Roche Holding AG"
      logo: "roche"
      
    # items loop
    - title: "Capita"
      logo: "capita"
      
    # items loop
    - title: "Axa S.A."
      logo: "axa"
      
    # items loop
    - title: "Instructure Inc."
      logo: "instructure"
      
    # items loop
    - title: "Wipro"
      logo: "wipro"


############################# Actions ###############################
actions:
  enable: true
  title: "Готові Розпочати?"
  description: "Спробуйте функції GroupDocs.Redaction безкоштовно на вашій платформі."

  items:
    # items loop
    - title: ".NET"
      color: "blue"
      link: "/redaction/net/"

    # items loop
    - title: "Java"
      color: "red"
      link: "/redaction/java/"

    # items loop
    - title: "Node.js"
      color: "yellow"
      link: "/redaction/python-net/"   

############################# FAQ ###############################
faq:
  enable: true
  title: "Поширені Запитання"
  description: "Відповіді на найбільш поширені запитання."

  items:
    # items loop
    - question: "Чи потребує бібліотека GroupDocs.Redaction стороннього програмного забезпечення для обробки документів?"
      answer: "GroupDocs.Redaction не потребує зовнішнього програмного забезпечення, такого як Adobe Acrobat, Microsoft Office та ін."

    # items loop
    - question: "Чи можу я спробувати бібліотеку GroupDocs.Redaction перед придбанням?"
      answer: "Так, ви можете спробувати GroupDocs.Redaction без купівлі ліцензії. Вона працює в пробному режимі, який додає пробні позначки й обмежує вихід до перших 3-х сторінок. Для тестування без обмежень запитайте тимчасову ліцензію на 30 днів. Для детальнішої інформації [дивіться](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "Які варіанти ліцензій доступні?"
      answer: "Ми пропонуємо кілька типів ліцензій залежно від ваших потреб у розробці та розповсюдженні. Сюди входять ліцензії, засновані на розробниках, на сайті та лічильники залежно від використання. Дізнайтеся більше [тут](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.Redaction API з Низьким Кодом"
  description: "Інтегруйте редагування документів у будь-який додаток, використовуючи наш хмарний REST API."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "Використовуйте команди cURL з нашим хмарним RESTful API для редагування документів в широкому спектрі підтримуваних форматів файлів."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Витягуйте зображення, текст і метадані або редагуйте документи, використовуючи шаблони в Microsoft .NET додатках."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "Java SDK для редагування документів та витягнення даних у ваших Java-додатках."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction Безкодові Додатки"
  description: "Веб-додаток, який дозволяє редагувати понад 30 популярних форматів файлів безпосередньо у вашому браузері."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Безкоштовний онлайн-інструмент для редагування Word, Excel, PowerPoint, PDF та понад 30 інших типів файлів."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "Редагуйте Word документи у вашому браузері та витягуйте зображення, текст або метадані."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "Безкоштовний інструмент для редагування PDF, який працює на будь-якому пристрої чи платформі без обмежень."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---