# Estudo de comando NASM

<p align="center">

<img src="https://www.google.com/imgres?q=nasm&imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D100064728456301&imgrefurl=https%3A%2F%2Fwww.facebook.com%2Fpersonaltrainers%2F&docid=jDODdVbC45C7FM&tbnid=6xwh3yLoNb7clM&vet=12ahUKEwiqwsjezpiJAxVZjpUCHVoYOiYQM3oECGsQAA..i&w=400&h=400&hcb=2&ved=2ahUKEwiqwsjezpiJAxVZjpUCHVoYOiYQM3oECGsQAA" wridth=200 height=200>

</p>

## primeiros comandos 

* programa hello word

```Assembly
global _start
    section .text
    _start:
        mov rax,1  ;prepara o sistema para fazer a escrita de um texto
        mov rdi,1   ;prepara a saida do texto na tela
        mov rsi,mensagem    ;imprimir a mensagem na tela
        mov rdx,13  ;quantidade de caracteres
        syscall     ;chama o sistema para preparar a saida
        mov rax,60  ;chamada para saida do sistema
        xor rdi,rdi ;executar a saida do sistema
        syscall     ;invocar o sistema operacional para fechar



        section .data
        mensagem:db 'Hello,WOrd',10     ;o o valor 10 representa a quebra de linha
```