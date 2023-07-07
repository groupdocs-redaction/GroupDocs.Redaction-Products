---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "uk/redaction/net/annotation/xls"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Редагувати анотації в XLS документах за допомогою регулярних виразів через .NET Core"
head_description: "Видаляйте конфіденційну інформацію в анотаціях за допомогою регулярного виразу з документів різних форматів"

############################# Header ############################
title: "Редагувати XLS анотації файлів через C# і регулярні вирази в .NET основних програмах"
description: "Знаходьте та видаляйте конфіденційну інформацію з документів Office і OpenOffice, електронних таблиць і презентацій, а також XLS на Windows, Linux та macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Редакція анотації документа для API .NET"
    content: |
        Єдиний незалежний від формату інтерфейс для очищення конфіденційної та секретної інформації з документів і зображень PDF, Word, Excel, PowerPoint, включаючи можливість змінювати метадані та видаляти анотації. За допомогою інструмента GroupDocs.Redaction for .NET ви можете відредагувати секретну інформацію та зберегти відредагований документ у PDF, перетворивши всі сторінки на растрові зображення або зберегти документ у вихідному форматі для подальшого редагування.

############################# Steps ############################
steps:
    enable: true
    title_left: "Редагувати анотації з XLS за допомогою регулярних виразів через C#"
    content_left: |
        [GroupDocs.Redaction](uk//redaction/net/) дозволяє розробникам .NET використовувати всі регулярні вирази для редагування файлу XLS за кілька простих кроків.

        *   Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) і завантажте файл XLS
        *   Створіть екземпляр класу [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction), щоб знайти та замінити коментарі
        *   Виклик методу [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) з об’єктом AnnotationRedaction
        
    title_right: "Як використовувати GroupDocs Redaction API"
    content_right: |
        Встановіть пакет із командного рядка як ```nuget install GroupDocs.Redaction``` або через консоль диспетчера пакетів Visual Studio за допомогою ```Install-Package GroupDocs.Redaction```. 
        Крім того, отримайте офлайн-інсталятор MSI або DLL у файлі ZIP із [завантажень](https://downloads.groupdocs.com/redaction/net) і посилайтеся на нього у своєму проекті вручну.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xls"))
        {
        	redactor.Apply(new AnnotationRedaction("(?im:john)", "[redacted]"));
        	redactor.Save();
        }
        ```

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---