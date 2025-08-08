
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Enmascarar imágenes en archivos XLSX con superposiciones usando C#"
head_description: "Con GroupDocs.Redaction for .NET, puedes enmascarar contenido de imagen sensible en archivos XLSX aplicando superposiciones de colores. Protege datos importantes mientras mantienes la estructura del documento intacta."

############################# Header ############################
title: "Enmascarar imágenes sensibles en documentos XLSX usando .NET" 
description: "Asegura la privacidad de datos en archivos XLSX con C#. Nuestras herramientas están diseñadas para hacer que la redacción de imágenes sea rápida y efectiva."
subtitle: "Características clave de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ofrece a los desarrolladores de C# herramientas simples para ocultar o eliminar contenido de archivos XLSX. Protege documentos redactando texto, imágenes y metadatos en diferentes formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger datos privados en documentos Xlsx"
    content: |
      GroupDocs.Redaction for .NET: Ayudando a tus aplicaciones .NET a asegurar documentos de manera eficiente.
      
      1. Crea una instancia de Redactor y carga el archivo Xlsx.
      2. Configura los parámetros de redacción para adaptarse a tus necesidades.
      3. Define el área de la imagen y elige el color de la superposición.
      4. Aplica la redacción y guarda el archivo de salida.
   
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
        // Enmascarar partes de imágenes sensibles en XLSX

        // Inicializa Redactor con la ruta del archivo
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Elige el tamaño y color de la superposición
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Marca el área a redactar
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
  title: "Características de redacción de documentos"
  description: "Con GroupDocs.Redaction for .NET, puedes eliminar u ocultar contenido a través de varios formatos de archivo. Mantén datos sensibles privados mientras conservas un diseño limpio."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características robustas de redacción"
  features:
    # feature loop
    - title: "Buscar y reemplazar texto"
      content: "Busca rápidamente y redacta texto confidencial para proteger datos sensibles."

    # feature loop
    - title: "Enmascarar contenido de imagen"
      content: "Aplica superposiciones a imágenes completas o áreas específicas para ocultar visuales privadas."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Elimina o ajusta metadatos ocultos para evitar la exposición no intencionada de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar contenido de imágenes con superposiciones"
      content: |
        Aprende cómo enmascarar regiones sensibles de imágenes en tus documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre el documento para la redacción
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Define atributos de la superposición: tamaño, ubicación, color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Enfócate en una área específica de la imagen
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Superponer el área de la imagen
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
    title: "Enmascarar contenido XLSX con redacciones de .NET"
    exclude: "XLSX"
    description: "Utiliza .NET para redactar o eliminar contenido sensible en archivos XLSX. Una solución práctica para asegurar documentos empresariales y personales."
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