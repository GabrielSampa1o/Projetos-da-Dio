public class Main {
    public static void main(String[] args) {
        Cliente Gabriel = new Cliente();
        Gabriel.setNome("Gabriel");

        Conta cc = new ContaCorrente(Gabriel);
        Conta poupanca = new ContaPoupança(Gabriel);

        cc.depositar(100);
        cc.transferir(100, poupanca);

        cc.imprimirExtrato();
        poupanca.imprimirExtrato();
    }
}
