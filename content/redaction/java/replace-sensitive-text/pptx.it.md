
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rimuovi Testo Privato da PPTX Usando Java"
head_description: "Proteggi dettagli sensibili nelle tue presentazioni PPTX con GroupDocs.Redaction for Java e Java. Riduzione rapida e semplice con risultati immediati."

############################# Header ############################
title: "Pulisci Testo nei File PPTX con Java" 
description: "Usa GroupDocs.Redaction for Java e Java per nascondere o rimuovere contenuti nelle tue diapositive PPTX. Ideale per uso commerciale, legale o personale."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Incontra GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre agli sviluppatori Java un modo efficace per modificare o nascondere contenuti nei file PPTX. Lavora con testo, immagini, metadati e commenti con completo controllo.

############################# Steps ############################
steps:
    enable: true
    title: "Come Ridurre i Contenuti nelle Presentazioni Pptx"
    content: |
      Con GroupDocs.Redaction for Java, puoi pulire le tue presentazioni Java in pochi passaggi.
      
      1. Crea un Redactor e carica il tuo file Pptx.
      2. Seleziona le impostazioni di riduzione che soddisfano le tue esigenze.
      3. Imposta il termine di ricerca e il contenuto di sostituzione.
      4. Applica modifiche e salva il tuo file aggiornato.
   
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
        // Ridurre il testo in una presentazione PPTX

        // Carica il tuo documento utilizzando Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Imposta le opzioni di riduzione
            // Scegli il testo da cercare e con cosa sostituirlo
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Riduci e salva il file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altri Strumenti di Riduzione"
  description: "GroupDocs.Redaction for Java semplifica la rimozione o l'occultamento di contenuti privati da una vasta gamma di file. Perfetto per mantenere i tuoi dati al sicuro prima della condivisione."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opzioni per rimuovere testo, immagini e metadati"
  features:
    # feature loop
    - title: "Sostituisci testo ovunque"
      content: "Cerca e sostituisci parole o frasi nelle diapositive. Funziona con testo esatto o modelli."

    # feature loop
    - title: "Nascondi contenuti visivi"
      content: "Copri parti di una diapositiva o immagine utilizzando caselle di sovrapposizione del colore desiderato."

    # feature loop
    - title: "Rimuovi metadati"
      content: "Elimina dati di base come autore, data di creazione o note che potrebbero contenere informazioni private."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Riduzione Basata su Regex"
      content: |
        Usa espressioni regolari per trovare e rimuovere modelli come email, numeri di telefono o codici.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il tuo file
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Aggiungi un modello EMAIL regex e sostituzione
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Applica la riduzione in base al modello
              redactor.apply(redaction);

              // Salva la versione pulita
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
    title: "Riduci Contenuti in PPTX Usando Java"
    exclude: "PPTX"
    description: "Rimuovi dettagli privati o sensibili da documenti PPTX utilizzando Java. Un modo affidabile per mantenere i tuoi file sicuri."
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