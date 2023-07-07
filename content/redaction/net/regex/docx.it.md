---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "it/redaction/net/regex/docx"
otherformats: CSV DOC DOCM DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Oscura documenti DOCX utilizzando espressioni regolari tramite .NET Core"
head_description: "Elimina le informazioni riservate utilizzando espressioni regolari da documenti di diversi formati"

############################# Header ############################
title: "Disinfetta i file DOCX tramite C# ed espressioni regolari nelle app .NET principali"
description: "Trova e rimuovi informazioni riservate da documenti, fogli di lavoro e presentazioni Office e OpenOffice nonché DOCX su Windows, Linux e macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redazione del testo del documento per l'API .NET"
    content: |
        Un'unica interfaccia indipendente dal formato per la sanificazione delle informazioni riservate e classificate dai documenti e dalle immagini PDF, Word, Excel, PowerPoint, inclusa la possibilità di modificare i metadati e rimuovere i commenti. Con lo strumento GroupDocs.Redaction for .NET puoi eliminare le informazioni classificate e salvare il documento redatto in PDF, trasformando tutte le pagine in immagini raster o mantenendo il documento nel suo formato originale per ulteriori modifiche.

############################# Steps ############################
steps:
    enable: true
    title_left: "Oscura il testo da DOCX utilizzando le espressioni regolari tramite C#"
    content_left: |
        [GroupDocs.Redaction](it//redaction/net/) consente agli sviluppatori .NET di utilizzare tutta la forza delle espressioni regolari per redigere il file DOCX con pochi semplici passaggi.

        *   Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file DOCX
        *   Crea un'istanza della classe [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) per trovare e sostituire il testo
        *   Richiama il metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con oggetto di RegexRedaction
        
    title_right: "Inizia con l'API Redaction"
    content_right: |
        Installa dalla riga di comando come ```nuget install GroupDocs.Redaction``` o tramite Package Manager Console di Visual Studio con ```Install-Package GroupDocs.Redaction```. 
        In alternativa, scarica il programma di installazione MSI offline o le DLL in un file ZIP da [download](https://downloads.groupdocs.com/redaction/net) e fai riferimento a esso manualmente nel tuo progetto.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.docx"))
        {
        	redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
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