nt1 = float(input("Digite a primeira nota: "))
nt2 = float(input("Digite a segunda nota: "))
nt3 = float(input("Digite a tercera nota: "))
nt4 = float(input("Digite a quarta nota: "))

media = (nt1+nt2+nt3+nt4)/4

if (media <= 4):
    print(f"Media: {media}. Aluno reprovado")
elif (media >= 5 and media <=10): {
    print(f"Media: {media}. Aluno aprovado")
}