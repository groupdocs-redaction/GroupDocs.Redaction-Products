---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: it
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Rimuovi dati confidenziali dai documenti utilizzando Java"
head_description: "Proteggi le tue informazioni sensibili con GroupDocs.Redaction for Java. Nascondi, redigi o elimina senza sforzo contenuti privati in PDF, file Office e immagini."

############################# Header ############################
title: "Proteggi Dati Confidenziali con GroupDocs.Redaction"
description: "Rimuovi facilmente dati privati, redigi testo e pulisci metadati da PDF, Word, Excel, PowerPoint e formati di immagine utilizzando l'affidabile toolkit Java."
words:
  for: "per"

actions:
  main: "Download Maven"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "Licenze"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "Pronto per Iniziare?"
  description: "Prova gratuitamente le funzionalità di GroupDocs.Redaction o richiedi una licenza."

release:
  title: "Versione {0} Rilasciata"
  notes: "Scopri le novità"
  downloads: "Download"

code:
  title: "Passaggi per Redigere il Contenuto del Documento"
  more: "Ulteriori esempi"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Carica il tuo file sorgente con un'istanza di Redactor
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // Definisci i criteri e le impostazioni di redazione
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // Esegui l'operazione di redazione
        RedactorChangeLog result = redactor.apply(red);

        // Salva il file con le redazioni applicate
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction a Colpo d'Occhio"
  description: "Migliora le tue applicazioni Java con strumenti di redazione professionali"
  features:
    # feature loop
    - title: "Rimuovi Testo Sensibile"
      content: "Con GroupDocs.Redaction for Java, puoi cercare e nascondere testo privato utilizzando sovrapposizioni o sostituzioni personalizzabili. Compatibile con PDF, Word, Excel e altro, è ideale per la conformità normativa e la condivisione sicura dei documenti."

    # feature loop
    - title: "Nascondi Immagini"
      content: "Identifica e maschera completamente o parzialmente le immagini in base alle tue esigenze. Definisci regole di rilevamento e coordinate delle aree per proteggere in modo efficiente i dati visivi."

    # feature loop
    - title: "Pulisci i Metadati Incorporati"
      content: "I file possono contenere informazioni nascoste come nomi di autori, strumenti di creazione o dettagli del dispositivo. GroupDocs.Redaction for Java ti consente di rilevare e sanificare i metadati in Word, Excel, immagini e altri formati."

    # feature loop
    - title: "Redigi Oggetti Incorporati"
      content: "Sanifica approfonditamente i documenti redigendo oggetti come annotazioni PDF, commenti o altri elementi incorporati per eliminare qualsiasi traccia di informazioni confidenziali."

############################# Platforms ############################
platforms:
  enable: true
  title: "Indipendenza della Piattaforma"
  description: "GroupDocs.Redaction for Java funziona su sistemi operativi principali, framework e piattaforme di sviluppo."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "Formati di File Supportati"
  description: |
    GroupDocs.Redaction for Java supporta l'utilizzo dei seguenti [formati di file](https://docs.groupdocs.com/redaction/java/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### Formati MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Altri Formati Office
        * **Portabile:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Formati di Testo:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Altri Formati
        * **Web:** HTM, HTML, MD
        * **Immagini:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBook:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Cosa Puoi Fare con GroupDocs.Redaction"
  description: "Trova e redigi rapidamente contenuti da PDF, documenti Office e immagini con precisione."

  items:
    # feature loop
    - icon: "search"
      title: "Cerca con Precisione"
      content: "Utilizza modalità di ricerca sensibile e insensibile per trovare e redigere corrispondenze esatte."

    # feature loop
    - icon: "text"
      title: "Trova e Sostituisci Testo"
      content: "Rileva automaticamente e sostituisci o elimina testo confidenziale attraverso il documento."

    # feature loop
    - icon: "image"
      title: "Sovrapponi con Immagini Personalizzate"
      content: "Usa blocchi immagine per oscurare il testo redatto, mantenendo il layout mentre nascondi i dettagli."

    # feature loop
    - icon: "search"
      title: "Utilizza Regex per Redazioni Avanzate"
      content: "Sfrutta espressioni regolari per individuare modelli complessi e redigere in modo intelligente."

    # feature loop
    - icon: "table"
      title: "Redigi Aree Specifiche"
      content: "Limita la redazione a pagine selezionate o zone definendo aree di destinazione precise."

    # feature loop
    - icon: "template"
      title: "Pulisci i Campi dei Metadati"
      content: "Identifica e ripulisci i metadati del documento, inclusi autore, azienda o dati di tracciamento."

    # feature loop
    - icon: "pdf"
      title: "Esporta nel Formato Desiderato"
      content: "Salva i tuoi file redatti in PDF o in un altro formato supportato senza perdere integrità del layout."

    # feature loop
    - icon: "template"
      title: "Pulizia Completa dei Metadati"
      content: "Rimuovi completamente i metadati dai file supportati con un solo comando."

    # feature loop
    - icon: "hyperlink"
      title: "Politiche di Redazione Automatizzate"
      content: "Crea configurazioni di redazione riutilizzabili memorizzate in XML per una redazione consistente in batch."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Esempi di Codice"
  description: "Esempi comuni di utilizzo di GroupDocs.Redaction for Java"
  items:
    # code sample loop
    - title: "Redazione Utilizzando Regex"
      content: |
        GroupDocs.Redaction for Java consente gli sviluppatori Java di applicare [redazione basata su regex](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) con mascheratura delle immagini opzionale:
        {{< landing/code title="Redigi Documenti Word Utilizzando Espressioni Regolari">}}
        ```java {style=abap}
        // Crea un'istanza della classe Redactor
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // Definisci regole di redazione utilizzando un'espressione regolare
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // Maschera tutto il testo corrispondente con sovrapposizioni quadrate blu
            redactor.apply(redaction);

            // Salva il documento Word redatto
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Rimuovi Tutti i Metadati"
      content: |
        Con la nostra API, puoi [eliminare i metadati](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) attraverso vari tipi di file in un solo passaggio:
        {{< landing/code title="Rimuovi Tutti i Metadati dalle Presentazioni">}}
        ```java {style=abap}   
        // Fornisci il percorso della presentazione a Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // Configura le opzioni di redazione
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // Cancella tutti i metadati dalla presentazione
            redactor.apply(red);

            // Salva il file di presentazione pulito
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
