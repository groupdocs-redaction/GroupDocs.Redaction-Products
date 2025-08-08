
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ซ่อนภาพใน PPTX ด้วย Overlay ใช้งาน Java"
head_description: "ด้วย GroupDocs.Redaction for Java คุณสามารถปกปิดภาพที่ละเอียดอ่อนในไฟล์ PPTX โดยการเพิ่ม Overlay สี ปกป้องข้อมูลที่เป็นความลับในขณะที่ยังคงรูปแบบเอกสารให้เหมือนเดิม"

############################# Header ############################
title: "ซ่อนภาพที่ละเอียดอ่อนในเอกสาร PPTX โดยใช้ Java" 
description: "ปกป้องข้อมูลส่วนตัวและธุรกิจในไฟล์ PPTX โดยใช้ Java เครื่องมือของเราช่วยให้การปรับแต่งภาพเป็นเรื่องรวดเร็วและง่ายดาย"
subtitle: "ข้อดีหลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java เสนอเครื่องมือที่ใช้งานสะดวกสำหรับนักพัฒนา Java เพื่อซ่อนหรือทำลายเนื้อหาในไฟล์ PPTX รักษาความปลอดภัยของเอกสารโดยซ่อนข้อความ ภาพ และ Metadata

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลส่วนตัวในเอกสาร Pptx"
    content: |
      GroupDocs.Redaction for Java ทำให้แอปของ Java สามารถรักษาความปลอดภัยเอกสารโดยการซ่อนเนื้อหาที่ละเอียดอ่อนอย่างรวดเร็ว
      
      1. เริ่มต้น Redactor และโหลดไฟล์ Pptx
      2. ตั้งค่าออปชั่นการปรับแต่งให้ตรงตามความต้องการของคุณ
      3. เลือกพื้นที่ภาพและกำหนดสี Overlay
      4. ใช้การปรับแต่งและบันทึกไฟล์ที่อัปเดต
   
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
        // ซ่อนส่วนที่ละเอียดอ่อนใน PPTX

        // เปิดเอกสารโดยใช้ Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // เลือกสีและขนาดพอกลง
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // เน้นพื้นที่ที่จะซ่อน
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // ใช้การเปลี่ยนแปลงแล้วบันทึกเอกสาร
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการปรับแต่งเนื้อหา"
  description: "GroupDocs.Redaction for Java ช่วยให้คุณซ่อนหรือทำลายข้อมูลที่ละเอียดอ่อนในหลายรูปแบบไฟล์ รักษาความปลอดภัยเอกสารของคุณในขณะที่ยังคงมีรูปลักษณ์ที่เป็นมืออาชีพ"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "คุณสมบัติการปรับแต่งระดับสูง"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาและแทนที่ข้อความส่วนตัวเพื่อรักษาความปลอดภัยในเอกสารของคุณ"

    # feature loop
    - title: "ปกปิดภาพด้วย Overlay"
      content: "ปกปิดภาพแบบเต็มหรือพื้นที่ที่เลือกโดยการนำ Overlay ไปใช้"

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบหรือแก้ไข Metadata ที่ซ่อนอยู่เพื่อป้องกันการเผยแพร่ข้อมูลลับ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดข้อมูลภาพด้วย Overlay"
      content: |
        ตัวอย่างนี้แสดงวิธีการปกปิดภาพที่ละเอียดอ่อนในเอกสารของคุณ
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดเอกสารของคุณ
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // กำหนดขนาดสีและตำแหน่งของ Overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // เลือกพื้นที่ภาพในหน้าที่ 1
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // ใช้ Overlay ปกปิดภาพ
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
    title: "ปรับแต่งไฟล์ PPTX ด้วย Java"
    exclude: "PPTX"
    description: "ใช้ Java เพื่อซ่อนหรือลบข้อมูลที่ละเอียดอ่อนในไฟล์ PPTX โซลูชั่นที่เชื่อถือได้เพื่อการรักษาความปลอดภัยเอกสาร"
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