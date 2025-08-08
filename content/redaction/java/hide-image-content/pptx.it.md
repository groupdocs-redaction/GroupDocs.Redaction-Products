
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: it
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Nascondere Immagini in PPTX con Sovrapposizioni Utilizzando Java"
head_description: "Con GroupDocs.Redaction for Java, puoi nascondere immagini sensibili in file PPTX aggiungendo sovrapposizioni colorate. Proteggi informazioni confidenziali mantenendo intatto il layout del documento."

############################# Header ############################
title: "Nascondi Immagini Sensibili nei Documenti PPTX Utilizzando Java" 
description: "Proteggi dati personali e aziendali nei file PPTX utilizzando Java. I nostri strumenti rendono la redazione delle immagini veloce e semplice."
subtitle: "Benefici Principali di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornisce ai programmatori Java strumenti pratici per nascondere o rimuovere contenuti in file PPTX. Redigi testo, immagini e metadata attraverso tipi di documenti diversi.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Dati Privati nei Documenti Pptx"
    content: |
      GroupDocs.Redaction for Java semplifica per le app Java la protezione dei documenti nascondendo contenuti sensibili.
      
      1. Inizializza un Redactor e carica il file Pptx.
      2. Imposta le opzioni di redazione in base alle tue esigenze.
      3. Seleziona le aree delle immagini e definisci i colori delle sovrapposizioni.
      4. Applica la redazione e salva il file aggiornato.
   
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
        // Nascondere sezioni di immagini sensibili in PPTX

        // Apri il documento utilizzando Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Scegli il colore e la dimensione della sovrapposizione
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Evidenzia l'area da nascondere
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Applica le modifiche e salva il documento
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Strumenti di Redazione dei Contenuti"
  description: "GroupDocs.Redaction for Java ti aiuta a nascondere o eliminare informazioni sensibili in molti formati di file. Mantieni i documenti sicuri mentre mantieni un aspetto professionale."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Caratteristiche Avanzate di Redazione"
  features:
    # feature loop
    - title: "Trova e Sostituisci Testo"
      content: "Cerca rapidamente testo privato e redigilo per garantire la sicurezza dei documenti."

    # feature loop
    - title: "Coprire Immagini con Sovrapposizioni"
      content: "Nascondi intere immagini o aree selezionate applicando sovrapposizioni."

    # feature loop
    - title: "Pulisci Metadata"
      content: "Rimuovi o modifica metadata nascosti per prevenire la condivisione di informazioni confidenziali."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Coprire Dati Immagine con Sovrapposizioni"
      content: |
        Questo esempio mostra come coprire immagini sensibili nei tuoi documenti.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il tuo documento
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Definisci dimensioni, colore e posizione della sovrapposizione
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleziona l'area dell'immagine nella prima pagina
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Applica la sovrapposizione per coprirla
              redactor.apply(redaction);

              // Salva il documento redatto
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
    title: "Redigi il Contenuto PPTX Utilizzando Java"
    exclude: "PPTX"
    description: "Applica Java per nascondere o eliminare contenuti sensibili in file PPTX. Una soluzione affidabile per la protezione dei documenti."
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