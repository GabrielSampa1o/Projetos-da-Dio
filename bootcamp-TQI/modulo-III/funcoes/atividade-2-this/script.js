function calculaIdade(anos) {
    return `Daqui a ${anos} anos, ${this.nome} terá ${this.idade + anos
        } anos de idade.`;
}

const pessoa1 = {
    nome: "Maria",
    idade: 30
};

const pessoa2 = {
    nome: "Jessica",
    idade: 24
};

const animal = {
    nome: "Bob",
    idade: 2
};

console.log(calculaIdade.call(animal, 4))