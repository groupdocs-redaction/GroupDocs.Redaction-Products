---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "it/redaction/java/text/xltx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM  

############################# Head ############################
head_title: "Modificare XLTX testo tramite frase esatta/espressione regolare in Java"
head_description: "L'API GroupDocs.Redaction s Java consente agli sviluppatori di oscurare il testo da PDF DOC DOCX RTF XLSX CSV PPT PPTX e immagini tramite una frase esatta o un'espressione regolare in Java"

############################# Header ############################
title: "Come oscurare, nascondere o rimuovere testo da XLTX file utilizzando Java"
description: "L'API GroupDocs.Redaction s Java consente di oscurare, nascondere o rimuovere testo sensibile da documenti di elaborazione testi, fogli di lavoro, presentazioni, PDF s e immagini."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Cos'è la redazione del testo?"
    content: |
        La redazione del testo è il processo di rimozione del testo o delle informazioni riservate o indesiderate dai documenti digitali lasciando intatto il resto del documento o del paragrafo che lo contiene. La redazione aiuta gli utenti e le organizzazioni a proteggere le proprie informazioni sensibili nascondendole o rimuovendole definitivamente. Utilizzando l'API GroupDocs.Redaction Java gli utenti possono ora oscurare, nascondere o rimuovere testo sensibile da documenti di elaborazione testi, fogli di lavoro, presentazioni, PDF e file di immagini raster. L'API offre un'ampia gamma di opzioni e metodi per la redazione delle informazioni private nei documenti. Supporta la ricerca e la redazione utilizzando corrispondenze esatte o espressioni regolari, utilizza redazioni testuali (codici di esenzione) o grafiche (rettangoli colorati) e molto altro. Allora perché non provarlo e automatizzare il processo di redazione dei documenti scaricando l'API ed esplorando le sue funzionalità di base e avanzate. 

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redigere XLTX Frase esatta in Java"
      content_left: |
        GroupDocs.Redaction consente di cancellare facilmente i dati di natura sensibile o privata dai tuoi documenti. Il caso di redazione più diffuso è quello di rimuovere un testo da un documento. 

        Il codice seguente può essere utilizzato per applicare la redazione testuale a una particolare parte di un documento tramite una frase esatta. Consente agli utenti di sostituire la frase esatta personale «Michal Clark» con personale (o qualsiasi codice di esenzione),

      title_right: "Rimuovi dati sensibili da XLTX"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) e carica il file XLTX
        * Chiama il metodo Redactor.apply con una nuova istanza della classe ExactPhraserEdAction
        * Chiama il metodo redactor.save con l'oggetto di [ExactPhraseRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Chiama il metodo redactor.save per salvare le modifiche 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redactexactphrase.java"
      
    - title_left: "Redazione del testo con distinzione tra maiuscole e minuscole in XLTX"
      content_left: |
        L'esempio seguente consente agli utenti di eseguire una redazione esatta con distinzione tra maiuscole e minuscole per rimuovere o nascondere una particolare parte di testo all'interno di un documento. Per impostazione predefinita, la ricerca per frase esatta non fa distinzione tra maiuscole e minuscole. 
        
      title_right: "Esegui una redazione sensibile alle maiuscole tramite Java"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) e carica il file XLTX
        * Chiama il metodo Redactor.apply con una nuova istanza della classe ExactPhraserEdAction
        * Chiama il metodo redactor.save con l'oggetto di [ExactPhraseRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Chiama il metodo redactor.save per salvare le modifiche 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "casesensitiveredaction.java"

    - title_left: "Modifica il testo in XLTX tramite Color Box"
      content_left: |
        Invece di rimuovere un testo redatto o inserire una stringa lì, è anche possibile inserire una casella colorata sopra il testo redatto. In questo caso il testo corrispondente verrà rimosso e un rettangolo colorato verrà posizionato sul testo redatto.
        
      title_right: "Usa la casella dei colori per rimuovere il testo in Java"
      content_right: |
        * Crea un'istanza della classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) e carica il file XLTX
        * Chiama il metodo Redactor.apply con una nuova istanza della classe ExactPhraserEdAction
        * Chiama il metodo redactor.save con l'oggetto di [ExactPhraseRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Chiama il metodo redactor.save per salvare le modifiche 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redacttextusingcolorbox.java"

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