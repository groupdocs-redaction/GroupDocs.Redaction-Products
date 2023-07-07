---
############################# Static ############################
layout: "autogen"
draft: false
path: "it/redaction/net/text/pot"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Oscura le informazioni sensibili dai documenti POT tramite .NET Core"
head_description: "Applica la redazione del testo utilizzando una frase esatta o un'espressione regolare per documenti di diversi formati"

############################# Header ############################
title: "Oscura i file POT tramite C# nelle .NET app principali"
description: "Cerca e sostituisci testo in documenti, fogli di lavoro e presentazioni Office e OpenOffice nonché POT su Windows, Linux e macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redazione del documento per l'API .NET"
    content: |
        Un'unica interfaccia indipendente dal formato per l'oscuramento di informazioni riservate e classificate da documenti e immagini PDF, Word, Excel, PowerPoint, inclusa la possibilità di modificare i metadati e rimuovere i commenti. Con lo strumento GroupDocs.Redaction for .NET puoi redigere il testo e salvare il documento redatto in PDF, trasformando tutte le pagine in immagini raster o mantenendo il documento nel suo formato originale per ulteriori modifiche.

############################# Steps ############################
steps:
    enable: true
    title_left: "Oscura testo esatto da POT tramite C#"
    content_left: |
        [GroupDocs.Redaction](it//redaction/net/) consente agli .NET sviluppatori di aggiungere facilmente POT la funzionalità di revisione dei file con pochi semplici passaggi.

        *   Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file POT
        *   Crea un'istanza della classe [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) per trovare e sostituire il testo
        *   Richiama il metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con oggetto di ExactPhraseRedaction
        
    title_right: "Inizia con l'API Redaction"
    content_right: |
        Installa dalla riga di comando come ```nuget install GroupDocs.Redaction``` o tramite Package Manager Console di Visual Studio con ```Install-Package GroupDocs.Redaction```. 
        In alternativa, scarica il programma di installazione MSI offline o le DLL in un file ZIP da [download](https://downloads.groupdocs.com/redaction/net) e fai riferimento a esso manualmente nel tuo progetto.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.pot"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
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