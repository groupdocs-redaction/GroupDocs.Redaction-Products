
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: it
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rimuovi Metadati Nascosti in IMAGE con Java"
head_description: "Utilizza GroupDocs.Redaction for Java per ripulire i metadati nei file IMAGE. Assicurati che le informazioni private rimangano nascoste."

############################# Header ############################
title: "Cancella Metadati dai File IMAGE con Java" 
description: "Mantieni sicuri i tuoi documenti IMAGE utilizzando strumenti progettati per Java. Rimuovi dettagli sensibili con precisione."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction consente agli sviluppatori Java di rimuovere contenuti sensibili — compresi testi, immagini e metadati — dai file IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Come Pulire i Metadati nei File Image"
    content: |
      Inizia ad utilizzare GroupDocs.Redaction nella tua app Java per rimuovere rapidamente i metadati nascosti.
      
      1. Crea un Redactor e apri il tuo documento Image.
      2. Seleziona i campi di metadati da rimuovere.
      3. Applica le impostazioni di redazione.
      4. Salva il file pulito.
   
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
        // Pulisci i metadati nascosti da IMAGE

        // Carica il tuo file con Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Imposta i campi di metadati da cancellare
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Applica le modifiche e salva
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Pulisci i Contenuti in Qualsiasi File"
  description: "GroupDocs.Redaction for Java aiuta a rimuovere testo privato, dettagli nascosti delle immagini e metadati dai tuoi documenti prima della condivisione."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche Principali"
  features:
    # feature loop
    - title: "Pulizia del Testo"
      content: "Cerca parole o numeri privati e rimuovili in sicurezza."

    # feature loop
    - title: "Copri Aree delle Immagini"
      content: "Nascondi parti sensibili delle immagini utilizzando sovrapposizioni."

    # feature loop
    - title: "Rimozione dei Metadati"
      content: "Pulisci i campi di metadati che potrebbero contenere informazioni private."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Elimina Metadati Sensibili"
      content: |
        Questa guida mostra come pulire campi come Autore e Titolo da un documento IMAGE.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri IMAGE nel redattore
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Seleziona i metadati Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Seleziona i metadati Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Applica la redazione
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salva il file finale
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Pulisci i Metadati in IMAGE con Java"
    exclude: "IMAGE"
    description: "Utilizza Java per cancellare dati nascosti nei file IMAGE. Ottimo per la pulizia dei documenti prima della condivisione o dell'archiviazione."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Immagine JPEG"


---