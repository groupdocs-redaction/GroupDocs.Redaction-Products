
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "it/redaction/net/metadata/category/pot"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Oscura i metadati sensibili da POT documenti in C#"
head_description: "Applica la redazione dei metadati applicando filtri per documenti di diversi formati"

############################# Header ############################
title: "Modifica il nome della categoria dai metadati POT in C#"
description: "GroupDocs.Redaction s fornisce un'API flessibile che consente di cercare e sostituire/rimuovere qualsiasi proprietà dei metadati utilizzando i filtri."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Cos'è la redazione dei metadati?"
    content: |
        La redazione si riferisce alla rimozione di informazioni indesiderate o riservate dai documenti elettronici. Tutti i formati di file tra cui PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX e altri hanno alcune proprietà di metadati. Queste proprietà includono il nome dell'autore, la categoria, il nome dell'azienda, i commenti, l'ora di creazione, l'ultimo aggiornamento e molte altre. A volte è necessario eliminare completamente i campi di metadati indesiderati o è possibile aggiornarne i valori. Ci sono anche alcuni dati nascosti associati ai file che possono essere visualizzati utilizzando vari strumenti e tecniche. Ci sono molti casi in cui non si desidera che nessuno acceda a questi dati. Con l'API GroupDocs.Redaction puoi applicare le redazioni dei metadati a qualsiasi di queste proprietà dei metadati. Puoi modificarli o eliminarli filtrando i metadati che desideri. In questa guida spiegheremo come puoi oscurare il nome della categoria dai metadati POT in C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Modificare i metadati POT in C#"
      content_left: |
        Il codice seguente consente di cercare e redigere dati sensibili da un documento POT. Puoi impostare l'ambito di redazione impostando il filtro, ad esempio su MetadataFilter.Category. - lascerà le corrispondenze delle espressioni regolari annullate in tutti gli elementi dei metadati, ad eccezione della proprietà «Category»:
        

      title_right: "Come oscurare i metadati POT"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file POT
        * Crea un'istanza della classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) per trovare e sostituire i dati sensibili dai metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio usa MetadataFilter.category nel codice seguente
        * Chiama il metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con l'oggetto di [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "852b461c316559151cb6075b4ecde2ce"
      gistfile: "RedactCategoryMetadata.cs"

    - title_left: "Rimuovi POT metadati in C#"
      content_left: |
        È possibile sostituire tutti i metadati o specifici del documento con valori vuoti (vuoti o minimi) utilizzando la classe EraseMetadataRedAction. Il codice seguente mostra come filtrare e quindi rimuovere una proprietà di metadati da un documento POT. L'esempio seguente elimina tutte le proprietà del documento:
        
        
      title_right: "Cancella i metadati POT"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file POT
        * Crea un'istanza di [EraseMetadataRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) per rimuovere i metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio Sostituisci MetadataFilter.all con MetadataFilter.category nel codice seguente 
        * Chiama il metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con l'oggetto di [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

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