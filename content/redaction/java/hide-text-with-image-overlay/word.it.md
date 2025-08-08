
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: it
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Redigi Testo in WORD Utilizzando Overlay Java"
head_description: "Usa GroupDocs.Redaction for Java per coprire testo sensibile nei file WORD con blocchi di colore mantenendo la struttura del documento invariata."

############################# Header ############################
title: "Redazione Overlay in File WORD con Java" 
description: "Nascondi dettagli importanti nei tuoi documenti WORD utilizzando overlay colorati alimentati da Java e GroupDocs.Redaction for Java."
subtitle: "Cosa Può Fare GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Scopri GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre agli utenti Java pieno controllo sulla redazione di WORD. Nascondi qualsiasi cosa tu voglia: testo, visuali o metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Info Private in Formato Word"
    content: |
      GroupDocs.Redaction for Java offre agli sviluppatori Java modi rapidi per ripulire file e proteggere il loro contenuto.
      
      1. Avvia un Redactor e carica il file Word.
      2. Scegli le tue opzioni di redazione.
      3. Aggiungi modello di testo e colore di overlay.
      4. Esegui la redazione e salva il file.
   
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
        // Nascondi testo utilizzando overlay in WORD

        // Usa Redactor per aprire il documento
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Imposta preferenze di redazione
            // Aggiungi parole chiave e seleziona colore
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Applica e salva il tuo file redatto
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ulteriori Capacità di Redazione"
  description: "Usa GroupDocs.Redaction for Java per rimuovere contenuti sia visibili che nascosti dai file mantenendo il layout intatto."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Output semplice e pulito"
  features:
    # feature loop
    - title: "Sostituisci testo"
      content: "Copri parole o termini che non dovrebbero essere visibili."

    # feature loop
    - title: "Maschera visivi"
      content: "Usa overlay colorati per nascondere immagini o parti di esse."

    # feature loop
    - title: "Cancella metadati"
      content: "Rimuovi dettagli nascosti nelle proprietà del file."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redazione Alimentata da Regex"
      content: |
        Impara a utilizzare regex per nascondere automaticamente contenuti specifici
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il documento da redigere
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Definisci il tuo modello regex e il colore di overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Applica la redazione
              redactor.apply(redaction);

              // Salva la tua versione pulita
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
    title: "Redigi Contenuto in WORD con Java"
    exclude: "WORD"
    description: "Mantieni i tuoi documenti WORD privati nascondendo o rimuovendo dati sensibili utilizzando Java."
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