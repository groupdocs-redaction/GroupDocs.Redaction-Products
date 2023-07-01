
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "uk/redaction/java/metadata/company/pdf"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Редагувати метадані | Java"
ad_description: "Відредагувати назву компанії з PDF метаданих у Java"
############################# Head ############################
head_title: "Редагування метаданих з документа PDF в Java"
head_description: "Легко шукайте, замінюйте, видаляйте або редагуйте метадані різних типів документів, застосовуючи фільтри для вибору певних властивостей метаданих за допомогою API GroupDocs.Redaction s для Java."

############################# Header ############################
title: "Редагування метаданих з документа PDF в Java"
description: "Легко шукайте, замінюйте, видаляйте або редагуйте метадані різних типів документів, застосовуючи фільтри для вибору певних властивостей метаданих за допомогою API GroupDocs.Redaction s для Java."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Початок роботи з редагування метаданих"
    content: |
        Іноді вам потрібно повністю видалити небажані поля метаданих або ви можете оновити їх значення. Також є приховані дані, пов'язані з файлами, які можна переглянути за допомогою різних інструментів і прийомів. Є багато ситуацій, коли ви не хочете, щоб ці дані були доступні нікому. Редакування означає видалення небажаної або конфіденційної інформації з різних документів. Усі формати файлів, включаючи PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX та інші, мають специфічні структури метаданих. Властивості метаданих включають ім'я автора, категорію, назву компанії, коментарі, час створення та останнє оновлення тощо. За допомогою API GroupDocs.Redaction ви можете застосувати редагування метаданих до будь-якого з цих полів метаданих. Ви можете змінити або видалити їх, відфільтрувавши потрібні метадані. У цьому посібнику ми пояснимо, як можна застосувати редагування метаданих з документа PDF у Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Редагування метаданих файлу PDF"
      content_left: |
        Наступний код дозволяє шукати та редагувати конфіденційні дані з документа PDF. Ви можете встановити область редагування, встановивши фільтр, наприклад, MetadataFilter.company. Він залишить збіги регулярних виразів скасованими у всіх елементах метаданих, крім властивості «Компанія»: 

      title_right: "Кроки для редагування метаданих"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) та завантажте файл PDF
        * Створіть екземпляр класу [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), щоб знайти та замінити конфіденційні дані з метаданих документа
        * Встановіть область редагування, встановивши фільтр, наприклад, Використовуйте MetadataFilters.Company у коді нижче
        * Виклик методу збереження за допомогою об'єкта [MetadataRechredaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "5б04349а19ф1627145аб6а9ф8ф0ф5ф0"
      gistfile: "RedactCompanyMetadata.java"
      
    - title_left: "Видалити метадані PDF в Java"
      content_left: |
        Ви можете замінити всі або певні метадані в документі порожніми (порожніми або мінімальними) значеннями за допомогою класу EraseMetaDataRedAction. Наступний код показує, як ви можете фільтрувати, а потім вилучати властивість метаданих з документа PDF. Приклад нижче видаляє всі властивості документа: 
        
      title_right: "Як стерти метадані компанії"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) та завантажте файл PDF
        * Створіть екземпляр класу [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) для видалення метаданих документа
        * Встановіть область редагування, встановивши фільтр, наприклад Замініть MetadataFilter.all на MetadataFilter.Company в коді нижче
        * Виклик методу збереження за допомогою об'єкта [MetadataRechredaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804е996134 фд12ф2061ф989фд5"
      gistfile: "CleanMetadata.java"

    - title_left: "Системні вимоги"
      content_left: |
        GroupDocs.Redaction for Java API підтримуються на всіх основних платформах і операційних системах. Щоб отримати повний посібник з системних вимог, відвідайте [системні вимоги](https://docs.groupdocs.com/redaction/java/system-requirements) Перш ніж виконувати код нижче, переконайтеся, що у вашій системі встановлені такі передумови:
        * Операційні системи: Майкрософт Windows, Linux, Mac ОС
        * Середовище розробки: NetBeans, Intellij IDEA, Eclipse тощо
        * Java Середовище виконання: J2SE 6.0 і вище
        * Отримайте останню версію GroupDocs.Redaction for Java з [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Навіщо використовувати GroupDocs.Redaction"
      content_right: |
        * Дозволити користувачам додавати власні формати документів та типи редагування
        * Для видалення конфіденційної інформації не потрібно додаткове програмне забезпечення
        * Можливість встановити діапазон візуалізації документа як PDF
        * Простий спосіб редагувати різні типи метаданих: ім'я автора, версія, назва, тема, опис та багато іншого
        * Вилучення інформації про документ - тип файлу, кількість сторінок тощо.
        

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---