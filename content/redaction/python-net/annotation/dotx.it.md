---
############################# Static ############################
layout: "autogen"
draft: false
path: "it/redaction/net/annotation/dotx"
otherformats: CSV DOC DOCM DOCX DOT DOTM PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Oscura le annotazioni nei documenti DOTX utilizzando le espressioni regolari tramite .NET Core"
head_description: "Oscura le informazioni riservate nelle annotazioni utilizzando espressioni regolari da documenti di diversi formati"

############################# Header ############################
title: "Oscura DOTX le annotazioni dei file tramite C# e le espressioni regolari nelle .NET app principali"
description: "Trova e rimuovi informazioni riservate da documenti, fogli di lavoro e presentazioni Office e OpenOffice nonché DOTX su Windows, Linux e macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redazione dell'annotazione del documento per l'API .NET"
    content: |
        Un'unica interfaccia indipendente dal formato per la sanificazione delle informazioni riservate e classificate dai documenti e dalle immagini PDF, Word, Excel, PowerPoint, inclusa la possibilità di modificare i metadati e rimuovere le annotazioni. Con lo strumento GroupDocs.Redaction for .NET puoi eliminare le informazioni classificate e salvare il documento redatto in PDF, trasformando tutte le pagine in immagini raster o mantenendo il documento nel suo formato originale per ulteriori modifiche.

############################# Steps ############################
steps:
    enable: true
    title_left: "Oscura le annotazioni da DOTX utilizzando le espressioni regolari tramite C#"
    content_left: |
        [GroupDocs.Redaction](it//redaction/net/) consente agli sviluppatori .NET di utilizzare tutta la forza delle espressioni regolari per redigere il file DOTX con pochi semplici passaggi.

        *   Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file DOTX
        *   Crea un'istanza della classe [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction) per trovare e sostituire i commenti
        *   Chiama il metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con oggetto di AnnotationRedaction
        
    title_right: "Come utilizzare l'API Redaction GroupDocs"
    content_right: |
        Installa il pacchetto dalla riga di comando come ```nuget install GroupDocs.Redaction``` o tramite la console di Gestione pacchetti di Visual Studio con ```Install-Package GroupDocs.Redaction```. 
        In alternativa, scarica il programma di installazione MSI offline o le DLL in un file ZIP da [download](https://downloads.groupdocs.com/redaction/net) e fai riferimento a esso manualmente nel tuo progetto.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.dotx"))
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