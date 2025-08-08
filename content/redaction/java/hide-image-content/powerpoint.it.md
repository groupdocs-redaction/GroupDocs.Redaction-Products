
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: it
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Coprire Immagini Sensibili in POWERPOINT con Sovrapposizioni Utilizzando Java"
head_description: "Nascondi contenuti immagine privati in file POWERPOINT con GroupDocs.Redaction for Java. Aggiungi sovrapposizioni per mantenere i documenti sicuri senza influire sul layout."

############################# Header ############################
title: "Proteggi Immagini Private nei Documenti POWERPOINT con Sovrapposizioni Utilizzando Java" 
description: "Mantieni visivi personali e aziendali sicuri in file POWERPOINT utilizzando Java. Strumenti facili da usare per una forte protezione della privacy."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre ai programmatori Java la possibilità di nascondere o eliminare contenuti in file POWERPOINT. Proteggi i tuoi documenti mascherando testo, immagini e metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Nascondere Dati Sensibili nei Documenti Powerpoint"
    content: |
      GroupDocs.Redaction for Java aiuta le tue applicazioni Java a nascondere contenuti privati nei documenti rapidamente.
      
      1. Crea un oggetto Redactor e carica il file Powerpoint.
      2. Impostare le preferenze di redazione per il compito.
      3. Scegli l'area dell'immagine e seleziona il colore della sovrapposizione.
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
        // Nascondere dati immagine nei file POWERPOINT

        // Apri il file con Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Imposta colore e dimensione della sovrapposizione
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Seleziona l'area da mascherare
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Applica sovrapposizione e salva le modifiche
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondere Dati Sensibili nei Documenti"
  description: "GroupDocs.Redaction for Java ti aiuta a coprire o eliminare contenuti privati in diversi formati di documenti. Mantieni i file sicuri per la condivisione e l'archiviazione."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione per Ogni Esigenza"
  features:
    # feature loop
    - title: "Cerca e Sostituisci Testo"
      content: "Cerca parole sensibili e sostituiscile per garantire la privacy dei dati."

    # feature loop
    - title: "Coprire Aree Immagine"
      content: "Applica sovrapposizioni a immagini o parti di immagini per mantenerle private."

    # feature loop
    - title: "Rimuovere Metadata Nascosti"
      content: "Cancellare metadata invisibili per prevenire perdite di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondere Contenuti Immagine con Sovrapposizioni"
      content: |
        Questo esempio mostra come posizionare sovrapposizioni su aree immagini sensibili in documenti.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il file per la redazione
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Definisci dimensioni, colore e posizione della sovrapposizione
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Contrassegna la sezione dell'immagine nella prima pagina
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Applica sovrapposizione per coprire i dati
              redactor.apply(redaction);

              // Salva il documento aggiornato
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
    title: "Proteggi i File POWERPOINT con Redazione Java"
    exclude: "POWERPOINT"
    description: "Con Java, puoi coprire o rimuovere dati sensibili in file POWERPOINT. Una soluzione affidabile per la sicurezza dei documenti."
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