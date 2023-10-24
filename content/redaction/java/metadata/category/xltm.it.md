
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "it/redaction/java/metadata/category/xltm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTX  
ad_headline: "Modificare i metadati | Java"
ad_description: "Modifica il nome della categoria dai metadati XLTM in Java"
############################# Head ############################
head_title: "Modifica il nome della categoria dai metadati XLTM in Java"
head_description: "GroupDocs.Redaction s fornisce un'API flessibile che consente di cercare e sostituire/rimuovere qualsiasi proprietà dei metadati utilizzando i filtri."

############################# Header ############################
title: "Modifica il nome della categoria dai metadati XLTM in Java"
description: "GroupDocs.Redaction s fornisce un'API flessibile che consente di cercare e sostituire/rimuovere qualsiasi proprietà dei metadati utilizzando i filtri."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Cos'è la redazione dei metadati?"
    content: |
        La redazione si riferisce alla rimozione di informazioni indesiderate o riservate dai documenti elettronici. Tutti i formati di file tra cui PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX e altri hanno alcune proprietà di metadati. Queste proprietà includono il nome dell'autore, la categoria, il nome dell'azienda, i commenti, l'ora di creazione, l'ultimo aggiornamento e molte altre. A volte è necessario eliminare completamente i campi di metadati indesiderati o è possibile aggiornarne i valori. Ci sono anche alcuni dati nascosti associati ai file che possono essere visualizzati utilizzando vari strumenti e tecniche. Ci sono molti casi in cui non si desidera che nessuno acceda a questi dati. Con l'API GroupDocs.Redaction puoi applicare le redazioni dei metadati a qualsiasi di queste proprietà dei metadati. Puoi modificarli o eliminarli filtrando i metadati che desideri. In questa guida spiegheremo come puoi oscurare il nome della categoria dai metadati XLTM in Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Modificare i metadati XLTM in Java"
      content_left: |
        Il codice seguente consente di cercare e redigere dati sensibili da un documento XLTM. Puoi impostare l'ambito di redazione impostando il filtro, ad esempio su MetadataFilter.Category. - lascerà le corrispondenze delle espressioni regolari annullate in tutti gli elementi dei metadati, ad eccezione della proprietà «Category»: 

      title_right: "Come oscurare i metadati XLTM"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) e carica il file XLTM
        * Crea un'istanza della classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) per trovare e sostituire i dati sensibili dai metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio Usa metadataFilters.category nel codice seguente
        * Chiama il metodo redactor.save con l'oggetto di [metadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "480e989781148cd44a7aa8823887ae21"
      gistfile: "RedactCategoryMetadata.java"
      
    - title_left: "Rimuovi XLTM metadati in Java"
      content_left: |
        È possibile sostituire tutti i metadati o specifici del documento con valori vuoti (vuoti o minimi) utilizzando la classe EraseMetadataRedAction. Il codice seguente mostra come filtrare e quindi rimuovere una proprietà di metadati da un documento XLTM. L'esempio seguente elimina tutte le proprietà del documento: 
        
      title_right: "Cancella i metadati delle categorie dal file XLTM"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) e carica il file XLTM
        * Crea un'istanza della classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) per rimuovere i metadati del documento
        * Imposta l'ambito di redazione impostando il filtro, ad esempio Sostituisci MetadataFilter.all con MetadataFilter.category nel codice seguente
        * Chiama il metodo redactor.save con l'oggetto di [metadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
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