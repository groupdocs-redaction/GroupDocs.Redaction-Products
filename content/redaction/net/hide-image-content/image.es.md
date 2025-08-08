
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Proteger imágenes en IMAGE añadiendo superposiciones usando C#"
head_description: "Con GroupDocs.Redaction for .NET, puedes ocultar datos de imagen sensibles en archivos IMAGE usando superposiciones de colores. Asegura información importante mientras mantienes el diseño original del archivo."

############################# Header ############################
title: "Ocultar imágenes privadas en archivos IMAGE usando superposiciones con .NET" 
description: "Mantén protegidas las imágenes sensibles de negocios y personales en archivos IMAGE usando C#. Herramientas simples para una protección eficaz de contenido."
subtitle: "Características clave de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# herramientas poderosas para ocultar o eliminar contenido en archivos IMAGE. Protege tus documentos enmascarando texto sensible, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger datos en archivos Image con superposiciones"
    content: |
      Usa GroupDocs.Redaction for .NET para ocultar rápidamente contenido privado en tus aplicaciones .NET.
      
      1. Crea una instancia de Redactor y proporciona la ruta a tu archivo Image.
      2. Ajusta la configuración de redacción según sea necesario.
      3. Selecciona áreas de imagen y define los colores de superposición.
      4. Procesa el archivo y guarda la versión segura.
   
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
        // Proteger contenido de imagen en IMAGE

        // Abre el archivo usando el Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Define dimensiones y colores de superposición
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecciona el área que quieras ocultar
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplica la superposición y guarda el resultado
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar contenido en diferentes formatos de archivo"
  description: "Con GroupDocs.Redaction for .NET, puedes ocultar o eliminar contenido en una variedad de formatos de archivo. Protege datos sensibles mientras mantienes un formato limpio y legible."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Control total sobre redacciones"
  features:
    # feature loop
    - title: "Buscar y reemplazar texto"
      content: "Busca en documentos y reemplaza texto sensible para proteger información privada."

    # feature loop
    - title: "Superponer imágenes"
      content: "Aplicar superposiciones de colores para enmascarar imágenes completas o partes seleccionadas."

    # feature loop
    - title: "Editar metadatos"
      content: "Elimina o modifica campos de metadatos ocultos para prevenir la exposición de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cubrir contenido de imagen con superposiciones"
      content: |
        Este ejemplo de código muestra cómo aplicar superposiciones para ocultar contenido sensible de imagen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Cargar el archivo para la redacción
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Configura el tamaño, color y posición de la superposición
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Selecciona el área de la imagen en la página uno
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Añadir la superposición para ocultar el contenido de la imagen
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
    title: "Ocultar contenido en archivos IMAGE usando redacciones de .NET"
    exclude: "IMAGE"
    description: "Usa .NET para ocultar o eliminar datos sensibles en archivos IMAGE. Un método confiable para asegurar archivos oficiales y proteger información confidencial."
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