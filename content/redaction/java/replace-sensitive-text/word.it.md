
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rimuovi Testo Privato da WORD Usando Java"
head_description: "Mantieni i tuoi file WORD al sicuro riducendo dati sensibili con GroupDocs.Redaction for Java e Java. Pulizia rapida e semplice."

############################# Header ############################
title: "Modifica o Rimuovi Testo nei File WORD con Java" 
description: "Proteggi contenuti importanti nei tuoi file WORD utilizzando GroupDocs.Redaction for Java e Java. Riduci dati aziendali, legali o personali con fiducia."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Che Cos'è GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre agli sviluppatori Java un modo affidabile per ridurre i file WORD. Pulisci testo, immagini, commenti e dettagli nascosti con poche righe di codice.

############################# Steps ############################
steps:
    enable: true
    title: "Passi per Ridurre Documenti Word"
    content: |
      Usa GroupDocs.Redaction for Java nei tuoi progetti Java per pulire i file prima della condivisione.
      
      1. Crea un Redactor e carica il documento Word.
      2. Imposta le tue opzioni di riduzione preferite.
      3. Scegli il testo che desideri trovare e sostituire.
      4. Applica la riduzione e salva il tuo file.
   
    code:
      platform: "java"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Riducendo un documento WORD

        // Carica il file usando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Scegli le tue regole di riduzione
            // Inserisci il testo di ricerca e sostituzione
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Esegui la riduzione e salva il nuovo file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altre Funzionalità di Riduzione"
  description: "GroupDocs.Redaction for Java può aiutarti a liberarti di informazioni sensibili da diversi tipi di file. Rimuovi testo, immagini e metadati rapidamente."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Riduci testo, immagini e metadati"
  features:
    # feature loop
    - title: "Cerca e sostituisci testo"
      content: "Trova contenuti specifici e sostituiscili o cancellali in tutto il file. Supporto regex incluso."

    # feature loop
    - title: "Copri parti delle pagine"
      content: "Usa sovrapposizioni per nascondere foto o sezioni del documento."

    # feature loop
    - title: "Cancella metadati"
      content: "Elimina informazioni extra come autore, timestamp o modifiche tracciate."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Riduzione con Modelli Regex"
      content: |
        Cerca testo utilizzando espressioni regolari per nascondere contenuti come numeri di telefono, date o ID.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il documento
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Imposta un modello EMAIL regex e valore di sostituzione
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Applica la riduzione
              redactor.apply(redaction);

              // Salva il documento aggiornato
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copia"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "clicca per copiare"
          copy_done: "copiato"
        top_links:
          #  loop
          - title: "Scarica risultato"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "Altri esempi"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Riduci Contenuti in WORD con Java"
    exclude: "WORD"
    description: "Nascondi o rimuovi contenuti personali e privati da documenti WORD utilizzando Java. Un modo semplice per mantenere i tuoi file sicuri."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 6
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 7
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Presentazione Open XML di PowerPoint"


---