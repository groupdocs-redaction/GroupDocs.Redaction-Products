
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "it/redaction/net/metadata/createdtime/ppsm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redigere i metadati sensibili dai documenti in C#"
head_description: "Applica la redazione dei metadati applicando filtri per documenti di diversi formati"

############################# Header ############################
title: "Modifica i metadati relativi all'ora creata dal documento PPSM in C#"
description: "GroupDocs.Redaction s fornisce un'API flessibile che consente di cercare e sostituire/rimuovere qualsiasi proprietà dei metadati utilizzando i filtri."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Cos'è la redazione dei metadati?"
    content: |
        Tutti i formati di file tra cui PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX e altri hanno alcune proprietà di metadati. Queste proprietà includono il nome dell'autore, la categoria, il nome dell'azienda, i commenti, l'ora di creazione, l'ultimo aggiornamento e molte altre. La redazione si riferisce alla rimozione di informazioni indesiderate o riservate dai documenti elettronici. A volte è necessario eliminare completamente i campi di metadati indesiderati o è possibile aggiornarne i valori. Ci sono anche alcuni dati nascosti associati ai file che possono essere visualizzati utilizzando vari strumenti e tecniche. Ci sono molti casi in cui non si desidera che nessuno acceda a questi dati. Con l'API GroupDocs.Redaction puoi applicare le redazioni dei metadati a qualsiasi di queste proprietà dei metadati. Puoi modificarli o eliminarli filtrando i metadati che desideri. In questa guida spiegheremo come puoi oscurare i metadati di createdtime dal documento PPSM in C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Rimuovi i metadati da PPSM in C#"
      content_left: |
        Puoi sostituire tutti i metadati o specifici in un documento PPSM con valori vuoti utilizzando la classe EraseMetadataRedAction. Il codice seguente mostra come filtrare e quindi rimuovere una proprietà di metadati da un documento PPSM. L'esempio seguente elimina tutte le proprietà del documento:
        

      title_right: "Cancella i metadati del documento PPSM"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file PPSM
        * Crea un'istanza di [EraseMetadataRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) per rimuovere i metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio Sostituisci MetadataFilter.all con MetadataFilter.createdTime nel codice seguente
        * Chiama il metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con l'oggetto di [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Modificare i metadati PPSM in C#"
      content_left: |
        Il codice seguente consente di cercare e redigere dati sensibili da un documento PPSM. Puoi impostare l'ambito di redazione impostando il filtro, ad esempio su MetadataFilter.createdTime. - lascerà le corrispondenze delle espressioni regolari annullate in tutti gli elementi dei metadati, ad eccezione della proprietà «Createdtime»:
        
        
      title_right: "Come oscurare i metadati PPSM"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file PPSM
        * Crea un'istanza della classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) per trovare e sostituire i dati sensibili dai metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio usa MetadataFilter.createdTime nel codice seguente 
        * Chiama il metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con l'oggetto di [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "4bc023c912c5eb34b1490c159a35a6ea"
      gistfile: "RedactCreatedTimeMetadata.cs"

    - title_left: "Requisiti di sistema"
      content_left: |
        GroupDocs.Redaction for .NET supporta qualsiasi sistema operativo a 32 o 64 bit in cui è installata la piattaforma .NET. Non richiede l'installazione di alcun software esterno o strumento di terze parti. Per una guida completa ai requisiti di sistema, visita [requisiti di sistema](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Istruzioni per l'installazione"
      content_right: |
        Installa dalla riga di comando come ```nuget install GroupDocs.Redaction ```o tramite la console di gestione pacchetti di Visual Studio con ```Install-Package GroupDocs.Redaction```. 
        In alternativa, scarica il programma di installazione MSI offline o le DLL in un file ZIP da [downloads](https://downloads.groupdocs.com/redaction/net) e fai riferimento ad esso manualmente nel tuo progetto.

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