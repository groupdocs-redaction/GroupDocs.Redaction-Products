
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: it
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Nascondere Immagini in EXCEL con Sovrapposizioni Utilizzando Java"
head_description: "Usa GroupDocs.Redaction for Java per coprire immagini sensibili in file EXCEL. Aggiungi sovrapposizioni colorate per proteggere informazioni private mantenendo intatto il design del documento."

############################# Header ############################
title: "Nascondi Immagini Sensibili nei File EXCEL con Sovrapposizioni Utilizzando Java" 
description: "Proteggi immagini private e aziendali in file EXCEL con Java. Strumenti rapidi e semplici per una protezione affidabile dei dati."
subtitle: "Scopri Caratteristiche di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre ai programmatori Java gli strumenti per nascondere o eliminare contenuti in file EXCEL. Copri testo, immagini e metadata per proteggere dati sensibili.

############################# Steps ############################
steps:
    enable: true
    title: "Sicurezza dei Tuoi Dati nei File Excel"
    content: |
      GroupDocs.Redaction for Java aiuta le app Java a nascondere contenuti sensibili all'interno dei documenti.
      
      1. Crea un oggetto Redactor e carica il tuo file Excel.
      2. Imposta opzioni di redazione per soddisfare le tue esigenze.
      3. Scegli l'area dell'immagine da coprire e seleziona un colore di sovrapposizione.
      4. Applica la redazione e salva il documento.
   
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
        // Nascondi contenuto delle immagini in EXCEL

        // Apri il file con Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Definisci dimensioni e colore della sovrapposizione
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Contrassegna l'area che desideri nascondere
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Applica modifiche e salva il file
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondere o Eliminare Contenuti nei Documenti"
  description: "GroupDocs.Redaction for Java ti consente di coprire o eliminare dati sensibili in diversi tipi di file. Mantieni i tuoi documenti chiari e sicuri."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Caratteristiche di Redazione Avanzate"
  features:
    # feature loop
    - title: "Trova e Sostituisci Testo"
      content: "Cerca nei documenti testo privato e sostituiscilo per mantenere i dati al sicuro."

    # feature loop
    - title: "Coprire Aree di Immagini"
      content: "Nascondere parti delle immagini o interi contenuti con sovrapposizioni colorate."

    # feature loop
    - title: "Pulisci Metadata"
      content: "Rimuovi metadata nascosti per evitare di condividere informazioni extra."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Coprire Dati Immagine con Sovrapposizioni"
      content: |
        Questo esempio mostra come nascondere aree sensibili delle immagini in documenti utilizzando sovrapposizioni.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il file per la modifica
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Stabilisci dimensioni, colore e posizione della sovrapposizione
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Scegli la sezione dell'immagine nella prima pagina
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Applica la sovrapposizione per nascondere i dati
              redactor.apply(redaction);

              // Salva il tuo documento redatto
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
    title: "Sicurezza dei File EXCEL con Redazione Java"
    exclude: "EXCEL"
    description: "Usa Java per nascondere o eliminare informazioni private in file EXCEL. Un modo semplice per garantire la privacy del documento."
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