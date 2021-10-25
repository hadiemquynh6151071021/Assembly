
.MODEL SMALL  ;KHAI BAO CHE DO BO NHO CUA CT
.STACK 100H   ;KHAI BAO NGAN XEP
.DATA    ; KHAI BAO DU LIEU
    TB1 DB 'HELLO$' 
    TB2 DB 13,10,'DAY LA TRUONG HUTECH$'
    TB3 DB 13,10,'MON HOC KIEN TRUC MAY TINH$'
 .CODE      ;KHAI BAO LENH XU LI 
    
    MAIN PROC  ; BAT DAU HAM MAIN
         ; KHOI THANH GHI DS
         MOV AX,@DATA
         MOV DS,AX 
         
         ;XUAT TB 1
         LEA DX,TB1
         MOV AH,09H
         INT 21H 
          
         ;XUAT TB2
         LEA DX,TB2
         MOV AH,09H 
         INT 21H 
         
         ;XUAT TB 3
         LEA DX,TB3
         MOV AH,09H
         INT 21H 
         
         MOV AH,4CH
         INT 21H
    MAIN  ENDP  ;KET THUC HAM MAIN
    END MAIN   ;KET THUC CHUONG TRINH     








