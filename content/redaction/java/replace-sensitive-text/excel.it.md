
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rimuovi Testo Privato da EXCEL Usando Java"
head_description: "Mantieni i tuoi fogli di calcolo EXCEL al sicuro rimuovendo contenuti sensibili con GroupDocs.Redaction for Java e Java. Riduzione rapida e semplice."

############################# Header ############################
title: "Modifica o Rimuovi Testo nei File EXCEL con Java" 
description: "Pulisci i tuoi file EXCEL con GroupDocs.Redaction for Java e Java. Ottimo per proteggere dati aziendali o personali."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Incontra GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre agli sviluppatori Java tutto ciò di cui hanno bisogno per pulire i file EXCEL. Modifica o nascondi testo, immagini, metadati e note con precisione.

############################# Steps ############################
steps:
    enable: true
    title: "Come Ridurre Contenuti nei File Excel"
    content: |
      Usa GroupDocs.Redaction for Java nei tuoi progetti Java per rimuovere o coprire il testo che non vuoi condividere.
      
      1. Crea un Redactor e carica il file Excel.
      2. Scegli le impostazioni di riduzione.
      3. Definisci cosa trovare e cosa sostituire.
      4. Esegui la riduzione e salva il tuo file.
   
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
        // Come ridurre testo in un file EXCEL

        // Carica il file con Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Imposta le tue regole di riduzione
            // Inserisci il testo di destinazione e la sostituzione
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Applica e salva il file pulito
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altri Strumenti di Riduzione"
  description: "GroupDocs.Redaction for Java aiuta a liberarti di contenuti privati in molti tipi di documento. Ottimo per la privacy prima della condivisione."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Caratteristiche di riduzione di testo, immagine e metadati"
  features:
    # feature loop
    - title: "Sostituisci testo privato"
      content: "Trova e cambia parole o numeri corrispondenti in tutto il file. Usando modelli di ricerca o corrispondenze esatte."

    # feature loop
    - title: "Nascondi parti delle immagini"
      content: "Aggiungi caselle di sovrapposizione per nascondere immagini o celle. Scegli colori, dimensioni e posizioni."

    # feature loop
    - title: "Rimuovi informazioni di base"
      content: "Cancella dati nascosti come paternità, timestamp o commenti di documento."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Riduci Modelli con Regex"
      content: |
        Usa espressioni regolari per trovare e nascondere modelli come indirizzi email o numeri di conto.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il file che vuoi pulire
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Crea un modello EMAIL regex e impostane il testo di sostituzione
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Esegui il processo di riduzione
              redactor.apply(redaction);

              // Salva la versione aggiornata
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
    title: "Riduci Contenuti in EXCEL Usando Java"
    exclude: "EXCEL"
    description: "Pulisci dati privati da file EXCEL usando Java. Un modo intelligente per mantenere i tuoi fogli di calcolo al sicuro."
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