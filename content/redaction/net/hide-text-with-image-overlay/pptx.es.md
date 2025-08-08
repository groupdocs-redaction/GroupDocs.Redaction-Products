
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redactar Texto en PPTX Usando Superposiciones y C#"
head_description: "Oculte contenido privado en documentos PPTX cubriéndolo con cuadrados de colores utilizando GroupDocs.Redaction for .NET. Mantenga su diseño tal como está."

############################# Header ############################
title: "Redactar Texto en PPTX con Superposiciones Usando .NET" 
description: "Con C# y GroupDocs.Redaction for .NET, es posible proteger datos sensibles en archivos PPTX ocultándolos de la vista."
subtitle: "Explorar GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Qué Hace GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET le brinda el poder de cubrir o eliminar contenido en documentos PPTX utilizando C#. Oculte cualquier cosa, desde nombres hasta notas, en solo unos pocos pasos.

############################# Steps ############################
steps:
    enable: true
    title: "Ocultar contenido privado en sus archivos Pptx"
    content: |
      Con GroupDocs.Redaction for .NET, los desarrolladores de .NET pueden proteger documentos en unos pocos pasos simples.
      
      1. Inicie un Redactor con la ruta al archivo que desea limpiar.
      2. Elija las reglas de redacción que se ajusten a sus necesidades.
      3. Seleccione un patrón para que coincida y un color para la superposición.
      4. Ejecute la redacción y guarde su archivo actualizado.
   
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
        // Use superposiciones para cubrir texto en PPTX

        // Inicialice Redactor con su archivo
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Defina cómo debe comportarse la redacción
            // Establezca qué ocultar y el color de la superposición
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Ejecutar y guardar los cambios
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más maneras de proteger sus archivos"
  description: "GroupDocs.Redaction for .NET le proporciona las herramientas para ocultar datos en diferentes formatos sin cambiar el diseño."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Características que importan"
  features:
    # feature loop
    - title: "Reemplace texto según sea necesario"
      content: "Intercambiar texto para mantener información clave alejada de usuarios no autorizados."

    # feature loop
    - title: "Ocultar áreas de imagen"
      content: "Ocultar imágenes completas o ciertas partes dibujando cuadros de superposición."

    # feature loop
    - title: "Borrar datos ocultos"
      content: "Eliminar metadatos integrados que podrían revelar detalles privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacción de expresiones regulares"
      content: |
        Este ejemplo muestra cómo buscar y ocultar texto con expresiones regulares
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Cargue un archivo para redacción
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Establecer reglas de redacción: texto de búsqueda y color de bloque
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Aplicar lógica de redacción
              redactor.Apply(redaction);

              // Guardar resultado redactado
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Asegurar Texto PPTX con Herramientas de .NET"
    exclude: "PPTX"
    description: "Cubra áreas privadas o elimine datos ocultos en archivos PPTX utilizando las funciones de redacción de .NET."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 6
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 7
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Presentación XML Abierta de PowerPoint"


---