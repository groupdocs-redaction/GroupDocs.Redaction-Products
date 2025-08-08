
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Nascondi Testo in DOCX con Overlay Utilizzando Java"
head_description: "Usa GroupDocs.Redaction for Java per oscurare testo privato nei file DOCX. Mantieni il layout invariato mentre nascondi dati sensibili."

############################# Header ############################
title: "Proteggi Testo DOCX con Overlay in Java" 
description: "Nascondi rapidamente dettagli personali, legali o aziendali in file DOCX con Java e GroupDocs.Redaction for Java."
subtitle: "Strumenti Chiave in GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Cosa È GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre agli sviluppatori Java strumenti per ripulire i file DOCX. Redigi nomi, numeri o note senza complicazioni.

############################# Steps ############################
steps:
    enable: true
    title: "Redigi Contenuti Sensibili in Docx"
    content: |
      Rendi semplici i documenti nel tuo progetto Java utilizzando GroupDocs.Redaction for Java.
      
      1. Inizializza Redactor con il tuo file.
      2. Scegli come deve funzionare la redazione.
      3. Seleziona il testo da nascondere e il colore di overlay.
      4. Applica la redazione e salva il file.
   
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
        // Copri testo con overlay in DOCX

        // Crea un Redactor e carica il tuo documento
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Scegli le opzioni di redazione
            // Seleziona testo e colore
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Salva la versione redatta
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Strumenti di Redazione per Uso Quotidiano"
  description: "GroupDocs.Redaction for Java ti offre opzioni semplici per nascondere dettagli sensibili in diversi documenti mantenendoli utilizzabili."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opzioni di redazione facili"
  features:
    # feature loop
    - title: "Trova e modifica testo"
      content: "Nascondi o sostituisci parole in pochi secondi."

    # feature loop
    - title: "Oscura parti delle immagini"
      content: "Maschera sezioni di immagini o contenuti scansionati."

    # feature loop
    - title: "Cancella informazioni di sfondo"
      content: "Rimuovi metadati nascosti come paternità o date."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Trova Testo con Regex e Nascondilo"
      content: |
        Usa la corrispondenza di pattern per nascondere automaticamente frasi chiave
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il documento che desideri redigere
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Imposta il modello regex e lo stile di overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Applica la logica di redazione
              redactor.apply(redaction);

              // Salva il tuo documento ripulito
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
    title: "Redigi File DOCX Utilizzando Java"
    exclude: "DOCX"
    description: "Proteggi contenuti sensibili in DOCX nascondendoli o rimuovendoli utilizzando gli strumenti in Java."
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