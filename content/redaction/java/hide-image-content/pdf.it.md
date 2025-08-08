
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Coprire Immagini in PDF con Sovrapposizioni Utilizzando Java"
head_description: "Con GroupDocs.Redaction for Java, puoi nascondere immagini private in file PDF posizionando sovrapposizioni colorate. Proteggi elementi visivi sensibili mantenendo intatto il design del documento."

############################# Header ############################
title: "Nascondi Immagini Riservate nei File PDF con Sovrapposizioni Utilizzando Java" 
description: "Proteggi dati personali e aziendali nei file PDF con Java. I nostri strumenti rendono la redazione delle immagini semplice ed efficace."
subtitle: "Caratteristiche di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre ai programmatori Java strumenti efficaci per nascondere o eliminare contenuti in file PDF. Copri testo, immagini e metadata per mantenere i tuoi documenti sicuri attraverso più formati.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggere le Informazioni Aziendali nei File Pdf"
    content: |
      GroupDocs.Redaction for Java aiuta le tue applicazioni Java a garantire documenti sicuri. Redigi immagini private in pochi passaggi.
      
      1. Inizializza un Redactor e imposta il percorso del tuo file Pdf.
      2. Scegli le impostazioni di redazione per risultati ottimali.
      3. Seleziona l'area dell'immagine e scegli un colore di sovrapposizione.
      4. Elabora e salva il file protetto.
   
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
        // Coprire immagini sensibili in PDF

        // Carica il file con Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Imposta colore e dimensioni della sovrapposizione
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Seleziona l'area target per la redazione
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
  title: "Nascondi Contenuto nei Documenti"
  description: "Con GroupDocs.Redaction for Java, puoi nascondere o eliminare dati sensibili in vari formati di file. Proteggi informazioni private mantenendo i file facili da leggere e distribuire."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opzioni di Redazione Potenti"
  features:
    # feature loop
    - title: "Modifica Testo Ovunque"
      content: "Cerca e sostituisci parole sensibili in tutto il tuo documento per garantire la privacy dei contenuti."

    # feature loop
    - title: "Nascondi Immagini"
      content: "Aggiungi sovrapposizioni a immagini o parti di esse per mantenere nascosti elementi visivi sensibili."

    # feature loop
    - title: "Pulisci i Metadata"
      content: "Elimina o modifica i metadata nascosti per prevenire perdite involontarie di informazioni."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Coprire Dati Immagine con Sovrapposizioni"
      content: |
        Questo esempio dimostra come nascondere visuali riservate in documenti utilizzando sovrapposizioni.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il documento per la modifica
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Definisci dimensioni, colore e posizione della sovrapposizione
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Scegli l'area dell'immagine da redigere nella pagina uno
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aggiungi la sovrapposizione per coprire i dati sensibili
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
    title: "Proteggi i File PDF con Redazioni Java"
    exclude: "PDF"
    description: "Usa Java per nascondere o rimuovere dati sensibili in file PDF. Ideale per la protezione di documenti ufficiali e privati."
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