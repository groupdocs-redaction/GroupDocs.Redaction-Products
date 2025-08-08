
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redactar imágenes en PPTX con superposiciones usando C#"
head_description: "Con GroupDocs.Redaction for .NET, puedes ocultar contenido de imagen sensible en archivos PPTX aplicando superposiciones de colores. Protege datos confidenciales sin cambiar la estructura de tu documento."

############################# Header ############################
title: "Redactar imágenes sensibles en documentos PPTX usando .NET" 
description: "Protege datos privados y empresariales en archivos PPTX con C#. Nuestras herramientas hacen que la redacción de imágenes sea rápida y efectiva."
subtitle: "Lo que ofrece GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# herramientas fáciles de usar para ocultar o eliminar contenido de archivos PPTX. Protege documentos redactando texto, imágenes y metadatos en múltiples formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantén seguros los datos empresariales en documentos Pptx"
    content: |
      GroupDocs.Redaction for .NET: Ayudando aplicaciones .NET a proteger documentos ocultando información sensible.
      
      1. Configura una instancia de Redactor y carga el archivo Pptx.
      2. Configura las opciones de redacción para ajustarse a tus necesidades.
      3. Selecciona áreas de imagen y asigna colores a las superposiciones.
      4. Procesa la redacción y guarda tu archivo.
   
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
        // Redactar áreas sensibles de imagen en PPTX

        // Abre el archivo usando Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Define el color y dimensiones de la superposición
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecciona el área a redactar
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
  title: "Herramientas de redacción de documentos"
  description: "GroupDocs.Redaction for .NET te permite ocultar o eliminar contenido sensible en varios tipos de archivos. Protege información mientras mantienes los documentos limpios y compartibles."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas de redacción potentes"
  features:
    # feature loop
    - title: "Buscar y reemplazar texto"
      content: "Ubica y redacta texto privado para mejorar la seguridad del documento."

    # feature loop
    - title: "Redactar contenido de imagen"
      content: "Cubre imágenes completas o regiones seleccionadas con superposiciones para ocultar visuales privadas."

    # feature loop
    - title: "Eliminar metadatos"
      content: "Borra o modifica metadatos ocultos para evitar fuga de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar datos de imagen con superposiciones"
      content: |
        Este ejemplo demuestra cómo redactar imágenes sensibles en documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carga el documento
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Configura el tamaño, posición y color de la superposición
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Especifica el área a redactar en la primera página
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplica la superposición
              redactor.Apply(redaction);

              // Guarda el archivo redactado
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
    title: "Redactar contenido PPTX con .NET"
    exclude: "PPTX"
    description: "Usa .NET para ocultar o eliminar contenido sensible en archivos PPTX. Una solución confiable para la seguridad de documentos."
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