
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "it/redaction/java/metadata/createdtime/ppt"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Modificare i metadati | Java"
ad_description: "Revisione dei metadati dal documento PPT in Java"
############################# Head ############################
head_title: "Revisione dei metadati dal documento PPT in Java"
head_description: "Cerca, sostituisci, rimuovi o modifica facilmente i metadati di vari tipi di documenti applicando filtri per scegliere proprietà specifiche dei metadati utilizzando l'API di GroupDocs.Redaction per Java."

############################# Header ############################
title: "Revisione dei metadati dal documento PPT in Java"
description: "Cerca, sostituisci, rimuovi o modifica facilmente i metadati di vari tipi di documenti applicando filtri per scegliere proprietà specifiche dei metadati utilizzando l'API di GroupDocs.Redaction per Java."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Guida introduttiva alla redazione dei metadati"
    content: |
        A volte è necessario eliminare completamente i campi di metadati indesiderati o è possibile aggiornarne i valori. Esistono anche dati nascosti associati ai file che possono essere visualizzati utilizzando vari strumenti e tecniche. Esistono molte situazioni in cui non desideri che questi dati siano accessibili a nessuno. Per redazione si intende la rimozione di informazioni indesiderate o riservate da vari documenti. Tutti i formati di file tra cui PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX e altri hanno strutture di metadati specifiche. Le proprietà dei metadati includono il nome dell'autore, la categoria, il nome dell'azienda, i commenti, l'ora di creazione e l'ultimo aggiornamento, ecc. Con l'API GroupDocs.Redaction puoi applicare la redazione dei metadati a uno qualsiasi di questi campi di metadati. Puoi modificarli o eliminarli filtrando i metadati che desideri. In questa guida spiegheremo come applicare la redazione dei metadati dal documento PPT in Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Modificare i metadati del file PPT"
      content_left: |
        Il codice seguente consente di cercare e redigere dati sensibili da un documento PPT. È possibile impostare l'ambito di redazione impostando il filtro, ad esempio su MetadataFilter.createdTime. Lascerà le corrispondenze delle espressioni regolari annullate in tutti gli elementi dei metadati, ad eccezione della proprietà «Createdtime»: 

      title_right: "Passaggi per redigere i metadati Createdtime"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) e carica il file PPT
        * Crea un'istanza della classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) per trovare e sostituire i dati sensibili dai metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio usa MetadataFilters.createdTime nel codice seguente
        * Chiama il metodo save con l'oggetto di [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "e773562949d4e6c0db09be86f79e4ced"
      gistfile: "RedactCreatedtimeMetadata.java"
      
    - title_left: "Rimuovi i metadati Createdtime in Java"
      content_left: |
        È possibile sostituire tutti i metadati o specifici del documento con valori vuoti (vuoti o minimi) utilizzando la classe EraseMetadataRedAction. Il codice seguente mostra come filtrare e quindi rimuovere una proprietà di metadati da un documento PPT. L'esempio seguente elimina tutte le proprietà del documento: 
        
      title_right: "Come cancellare PPT metadati"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) e carica il file PPT
        * Crea un'istanza della classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) per rimuovere i metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio Sostituisci MetadataFilter.all con MetadataFilter.createdTime nel codice seguente
        * Chiama il metodo save con l'oggetto di [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "Requisiti di sistema"
      content_left: |
        Le GroupDocs.Redaction for Java API sono supportate su tutte le principali piattaforme e sistemi operativi. Per una guida completa ai requisiti di sistema, visita [requisiti di sistema](https://docs.groupdocs.com/redaction/java/system-requirements) Prima di eseguire il codice riportato di seguito, assicurati di avere i seguenti prerequisiti installati sul tuo sistema:
        * Sistemi operativi: Microsoft Windows, Linux, Mac OS
        * Ambiente di sviluppo: NetBeans, Intellij IDEA, Eclipse ecc
        * Java Ambiente di runtime: J2SE 6.0 e versioni successive
        * Scarica l'ultima versione di GroupDocs.Redaction for Java da [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Perché usare GroupDocs.Redaction"
      content_right: |
        * Consenti agli utenti di aggiungere formati di documenti e tipi di redazioni personalizzati
        * Non è richiesto alcun software aggiuntivo per rimuovere le informazioni sensibili
        * Possibilità di impostare il documento di rendering dell'intervallo di pagine come PDF
        * Un modo semplice per oscurare diversi tipi di metadati: nome dell'autore, versione, titolo, oggetto, descrizione e molti altri
        * Estrazione di informazioni sui documenti: tipo di file, numero di pagine ecc.
        

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