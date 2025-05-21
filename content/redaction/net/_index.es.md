---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "API de redacción de C# .NET | Ocultar texto privado de imágenes PDF Word Excel"
head_description: "API de redacción de documentos para .NET. Redactar, ocultar o eliminar contenido confidencial de PDF, Microsoft Word, Excel, presentaciones e imágenes rasterizadas."

############################# Header ############################
title: "Datos clasificados seguros a través de la API de redacción"
description: "Redacte, oculte o elimine contenido confidencial y metadatos de documentos, hojas de trabajo, presentaciones, PDF y archivos de imágenes rasterizadas mediante la API de .NET."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for .NET"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
        product: "GroupDocs.Redaction"
        platform: ".NET"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "Visión de conjunto"

            # button loop
            - link: "#features"
              text: "Características"

            # button loop
            - link: "#support"
              text: "Support"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Live Demo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Precios"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction para .NET es una biblioteca API que lo ayuda a borrar datos confidenciales y clasificados de varios formatos de archivo, como Microsoft Word, Excel, PowerPoint y PDF. La interfaz independiente de formato de nuestra API de Redacción admite la redacción de varios tipos, por ejemplo, redacción de texto, redacción de metadatos, redacción de anotaciones y redacción de documentos tabulares. GroupDocs.Redaction para .NET API también le permite redactar archivos protegidos con contraseña. Puede guardar el documento en su formato original, así como crear un documento PDF desinfectado con imágenes rasterizadas de las páginas originales.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          A continuación se muestra una descripción general de GroupDocs.Redaction para .NET:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Visión de conjunto"
          content: |
            * Redactar texto
            * Redactar metadatos
            * Redactar anotación
            * Redactar documento tabular
            * Redactar archivos protegidos
            * Personalización
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction para .NET admite los siguientes [formatos de archivo de documento] (https://docs.groupdocs.com/redaction/net/supported-document-formats/):

        right:
          enable: true
          table:
            # table loop
            - title: "Redactar texto, Metadata & Comments"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Fixed Layout**: PDF
                * **Raster Images**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for .NET apoya siguiendo Sistemas operativos, Frameworks & Gerente de empaquetacións:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Sistemas operativos"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "Marcos compatibles"
              content: |
                * .NET Framework 2.0 o superior
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Gerente de empaquetación"
              content: |
                * NuGet

            # table loop
            - icon: "fas fa-tools"
              title: "Entornos de desarrollo"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction for .NET Características"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Realice búsquedas con distinción entre mayúsculas y minúsculas para la redacción de frases exactas"

      # feature loop
      - icon: "fas fa-eye"
        content: "Use el cuadro de color para ocultar el texto redactado en lugar del reemplazo de cadenas"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Localice y elimine cualquier texto mediante la búsqueda de expresiones regulares"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Filtre toda o cualquier combinación de información de metadatos clasificados del documento"

      # feature loop
      - icon: "fas fa-code"
        content: "Borre rápidamente la información completa de metadatos de un documento específico"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Establezca un alcance de la redacción en una hoja de trabajo y/o columna específica en Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Eliminar todos los comentarios o comentarios específicos y otras anotaciones del documento"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Busque y elimine datos confidenciales del texto de la anotación"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Capacidad para trabajar con sus propios formatos y redacciones"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Compatibilidad con formatos de imágenes de trama y redacciones de regiones de imágenes"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Especifique un conjunto de reglas de redacción (política) en un archivo XML"

      # feature loop
      - icon: "fas fa-columns"
        content: "Especifique el rango de páginas y el nivel de cumplimiento de PDF durante la conversión a PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Editar o eliminar metadatos EXIF ​​de archivos de imagen"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Redactar imágenes incrustadas dentro de los documentos PDF, Word y Presentation"

      # feature loop
      - icon: "fas fa-print"
        content: "Guardar una política de redacción como un archivo XML"

    more_feature:
      # more_feature_loop
      - title: "Redactar sus datos clasificados con facilidad y control"
        content: |
          GroupDocs.Redaction para .NET API le otorga control total sobre cómo desea ocultar o borrar su información clasificada importante del documento compatible. Usar nuestra Redaction API es bastante simple y directo.  

          En el siguiente ejemplo, cargamos un documento compatible, redactamos cualquier texto, haciendo coincidir "2 dígitos, espacio o nada, 2 dígitos, nuevamente espacio y 6 dígitos" (como 12 34 567890) con un cuadro de color azul usando C#. Una vez hecho esto, guarda el documento en su formato original renombrándolo con un sufijo agregado "_Redactado":

          ```cs
          // Cree una instancia de la clase Redactor
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // Aplicar redacción
            redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
            redactor.Save();
          }
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction ofrece API de visualización de documentos para otros entornos de desarrollo populares"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for Java"
          image: "/border/groupdocs-redaction-java.svg"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

        # solution loop
        - img_alt: "GroupDocs.Redaction for Python via .NET"
          image: "/border/groupdocs-redaction-python-net.svg"
          product: "GroupDocs.Redaction"
          platform: "Python via .NET"
          link: "/redaction/python-net/"

############################# Back to top ###############################
back_to_top:
  enable: true
---