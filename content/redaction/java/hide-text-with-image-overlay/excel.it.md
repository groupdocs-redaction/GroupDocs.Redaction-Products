
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: it
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Coprire Testo in EXCEL con Overlay e Java"
head_description: "Proteggi contenuti sensibili nei file EXCEL applicando overlay colorati utilizzando GroupDocs.Redaction for Java. Mantieni il layout del documento intatto."

############################# Header ############################
title: "Redigi Dati EXCEL con Overlay in Java" 
description: "Usa codice Java per mascherare informazioni sensibili in fogli di calcolo EXCEL. Un modo efficace per mantenere i dati privati."
subtitle: "Caratteristiche Chiave di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Perché Scegliere GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java è progettato per gli sviluppatori Java che desiderano nascondere o ripulire contenuti nei fogli di calcolo EXCEL rapidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Nascondi Info in Fatture Excel"
    content: |
      GroupDocs.Redaction for Java aiuta gli sviluppatori Java a proteggere i file nascondendo informazioni private in pochi righe.
      
      1. Inizia un Redactor e carica il tuo foglio di calcolo.
      2. Imposta le regole di redazione secondo necessità.
      3. Scegli il testo e il colore di overlay.
      4. Applica e salva il file.
   
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
        // Usa overlay per nascondere testo in EXCEL

        // Crea un Redactor e carica il tuo file
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Scegli regole di redazione
            // Inserisci cosa nascondere e scegli un colore
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Applica redazione e salva il file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Strumenti di Protezione Dati Essenziali"
  description: "Nascondi o elimina informazioni sensibili dai tuoi fogli di calcolo senza compromettere layout o significato utilizzando GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Progettato per una pulizia dei dati sicura"
  features:
    # feature loop
    - title: "Modifica o nascondi testo"
      content: "Trova e blocca qualsiasi testo che necessita di protezione."

    # feature loop
    - title: "Coprire visivi sensibili"
      content: "Applica blocchi colorati su aree di grafico o immagini."

    # feature loop
    - title: "Rimuovi metadati"
      content: "Cancella la cronologia del documento, i nomi degli autori o i timestamp."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redazione Regex"
      content: |
        Usa regex per trovare e nascondere testo automaticamente
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il tuo foglio di calcolo
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Imposta il modello e i dettagli di overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Applica la redazione
              redactor.apply(redaction);

              // Salva la versione ripulita
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
    title: "Redigi Fogli EXCEL con Java"
    exclude: "EXCEL"
    description: "Nascondi o cancella dati sensibili in EXCEL utilizzando overlay e strumenti di Java."
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