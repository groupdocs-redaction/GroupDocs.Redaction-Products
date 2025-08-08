
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: it
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Nascondi Testo in Presentazioni PPTX con Overlay Java"
head_description: "Usa GroupDocs.Redaction for Java per bloccare contenuti sensibili nei file PPTX con overlay colorati. Mantieni le diapositive intatte mentre nascondi informazioni chiave."

############################# Header ############################
title: "Maschera Testo in Presentazioni PPTX con Java" 
description: "Proteggi facilmente dettagli personali o aziendali nelle tue diapositive PPTX usando Java e GroupDocs.Redaction for Java."
subtitle: "Esplora le Caratteristiche di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Cosa Fa GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java consente agli sviluppatori Java di nascondere o rimuovere testo, immagini o metadati nelle presentazioni PPTX in pochi passaggi.

############################# Steps ############################
steps:
    enable: true
    title: "Redigi Contenuti Privati in Diapositive Pptx"
    content: |
      GroupDocs.Redaction for Java semplifica la protezione dei contenuti per gli sviluppatori Java.
      
      1. Imposta un Redactor con il percorso della tua presentazione.
      2. Scegli come deve comportarsi la redazione.
      3. Aggiungi il modello di testo e il colore di overlay.
      4. Redigi la diapositiva e salvala.
   
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
        // Usa overlay per bloccare testo in PPTX

        // Inizializza Redactor con la tua presentazione
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Seleziona le tue preferenze di redazione
            // Imposta il testo e il colore di overlay
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Esegui la redazione e salvala
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Strumenti di Redazione Potenti"
  description: "GroupDocs.Redaction for Java ti consente di bloccare o rimuovere contenuti sensibili nelle tue presentazioni senza alterare layout o formattazione."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Funzionalità che funzionano attraverso le diapositive"
  features:
    # feature loop
    - title: "Nascondi o sostituisci testo"
      content: "Proteggi nomi, termini o note che non dovrebbero essere visibili."

    # feature loop
    - title: "Coprire aree visive"
      content: "Aggiungi overlay a foto o sezioni grafiche delle diapositive."

    # feature loop
    - title: "Elimina metadati"
      content: "Cancella informazioni dietro le quinte che potrebbero rivelare paternità o cronologia delle modifiche."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigi Testo con Regex"
      content: |
        Usa espressioni regolari per trovare e coprire parole sensibili
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il file di presentazione
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Imposta il modello di ricerca e il colore di overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Esegui le regole di redazione
              redactor.apply(redaction);

              // Salva la versione finale
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
    title: "Proteggi Diapositive PPTX con Strumenti Java"
    exclude: "PPTX"
    description: "Copri contenuti sensibili o rimuovili completamente dalle presentazioni PPTX utilizzando le funzionalità di redazione di Java."
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