
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rimuovi Testo Sensibile in PDF Usando Java"
head_description: "Usa GroupDocs.Redaction for Java per trovare e rimuovere dati privati dai tuoi file PDF. Rimozione di testo semplice, veloce e affidabile."

############################# Header ############################
title: "Rimuovi Dati Sensibili da File PDF con Java" 
description: "Pulisci i file PDF utilizzando Java e GroupDocs.Redaction for Java. Rimuovi contenuti personali, legali o aziendali."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre agli sviluppatori Java un modo semplice per pulire i file PDF. Rimuovi o sostituisci testo, immagini, commenti e dati nascosti.

############################# Steps ############################
steps:
    enable: true
    title: "Come Rimuovere Testo dai File Pdf"
    content: |
      Con GroupDocs.Redaction for Java, gli sviluppatori Java possono rimuovere contenuti sensibili in pochi passaggi.
      
      1. Crea un Redactor e carica il tuo file Pdf.
      2. Scegli le impostazioni di riduzione che desideri.
      3. Inserisci il testo da cercare e la sua sostituzione.
      4. Applica la riduzione e salva il file.
   
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
        // Come pulire un file PDF

        // Crea un Redactor e carica il documento
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Imposta le tue regole di riduzione
            // Aggiungi il testo da rimuovere e con cosa sostituirlo
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Applica la riduzione e salva il nuovo file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altre Funzionalità di Riduzione"
  description: "GroupDocs.Redaction for Java rimuove informazioni sensibili attraverso molti formati. Riduci testo, immagini e metadati mantenendo i file leggibili."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Strumenti per la riduzione di testo e immagini"
  features:
    # feature loop
    - title: "Trova e sostituisci testo"
      content: "Cerca parole o frasi e sostituiscile. Funziona con testo normale o regex."

    # feature loop
    - title: "Copri contenuti immagine"
      content: "Nascondi immagini o parti di immagini utilizzando sovrapposizioni colorate."

    # feature loop
    - title: "Pulisci metadati"
      content: "Rimuovi nomi degli autori, date o altri dettagli nascosti prima della condivisione."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rimuovi Testo con Regex"
      content: |
        Usa regex per trovare e nascondere modelli come email, ID o formati personalizzati.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il documento che vuoi modificare
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Aggiungi un modello EMAIL regex e il testo di sostituzione
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Applica la riduzione sui contenuti corrispondenti
              redactor.apply(redaction);

              // Salva la versione ridotta
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
    title: "Rimuovi File PDF con Java"
    exclude: "PDF"
    description: "Proteggi informazioni personali o aziendali riducendo contenuti PDF con gli strumenti di Java."
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