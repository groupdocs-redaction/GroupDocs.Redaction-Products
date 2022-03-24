---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java-Schwärzungs-API | Verstecken Sie vertrauliche Daten aus PDF Word Excel Image"
head_description: "API zum Schwärzen von Java-Dokumenten – Verstecken Sie persönliche Daten aus PDF-, Word-, Excel-, PowerPoint-Präsentationen und Rasterbildern durch verschiedene Schwärzungstypen."

############################# Header ############################
title: "Schwärzen Sie private Informationen über die Java-API"
description: "Schließen oder verbergen Sie persönliche Informationen und Metadaten aus Dokumenten, Arbeitsblättern, Präsentationen, PDF- und Rasterbilddateien mithilfe der Java-Schwärzungs-API."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "/border/groupdocs-redaction-java.svg"
        product: "GroupDocs.Redaction"
        platform: "Java"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "Überblick"

            # button loop
            - link: "#features"
              text: "Merkmale"

            # button loop
            - link: "#support"
              text: "Support"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Live Demo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "Preisgestaltung"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Überblick ############################
overview:
    enable: true
    content: |
      Mit GroupDocs.Redaction for Java API können Entwickler vertrauliche Daten aus gängigen Dateiformaten wie Microsoft Word, Excel, PowerPoint, PDF und Bildern entfernen, damit sie verwendet und verteilt werden können, aber dennoch vertrauliche Informationen schützen. Die Schwärzungsbibliothek bietet eine einzige, formatunabhängige Schnittstelle, um jede Art von klassifizierten Informationen zu schwärzen, einschließlich Sozialversicherungsnummern, medizinische Informationen, finanzielle, proprietäre, rechtliche oder sogar Handelsdetails durch Text-, Metadaten- und Anmerkungsschwärzungstypen. Sie können das Dokument in seinem Originalformat speichern und ein bereinigtes PDF-Dokument mit Rasterbildern der Originalseiten erstellen.
    tabs:
      enable: true     
      
      ## TAB ONE ##
      tab_one:
        description: |
          Nachfolgend finden Sie eine Übersicht über GroupDocs.Redaction für Java:

        right:
          enable: true
          icon: "fab fa-html5"
          title: "Überblick"
          content: |
            * Text schwärzen
            * Metadaten schwärzen
            * Anmerkung schwärzen
            * Tabellarisches Dokument schwärzen
            * Geschützte Dateien schwärzen
            * Anpassung
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction für Java unterstützt die folgenden [Dokumentdateiformate](https://docs.groupdocs.com/redaction/java/supported-document-formats/):

        right:
          enable: true
          table:
            # table loop
            - title: "Text schwärzen, Metadata & Comments"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Festes Layout**: PDF
                * **Rasterbilder**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for Java unterstützt das Folgen Betriebssysteme, Frameworks & Paketmanager:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Betriebssysteme"
              content: |
                * Microsoft Windows Desktop
                * Microsoft Windows Server
                * Linux
                * MacOS

            # table loop
            - icon: "fas fa-code"
              title: "Unterstützte Frameworks"
              content: |
                * Java 7 (1.7) und höher

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-cogs"
              title: "Entwicklungsumgebungen"
              content: |
                * NetBeans
                * IntelliJ IDEA
                * Eclipse
            # table loop
            - icon: "fas fa-tools"
              title: "Build-Automatisierungstool"
              content: |
                * Maven

############################# Merkmale ############################
features:
    enable: true
    title: "GroupDocs.Redaction for Java Merkmale"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Suchen und schwärzen Sie exakte Übereinstimmungen einer Suchzeichenfolge"

      # feature loop
      - icon: "fas fa-eye"
        content: "Kontrollieren Sie den Redaktionsprozess und überspringen Sie bestimmte Übereinstimmungen"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Lokalisieren und redigieren Sie mit regulären Ausdrücken"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Integrierte Unterstützung für Office-Formate und PDF"

      # feature loop
      - icon: "fas fa-code"
        content: "Löschen Sie Metadaten oder redigieren Sie Metadatenwerte"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Beschränken Sie Schwärzungen auf bestimmte Arbeitsblätter und Spalten"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Entfernen Sie Anmerkungen oder redigieren Sie deren Texte"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Verwenden Sie textuelle (Ausnahmecodes) oder grafische (farbige Rechtecke) Schwärzungen"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Speichern Sie das Dokument im Originalformat oder als PDF mit Rasterbildern der Originalseiten"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Unterstützung für Rasterbildformate und Schwärzungen von Bildbereichen"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Integrationsschnittstelle zur Implementierung benutzerdefinierter Schwärzungen und Formate"

      # feature loop
      - icon: "fas fa-columns"
        content: "EXIF-Metadaten aus Bilddateien bearbeiten oder entfernen"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Schwärzen Sie eingebettete Bilder in PDF-, Word- und Präsentationsdokumenten"

    more_feature:
      # more_feature_loop
      - title: "Stellen Sie den Datenschutz sicher, indem Sie Ihre klassifizierten Daten schwärzen"
        content: |
          Die GroupDocs.Redaction for Java-Bibliothek ermöglicht es Entwicklern, Text und Bilder aus unterstützten Dokumenten zu schwärzen, indem sie eine Vielzahl von Schwärzungstypen verwenden. Die Verwendung unserer Schwärzungs-API ist einfach und unkompliziert.

          Das folgende Codebeispiel verwendet ein tabellarisches Dokument, z. B. eine Microsoft Excel-Tabelle, bei der der Umfang der Schwärzung auf ein bestimmtes Arbeitsblatt und/oder eine bestimmte Spalte beschränkt werden kann. Es verwendet Filter, um die zweite Spalte mit E-Mails auf einem Arbeitsblatt „Kunden“ zu schwärzen, wobei alle anderen E-Mails im Dokument unberührt bleiben.
          
          ```java
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              RedactorChangeLog result = redactor.apply(new CellColumnRedaction(filter, expression, new ReplacementOptions("[customer email]")));
              if (result.getStatus() != RedactionStatus.Failed)
              {
                  SaveOptions so = new SaveOptions();
                  so.setAddSuffix(true);
                  so.setRasterizeToPDF(false);
                  redactor.save(so);
              };
          }
          finally { redactor.close(); }
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction bietet APIs zum Anzeigen von Dokumenten für andere beliebte Entwicklungsumgebungen"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

############################# Back to top ###############################
back_to_top:
  enable: true
---