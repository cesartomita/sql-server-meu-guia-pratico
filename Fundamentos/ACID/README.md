# ACID

## Atomicidade (Atomicity):

- > A atomicidade garante que uma transação seja tratada como uma unidade completa e indivisível. Isso significa que todas as operações em uma transação são executadas com sucesso ou, se ocorrer um erro, todas as operações são revertidas (rollback), deixando o banco de dados no estado em que estava antes do início da transação. Em outras palavras, uma transação é tratada como "tudo ou nada".

## Consistência (Consistency):

- > A consistência garante que apenas transações válidas e conformes às restrições de integridade do banco de dados sejam permitidas. Em outras palavras, após o término de uma transação, o banco de dados permanece em um estado consistente. Isso significa que todas as regras e restrições do banco de dados são aplicadas corretamente durante uma transação, e o banco de dados não é deixado em um estado inválido ou incompleto.

## Isolamento (Isolation):

- > O isolamento garante que os efeitos de uma transação sejam invisíveis para outras transações concorrentes até que a transação seja concluída (commit). Isso significa que as transações concorrentes não interferem umas com as outras durante sua execução. Cada transação deve ser isolada das outras até que termine, de modo que o resultado seja consistente e previsível.
## Durabilidade (Durability):

- > A durabilidade garante que os resultados de uma transação confirmada sejam permanentes e persistentes, mesmo em caso de falha do sistema (como uma queda de energia ou falha de hardware). Após o término bem-sucedido de uma transação (commit), os resultados devem ser escritos de forma durável no armazenamento persistente (disco) e não devem ser perdidos, mesmo que ocorram falhas posteriores.

### Artigos recomendados:

- https://www.bosontreinamentos.com.br/bancos-de-dados/conceitos-de-bancos-de-dados-o-que-significa-acid/
- https://www.databricks.com/br/glossary/acid-transactions