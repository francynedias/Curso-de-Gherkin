#Contexto e escrita normal de gherking com adição de um And#
Given que estou logado na plataforma Qualiters Club
And matriculado no curso gherking básico ao avançado
When finalizo meu curso
Then tenho o meu certificado

#Contexto e escrita normal de gherking com adição de um But para evolução de cenário#
Given que estou logado na plataforma Qualiters Club
And matriculado no curso gherking básico ao avançado
When assisto as aulas
Then não tenho o meu certificado disponível
But possuo aulas assistidas

#Validação Pai#
Feature: Emissão do certificado

    Eu como aluno do curso Qualiter Club
    Gostaria de ao completar o curso seja emitido certificado
    Porque assim consigo comprovar meu conhecimento técnico

#Pratica de gherking com cenários diferentes sobre o mesmo contexto#
Background:Estar matriculado no curso gherking do básico ao avançado
Given que estou logado na plataforma Qualiters Club
And possuo matricula ativa

#Esquema de cenário 1#
Scenario Outline: Emissão de certificado 
And matriculado no curso <nomecurso>
When finalizo meu curso
Then tenho o meu certificado

#Massa de teste#
Examples:
    | nomecurso |
    | "gherking básico ao avançado"  |
    | "7 princípios do teste de software"  |
    | "Operadores Lógicos"  |

#Esquema de cenário 2#
Scenario: Curso em andamento
When assisto as aulas
Then não tenho o meu certificado disponível
But possuo aulas assistidas