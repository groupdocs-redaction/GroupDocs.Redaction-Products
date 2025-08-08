
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: it
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Nascondere Immagini in IMAGE con Sovrapposizioni Utilizzando Java"
head_description: "Usa GroupDocs.Redaction for Java per mascherare aree sensibili delle immagini in file IMAGE con sovrapposizioni colorate. Tieni al sicuro dati importanti senza cambiare layout del documento."

############################# Header ############################
title: "Proteggi Immagini Private nei File IMAGE Utilizzando Sovrapposizioni con Java" 
description: "Garantisci sicurezza per immagini aziendali e personali in file IMAGE con Java. Strumenti semplici per una protezione rapida e affidabile dei dati."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre a programmatori Java la capacità di nascondere o eliminare contenuti in file IMAGE. Proteggi documenti mascherando testo, immagini e metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Risolvere il Contenuto in File Image Utilizzando Sovrapposizioni"
    content: |
      Coprire rapidamente aree sensibili nelle tue applicazioni Java con GroupDocs.Redaction for Java.
      
      1. Crea un oggetto Redactor e specifica il percorso del tuo file Image.
      2. Imposta opzioni di redazione come richiesto.
      3. Contrassegna le sezioni dell'immagine e scegli i colori di sovrapposizione.
      4. Elabora e salva il tuo file redatto.
   
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
        // Nascondi contenuti delle immagini in IMAGE

        // Carica il file utilizzando Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Definisci dimensioni e colori della sovrapposizione
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Scegli l'area da proteggere
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Applica sovrapposizione e salva il file
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi Contenuti Sensibili in Qualsiasi Documento"
  description: "GroupDocs.Redaction for Java ti permette di nascondere o eliminare contenuti privati in diversi formati di file. Assicurati che i documenti rimangano puliti e sicuri per la distribuzione."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione con Controllo Totale"
  features:
    # feature loop
    - title: "Cerca e Sostituisci Testo"
      content: "Trova testo sensibile nei documenti e sostituiscilo per proteggere l'informazione."

    # feature loop
    - title: "Coprire Immagini con Sovrapposizioni"
      content: "Usa sovrapposizioni per nascondere immagini complete o sezioni specifiche."

    # feature loop
    - title: "Pulisci Metadata"
      content: "Rimuovi o modifica metadata per prevenire perdite di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Mascherare Aree Immagine con Sovrapposizioni"
      content: |
        Questo esempio di codice dimostra come nascondere parti sensibili dell'immagine utilizzando sovrapposizioni.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il file per la modifica
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Definisci dimensioni, colore e posizione della sovrapposizione
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleziona un'area immagine nella pagina uno
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Applica sovrapposizione per mascherare il contenuto
              redactor.apply(redaction);

              // Salva il file modificato
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
    title: "Proteggi i File IMAGE con Redazioni Java"
    exclude: "IMAGE"
    description: "Con Java, puoi nascondere o eliminare contenuti sensibili in file IMAGE. Una soluzione affidabile per mantenere i documenti sicuri e riservati."
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