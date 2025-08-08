
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Nascondi Immagini in DOCX con Sovrapposizioni Utilizzando Java"
head_description: "Con GroupDocs.Redaction for Java, puoi nascondere immagini sensibili in file DOCX applicando sovrapposizioni colorate. Proteggi informazioni private senza modificare il layout del tuo documento."

############################# Header ############################
title: "Nascondi Immagini Riservate nei Documenti DOCX con Sovrapposizioni Utilizzando Java" 
description: "Proteggi dati aziendali e personali nei file DOCX usando Java. I nostri strumenti ti aiutano a mantenere al sicuro informazioni sensibili e i tuoi documenti puliti."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre ai programmatori Java gli strumenti per nascondere o eliminare contenuti in file DOCX. Proteggi testo, immagini e metadata in vari formati di documenti.

############################# Steps ############################
steps:
    enable: true
    title: "Sicurezza dei Dati nei Documenti Docx"
    content: |
      GroupDocs.Redaction for Java offre alle tue app Java il potere di redigere documenti. Copri contenuti privati rapidamente ed efficacemente.
      
      1. Crea un Redactor e imposta il percorso del file per il tuo documento Docx.
      2. Regola le impostazioni di redazione per soddisfare le tue esigenze.
      3. Seleziona l'area dell'immagine da coprire e scegli un colore di sovrapposizione.
      4. Esegui il processo di redazione e salva il file.
   
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
        // Nascondi sezioni di immagini sensibili in DOCX

        // Carica il documento usando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Imposta il colore e le dimensioni della sovrapposizione
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Indica l'area da redigere
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Applica la sovrapposizione e salva il file
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondi contenuti sensibili nei file"
  description: "Con GroupDocs.Redaction for Java, puoi redigere o rimuovere contenuti da più tipi di file. Mantieni i tuoi documenti sicuri e leggibili."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funzionalità di Redazione per Documenti"
  features:
    # feature loop
    - title: "Modifica Contenuti Testuali"
      content: "Cerca e sostituisci testo sensibile nei tuoi file per mantenere la privacy dei dati."

    # feature loop
    - title: "Sovrapponi Immagini"
      content: "Coprire im immagini intere o parti selezionate per nascondere informazioni visive riservate."

    # feature loop
    - title: "Rimuovere Metadata"
      content: "Pulisci metadata nascosti dai documenti per prevenire esposizioni di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sovrapponi Immagini per Nascondere Dati Sensibili"
      content: |
        Questo esempio mostra come applicare sovrapposizioni per coprire aree di immagini confidenziali in documenti.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il documento per la modifica
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Imposta dimensioni, colore e posizione della sovrapposizione
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleziona un'area target nella prima pagina
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Applica la sovrapposizione per coprire l'immagine
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
    title: "Redigi i File DOCX con Java"
    exclude: "DOCX"
    description: "Usa Java per nascondere o eliminare dati privati in file DOCX. Perfetto per mantenere documenti aziendali e confidenziali al sicuro."
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