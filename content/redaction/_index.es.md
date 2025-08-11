---
############################# Static ############################
layout: "family"
date:  2025-08-11T19:33:03
draft: false

product: "Redaction"
product_tag: "redaction"

lang: es

############################# Head ############################
head_title: "Solución de Redacción de Documentos. Edita o elimina cualquier dato sensible."
head_description: "Elimina, redacciona o oculta texto, imágenes o metadatos en PDFs, documentos de Word, hojas de cálculo de Excel, presentaciones de PowerPoint, imágenes y más. Utiliza nuestra biblioteca en tus aplicaciones .NET, Java, Python o basadas en la nube."

############################# Header ############################
title: "Biblioteca de Redacción de Documentos"
description:  |
  Oculta o elimina información privada de varios tipos de archivo.

  Edita texto o imágenes para eliminar contenido sensible.

  Gestiona metadatos de archivos utilizando nuestras características avanzadas.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "Elige Tu Plataforma"
  title: "Independencia de Plataforma"
  description: "La biblioteca GroupDocs.Redaction es compatible con los siguientes sistemas operativos y marcos:"
  details_link_title: "Descubre más"

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
          - rows: "2"
            content: |
                    .NET Framework 4.6.2 or higher <br> .NET Core 3.1 or higher
      
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
          - rows: "2"
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
          - rows: "2"
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
  title: "GroupDocs.Redaction de un Vistazo"
  description: "Una solución para gestionar contenido en PDFs, documentos de Office, imágenes y otros archivos empresariales."

  items:
    # items loop
    - icon: "text"
      title: "Eliminar o Editar Texto"
      content: "Encuentra y redacciona texto sensible en tus documentos."

    # items loop
    - icon: "image"
      title: "Redactar Imágenes"
      content: "Oculta áreas de imagen en tus archivos sin esfuerzo adicional."

    # items loop
    - icon: "template"
      title: "Gestionar Metadatos"
      content: "Elimina o reemplaza metadatos como el autor en documentos de Word o datos EXIF en imágenes."

    # items loop
    - icon: "pdf"
      title: "Características Avanzadas"
      content: "Busca datos para redactar utilizando expresiones regulares o integración de IA."

############################# Code samples ############################
code_samples:
  enable: true
  title: "Ejemplos de Código GroupDocs.Redaction"
  description: "Casos típicos de operaciones de redacción GroupDocs.Redaction."
  items:
    # code sample loop
    - title: "Cómo Redactar Texto en Documentos PDF"
      content: |
       GroupDocs.Redaction es la mejor solución para redactar texto en tus documentos en solo unos pocos pasos.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // Pasa la ruta del archivo a redactar a una instancia de Redactor
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // Proporciona las opciones de redacción
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redacta y guarda el resultado
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // Pasa la ruta del archivo a redactar a una instancia de Redactor
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // Proporciona las opciones de redacción
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redacta y guarda el resultado
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

                # Pasa la ruta del archivo a redactar a una instancia de Redactor
                with gr.Redactor("source.pdf") as redactor:

                    # Proporciona las opciones de redacción
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # Redacta y guarda el resultado
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "Más de 30 Formatos de Archivo Soportados"
  description: "GroupDocs.Redaction soporta operaciones de redacción en todos los formatos de archivo empresarial más utilizados."

############################# Metrics ###############################
metrics:
  enable: true
  title: "Logros de GroupDocs.Redaction"
  description: "Descubre las métricas clave que destacan el éxito de nuestra biblioteca"

  items:
    # items loop
    - number: "30+"
      title: "Formatos Soportados"
      content: "GroupDocs.Redaction soporta operaciones con más de 30 formatos de archivo ampliamente utilizados."

    # items loop
    - number: "440k"
      title: "Descargas de NuGet"
      content: "GroupDocs.Redaction para .NET ha sido descargado más de 440,000 veces de NuGet."

    # items loop
    - number: "12k"
      title: "Descargas de Maven"
      content: "GroupDocs.Redaction tiene más de 12,000 descargas en Maven, ofreciendo poderosas características de redacción para Java."

    # items loop
    - number: "140+"
      title: "Clientes Satisfechos"
      content: "Tanto empresas globales como desarrolladores individuales confían en los productos de GroupDocs para construir soluciones innovadoras."


############################# Customers ###############################
customers:
  enable: true
  title: "Nuestros Clientes Satisfechos"
  description: "Las bibliotecas de GroupDocs son confiadas por marcas globalmente reconocidas y respetadas."

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
  title: "¿Listo para Comenzar?"
  description: "Prueba las funciones de GroupDocs.Redaction gratis en tu plataforma."

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
  title: "Preguntas Frecuentes"
  description: "Respuestas a las preguntas más comunes."

  items:
    # items loop
    - question: "¿La biblioteca GroupDocs.Redaction requiere software de terceros para manipular documentos?"
      answer: "GroupDocs.Redaction no requiere ningún software externo como Adobe Acrobat, Microsoft Office u otros."

    # items loop
    - question: "¿Puedo probar la biblioteca GroupDocs.Redaction antes de comprar?"
      answer: "Sí, puedes probar GroupDocs.Redaction sin comprar una licencia. Funciona en modo de prueba, lo que añade insignias de prueba y limita la salida a las primeras 3 páginas. Para probar sin restricciones, solicita una licencia temporal de 30 días. Para más detalles, [consulta](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "¿Qué opciones de licencia están disponibles?"
      answer: "Ofrecemos varios tipos de licencias según tus necesidades de desarrollo y distribución. Incluyen licencias basadas en desarrolladores, basadas en sitios y licencias medidas según el uso. Aprende más [aquí](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "APIs de Bajo Código GroupDocs.Redaction"
  description: "Integra la redacción de documentos en cualquier aplicación utilizando nuestra API REST basada en la nube."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "Utiliza comandos cURL con nuestra API RESTful en la nube para redactar documentos en una amplia gama de formatos de archivo soportados."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Extrae imágenes, texto y metadatos o redacta documentos utilizando plantillas en aplicaciones de Microsoft .NET."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "SDK de Java para redactar documentos y extraer datos dentro de tus aplicaciones basadas en Java."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "Aplicaciones Sin Código GroupDocs.Redaction"
  description: "Una aplicación web que te permite redactar más de 30 formatos de archivo populares directamente en tu navegador."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Herramienta en línea gratuita para redactar archivos de Word, Excel, PowerPoint, PDF y más de 30 otros tipos de archivos."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "Redacta documentos de Word en tu navegador y extrae imágenes, texto o metadatos."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "Herramienta gratuita de redacción de PDF que funciona en cualquier dispositivo o plataforma sin limitaciones."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---