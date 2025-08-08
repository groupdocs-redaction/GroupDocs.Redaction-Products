
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: it
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Coprire Immagini in JPEG con Sovrapposizioni Utilizzando Java"
head_description: "Mantieni immagini sensibili private in file JPEG con GroupDocs.Redaction for Java. Aggiungi sovrapposizioni per nascondere informazioni senza cambiare il layout del tuo documento."

############################# Header ############################
title: "Nascondi Immagini Sensibili nei File JPEG con Sovrapposizioni Utilizzando Java" 
description: "Proteggi immagini personali e aziendali in file JPEG utilizzando Java. Strumenti semplici per aiutarti a garantire i tuoi documenti."
subtitle: "Caratteristiche Core di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornisce a programmatori Java strumenti per nascondere o eliminare contenuti in file JPEG. Proteggi i tuoi documenti coprendo testo, immagini e metadata facilmente.

############################# Steps ############################
steps:
    enable: true
    title: "Nascondi Dati Privati nei File Jpeg"
    content: |
      GroupDocs.Redaction for Java rende veloce per le tue app Java coprire contenuti privati.
      
      1. Inizializza un Redactor e carica il tuo file Jpeg.
      2. Regola le impostazioni di redazione per soddisfare le tue necessità.
      3. Seleziona l'area dell'immagine e scegli un colore di sovrapposizione.
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
        // Maschera dati immagine in JPEG

        // Apri il file utilizzando Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Imposta dimensione e colore della sovrapposizione
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Seleziona l'area da coprire
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
  description: "GroupDocs.Redaction for Java ti aiuta a nascondere o rimuovere contenuti privati da più tipi di file. Assicurati che i tuoi documenti rimangano puliti e pronti per la distribuzione."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funzionalità di Redazione Completa"
  features:
    # feature loop
    - title: "Cerca e Sostituisci Testo"
      content: "Cerca nei tuoi documenti testo privato e sostituiscilo per proteggere i dati sensibili."

    # feature loop
    - title: "Coprire Contenuti Immagine"
      content: "Usa sovrapposizioni per nascondere intere immagini o parti selezionate."

    # feature loop
    - title: "Rimuovere Metadata"
      content: "Cancella metadata nascosti per prevenire esposizioni accidentali di informazioni sensibili."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa Sovrapposizioni per Nascondere Contenuti Immagine"
      content: |
        Questo esempio mostra come proteggere aree sensibili delle immagini in documenti utilizzando sovrapposizioni.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il file per la redazione
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Imposta dimensione, posizione e colore della sovrapposizione
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleziona un'area immagine nella prima pagina
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Applica la sovrapposizione per nascondere l'immagine
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
    title: "Sicurezza dei File JPEG con Redazioni Java"
    exclude: "JPEG"
    description: "Usa Java per nascondere o eliminare dati sensibili in file JPEG. Una soluzione fidata per proteggere i tuoi importanti documenti."
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