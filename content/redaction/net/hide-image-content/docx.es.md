
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cubrir imágenes en DOCX con superposiciones usando C#"
head_description: "Usa GroupDocs.Redaction for .NET para cubrir imágenes sensibles en archivos DOCX con superposiciones de colores. Protege datos privados manteniendo el diseño del documento sin cambios."

############################# Header ############################
title: "Cubrir imágenes sensibles en documentos DOCX con superposiciones usando .NET" 
description: "Protege información personal y empresarial en archivos DOCX utilizando C#. Nuestras herramientas hacen que la protección de datos sea simple y confiable."
subtitle: "Características de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# herramientas para ocultar o eliminar contenido en archivos DOCX. Protege documentos cubriendo texto, imágenes y metadatos en varios formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger datos en archivos Docx"
    content: |
      GroupDocs.Redaction for .NET: Diseñado para ayudar a tus aplicaciones .NET a asegurar documentos. Redacta información sensible en solo unos pasos.
      
      1. Inicializa un Redactor y proporciona la ruta a tu archivo Docx.
      2. Configura las opciones de redacción para satisfacer tus necesidades.
      3. Elige el área de la imagen y selecciona el color de la superposición.
      4. Ejecuta la redacción y guarda el archivo.
   
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
        // Cubrir áreas de imágenes sensibles en DOCX

        // Carga el archivo a través del constructor Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Configura el color y tamaño de la superposición
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Define el área de redacción
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
  title: "Redactar contenido en archivos"
  description: "Con GroupDocs.Redaction for .NET, puedes ocultar o eliminar contenido sensible en muchos tipos de archivos. Mantén los documentos seguros mientras preservas la legibilidad."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opciones flexibles de redacción"
  features:
    # feature loop
    - title: "Editar texto fácilmente"
      content: "Busca y reemplaza texto privado en todo tu documento para mejorar la seguridad de los datos."

    # feature loop
    - title: "Cubrir áreas de imagen"
      content: "Sobrepon imágenes completas o selecciona partes específicas para proteger información visual."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Elimina o cambia metadatos ocultos para evitar fugas no intencionadas de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Aplica superposiciones para ocultar detalles de imágenes"
      content: |
        Este ejemplo demuestra cómo ocultar áreas sensibles en imágenes de documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carga el documento que deseas redactar
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Especifica los parámetros de la superposición: tamaño, posición, color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Dirígete a una área específica en la primera página
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Coloca la superposición en la imagen
              redactor.Apply(redaction);

              // Guarda el archivo actualizado
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
    title: "Protege archivos DOCX con redacción de .NET"
    exclude: "DOCX"
    description: "Utiliza .NET para cubrir o eliminar datos sensibles en archivos DOCX. Ideal para mantener documentos confidenciales seguros."
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