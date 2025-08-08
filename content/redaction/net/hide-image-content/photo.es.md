
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Agregar superposiciones para ocultar imágenes en PHOTO usando C#"
head_description: "Oculta contenido de imagen sensible en archivos PHOTO con GroupDocs.Redaction for .NET aplicando superposiciones. Mantén los datos privados seguros mientras mantienes la disposición del documento intacta."

############################# Header ############################
title: "Ocultar contenido de imagen en archivos PHOTO con superposiciones usando .NET" 
description: "Protege imágenes personales y empresariales en archivos PHOTO usando C#. Herramientas fáciles de usar para una protección de contenido efectiva."
subtitle: "Características principales de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# una forma poderosa de ocultar o eliminar contenido en archivos PHOTO. Protege documentos enmascarando texto, imágenes y metadatos rápidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Asegurar contenido en archivos Photo"
    content: |
      GroupDocs.Redaction for .NET hace que sea rápido y sencillo proteger contenido en tus aplicaciones .NET.
      
      1. Crea un objeto Redactor y apúntalo a tu archivo Photo.
      2. Ajusta las configuraciones de redacción a tus necesidades.
      3. Elige áreas de imagen y establece el color de superposición.
      4. Ejecuta la redacción y guarda el archivo asegurado.
   
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
        // Aplicar superposiciones para ocultar imágenes en PHOTO

        // Carga el archivo con Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Configura el tamaño y color de la superposición
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecciona el área de la imagen
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplica la superposición y guarda los cambios
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar contenido de manera sencilla"
  description: "GroupDocs.Redaction for .NET te ayuda a ocultar o eliminar contenido sensible en muchos tipos de archivos. Protege datos privados mientras mantienes tus documentos limpios y fáciles de leer."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas de redacción integrales"
  features:
    # feature loop
    - title: "Editar texto en documentos"
      content: "Busca y reemplaza texto privado en tus documentos para asegurar información sensible."

    # feature loop
    - title: "Ocultar áreas de imagen"
      content: "Agrega superposiciones a imágenes o partes seleccionadas para cubrir visuales sensibles."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Elimina metadatos ocultos para evitar fugas de datos accidentalmente."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar datos de imagen con superposiciones"
      content: |
        Este ejemplo de código muestra cómo cubrir áreas de imagen en un archivo usando superposiciones.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carga el archivo para editar
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Establece la posición, tamaño y color de la superposición
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Dirígete a un área específica de la imagen en la página uno
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplica la superposición para enmascarar la imagen
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
    title: "Protege archivos PHOTO con redacciones de .NET"
    exclude: "PHOTO"
    description: "Con .NET, puedes ocultar o eliminar contenido privado en archivos PHOTO. Una forma sencilla y efectiva de asegurar documentos oficiales."
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