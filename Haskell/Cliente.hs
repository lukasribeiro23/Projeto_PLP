module Cliente where
import Mensagens
import Utils

menuCliente:: IO()
menuCliente  = do
    putStr("\n----------Menu do Cliente----------\n")
    putStr("1 - Listar veículos disponíves\n")
    putStr("2 - Escolher veículo\n")
    putStr("3 - Pesquisar veículos\n")
    putStr("4 - Voltar para o menu principal\n")
    putStr("Opção: ")
    op <- readLn:: IO Int
    chamadaCliente op



chamadaCliente:: Int -> IO()
chamadaCliente op 
    | op == 1 = do 
        veiculosDisponiveis
        menuCliente
    | op == 2 = do 
        putStr ""
        menuCliente
    | op == 3 = do 
        putStr ""
        menuCliente
    | op == 4 = putStr ""
    | otherwise = do
        putStr("Opção inválida, digite novamente\n")
        menuCliente 

veiculosDisponiveis:: IO()
veiculosDisponiveis = do
    putStr "Veículos disponíveis:\n"

    arq <- readFile "arquivos/carros.txt"
    let linhas = lines arq
    Utils.escreveCarrosDisponiveis linhas