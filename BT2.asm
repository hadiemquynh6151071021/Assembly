



.MODEL SMALL  ;KHAI BAO CHE DO BO NHO CUA CT
.STACK 100H   ;KHAI BAO NGAN XEP
.DATA 
        TB1 DB 'NHAP SO NGUYEN A:$' 
        TB2 DB 13,10,'NHAP SO NGUYEN B:$'
        TB3 DB 13,10,'KHONG THE THUC HIEN$'
        TB4 DB 13,10,'TONGBANG5$'
        TB5 DB 13,10,'TONGNHOHON5$'
        TB6 DB 13,10,'TONGLONHON5$'
        
 .CODE      ;KHAI BAO LRNH XU LI
    MAIN PROC  ; BAT DAU HAM MAIN
         ; KHOI THANH GHI DS
         MOV AX,@DATA
         MOV DS,AX
         
         ;XUAT TB1
         LEA DX,TB1
         MOV AH,09H
         INT 21H         
         
         ;NHAP A 
         MOV AH,01H
         INT 21H
         MOV BL,AL 
                  
         ;XUAT TB2
         LEA DX,TB2
         MOV AH,09H
         INT 21H         
         
         ;NHAP B 
         MOV AH,01H
         INT 21H 
         
         ADD BL,AL
         
         SUB BL,48   ; CHUYEN MA ASCII VE DANG SO
         
         CMP BL,'9'  ;TH TONG 2 SO >=10
         JNB LAP1
         
         CMP BL,'5'
         JE LAP2       ;TONG 2 SO =5
         JB LAP3       ;TONG 2 SO <5
         JA LAP4       ;TONG 2 SO >5
          
    
   LAP1: LEA DX,TB3
         MOV AH,09H
         INT 21H
         JMP THOAT 
         
   LAP2: LEA DX,TB4
         MOV AH,09H
         INT 21H 
         JMP THOAT 
         
   LAP3: LEA DX,TB5
         MOV AH,09H
         INT 21H 
         JMP THOAT
         
   LAP4: LEA DX,TB6
         MOV AH,09H
         INT 21H
         JMP THOAT          
         
  THOAT: MOV AH,4CH     ;THOAT CHUONG TRINH
         INT 21H
    MAIN  ENDP  ;KET THUC HAM MAIN
    END MAIN   ;KET THUC CHUONG TRINH     






















