
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ocultar imágenes en JPEG con superposiciones usando C#"
head_description: "Protege imágenes privadas en archivos JPEG con GroupDocs.Redaction for .NET añadiendo superposiciones de colores. Mantén la información sensible segura sin cambiar el diseño del archivo."

############################# Header ############################
title: "Cubrir imágenes sensibles en archivos JPEG con superposiciones usando .NET" 
description: "Mantén a salvo tus imágenes personales y empresariales en archivos JPEG usando C#. Nuestras herramientas simples hacen que la protección de archivos sea fácil y confiable."
subtitle: "Características principales de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# las herramientas para esconder o eliminar contenido en archivos JPEG. Cubre texto, imágenes y metadatos para asegurar tus documentos con facilidad.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger datos sensibles en archivos Jpeg"
    content: |
      GroupDocs.Redaction for .NET está diseñado para ayudar a tus aplicaciones .NET a ocultar contenido privado de forma rápida.
      
      1. Crea un objeto Redactor y proporciona la ruta a tu archivo Jpeg.
      2. Configura las opciones de redacción para ajustarse a tus necesidades.
      3. Marca el área de la imagen y elige un color de superposición.
      4. Ejecuta la redacción y guarda tu archivo protegido.
   
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
        // Cubrir contenido de imagen en archivos JPEG

        // Carga el archivo usando el Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Configura el tamaño y color de la superposición
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecciona el área para la superposición
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplica la superposición y guarda el archivo
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar cualquier contenido en documentos"
  description: "GroupDocs.Redaction for .NET facilita ocultar o eliminar contenido en varios formatos de archivo. Protege información sensible mientras mantienes tus archivos ordenados y fáciles de compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas de redacción para un control completo"
  features:
    # feature loop
    - title: "Editar texto en cualquier lugar"
      content: "Busca y reemplaza texto sensible en tus documentos para proteger datos privados."

    # feature loop
    - title: "Enmascarar imágenes"
      content: "Aplica superposiciones a imágenes o áreas específicas para mantener visuales sensibles ocultas."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Elimina o actualiza campos de metadatos ocultos para evitar fugas de datos accidentales."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar datos de imagen con superposiciones"
      content: |
        Este ejemplo demuestra cómo enmascarar áreas sensibles de imagen en archivos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre el archivo para editar
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Configura el tamaño, posición y color de la superposición
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Selecciona un área específica de imagen en la página uno
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplica la superposición para ocultar la imagen
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
    title: "Protege archivos JPEG con redacciones de .NET"
    exclude: "JPEG"
    description: "Con .NET, puedes ocultar o eliminar contenido sensible en archivos JPEG. Una solución confiable para mantener tus documentos seguros y profesionales."
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