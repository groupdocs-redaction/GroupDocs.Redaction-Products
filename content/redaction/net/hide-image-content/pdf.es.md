
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ocultar imágenes en PDF con superposiciones usando C#"
head_description: "Con GroupDocs.Redaction for .NET, puedes proteger imágenes sensibles en archivos PDF añadiendo superposiciones de colores. Asegura información privada sin alterar el diseño del documento."

############################# Header ############################
title: "Protege imágenes sensibles en documentos PDF con superposiciones usando .NET" 
description: "Mantén a salvo datos empresariales y personales en archivos PDF utilizando C#. Nuestras herramientas te ayudan a lograr una fuerte protección de datos."
subtitle: "Características de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ofrece a los desarrolladores de C# herramientas poderosas para ocultar o eliminar contenido de archivos PDF. Protege documentos cubriendo texto, imágenes y metadatos en múltiples formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Asegura datos empresariales en documentos Pdf"
    content: |
      GroupDocs.Redaction for .NET: Diseñado para ayudar a tus aplicaciones .NET a proteger documentos. Redacta información privada de forma rápida.
      
      1. Crea una instancia de Redactor y proporciona la ruta al archivo Pdf que deseas proteger.
      2. Ajusta la configuración de redacción para obtener el resultado que necesitas.
      3. Selecciona el área de la imagen y establece el color de la superposición.
      4. Procesa el archivo y guarda el documento redactado.
   
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
        // Oculta contenido de imagen sensible en PDF

        // Carga el archivo usando el constructor Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configura el color y tamaño de la superposición
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecciona el área para redactar
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplica la superposición a la imagen y guarda el archivo
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar contenido en documentos"
  description: "Con GroupDocs.Redaction for .NET, puedes ocultar o eliminar contenido en una amplia gama de formatos de archivo. Protege información confidencial mientras mantienes los documentos fáciles de leer y compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características avanzadas de redacción"
  features:
    # feature loop
    - title: "Editar texto en cualquier lugar"
      content: "Busca y reemplaza texto sensible en todo tu documento para mantener los datos privados seguros."

    # feature loop
    - title: "Cubrir imágenes"
      content: "Aplica superposiciones a imágenes completas o áreas seleccionadas para ocultar visuales sensibles."

    # feature loop
    - title: "Manejar metadatos"
      content: "Elimina o modifica metadatos ocultos para prevenir exposición accidental de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa superposiciones para ocultar datos de imágenes"
      content: |
        Este ejemplo muestra cómo cubrir información sensible en imágenes de documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carga el documento para redacción
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Configura los parámetros de superposición: tamaño, posición y color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Dirígete a un área específica de la imagen en la primera página
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplica la superposición para ocultar la imagen
              redactor.Apply(redaction);

              // Guarda el documento redactado
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
    title: "Asegura contenido PDF con redacciones de .NET"
    exclude: "PDF"
    description: "Usa .NET para ocultar o eliminar contenido sensible en archivos PDF. Una solución efectiva para asegurar documentos oficiales y confidenciales."
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