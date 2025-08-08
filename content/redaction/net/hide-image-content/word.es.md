
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cubrir imágenes en WORD con superposiciones usando C#"
head_description: "Oculta áreas de imágenes sensibles en archivos WORD utilizando GroupDocs.Redaction for .NET. Agrega superposiciones de colores para proteger datos privados mientras mantienes el diseño original del documento sin cambios."

############################# Header ############################
title: "Ocultar imágenes privadas en archivos WORD con superposiciones usando .NET" 
description: "Protege tus datos personales y empresariales en documentos WORD utilizando C#. Consigue una protección de contenido confiable con nuestras herramientas sencillas."
subtitle: "Características clave de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# las herramientas para ocultar o eliminar contenido de archivos WORD. Protege tus documentos cubriendo texto sensible, imágenes y metadatos con facilidad.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger datos sensibles en archivos Word"
    content: |
      GroupDocs.Redaction for .NET ayuda a tus aplicaciones .NET a ocultar contenido privado en documentos rápidamente.
      
      1. Crea un objeto Redactor y especifica la ruta del archivo Word.
      2. Establece los parámetros de redacción para adaptarse a tus necesidades.
      3. Marca el área de la imagen y define el color de la superposición.
      4. Procesa y guarda el archivo redactado.
   
    code:
      platform: "net"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redacciones de muestra"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "haz clic para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Más ejemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentación"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Cubrir imágenes sensibles en WORD

        // Carga el archivo a través del constructor Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Define el color y dimensiones de la superposición
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecciona el área de la imagen a redactar
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplica la superposición y guarda el documento
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar o eliminar contenido en documentos"
  description: "GroupDocs.Redaction for .NET facilita ocultar o borrar datos en múltiples formatos de archivo. Protege información sensible mientras mantienes documentos limpios y legibles."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas de redacción detalladas"
  features:
    # feature loop
    - title: "Reemplazar texto en cualquier lugar"
      content: "Busca y cambia texto sensible en todos tus documentos para asegurar información privada."

    # feature loop
    - title: "Enmascarar imágenes"
      content: "Agrega superposiciones a áreas específicas de imágenes o a imágenes completas para ocultar visuales privadas."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Elimina o edita metadatos ocultos para evitar fugas de datos involuntarias."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Agrega superposiciones para ocultar contenido de imagen"
      content: |
        Este ejemplo demuestra cómo proteger datos sensibles en imágenes de documentos utilizando superposiciones.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carga el documento para editar
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Configura el tamaño, ubicación y color de la superposición
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Enfócate en un área específica de la imagen en la página uno
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplica la redacción con una superposición
              redactor.Apply(redaction);

              // Guarda los cambios en el archivo
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
          }
          ```
        platform: "net"
        copy_title: "Copiar"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "haz clic para copiar"
          copy_done: "copiado"
        top_links:
          #  loop
          - title: "Descargar resultado"
            icon: "download"
            link: "/examples/redaction/formats/hide-image-content.pdf"
        links:
          #  loop
          - title: "Más ejemplos"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentación"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "¿Listo para empezar?"
  description: "Prueba las características de GroupDocs.Redaction gratis o solicita una licencia"
  items:
    #  loop
    - title: "Descarga de Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licenciamiento"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Protege el contenido WORD con redacciones de .NET"
    exclude: "WORD"
    description: ".NET te permite ocultar o eliminar contenido sensible en archivos WORD. Una forma confiable de proteger documentos confidenciales y oficiales."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar Imagen"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Formatos de imagen populares"

        # format loop 6
        - name: "Redactar Foto"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 8
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 9
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Presentación XML Abierta de PowerPoint"

        # format loop 10
        - name: "Redactar JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Imagen JPEG"


---