
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "it/redaction/net/metadata/description/ppt"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redazioni di metadati da documenti in C#"
head_description: "Modifica i metadati sensibili in C# applicando filtri per documenti di diversi formati"

############################# Header ############################
title: "Oscura i metadati della descrizione dal documento PPT in C#"
description: "L'API di GroupDocs.Redaction consente di cercare e quindi aggiornare o rimuovere qualsiasi dato riservato dai metadati di un documento."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Cos'è la redazione dei metadati?"
    content: |
        La maggior parte delle persone si preoccupa della redazione del testo di un documento. Ma la redazione dei metadati è altrettanto importante. I metadati sono i dati nascosti di un documento che possono contenere informazioni riservate che potresti non voler condividere con altri. La redazione dei metadati si riferisce alla rimozione di informazioni indesiderate o riservate dai documenti elettronici. I metadati di un documento includono il nome dell'autore, la categoria, il nome dell'azienda, i commenti, l'ora di creazione, l'ultimo aggiornamento e molti altri. A volte è necessario eliminare completamente i campi di metadati indesiderati o è possibile aggiornarne i valori. Con l'API GroupDocs.Redaction puoi applicare le redazioni dei metadati a qualsiasi di queste proprietà dei metadati. Puoi modificarli o eliminarli filtrando i metadati che desideri. In questa guida spiegheremo come puoi oscurare i metadati della descrizione dal documento PPT in C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redigere la descrizione dal documento PPT"
      content_left: |
        Il codice seguente consente di cercare e redigere dati sensibili da un documento PPT. È possibile impostare l'ambito di redazione impostando il filtro, ad esempio su MetadataFilter.description. Lascerà le corrispondenze delle espressioni regolari annullate in tutti gli elementi dei metadati, ad eccezione della proprietà «Descrizione»:
        

      title_right: "Come oscurare i metadati PPT"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file PPT
        * Crea un'istanza della classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) per trovare e sostituire i dati sensibili dai metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio Usa MetadataFilter.Descrizione nel codice sottostante
        * Chiama il metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con l'oggetto di [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "15e3f0329c4e24c0f77f785b87753e0d"
      gistfile: "RedactDescriptionMetadata.cs"

    - title_left: "Rimuovi PPT metadati in C#"
      content_left: |
        È possibile sostituire tutti i metadati o specifici del documento con valori vuoti (vuoti o minimi) utilizzando la classe EraseMetadataRedAction. Il codice seguente mostra come filtrare e quindi rimuovere una proprietà di metadati da un documento PPT. L'esempio seguente elimina tutte le proprietà del documento:
        
        
      title_right: "Cancella i metadati PPT"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) e carica il file PPT
        * Crea un'istanza di [EraseMetadataRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) per rimuovere i metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio Sostituisci MetadataFilter.ALL con MetadataFilter.description nel codice seguente 
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