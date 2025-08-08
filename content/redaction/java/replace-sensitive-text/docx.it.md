
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rimuovi Testo Privato da DOCX con Java"
head_description: "Proteggi contenuti nei tuoi file DOCX utilizzando GroupDocs.Redaction for Java. Riduzione di testo, immagini e metadati veloce ed efficace."

############################# Header ############################
title: "Modifica o Rimuovi Testo in Documenti DOCX con Java" 
description: "Proteggi contenuti personali o aziendali nei tuoi file DOCX con Java e GroupDocs.Redaction for Java."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java aiuta gli sviluppatori Java a pulire e ridurre file DOCX. Rimuovi testo, immagini, commenti e dati nascosti con precisione.

############################# Steps ############################
steps:
    enable: true
    title: "Come Ridurre Contenuti nei File Docx"
    content: |
      Usa GroupDocs.Redaction for Java nei tuoi progetti Java per pulire i file prima della condivisione.
      
      1. Crea un Redactor e carica il file.
      2. Scegli le opzioni di riduzione.
      3. Inserisci il testo da cercare e la sua sostituzione.
      4. Applica le riduzioni e salva il file.
   
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
        // Riduci contenuti in un file DOCX

        // Carica il documento utilizzando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Imposta le opzioni di riduzione
            // Definisci cosa trovare e sostituire
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Applica la riduzione e salva
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Opzioni di Riduzione"
  description: "GroupDocs.Redaction for Java ti consente di pulire contenuti sensibili da molti tipi di file. Mantieni i tuoi documenti al sicuro senza perdere struttura."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Strumenti per rimuovere contenuti"
  features:
    # feature loop
    - title: "Sostituisci testo"
      content: "Trova contenuti specifici e sostituiscili nel documento."

    # feature loop
    - title: "Nascondi immagini o parti"
      content: "Copri visuali sensibili con sovrapposizioni colorate."

    # feature loop
    - title: "Rimuovi dati nascosti"
      content: "Cancella metadati come nomi degli autori, timestamp o proprietà del documento."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Riduzione Basata su Regex"
      content: |
        Usa espressioni regolari per rilevare e ridurre modelli come numeri di telefono o email.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il documento
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Imposta un modello EMAIL regex e il testo di sostituzione
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Esegui la riduzione
              redactor.apply(redaction);

              // Salva il file pulito
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
    title: "Pulisci File DOCX con Java"
    exclude: "DOCX"
    description: "Riduci o sostituisci contenuti sensibili in documenti DOCX utilizzando gli strumenti forniti da Java."
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