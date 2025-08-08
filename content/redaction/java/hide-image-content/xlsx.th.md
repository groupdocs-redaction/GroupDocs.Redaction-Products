
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ปกปิดภาพในไฟล์ XLSX ด้วย Overlay ใช้งาน Java"
head_description: "ใช้ GroupDocs.Redaction for Java ปกปิดภาพที่ละเอียดอ่อนในไฟล์ XLSX โดยการเพิ่ม Overlay สี ปกป้องข้อมูลสำคัญในขณะที่ยังคงโครงสร้างของเอกสารไว้"

############################# Header ############################
title: "ปกปิดภาพส่วนตัวในเอกสาร XLSX โดยใช้ Java" 
description: "ปกป้องเนื้อหาภาพที่ละเอียดอ่อนในไฟล์ XLSX ด้วย Java เครื่องมือของเราทำให้การปรับแต่งภาพเป็นเรื่องที่รวดเร็วและเชื่อถือได้"
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java มอบเครื่องมือที่เรียบง่ายให้กับนักพัฒนา Java เพื่อซ่อนหรือลบเนื้อหาออกจากไฟล์ XLSX ปกป้องข้อความ ภาพ และ Metadata ในรูปแบบเอกสารที่หลากหลาย

############################# Steps ############################
steps:
    enable: true
    title: "ให้ข้อมูลส่วนตัวปลอดภัยในเอกสาร Xlsx"
    content: |
      GroupDocs.Redaction for Java ช่วยใหแอปของ Java ของคุณปกป้องเอกสารด้วยขั้นตอนง่ายๆ
      
      1. เริ่มต้น Redactor และโหลดเอกสาร Xlsx ของคุณ
      2. ตั้งค่าออปชั่นการปรับแต่งให้ตรงกับโครงการของคุณ
      3. เลือกส่วนของภาพและเลือกสี Overlay
      4. ใช้การปรับแต่งและบันทึกไฟล์
   
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
        // ปกปิดพื้นที่ภาพที่ละเอียดอ่อนใน XLSX

        // สร้าง Redactor พร้อมเส้นทางไฟล์
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // เลือกมิติและสี Overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // เลือกพื้นที่ที่จะปรับแต่ง
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // ใช้ Overlay และบันทึกเอกสาร
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ฟีเจอร์การปรับแต่งขั้นสูง"
  description: "ด้วย GroupDocs.Redaction for Java คุณสามารถซ่อนหรือลบเนื้อหาที่ละเอียดอ่อนได้ในหลายรูปแบบไฟล์ ขณะเดียวกันยังคงรักษาการจัดรูปแบบเอกสารให้สะอาดและอ่านง่าย"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือการปรับแต่งที่มีประสิทธิภาพ"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาข้อความที่เป็นส่วนตัวและทำการปรับแต่งเพื่อรักษาความปลอดภัยในเอกสารของคุณ"

    # feature loop
    - title: "ปกปิดเนื้อหาภาพ"
      content: "ใช้ Overlay เพื่อปิดบังภาพที่ละเอียดอ่อนหรือส่วนเฉพาะ"

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบหรือปรับข้อมูล Metadata เพื่อหลีกเลี่ยงการเผยแพร่ข้อมูลส่วนตัวโดยไม่ตั้งใจ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดรายละเอียดภาพโดยใช้ Overlay"
      content: |
        เรียนรู้วิธีปกปิดส่วนที่ละเอียดอ่อนของภาพในเอกสารของคุณโดยใช้ Overlay
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดเอกสารที่ต้องการปรับแต่ง
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // ตั้งค่าขนาดสีและตำแหน่งของ Overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // เลือกพื้นที่เฉพาะบนหน้าแรก
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // ใช้ Overlay เพื่อปกปิดภาพ
              redactor.apply(redaction);

              // บันทึกเอกสารที่แก้ไขแล้ว
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
    title: "ปกปิดเนื้อหา XLSX ด้วยการปรับแต่ง Java"
    exclude: "XLSX"
    description: "ใช้ Java เพื่อซ่อนหรือเอาข้อมูลที่ละเอียดอ่อนออกจากไฟล์ XLSX วิธีการง่ายๆ ในการรักษาความเป็นส่วนตัวของเอกสาร"
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