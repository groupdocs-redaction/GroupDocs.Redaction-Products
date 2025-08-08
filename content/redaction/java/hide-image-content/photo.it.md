
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: it
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Nascondere Immagini in PHOTO con Sovrapposizioni Utilizzando Java"
head_description: "Usa GroupDocs.Redaction for Java per mascherare aree sensibili delle immagini in file PHOTO con sovrapposizioni. Proteggi contenuti privati mantenendo intatto il layout del file."

############################# Header ############################
title: "Proteggi Contenuto Immagine nei File PHOTO con Sovrapposizioni Utilizzando Java" 
description: "Garantisci sicurezza per dati foto personali e aziendali in file PHOTO con Java. Strumenti semplici progettati per una protezione rapida ed efficace."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Scopri GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornisce a programmatori Java strumenti affidabili per nascondere o eliminare contenuti in file PHOTO. Proteggi documenti mascherando testo, immagini e metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Nascondere Contenuti nei File Photo con Sovrapposizioni"
    content: |
      GroupDocs.Redaction for Java rende facile mascherare aree sensibili nelle tue applicazioni Java.
      
      1. Inizializza un Redactor e carica il tuo file Photo.
      2. Imposta preferenze di redazione quando necessario.
      3. Seleziona le regioni immagine e scegli colori di sovrapposizione.
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
        // Coprire sezioni d'immagine in PHOTO con sovrapposizioni

        // Carica il file utilizzando Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Definisci colore e dimensioni della sovrapposizione
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Indica l'area dell'immagine da coprire
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Applica sovrapposizione e salva il risultato
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redazione di Contenuti Sensibili con Facilità"
  description: "GroupDocs.Redaction for Java ti consente di nascondere o eliminare dati privati in vari tipi di documenti. Mantieni i file puliti e pronti per la condivisione."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Controllo Completo sulle Redazioni"
  features:
    # feature loop
    - title: "Cerca e Sostituisci Testo"
      content: "Trova testo sensibile nei documenti e sostituiscilo per proteggere l'informazione."

    # feature loop
    - title: "Overlay Aree Immagine"
      content: "Usa sovrapposizioni per coprire intere immagini o sezioni selezionate."

    # feature loop
    - title: "Rimuovere Metadata"
      content: "Pulisci metadata nascosti per prevenire esposizioni accidentali di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Mascherare Dati Immagine con Sovrapposizioni"
      content: |
        Questo esempio mostra come coprire contenuti d'immagine con sovrapposizioni in un documento.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il documento per la modifica
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Imposta dimensione, colore e posizione della sovrapposizione
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleziona sezione dell'immagine nella pagina uno
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Applica sovrapposizione per nascondere il contenuto
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
    title: "Sicurezza dei File PHOTO con Redazioni Java"
    exclude: "PHOTO"
    description: "Con Java, puoi nascondere o rimuovere dati sensibili in file PHOTO. Un modo fidato per proteggere documenti ufficiali."
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