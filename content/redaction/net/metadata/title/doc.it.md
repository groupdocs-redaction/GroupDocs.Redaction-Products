
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "it/redaction/net/metadata/title/doc"
otherformats: BMP DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redazioni di metadati da documenti in C#"
head_description: "Modifica i metadati sensibili in C# applicando filtri per documenti di diversi formati"

############################# Header ############################
title: "Modifica i metadati del titolo dal documento DOC in C#"
description: "L'API di GroupDocs.Redaction consente di cercare e quindi aggiornare o rimuovere qualsiasi dato riservato dai metadati di un documento."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Cos'è la redazione dei metadati?"
    content: |
        La maggior parte delle persone si preoccupa della redazione del testo di un documento. Ma la redazione dei metadati è altrettanto importante. I metadati sono i dati nascosti di un documento che possono contenere informazioni riservate che potresti non voler condividere con altri. La redazione dei metadati si riferisce alla rimozione di informazioni indesiderate o riservate dai documenti elettronici. I metadati di un documento includono il nome dell'autore, la categoria, il nome dell'azienda, i commenti, l'ora di creazione, l'ultimo aggiornamento e molti altri. A volte è necessario eliminare completamente i campi di metadati indesiderati o è possibile aggiornarne i valori. Con l'API GroupDocs.Redaction puoi applicare le redazioni dei metadati a qualsiasi di queste proprietà dei metadati. Puoi modificarli o eliminarli filtrando i metadati che desideri. In questa guida spiegheremo come puoi oscurare i metadati del titolo dal documento DOC in C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Modifica il titolo dal documento DOC"
      content_left: |
        Il codice seguente consente di cercare e redigere dati sensibili da un documento DOC. Puoi impostare l'ambito di redazione impostando il filtro, ad esempio su MetadataFilter.title. Lascerà le corrispondenze delle espressioni regolari annullate in tutti gli elementi dei metadati, ad eccezione della proprietà «Titolo»:
        

      title_right: "Come oscurare i metadati DOC"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file DOC
        * Crea un'istanza della classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) per trovare e sostituire i dati sensibili dai metadati del documento
        * Imposta l'ambito della redazione impostando il filtro, ad esempio usa MetadataFilter.title nel codice seguente
        * Chiama il metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con l'oggetto di [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "78fca6b6facd4e3ea79038d7abcb092f"
      gistfile: "RedactTitleMetadata.cs"

    - title_left: "Rimuovi DOC metadati in C#"
      content_left: |
        È possibile sostituire tutti i metadati o specifici del documento con valori vuoti (vuoti o minimi) utilizzando la classe EraseMetadataRedAction. Il codice seguente mostra come filtrare e quindi rimuovere una proprietà di metadati da un documento DOC. L'esempio seguente elimina tutte le proprietà del documento:
        
        
      title_right: "Cancella i metadati DOC"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file DOC
        * Crea un'istanza di [EraseMetadataRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) per rimuovere i metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio Sostituisci MetadataFilter.all con MetadataFilter.title nel codice seguente 
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