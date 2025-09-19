---
############################# Static ############################
layout: "family"
date:  2025-09-19T19:29:16
draft: false

product: "Redaction"
product_tag: "redaction"

lang: de

############################# Head ############################
head_title: "Dokumentenredaktion Lösung. Bearbeiten oder entfernen Sie sensible Daten."
head_description: "Entfernen, redigieren oder verbergen Sie Text, Bilder oder Metadaten in PDFs, Word-Dokumenten, Excel-Tabellen, PowerPoint-Präsentationen, Bildern und mehr. Nutzen Sie unsere Bibliothek in Ihren .NET-, Java-, Python- oder cloudbasierten Anwendungen."

############################# Header ############################
title: "Dokumenten-redaktionsbibliothek"
description:  |
  Verbergen oder entfernen Sie persönliche Informationen aus verschiedenen Dateitypen.

  Bearbeiten Sie Texte oder Bilder, um vertrauliche Inhalte zu eliminieren.

  Verwalten Sie Dateimetadaten mit unseren erweiterten Funktionen.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "Wählen Sie Ihre Plattform"
  title: "Plattformunabhängigkeit"
  description: "GroupDocs.Redaction-Bibliothek unterstützt die folgenden Betriebssysteme und Frameworks:"
  details_link_title: "Erfahren Sie mehr"

  items:
    # items loop
    - title: ".NET"
      description: GroupDocs.Redaction .NET 
      color: "blue"
      tag: "net"
      link: "/redaction/net/"
      features_link: "https://docs.groupdocs.com/redaction/net/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    NET 6.0+ <br> .NET Core 3.1 <br> .NET Framework 4.6.2+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS <br> Microsoft Azure
      
          # features loop
          - rows: "3"
            content: |
                    Microsoft Visual Studio <br> JetBrains Rider <br> Microsoft Visual Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats
      

    # items loop
    - title: "Java"
      description: GroupDocs.Redaction Java
      color: "red"
      tag: "java"
      link: "/redaction/java/"
      features_link: "https://docs.groupdocs.com/redaction/java/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    Java 8 or higher <br> Kotlin
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IntelliJ IDEA <br> Eclipse <br> NetBeans
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

    # items loop
    - title: "Python"
      description: GroupDocs.Redaction Python
      color: "yellow"
      tag: "python-net"
      link: "/redaction/python-net/"
      features_link: "https://docs.groupdocs.com/redaction/python-net/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    Python 3.9+ and .Net 6+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IDLE <br> PyCharm <br> Visual Studio Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

############################# Features ###############################
features:
  enable: true
  title: "GroupDocs.Redaction auf einen Blick"
  description: "Eine Lösung zur Verwaltung von Inhalten in PDFs, Office-Dokumenten, Bildern und anderen Geschäftsdaten."

  items:
    # items loop
    - icon: "text"
      title: "Text entfernen oder bearbeiten"
      content: "Finden und redigieren Sie sensible Texte in Ihren Dokumenten."

    # items loop
    - icon: "image"
      title: "Bilder redigieren"
      content: "Verbergen Sie Bildbereiche in Ihren Dateien effizient."

    # items loop
    - icon: "template"
      title: "Metadaten verwalten"
      content: "Entfernen oder ersetzen Sie Metadaten wie den Autor in Word-Dokumenten oder EXIF-Daten in Bildern."

    # items loop
    - icon: "pdf"
      title: "Erweiterte Funktionen"
      content: "Suchen Sie nach Daten, die redigiert werden sollen, mithilfe von regulären Ausdrücken oder KI-Integrationen."

############################# Code samples ############################
code_samples:
  enable: true
  title: "GroupDocs.Redaction Codebeispiele"
  description: "Typische Anwendungsfälle von GroupDocs.Redaction Redaktionsoperationen."
  items:
    # code sample loop
    - title: "So redigieren Sie Texte in PDF-Dokumenten"
      content: |
       GroupDocs.Redaction ist die beste Lösung, um Texte in Ihren Dokumenten in nur wenigen Schritten zu redigieren.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // Übergeben Sie den Dateipfad, der redigiert werden soll, an eine Redactor-Instanz.
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // Bieten Sie Redaktionsoptionen an.
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redigieren und speichern Sie das Ergebnis.
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // Übergeben Sie den Dateipfad, der redigiert werden soll, an eine Redactor-Instanz.
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // Bieten Sie Redaktionsoptionen an.
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redigieren und speichern Sie das Ergebnis.
                redactor.apply(redaction);
                redactor.save();
            }
            finally { redactor.close(); } 
            ```
        - language: "Python"
          color: "yellow"
          content: |
            ```python {style=abap}
            import groupdocs.redaction as gr
            import groupdocs.redaction.options as gro
            import groupdocs.redaction.redactions as grr

            def run():

                # Übergeben Sie den Dateipfad, der redigiert werden soll, an eine Redactor-Instanz.
                with gr.Redactor("source.pdf") as redactor:

                    # Bieten Sie Redaktionsoptionen an.
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # Redigieren und speichern Sie das Ergebnis.
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "Über 30 unterstützte Dateiformate"
  description: "GroupDocs.Redaction unterstützt Redaktionsoperationen über alle gängigen Geschäftsdatenformate hinweg."

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction Erfolge"
  description: "Entdecken Sie wichtige Kennzahlen, die den Erfolg unserer Bibliothek hervorheben."

  items:
    # items loop
    - number: "30+"
      title: "Unterstützte Formate"
      content: "GroupDocs.Redaction unterstützt Operationen mit über 30 weit verbreiteten Dateiformaten."

    # items loop
    - number: "440k"
      title: "NuGet Downloads"
      content: "GroupDocs.Redaction für .NET wurde über 440.000 Mal von NuGet heruntergeladen."

    # items loop
    - number: "12k"
      title: "Maven Downloads"
      content: "GroupDocs.Redaction hat über 12.000 Downloads auf Maven, die leistungsstarke Java-Redaktionsfunktionen anbieten."

    # items loop
    - number: "140+"
      title: "Zufriedene Kunden"
      content: "Sowohl globale Unternehmen als auch individuelle Entwickler setzen auf GroupDocs-Produkte, um innovative Lösungen zu entwickeln."


############################# Customers ###############################
customers:
  enable: true
  title: "Unsere zufriedenen Kunden"
  description: "GroupDocs-Bibliotheken werden von international anerkannten und geschätzten Marken vertraut."

  items:
    # items loop
    - title: "BenQ Corporation"
      logo: "benq"
      
    # items loop
    - title: "Nasdaq Stock Market"
      logo: "nasdaq"
      
    # items loop
    - title: "AT&T Inc."
      logo: "att"
      
    # items loop
    - title: "Customer logo AstraZeneca"
      logo: "astrazeneca"
      
    # items loop
    - title: "Central Bank of Argentina"
      logo: "argentinacentralbank"
      
    # items loop
    - title: "Roche Holding AG"
      logo: "roche"
      
    # items loop
    - title: "Capita"
      logo: "capita"
      
    # items loop
    - title: "Axa S.A."
      logo: "axa"
      
    # items loop
    - title: "Instructure Inc."
      logo: "instructure"
      
    # items loop
    - title: "Wipro"
      logo: "wipro"


############################# Actions ###############################
actions:
  enable: true
  title: "Bereit zum Start?"
  description: "Testen Sie die Funktionen von GroupDocs.Redaction kostenlos auf Ihrer Plattform."

  items:
    # items loop
    - title: ".NET"
      color: "blue"
      link: "/redaction/net/"

    # items loop
    - title: "Java"
      color: "red"
      link: "/redaction/java/"

    # items loop
    - title: "Node.js"
      color: "yellow"
      link: "/redaction/python-net/"   

############################# FAQ ###############################
faq:
  enable: true
  title: "Häufig gestellte Fragen"
  description: "Antworten auf die am häufigsten gestellten Fragen."

  items:
    # items loop
    - question: "Benötigt die GroupDocs.Redaction-Bibliothek Drittanbieter-Software zur Bearbeitung von Dokumenten?"
      answer: "GroupDocs.Redaction benötigt keine externe Software wie Adobe Acrobat, Microsoft Office oder andere."

    # items loop
    - question: "Kann ich die GroupDocs.Redaction-Bibliothek vor dem Kauf ausprobieren?"
      answer: "Ja, Sie können GroupDocs.Redaction ohne den Kauf einer Lizenz ausprobieren. Es funktioniert im Testmodus, der Test-Wasserzeichen hinzufügt und die Ausgabe auf die ersten 3 Seiten beschränkt. Um ohne Einschränkungen zu testen, beantragen Sie eine 30-tägige temporäre Lizenz. Für weitere Details, [siehe](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "Welche Lizenzoptionen sind verfügbar?"
      answer: "Wir bieten mehrere Lizenztypen basierend auf Ihren Entwicklungs- und Vertriebsanforderungen an. Dazu gehören Entwicklerbasierte, standortbasierte und gemessene Lizenzen abhängig von der Nutzung. Weitere Informationen finden Sie [hier](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.Redaction Low-Code APIs"
  description: "Integrieren Sie die Dokumentenredaktion in jede Anwendung mithilfe unserer cloudbasierten REST-API."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "Verwenden Sie cURL-Befehle mit unserer RESTful-Cloud-API, um Dokumente in einer Vielzahl unterstützter Dateiformate zu redigieren."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Extrahieren Sie Bilder, Texte und Metadaten oder redigieren Sie Dokumente mithilfe von Vorlagen in Microsoft .NET-Anwendungen."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "Java SDK zum Redigieren von Dokumenten und zum Extrahieren von Daten innerhalb Ihrer Java-basierten Anwendungen."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction No-Code Apps"
  description: "Eine webbasierte App, mit der Sie über 30 gängige Dateiformate direkt in Ihrem Browser redigieren können."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Kostenloses Online-Tool, um Word, Excel, PowerPoint, PDF und über 30 andere Dateitypen zu redigieren."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "Redigieren Sie Word-Dokumente in Ihrem Browser und extrahieren Sie Bilder, Texte oder Metadaten."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "Kostenloses PDF-Redaktionstool, das auf jedem Gerät oder jeder Plattform ohne Einschränkungen funktioniert."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---