
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: th
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ปกปิดภาพใน JPEG ด้วย Overlay ใช้งาน Java"
head_description: "รักษาภาพที่ละเอียดอ่อนในไฟล์ JPEG ด้วย GroupDocs.Redaction for Java เพิ่ม Overlay เพื่อซ่อนข้อมูลโดยไม่เปลี่ยนรูปแบบเอกสาร"

############################# Header ############################
title: "ซ่อนภาพที่ละเอียดอ่อนในไฟล์ JPEG ด้วย Overlay ใช้งาน Java" 
description: "ปกป้องภาพส่วนตัวและธุรกิจในไฟล์ JPEG ด้วย Java เครื่องมือที่ง่ายต่อการใช้เพื่อปกป้องเอกสารของคุณได้ทันที"
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java มอบเครื่องมือให้กับนักพัฒนา Java เพื่อซ่อนหรือทำลายข้อมูลในไฟล์ JPEG ปกป้องเอกสารโดยการปกปิดข้อความ ภาพ และ Metadata ได้อย่างรวดเร็ว

############################# Steps ############################
steps:
    enable: true
    title: "ซ่อนข้อมูลส่วนตัวในไฟล์ Jpeg"
    content: |
      GroupDocs.Redaction for Java ช่วยให้แอปของ Java ของคุณปกปิดข้อมูลที่ละเอียดอ่อนได้เร็วขึ้น
      
      1. เริ่มต้นออบเจ็กต์ Redactor และโหลดไฟล์ Jpeg ของคุณ
      2. ปรับตั้งการปรับแต่งตามความต้องการ
      3. เลือกพื้นที่ภาพและเลือกสี Overlay
      4. ดำเนินการซ่อนและบันทึกเอกสาร
   
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
        // ปกปิดข้อมูลภาพใน JPEG

        // เปิดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.jpg");
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

            // ใช้ Overlay และบันทึกการเปลี่ยนแปลง
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ซ่อนข้อมูลที่ละเอียดอ่อนในเอกสาร"
  description: "GroupDocs.Redaction for Java ช่วยในการซ่อนหรือทำลายข้อมูลส่วนตัวในหลายรูปแบบไฟล์ เพื่อให้เอกสารของคุณยังคงสะอาดและง่ายต่อการแชร์"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ฟีเจอร์การลบข้อมูลที่ซ่อนไว้"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาข้อความที่ละเอียดอ่อนในเอกสาร และแทนที่ด้วยการรักษาความเป็นส่วนตัว"

    # feature loop
    - title: "ปกปิดเนื้อหาภาพ"
      content: "ใช้ Overlay เพื่อซ่อนภาพทั้งหมดหรือพื้นที่เฉพาะ"

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบ Metadata ที่ซ่อนอยู่เพื่อป้องกันการเปิดเผยข้อมูลที่ละเอียดอ่อน"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดเนื้อหาภาพด้วย Overlay"
      content: |
        ตัวอย่างนี้แสดงวิธีการปกปิดข้อมูลที่ละเอียดอ่อนในเอกสารด้วย Overlay
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดไฟล์สำหรับการแก้ไข
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // กำหนดขนาดสีและตำแหน่งของ Overlay
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

              // นำ Overlay ไปใช้เพื่อซ่อนข้อมูล
              redactor.apply(redaction);

              // บันทึกไฟล์ที่ถูกแก้ไข
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
    title: "ปกป้องไฟล์ JPEG ด้วยการปรับแต่ง Java"
    exclude: "JPEG"
    description: "ใช้ Java เพื่อซ่อนหรือลบข้อมูลที่ละเอียดอ่อนในไฟล์ JPEG โซลูชั่นที่เชื่อถือได้ในการรักษาทีมความปลอดภัย"
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