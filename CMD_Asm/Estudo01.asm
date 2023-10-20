;----
; 
; Programa: Estudo01.asm
; Autor: Reinaldo Di Tota
; Data: 19/08/2017
; Versao: 1.00
; 
; Retomada dos Estudos de Assembler - Versão que usará console Windows
;
;----

; Diretiva para indicar o conjunto de instruções que queremos usar:
; 386,486,586 -- indicam processadores específicos.
; 386p,486p,586p -- indicam modo protegido, e só devem ser usados em
; programação de sistemas.
.386 

; Diretiva para indicar modelo de memória e a passagem da parâmetros.
; No Windows só temos modelo flat - já conhecemos a história.
; Quanto aos modelos de passagem de parâmetros:
;       C - coloca os parâmetros da direita para esquerda na pilha.
;         - neste caso o chamador seria responsável pela atualização do
;           ponteiro da pilha.
;  PASCAL - coloca os parâmetros da esquerda para direita na pilha.
;         - neste caso o código chamado seria responsável pela atualização
;           do ponteiro da pilha. Geraria código menor.
; STDCALL - coloca os parâmetros da direita para esquerda, mas o chamador
;           é responsável pelo tratamento do ponteiro da pilha. É um híbrido.
.model flat,stdcall
option casemap:none

; Include das declarações de funções.
include windows.inc
include user32.inc
include kernel32.inc

includelib user32.lib
includelib kernel32.lib

; Seções.

; Dados inicializados.
.data
hello db "Hello World!"

; Dados não inicializados.
.data?

; Constantes
.const

.code

main:
  
  invoke GetStdHandle,STD_OUTPUT_HANDLE
  invoke WriteConsole,eax,addr hello,sizeof hello,ebx,0 
  invoke ExitProcess,0

end main

;--
; Eof.: Estudo.asm
;--
