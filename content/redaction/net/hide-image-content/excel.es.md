
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Enmascarar imágenes en EXCEL con superposiciones usando C#"
head_description: "Oculta imágenes privadas en archivos EXCEL usando GroupDocs.Redaction for .NET. Coloca superposiciones de colores para mantener los datos sensibles seguros, mientras preservas el diseño del documento."

############################# Header ############################
title: "Cubrir imágenes sensibles en archivos EXCEL con superposiciones usando .NET" 
description: "Protege datos personales y empresariales en archivos EXCEL utilizando C#. Obtén protección de datos rápida y confiable con nuestras herramientas."
subtitle: "Explora las características de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# herramientas para ocultar o eliminar contenido sensible en archivos EXCEL. Cubre texto, imágenes y metadatos para mantener los documentos seguros.

############################# Steps ############################
steps:
    enable: true
    title: "Mantén tus datos seguros en archivos Excel"
    content: |
      GroupDocs.Redaction for .NET ayuda a tus aplicaciones .NET a asegurar documentos ocultando contenido sensible.
      
      1. Crea una instancia de Redactor y proporciona la ruta del archivo Excel.
      2. Configura las opciones de redacción para obtener los resultados deseados.
      3. Selecciona el área de la imagen y el color de la superposición.
      4. Aplica la redacción y guarda el archivo.
   
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
        // Enmascarar contenido de imagen en EXCEL

        // Carga el documento usando Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Configura el tamaño y color de la superposición
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecciona el área para ocultar
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplica y guarda los cambios
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar cualquier contenido en documentos"
  description: "GroupDocs.Redaction for .NET te ayuda a ocultar o borrar contenido sensible en varios formatos de documento. Protege los datos mientras mantienes los documentos fáciles de usar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opciones de redacción potentes"
  features:
    # feature loop
    - title: "Buscar y editar texto"
      content: "Encuentra texto sensible y reemplázalo para proteger datos privados en tus documentos."

    # feature loop
    - title: "Superponer áreas de imagen"
      content: "Cubrir imágenes completas o partes seleccionadas con superposiciones para mantener visuales privadas."

    # feature loop
    - title: "Eliminar metadatos"
      content: "Elimina campos de metadatos ocultos para evitar fugas de información accidentales."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Enmascarar datos de imagen con superposiciones"
      content: |
        Este ejemplo muestra cómo cubrir información sensible en imágenes de documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre el archivo para editar
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Define el tamaño, color y colocación de la superposición
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Dirígete a una sección de imagen específica en la página uno
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplica la superposición para enmascarar la imagen
              redactor.Apply(redaction);

              // Guarda el documento final
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
    title: "Protege archivos EXCEL con las herramientas de redacción de .NET"
    exclude: "EXCEL"
    description: "Usa .NET para ocultar o eliminar información sensible en archivos EXCEL. Una solución confiable para la seguridad de los documentos."
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