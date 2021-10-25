

.MODEL SMALL  ;KHAI BAO CHE DO BO NHO CUA CT
.STACK 100H   ;KHAI BAO NGAN XEP
.DATA 
        TB1 DB 'NHAP CHUOI KI TU:$'
        KYTU DB ?
        DEM DB ?
 .CODE      ;KHAI BAO LRNH XU LI
    MAIN PROC  ; BAT DAU HAM MAIN
         ; KHOI THANH GHI DS
         MOV AX,@DATA
         MOV DS,AX
         
         ;XUAT TB1
         LEA DX,TB1
         MOV AH,09H
         INT 21H         
         
         ;NHAP KI TU
  NHAN:  MOV AH,01H
         INT 21H
         INC DEM 
         
         MOV DL,DL         
         CMP DL,10D        ;SO SANH DEM VOI 10
         JE THOAT          ;NEU BANWG 10 THI THOAT
         LOOP NHAN          
         
 THOAT:  MOV AH,4CH     ;THOAT CHUONG TRINH
         INT 21H
    MAIN  ENDP  ;KET THUC HAM MAIN
    END MAIN   ;KET THUC CHUONG TRINH     








