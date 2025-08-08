
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Proteggi Testo Riservato in PDF con Overlay Utilizzando Java"
head_description: "GroupDocs.Redaction for Java ti consente di nascondere informazioni sensibili nei file PDF posizionando riquadri colorati. Proteggi i dati senza modificare l'aspetto del tuo file."

############################# Header ############################
title: "Maschera Testo in Documenti PDF Utilizzando Overlay in Java" 
description: "Prendi il pieno controllo del contenuto del file PDF con Java. Usa la redazione per proteggere dettagli finanziari, legali o personali."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Cosa Offre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornisce agli sviluppatori Java un modo semplice per nascondere o rimuovere contenuti dai file PDF. Copri testo, immagini e metadati attraverso diversi tipi di documenti.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Informazioni Riservate in File Pdf"
    content: |
      GroupDocs.Redaction for Java facilita la vita ai programmatori Java per nascondere contenuti privati con pochi passaggi.
      
      1. Avvia un Redactor e carica il tuo file Pdf.
      2. Imposta le tue preferenze di redazione.
      3. Scegli cosa cercare e seleziona il tuo colore di overlay.
      4. Applica la redazione e salva il tuo documento.
   
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
        // Copri testo in PDF utilizzando overlay colorati

        // Passa il percorso del file al Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Regola le impostazioni di redazione
            // Imposta testo e colore target
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Applica e salva il PDF redatto
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Controlla Cosa è Visibile nei Documenti"
  description: "GroupDocs.Redaction for Java ti consente di oscurare o rimuovere parti dei tuoi file mantenendoli facili da visualizzare e condividere."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione Potenti"
  features:
    # feature loop
    - title: "Identifica e nascondi testo"
      content: "Cerca nel tuo documento e nascondi parole o frasi specifiche per proteggere informazioni private."

    # feature loop
    - title: "Copri immagini"
      content: "Aggiungi overlay per nascondere completamente o parzialmente visuali."

    # feature loop
    - title: "Rimuovi metadata"
      content: "Elimina dettagli nascosti nel documento per evitare esposizioni involontarie."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondi Testo Utilizzando Regex"
      content: |
        Questo esempio utilizza espressioni regolari per trovare e nascondere contenuti specifici
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il file che desideri elaborare
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Imposta il modello di testo e il colore di overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Applica la redazione
              redactor.apply(redaction);

              // Salva le tue modifiche
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Proteggi File PDF con Java"
    exclude: "PDF"
    description: "Usa Java per coprire o cancellare contenuti nei documenti PDF. Un ottimo modo per mantenere le informazioni riservate sicure."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 6
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 7
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Presentazione Open XML di PowerPoint"


---