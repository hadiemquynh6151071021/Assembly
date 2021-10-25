

.MODEL SMALL  ;KHAI BAO CHE DO BO NHO CUA CT
.STACK 100H   ;KHAI BAO NGAN XEP
.DATA 
        TB1 DB 'NHAP KI TU:$'
        TB2 DB 13,10,'LA KY TU SO$'
        TB3 DB 13,10,'KHONG PHAI LA KI TU SO$'
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
         MOV AH,01H
         INT 21H 
         
         
         CMP AL,48
         JB LAP2
         
         CMP AL,57
         JA LAP2 
         
   LAP1: 
         LEA DX,TB2
         MOV AH,09H
         INT 21H
         JMP THOAT 
         
   LAP2: 
         LEA DX,TB3
         MOV AH,09H
         INT 21H
         JMP THOAT 
                   
         
  THOAT: MOV AH,4CH     ;THOAT CHUONG TRINH
         INT 21H
    MAIN  ENDP  ;KET THUC HAM MAIN
    END MAIN   ;KET THUC CHUONG TRINH     








