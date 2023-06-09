---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "API de redacción de Java | Ocultar datos confidenciales de PDF Word Excel Image"
head_description: "API de redacción de documentos de Java: oculte datos personales de PDF, Word, Excel, presentaciones de PowerPoint e imágenes rasterizadas a través de varios tipos de redacción."

############################# Header ############################
title: "Redactar información privada a través de la API de Java"
description: "Excluya u oculte información personal y metadatos de documentos, hojas de trabajo, presentaciones, PDF y archivos de imágenes ráster utilizando la API de redacción de Java."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

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
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "Precios"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for Java API permite a los desarrolladores eliminar datos confidenciales de formatos de archivo populares como Microsoft Word, Excel, PowerPoint, PDF e imágenes para que puedan usarse y distribuirse, pero aún así proteger la información confidencial. La biblioteca de redacción ofrece una única interfaz independiente del formato para redactar cualquier tipo de información clasificada, incluidos números de seguridad social, información médica, detalles financieros, de propiedad, legales o incluso comerciales a través de texto, metadatos y tipos de redacción de anotaciones. Le permite guardar el documento en su formato original y crear un documento PDF desinfectado con imágenes rasterizadas de las páginas originales.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          A continuación se muestra una descripción general de GroupDocs.Redaction para Java:
      
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
          GroupDocs.Redaction para Java admite los siguientes [formatos de archivo de documento] (https://docs.groupdocs.com/redaction/java/supported-document-formats/):

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
          GroupDocs.Redaction for Java apoya siguiendo Sistemas operativos, Frameworks y Gestores de Paquetes:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Sistemas operativos"
              content: |
                * Microsoft Windows Desktop
                * Microsoft Windows Server
                * Linux
                * MacOS

            # table loop
            - icon: "fas fa-code"
              title: "Marcos compatibles"
              content: |
                * Java 7 (1.7) y superior

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-cogs"
              title: "Entornos de desarrollo"
              content: |
                * NetBeans
                * IntelliJ IDEA
                * Eclipse

            # table loop
            - icon: "fas fa-tools"
              title: "Herramienta de automatización de compilación"
              content: |
                * Maven

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction for Java Características"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Buscar y redactar coincidencias exactas de una cadena de búsqueda"

      # feature loop
      - icon: "fas fa-eye"
        content: "Controle el proceso de redacción y omita coincidencias específicas"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Ubicar y redactar usando expresiones regulares"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Compatibilidad integrada con formatos Office y PDF"

      # feature loop
      - icon: "fas fa-code"
        content: "Borrar metadatos o redactar valores de metadatos"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Limite las redacciones a hojas de trabajo y columnas específicas"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Eliminar anotaciones o redactar sus textos"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Use redacciones textuales (códigos de exención) o gráficas (rectángulos de colores)"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Guarde el documento en su formato original o como PDF con imágenes rasterizadas de las páginas originales"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Compatibilidad con formatos de imágenes de trama y redacciones de regiones de imágenes"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Interfaz de integración para implementar redacción y formatos personalizados"

      # feature loop
      - icon: "fas fa-columns"
        content: "Editar o eliminar metadatos EXIF ​​de archivos de imagen"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Redactar imágenes incrustadas dentro de los documentos PDF, Word y Presentation"

    more_feature:
      # more_feature_loop
      - title: "Asegure la privacidad al redactar sus datos clasificados"
        content: |
          La biblioteca GroupDocs.Redaction para Java permite a los desarrolladores redactar texto e imágenes de documentos admitidos empleando una variedad de tipos de redacción. Usar nuestra Redaction API es simple y directo.  

          El siguiente ejemplo de código usa un documento tabular, como una hoja de cálculo de Microsoft Excel, donde el alcance de la redacción se puede limitar a una hoja de trabajo y/o columna específica. Utiliza filtros para redactar la segunda columna con correos electrónicos en una hoja de trabajo "Clientes", dejando intactos todos los demás correos electrónicos en el documento.

          ```java
          // Cree una instancia de la clase Redactor
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              // Aplicar redacción
              RedactorChangeLog result = redactor.apply(new CellColumnRedaction(filter, expression, new ReplacementOptions("[customer email]")));
              if (result.getStatus() != RedactionStatus.Failed)
              {
                  SaveOptions so = new SaveOptions();
                  so.setAddSuffix(true);
                  so.setRasterizeToPDF(false);
                  redactor.save(so);
              };
          }
          finally { redactor.close(); }
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
          image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

############################# Back to top ###############################
back_to_top:
  enable: true
---