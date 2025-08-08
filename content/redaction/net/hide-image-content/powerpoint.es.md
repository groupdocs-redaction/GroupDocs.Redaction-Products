
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ocultar imágenes sensibles en POWERPOINT usando superposiciones con C#"
head_description: "Usa GroupDocs.Redaction for .NET para colocar superposiciones en imágenes en archivos POWERPOINT, manteniendo la información privada oculta mientras conservas el diseño intacto."

############################# Header ############################
title: "Ocultar imágenes privadas en documentos POWERPOINT usando superposiciones con .NET" 
description: "Protege datos personales y corporativos en archivos POWERPOINT con C#. Herramientas simples para una fuerte privacidad en documentos."
subtitle: "Características principales de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# herramientas simples para ocultar o eliminar contenido en archivos POWERPOINT. Protege tus documentos cubriendo texto sensible, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger información sensible en documentos Powerpoint"
    content: |
      GroupDocs.Redaction for .NET está diseñado para ayudar a tus aplicaciones .NET a resguardar contenido del documento rápidamente.
      
      1. Crea un objeto Redactor y especifica el archivo Powerpoint.
      2. Ajusta la configuración de redacción para adaptarse a tus necesidades.
      3. Selecciona el área de la imagen y elige el color de la superposición.
      4. Aplica la redacción y guarda el documento.
   
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
        // Ocultar datos de imágenes en archivos POWERPOINT

        // Cargar el archivo usando Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Definir color y dimensiones de la superposición
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Seleccionar área a cubrir
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplicar superposición y guardar documento
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar datos sensibles en documentos"
  description: "GroupDocs.Redaction for .NET te permite ocultar o eliminar contenido en múltiples tipos de documentos. Protege datos privados mientras mantienes los archivos fáciles de usar y compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas de redacción ricas en funciones"
  features:
    # feature loop
    - title: "Buscar y editar texto"
      content: "Busca texto sensible en documentos y reemplázalo para proteger datos privados."

    # feature loop
    - title: "Cubrir contenido de imagen"
      content: "Usa superposiciones para enmascarar imágenes o partes seleccionadas, asegurando que los visuales privados permanezcan ocultos."

    # feature loop
    - title: "Limpiar metadatos ocultos"
      content: "Borra o modifica metadatos ocultos para evitar la exposición no intencionada de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Proteger datos de imagen con superposiciones"
      content: |
        Este ejemplo demuestra cómo ocultar contenido sensible en imágenes de documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carga el archivo para redacción
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Define tamaño, posición y color de la superposición
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Marca el área de imagen en la primera página
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplica la superposición para cubrir la imagen
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
    title: "Asegura contenido POWERPOINT con redacciones de .NET"
    exclude: "POWERPOINT"
    description: "Usa .NET para cubrir o eliminar contenido privado en archivos POWERPOINT. Una solución confiable para proteger documentos sensibles."
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