
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ซ่อนภาพใน EXCEL ด้วย Overlay ใช้งาน Java"
head_description: "ใช้ GroupDocs.Redaction for Java ปกปิดภาพที่ละเอียดอ่อนในไฟล์ EXCEL โดยการเพิ่ม Overlay สีเพื่อปกป้องข้อมูลส่วนตัวในขณะที่รักษาโครงสร้างเอกสารไว้"

############################# Header ############################
title: "ซ่อนภาพส่วนตัวในไฟล์ EXCEL ด้วย Overlay ใช้งาน Java" 
description: "รักษาความปลอดภัยภาพส่วนตัวและธุรกิจในไฟล์ EXCEL ด้วย Java เครื่องมือใช้งานง่ายเพื่อการป้องกันที่เชื่อถือได้"
subtitle: "ค้นพบคุณสมบัติของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ให้เครื่องมือแก่นักพัฒนา Java ในการซ่อนหรือทำลายเนื้อหาจากไฟล์ EXCEL ปกป้องข้อความ ภาพ และ Metadata

############################# Steps ############################
steps:
    enable: true
    title: "รักษาความปลอดภัยข้อมูลของคุณในไฟล์ Excel"
    content: |
      GroupDocs.Redaction for Java ช่วยแอปของ Java ปกป้องเนื้อหาไว้ในเอกสารด้วยขั้นตอนง่ายๆ
      
      1. สร้างออบเจ็กต์ Redactor และโหลดไฟล์ Excel ของคุณ
      2. ตั้งค่าออปชั่นการปรับแต่งตามต้องการ
      3. เลือกพื้นที่ภาพที่จะปกปิดและเลือกสี Overlay
      4. ใช้การปรับแต่งและบันทึกเอกสาร
   
    code:
      platform: "java"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // ซ่อนเนื้อหาภาพใน EXCEL

        // เปิดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // กำหนดขนาดและสี Overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // เลือกพื้นที่ที่คุณต้องการซ่อน
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // ใช้ Overlay และบันทึกไฟล์
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ซ่อนหรือลบเนื้อหาในเอกสาร"
  description: "GroupDocs.Redaction for Java ช่วยให้คุณปกปิดหรือทำลายข้อมูลที่ละเอียดอ่อนได้ในรูปแบบไฟล์ต่างๆ รักษาเอกสารของคุณให้ชัดเจนและปลอดภัย"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ฟีเจอร์การปรับแต่งขั้นสูง"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาเอกสารที่มีข้อความส่วนตัวและแทนที่เพื่อรักษาความปลอดภัยของข้อมูล"

    # feature loop
    - title: "ปกปิดพื้นที่ภาพ"
      content: "ซ่อนส่วนของภาพหรือภาพทั้งหมดโดยการใช้ Overlay"

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบ Metadata ซ่อนเพื่อหลีกเลี่ยงการแชร์ข้อมูลที่ซ่อนอยู่"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดข้อมูลภาพด้วย Overlay"
      content: |
        ตัวอย่างนี้แสดงวิธีการปกปิดพื้นที่ที่ละเอียดอ่อนในเอกสารโดยใช้ Overlay
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดไฟล์สำหรับการแก้ไข
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // กำหนดขนาด สี และตำแหน่งของ Overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // เลือกพื้นที่ภาพในหน้าแรก
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // ใช้ Overlay เพื่อปิดบังข้อมูล
              redactor.apply(redaction);

              // บันทึกเอกสารที่ถูกปรับแต่ง
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/hide-image-content.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ปกป้องไฟล์ EXCEL ด้วยการปรับแต่ง Java"
    exclude: "EXCEL"
    description: "ใช้ Java เพื่อซ่อนหรือแก้ไขข้อมูลที่ละเอียดอ่อนในไฟล์ EXCEL วิธีที่สมบูรณ์ในการรักษาความเคารพในเอกสาร"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---