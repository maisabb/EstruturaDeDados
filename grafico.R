# Carregar os dados do CSV
dados <- read.csv("resultados.csv")

# Ordenar os dados pelo número sorteado
dados_ordenados <- dados[order(dados$numero_sorteado), ]

# Criar o gráfico
plot(dados_ordenados$numero_sorteado, dados_ordenados$comparacoes_abb, type = "l", col = "blue", lwd = 2,
     xlab = "Número Sorteado", ylab = "Número de Comparações",
     main = "Comparação: ABB vs Lista")

# Adicionar a linha da lista na mesma figura
lines(dados_ordenados$numero_sorteado, dados_ordenados$comparacoes_lista, col = "red", lwd = 2)

# Adicionar legenda
legend("topright", legend = c("ABB", "Lista"), col = c("blue", "red"), lwd = 2)
