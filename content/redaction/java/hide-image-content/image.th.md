
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: th
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ซ่อนภาพใน IMAGE ด้วย Overlay ใช้งาน Java"
head_description: "ใช้ GroupDocs.Redaction for Java เพื่อปกปิดพื้นที่ภาพที่ละเอียดอ่อนในไฟล์ IMAGE โดย Overlay สี รักษาข้อมูลสำคัญให้ปลอดภัยโดยไม่เปลี่ยนรูปแบบเอกสาร"

############################# Header ############################
title: "ปกป้องภาพส่วนตัวในไฟล์ IMAGE โดยใช้ Overlay ด้วย Java" 
description: "รักษาความปลอดภัยให้กับภาพธุรกิจและภาพส่วนตัวในไฟล์ IMAGE ด้วย Java เครื่องมือใช้งานง่ายเพื่อรักษาความปลอดภัยข้อมูลได้อย่างรวดเร็ว"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java มอบเครื่องมือให้กับนักพัฒนา Java ในการซ่อนหรือทำลายเนื้อหาในไฟล์ IMAGE เพื่อปกป้องเอกสารโดยการปกปิดข้อความ ภาพ และ Metadata

############################# Steps ############################
steps:
    enable: true
    title: "รักษาความปลอดภัยเนื้อหาในไฟล์ Image โดยใช้ Overlay"
    content: |
      ปกปิดพื้นที่ภาพที่ละเอียดอ่อนได้อย่างรวดเร็วในแอปของคุณที่ใช้ GroupDocs.Redaction for Java
      
      1. สร้างออบเจ็กต์ Redactor และกำหนดเส้นทางไฟล์ Image ของคุณ
      2. ตั้งค่าการปรับแต่งตามที่ต้องการ
      3. ทำเครื่องหมายพื้นที่ภาพและเลือกสี Overlay
      4. ประมวลผลและบันทึกเอกสารของคุณ
   
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
        // ปกปิดเนื้อหาภาพใน IMAGE

        // โหลดไฟล์โดยใช้ Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // ตั้งค่าขนาดและสี Overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // เลือกพื้นที่ที่ต้องการปกปิด
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
  title: "ปรับแต่งเนื้อหาที่ละเอียดอ่อนในเอกสาร"
  description: "GroupDocs.Redaction for Java ช่วยให้คุณซ่อนหรือทำลายข้อมูลส่วนตัวในหลายรูปแบบไฟล์ ทำให้เอกสารสะอาดและปลอดภัยสำหรับการแชร์"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือปรับแต่งเพื่อการควบคุมอย่างเต็มที่"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาข้อความที่ละเอียดอ่อนในเอกสารและแทนที่เพื่อให้ความปลอดภัยข้อมูลได้"

    # feature loop
    - title: "Overlay พื้นที่ภาพ"
      content: "ใช้ Overlay เพื่อซ่อนภาพทั้งหมดหรือส่วนเฉพาะของภาพ"

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบหรือปรับแก้ Metadata ที่ซ่อนเพื่อหลีกเลี่ยงการรั่วไหลของข้อมูล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดพื้นที่ภาพด้วย Overlay"
      content: |
        ตัวอย่างนี้แสดงให้เห็นถึงวิธีการซ่อนพื้นที่ภาพที่ละเอียดอ่อนโดยการใช้ Overlay
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดเอกสารเพื่อการแก้ไข
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // ตั้งค่าขนาดสีและตำแหน่งของ Overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // เลือกพื้นที่ภาพบนหน้าแรก
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // นำ Overlay มาใช้เพื่อปกปิด
              redactor.apply(redaction);

              // บันทึกไฟล์ที่ปรับแต่ง
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
    title: "ปกป้องไฟล์ IMAGE ด้วยการปรับแต่ง Java"
    exclude: "IMAGE"
    description: "ด้วย Java คุณสามารถซ่อนหรือเอาข้อมูลที่ละเอียดอ่อนในไฟล์ IMAGE วิธีที่เชื่อถือได้ในการรักษาความปลอดภัยเอกสาร"
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