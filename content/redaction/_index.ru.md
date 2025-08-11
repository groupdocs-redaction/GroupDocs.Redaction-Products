---
############################# Static ############################
layout: "family"
date:  2025-08-11T19:33:03
draft: false

product: "Redaction"
product_tag: "redaction"

lang: ru

############################# Head ############################
head_title: "Решение для редактирования документов. Редактируйте или удаляйте любые конфиденциальные данные."
head_description: "Удаляйте, редактируйте или скрывайте текст, изображения или метаданные в PDF, Word-документах, Excel-таблицах, PowerPoint-презентациях, изображениях и других форматах. Используйте нашу библиотеку в ваших приложениях на .NET, Java, Python или облачных решениях."

############################# Header ############################
title: "Библиотека редактирования документов"
description:  |
  Скрывайте или удаляйте личную информацию из различных типов файлов.

  Редактируйте текст или изображения для устранения конфиденциального контента.

  Управляйте метаданными файлов с помощью наших расширенных функций.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "Выберите вашу платформу"
  title: "Независимость платформы"
  description: "Библиотека GroupDocs.Redaction поддерживает следующие операционные системы и фреймворки:"
  details_link_title: "Узнать больше"

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
          - rows: "2"
            content: |
                    .NET Framework 4.6.2 or higher <br> .NET Core 3.1 or higher
      
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
          - rows: "2"
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
          - rows: "2"
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
  title: "GroupDocs.Redaction в Кратком Описании"
  description: "Решение для управления контентом в PDF, офисных документах, изображениях и других бизнес-файлах."

  items:
    # items loop
    - icon: "text"
      title: "Удаление или редактирование текста"
      content: "Находите и редактируйте конфиденциальный текст в ваших документах."

    # items loop
    - icon: "image"
      title: "Редактирование изображений"
      content: "Скрывайте области изображений в файлах."

    # items loop
    - icon: "template"
      title: "Управление метаданными"
      content: "Удаляйте или заменяйте метаданные, такие как автор в Word-документах или EXIF-данные в изображениях."

    # items loop
    - icon: "pdf"
      title: "Расширенные функции"
      content: "Ищите данные для редактирования с помощью регулярных выражений или интеграции с ИИ."

############################# Code samples ############################
code_samples:
  enable: true
  title: "Примеры кода GroupDocs.Redaction"
  description: "Типичные случаи использования операций редактирования GroupDocs.Redaction."
  items:
    # code sample loop
    - title: "Как редактировать текст в PDF-документах"
      content: |
       GroupDocs.Redaction является идеальным решением для редактирования текста в ваших документах всего за несколько шагов.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // Передайте путь к файлу, который нужно редактировать, экземпляру Redactor
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // Укажите параметры редактирования
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Отредактируйте и сохраните результат
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // Передайте путь к файлу, который нужно редактировать, экземпляру Redactor
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // Укажите параметры редактирования
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Отредактируйте и сохраните результат
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

                # Передайте путь к файлу, который нужно редактировать, экземпляру Redactor
                with gr.Redactor("source.pdf") as redactor:

                    # Укажите параметры редактирования
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # Отредактируйте и сохраните результат
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "30+ поддерживаемых форматов файлов"
  description: "Библиотека GroupDocs.Redaction поддерживает операции редактирования во всех широко используемых бизнес-форматах файлов."

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction Достижения"
  description: "Откройте основные показатели, подчеркивающие успех нашей библиотеки"

  items:
    # items loop
    - number: "30+"
      title: "Поддерживаемые форматы"
      content: "Библиотека GroupDocs.Redaction поддерживает операции с более чем 30 широко используемыми форматами файлов."

    # items loop
    - number: "440k"
      title: "Скачивания NuGet"
      content: "Библиотека GroupDocs.Redaction для .NET была загружена более 440,000 раз из NuGet."

    # items loop
    - number: "12k"
      title: "Скачивания Maven"
      content: "Библиотека GroupDocs.Redaction имеет более 12,000 загрузок на Maven, предлагая мощные возможности редактирования для Java."

    # items loop
    - number: "140+"
      title: "Довольные клиенты"
      content: "Как глобальные предприятия, так и отдельные разработчики полагаются на продукты GroupDocs для создания инновационных решений."


############################# Customers ###############################
customers:
  enable: true
  title: "Наши довольные клиенты"
  description: "Библиотеки GroupDocs являются надежными для всемирно известных и уважаемых брендов."

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
  title: "Готовы начать?"
  description: "Попробуйте функции GroupDocs.Redaction бесплатно на вашей платформе."

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
  title: "Часто задаваемые вопросы"
  description: "Ответы на наиболее часто задаваемые вопросы."

  items:
    # items loop
    - question: "Требует ли библиотека GroupDocs.Redaction стороннего ПО для работы с документами?"
      answer: "Библиотека GroupDocs.Redaction не требует стороннего ПО, такого как Adobe Acrobat, Microsoft Office или других."

    # items loop
    - question: "Могу ли я попробовать библиотеку GroupDocs.Redaction перед покупкой?"
      answer: "Да, вы можете попробовать GroupDocs.Redaction без покупки лицензии. Она работает в режиме пробной версии, который добавляет пробные метки и ограничивает выход до первых 3 страниц. Чтобы протестировать без ограничений, запросите временную лицензию на 30 дней. Для получения дополнительной информации, [см.](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "Какие варианты лицензий доступны?"
      answer: "Мы предлагаем несколько типов лицензий в зависимости от ваших потребностей в разработке и распространении. Эти лицензии включают лицензии на основе разработчиков, базовые лицензии на сайт и лицензии по измерению в зависимости от использования. Узнайте больше [здесь](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.Redaction API с низким кодом"
  description: "Интегрируйте редакцию документов в любое приложение с помощью нашего облачного REST API."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "Используйте команды cURL с нашим облачным RESTful API для редактирования документов в широком диапазоне поддерживаемых форматов файлов."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Извлекайте изображения, текст и метаданные или редактируйте документы, используя шаблоны в приложениях на Microsoft .NET."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "Java SDK для редактирования документов и извлечения данных в ваших Java-приложениях."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction Приложения без кода"
  description: "Веб-приложение, которое позволяет редактировать более 30 популярных форматов файлов прямо в вашем браузере."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Бесплатный онлайн инструмент для редактирования Word, Excel, PowerPoint, PDF и более 30 других типов файлов."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "Редактируйте Word-документы в своем браузере и извлекайте изображения, текст или метаданные."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "Бесплатный инструмент для редактирования PDF, работающий на любом устройстве или платформе без ограничений."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---