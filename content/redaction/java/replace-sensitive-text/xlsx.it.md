
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rimuovi Testo Privato da XLSX con Java"
head_description: "Mantieni al sicuro i tuoi dati XLSX riducendo testo e metadati con GroupDocs.Redaction for Java. Protezione efficace e semplice."

############################# Header ############################
title: "Pulisci File XLSX Usando Java" 
description: "Rimuovi contenuti sensibili dai file XLSX con Java e GroupDocs.Redaction for Java. Mantieni i tuoi fogli di calcolo sicuri."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Perché Usare GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre agli sviluppatori Java strumenti per pulire i file XLSX. Riduci testo, metadati, immagini e altro con poche righe di codice.

############################# Steps ############################
steps:
    enable: true
    title: "Riduci Dati da File Xlsx"
    content: |
      Usa GroupDocs.Redaction for Java in qualsiasi app Java per rimuovere testo o contenuto nascosto prima della condivisione.
      
      1. Crea un'istanza di Redactor e carica il tuo file.
      2. Seleziona le opzioni di riduzione che desideri.
      3. Scegli il testo da trovare e il suo replacement.
      4. Applica la riduzione e salva il tuo documento.
   
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
        // Come ridurre un foglio di calcolo XLSX

        // Crea un Redactor e carica il tuo file
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // Scegli le tue impostazioni di riduzione
            // Inserisci testo di ricerca e sostituzione
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Applica modifiche e salva
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Strumenti di Riduzione Utili"
  description: "GroupDocs.Redaction for Java aiuta a rimuovere contenuti privati da vari file. Pulisci i documenti senza perdere formattazione."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Protezione intelligente dei contenuti"
  features:
    # feature loop
    - title: "Cerca e sostituisci testo"
      content: "Trova e aggiorna o nascondi dati sensibili nelle celle."

    # feature loop
    - title: "Copri immagini"
      content: "Nascondi grafici, immagini o intervalli utilizzando sovrapposizioni colorate."

    # feature loop
    - title: "Cancella metadati"
      content: "Rimuovi informazioni sugli autori, date di creazione e altri dati di base."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Riduzione con Regex"
      content: |
        Trova e riduci valori come numeri di conto o modelli utilizzando regex.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il file da processare
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // Aggiungi una regola EMAIL regex e sostituzione
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Applica le regole di riduzione
              redactor.apply(redaction);

              // Salva il file aggiornato
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
    title: "Riduci Contenuti in XLSX con Java"
    exclude: "XLSX"
    description: "Pulisci e proteggi file XLSX utilizzando le funzionalità di Java per la riduzione e la rimozione dei contenuti."
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