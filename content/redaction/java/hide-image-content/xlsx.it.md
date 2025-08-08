
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Coprire Immagini nei File XLSX con Sovrapposizioni Utilizzando Java"
head_description: "Usa GroupDocs.Redaction for Java per coprire immagini sensibili in file XLSX aggiungendo sovrapposizioni colorate. Proteggi dati importanti mantenendo la struttura del documento invariata."

############################# Header ############################
title: "Coprire Immagini Private nei Documenti XLSX Utilizzando Java" 
description: "Mantieni sicuri i contenuti delle immagini sensibili in file XLSX con Java. I nostri strumenti facili da usare rendono la redazione delle immagini rapida e affidabile."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornisce ai programmatori Java strumenti semplici per nascondere o eliminare contenuti sensibili dai file XLSX. Redigi testo, immagini e metadata attraverso più tipi di documenti.

############################# Steps ############################
steps:
    enable: true
    title: "Mantieni i Dati Privati Sicuri nei Documenti Xlsx"
    content: |
      GroupDocs.Redaction for Java aiuta le tue app Java a proteggere documenti con passaggi semplici.
      
      1. Inizializza un Redactor e carica il tuo documento Xlsx.
      2. Impostare opzioni di redazione per adattarsi al progetto.
      3. Seleziona la sezione dell'immagine e scegli un colore di sovrapposizione.
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
        // Coprire aree di immagini sensibili in XLSX

        // Crea Redactor con percorso del file
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Scegli dimensioni e colore della sovrapposizione
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Seleziona l'area da redigere
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Applica sovrapposizione e salva documento
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Caratteristiche Avanzate di Redazione"
  description: "Con GroupDocs.Redaction for Java, puoi nascondere o eliminare contenuti sensibili in vari tipi di file mantenendo il layout del documento pulito e leggibile."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione Potenti"
  features:
    # feature loop
    - title: "Trova e Sostituisci Testo"
      content: "Cerca testo privato e redigilo per proteggere i tuoi documenti."

    # feature loop
    - title: "Coprire il Contenuto dell'Immagine"
      content: "Applica sovrapposizioni per nascondere immagini confidenziali o sezioni specifiche."

    # feature loop
    - title: "Pulisci Metadata Nascosti"
      content: "Rimuovi o aggiorna i metadata per evitare di condividere dettagli privati accidentalmente."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondere i Dettagli delle Immagini Utilizzando Sovrapposizioni"
      content: |
        Scopri come proteggere parti sensibili delle immagini nei tuoi documenti con sovrapposizioni.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il documento da redigere
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Stabilisci dimensioni, colore e posizione della sovrapposizione
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleziona un'area specifica dell'immagine
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Applica sovrapposizione per mascherare l'immagine
              redactor.apply(redaction);

              // Salva il file aggiornato
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Coprire i Contenuti XLSX con Redazioni Java"
    exclude: "XLSX"
    description: "Usa Java per mascherare o eliminare contenuti privati in file XLSX. Una scelta intelligente per proteggere documenti aziendali e personali."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "Immagine JPEG"


---