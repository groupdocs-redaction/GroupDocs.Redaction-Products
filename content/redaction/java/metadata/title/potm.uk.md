
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "uk/redaction/java/metadata/title/potm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Редагувати метадані | Java"
ad_description: "Відредагувати назву з POTM Метаданих у Java"
############################# Head ############################
head_title: "Відредагувати назву з POTM файлу в Java Використовуючи GroupDocs.Redaction API"
head_description: "GroupDocs.Redaction — це потужний API санітарної обробки, який дозволяє видаляти або редагувати конфіденційну інформацію з більш ніж 30 типів документів."

############################# Header ############################
title: "Відредагувати назву з POTM файлу в Java Використовуючи GroupDocs.Redaction API"
description: "GroupDocs.Redaction — це потужний API санітарної обробки, який дозволяє видаляти або редагувати конфіденційну інформацію з більш ніж 30 типів документів."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Що таке Редагування метаданих?"
    content: |
        Збереження документа в оригінальному форматі вимагає видалення або редагування його метаданих для видалення всіх конфіденційних даних. Для цих цілей GroupDocs.Redaction надає API редагування метаданих. GroupDocs.Redaction API дозволяє зберігати відредаговані документи в PDF, перетворювати всі сторінки в растрові зображення або зберігати відредагований документ у вихідному форматі для подальшого редагування. Усі формати файлів, включаючи PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX та інші, мають певні властивості метаданих. Ці властивості включають ім'я автора, категорію, назву компанії, коментарі, час створення, останнє оновлення та багато іншого. Також є деякі приховані дані, пов'язані з файлами, які можна переглянути за допомогою різних інструментів та методів. За допомогою API GroupDocs.Redaction ви можете застосувати редагування метаданих до будь-якої з цих властивостей метаданих. Ви можете змінити або видалити їх, відфільтрувавши потрібні метадані. У цьому посібнику ми пояснимо, як ви можете відредагувати Title з POTM файлу Java за допомогою GroupDocs.Redaction API.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Редагувати метадані заголовка в Java"
      content_left: |
        Наступний код дозволяє шукати та редагувати конфіденційні дані з документа POTM. Ви можете встановити область редагування, встановивши фільтр, наприклад, MetadataFilter.title. Він залишить збіги регулярних виразів скасованими у всіх елементах метаданих, крім властивості «Title»: 

      title_right: "Як редагувати метадані POTM"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) та завантажте файл POTM
        * Створіть екземпляр класу [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), щоб знайти та замінити конфіденційні дані з метаданих документа
        * Встановіть область редагування, встановивши фільтр, наприклад, Використовуйте MetadataFilters.title у коді нижче
        * Виклик методу збереження за допомогою об'єкта [MetadataRechredaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "к23ф466бек 11е0405е2а3е74бе681д09"
      gistfile: "RedactTitleMetadata.java"
      
    - title_left: "Видалити метадані POTM в Java"
      content_left: |
        Ви можете замінити всі або певні метадані в документі порожніми (порожніми або мінімальними) значеннями за допомогою класу EraseMetaDataRedAction. Наступний код показує, як ви можете фільтрувати, а потім вилучати властивість метаданих з документа POTM. Приклад нижче видаляє всі властивості документа: 
        
      title_right: "Видалити метадані заголовка з файлу POTM"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) та завантажте файл POTM
        * Створіть екземпляр класу [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) для видалення метаданих документа
        * Встановіть область редагування, встановивши фільтр, наприклад Замініть MetadataFilter.all на MetadataFilter.Title в коді нижче
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