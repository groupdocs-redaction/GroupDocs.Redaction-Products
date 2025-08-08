
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ซ่อนภาพใน WORD ด้วย Overlay ใช้งาน Java"
head_description: "ด้วย GroupDocs.Redaction for Java คุณสามารถปกป้องภาพที่ละเอียดอ่อนในไฟล์ WORD โดยการใช้งาน Overlay สี ปกป้องข้อมูลส่วนตัวโดยไม่เปลี่ยนรูปแบบเอกสาร"

############################# Header ############################
title: "ปกป้องภาพที่ละเอียดอ่อนในไฟล์ WORD โดยใช้ Java" 
description: "รักษาความปลอดภัยภาพส่วนตัวและธุรกิจในเอกสาร WORD ด้วย Java การปรับแต่งภาพที่รวดเร็วและเชื่อถือได้"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java มอบเครื่องมือที่ใช้งานง่ายแก่นักพัฒนา Java เพื่อซ่อนหรือลบเนื้อจากไฟล์ WORD ปกป้องข้อความ ภาพ และ Metadata ในหลายรูปแบบ

############################# Steps ############################
steps:
    enable: true
    title: "รักษาข้อมูลที่เป็นความลับในไฟล์ Word"
    content: |
      GroupDocs.Redaction for Java ช่วยให้แอปพลิเคชัน Java ของคุณซ่อนข้อมูลส่วนตัวในเอกสารได้ง่าย
      
      1. เริ่มต้น Redactor และโหลดไฟล์ Word
      2. กำหนดการตั้งค่าการปรับแต่งที่คุณต้องการ
      3. เน้นพื้นที่ภาพและเลือกสี Overlay
      4. ดำเนินการซ่อนและบันทึกเอกสารที่อัปเดต
   
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
        // ซ่อนข้อมูลภาพที่ละเอียดอ่อนใน WORD

        // โหลดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // เลือกสีและขนาด Overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // ทำเครื่องหมายพื้นที่ที่ต้องการซ่อน
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
  title: "เครื่องมือซ่อนและลบเนื้อหา"
  description: "GroupDocs.Redaction for Java ช่วยให้คุณซ่อนหรือทำลายข้อมูลที่ละเอียดอ่อนในหลากหลายรูปแบบไฟล์ รักษาความปลอดภัยเอกสารในขณะที่ยังคงมีโครงสร้างที่ดี"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "คุณสมบัติการซ่อนที่มีประสิทธิภาพ"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาเอกสารสำหรับข้อความที่ละเอียดอ่อนและแทนที่เพื่อความปลอดภัยของข้อมูล"

    # feature loop
    - title: "ปกปิดพื้นที่ภาพ"
      content: "ซ่อนภาพทั้งหมดหรือเฉพาะบางส่วนโดยการใช้งาน Overlay"

    # feature loop
    - title: "ลบ Metadata"
      content: "ลบหรือลดความละเอียดของ Metadata ที่ซ่อนอยู่เพื่อป้องกันการเปิดเผยข้อมูลที่ละเอียดอ่อน"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Overlay เพื่อปกปิดข้อมูลภาพ"
      content: |
        ตัวอย่างนี้แสดงถึงวิธีการรักษาความปลอดภัยของข้อมูลภาพในเอกสารโดยใช้ Overlay
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดเอกสาร
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // กำหนดคุณสมบัติ Overlay เช่น ขนาด เป็นต้น
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // ทำเครื่องหมายพื้นที่ภาพในหน้าแรก
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // ปกปิดด้วย Overlay
              redactor.apply(redaction);

              // บันทึกเอกสารที่ปรับแต่ง
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
    title: "ซ่อนเนื้อหาในไฟล์ WORD ด้วย Java"
    exclude: "WORD"
    description: "ใช้ Java เพื่อซ่อนหรือเอาข้อมูลที่ละเอียดอ่อนในไฟล์ WORD วิธีที่เชื่อถือได้ในการป้องกันเอกสาร"
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