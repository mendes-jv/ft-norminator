<div align="center">

# ft-norminator

</div>

> A script that applies the norm rules used by norminette and applies the 42 header to all files in your directory

> :brazil: Um script que aplica as regras de norma usadas pela norminette e aplica o header da 42 em todos os arquivos do seu diretório

## How To Use // Como usar

First, clone this repository and `cd` into it // :brazil: Primeiro, clone este repositório e entre nele com o comando `cd`

```zsh
git clone https://github.com/mendes-jv/ft-norminator && cd ft-norminator
```
After cloning the repository, you can now use the script passing it as an argument, the repository you want to apply the norm // :brazil: Após, clonar o reposiorio, você já pode usar o script passando pra ele como argumento, o repositório que você quer aplicar a norma

```zsh
./ft_norminator.sh example_directory // ./ft_norminator.sh diretório_exemplo
```

:brazil: :brazil: :brazil: Caso queira usar a versão em português basta usar o seguinte comando :brazil: :brazil: :brazil:

```zsh
./ft_norminator_br.sh example_directory // ./ft_norminator_br.sh diretório_exemplo
```
You can also create an alias for the script by placing the following line in your configuration file: (eg .zshrc) // :brazil: Você também pode  criar um alias para o script colocando a seguinte linha no seu arquivo de configuração: (ex: .zshrc)

```zsh
alias norminator = ~/ft-norminator/ft-norminator.sh
```
```zsh
alias norminator = ~/ft-norminator/ft-norminator_br.sh
```
