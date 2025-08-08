
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: it
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Proteggi Testo in POWERPOINT con Overlay Java"
head_description: "Con GroupDocs.Redaction for Java, puoi bloccare testo privato in diapositive POWERPOINT utilizzando semplici riquadri di overlay—senza cambiare il layout."

############################# Header ############################
title: "Nascondi Testo in POWERPOINT Utilizzando Overlay e Java" 
description: "Usa Java e GroupDocs.Redaction for Java per mantenere sicure le tue diapositive POWERPOINT mascherando contenuti sensibili."
subtitle: "All'interno di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java aiuta gli sviluppatori Java a pulire le diapositive POWERPOINT bloccando o eliminando contenuti sensibili come testo, metadati o immagini.

############################# Steps ############################
steps:
    enable: true
    title: "Pulisci Presentazioni Powerpoint Prima di Condividerle"
    content: |
      Usa GroupDocs.Redaction for Java nelle app Java per nascondere o rimuovere parti sensibili delle tue diapositive.
      
      1. Crea un nuovo Redactor con il percorso della tua presentazione.
      2. Definisci le tue preferenze di redazione.
      3. Imposta il modello di testo e il colore di overlay.
      4. Esegui e salva il file redatto.
   
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
        // Overlay aree di testo in POWERPOINT

        // Apri il file con Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Regola le impostazioni di redazione
            // Inserisci testo e scegli colore di overlay
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redigi e salva il file aggiornato
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redazione Semplice per Diapositive Sensibili"
  description: "GroupDocs.Redaction for Java rende facile bloccare o rimuovere contenuti dalle diapositive, indipendentemente dall'uso."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Strumenti di redazione che si adattano"
  features:
    # feature loop
    - title: "Trova e sostituisci testo"
      content: "Proteggi frasi o etichette sensibili su qualsiasi diapositiva."

    # feature loop
    - title: "Coprire parti visive"
      content: "Aggiungi overlay a aree selezionate delle diapositive o immagini."

    # feature loop
    - title: "Rimuovi contenuti nascosti"
      content: "Cancella metadati o note di revisione dalle diapositive prima di condividerle."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex per Redazione del Testo"
      content: |
        Impara a rilevare e redigere testo utilizzando la corrispondenza di pattern
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il file delle diapositive
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Applica le tue regole regex
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Esegui la redazione
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
    title: "Proteggi Diapositive POWERPOINT con Java"
    exclude: "POWERPOINT"
    description: "Usa redazione overlay e strumenti di ripulitura di Java per mantenere private le tue diapositive POWERPOINT."
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