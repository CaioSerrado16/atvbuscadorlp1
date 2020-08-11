-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Out-2019 às 14:31
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdbuscador`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsite`
--

CREATE TABLE `tbsite` (
  `codigo` int(11) NOT NULL,
  `nomesite` varchar(50) NOT NULL,
  `enderecosite` varchar(90) NOT NULL,
  `descricao` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbsite`
--

INSERT INTO `tbsite` (`codigo`, `nomesite`, `enderecosite`, `descricao`) VALUES
(1, 'Fifa 19', 'https://www.ea.com/pt-br/games/fifa/fifa-19', 'O Site Oficial do FIFA 19. Veja as últimas notícias, trailers e muito mais sobre o FIFA 19.'),
(2, 'Fifa 20', 'https://www.ea.com/pt-br/games/fifa/fifa-20', 'Todas as últimas notícias e vídeos do FIFA 20.'),
(4, 'God of War', 'https://godofwar.playstation.com', 'God of War é uma série de jogos eletrônicos de ação-aventura vagamente baseado nas mitologias grega e nórdica.'),
(5, 'Gears of War', 'https://gearsofwar.com/pt-br', 'Entre no mundo do Gears e descubra os jogos e as atualizações mais recentes do Gears of War para Xbox One.'),
(6, 'Call of Duty: Modern Warfare', 'https://www.callofduty.com/br/pt/modernwarfare/home', 'Call of Duty: Modern Warfare é um jogo eletrônico de tiro em primeira pessoa produzido pela Infinity Ward.'),
(7, 'Call of Duty: Black Ops 4', 'https://www.callofduty.com/br/pt/blackops4', 'Call of Duty: Black Ops 4 é um jogo eletrônico de tiro em primeira pessoa desenvolvido pela Treyarch e publicado pela Ac'),
(8, 'World of Warcraft', 'https://worldofwarcraft.com/pt-br/', 'Junte-se a milhares de grandiosos heróis em Azeroth, um mundo de magia e um sem-fim de aventuras.'),
(9, 'Minecraft', 'https://www.minecraft.net/pt-br/', 'O Minecraft é um jogo que se trata de colocar blocos e se aventurar. Compre-o aqui ou explore o site para as últimas not'),
(10, 'StarCraft II', 'https://starcraft2.com/pt-br/', 'Declare guerra pela galáxia no controle de três raças singulares. StarCraft II é um jogo de estratégia em tempo real da '),
(11, 'Monster Hunter: World', 'https://www.monsterhunterworld.com', 'Monster Hunter: World é um jogo de ação desenvolvido e publicado pela Capcom.'),
(12, 'League of Legends ', 'https://play.br.leagueoflegends.com/pt_BR', 'Independentemente de você jogar solo ou com amigos, League of Legends é um jogo acelerado, estratégico e altamente compe'),
(13, 'Rocket League ', 'https://www.rocketleague.com', 'Rocket League é um jogo eletrônico de futebol veicular desenvolvido e publicado pela Psyonix.'),
(14, 'The Legend of Zelda', 'https://www.zelda.com', 'The Legend of Zelda, é uma série de jogos eletrônicos da Nintendo criada em 1986 por Shigeru Miyamoto e Takashi Tezuka.'),
(15, 'Apex Legends', 'https://www.ea.com/pt-br/games/apex-legends', 'Apex Legends é um jogo de Battle Royale grátis em que competidores lendários lutam por glória, fama e fortuna nas margen'),
(17, 'The Good Doctor', 'https://globoplay.globo.com/the-good-doctor-o-bom-doutor/t/kmF21xZbHk/', 'Um jovem médico com autismo vindo da calma vida do interior começa a trabalhar em um famoso hospital. Além dos desafios '),
(18, 'Good Girls', 'https://www.netflix.com/br/title/80177342', 'Três pacatas donas de casa bolam um roubo ao supermercado local para sair do buraco e conquistar a independência.'),
(19, 'The Good Place', 'https://www.netflix.com/br/title/80113701', 'Depois de morrer, a egocêntrica Eleanor é enviada por engano ao lado bom do Além. Agora ela está determinada a se tornar'),
(20, 'Black List', 'https://www.netflix.com/br/title/70281312', 'Após se entregar à polícia, um brilhante fugitivo oferece ajuda ao FBI, mas apenas se a novata Elizabeth Keen for sua pa'),
(21, 'Orange is the New Black', 'https://www.netflix.com/br/title/70242311', 'Uma jovem de classe alta acaba em uma penitenciária feminina por causa de um crime do passado nesta série vencedora do E'),
(22, 'Orphan Black', 'https://www.netflix.com/br/title/70276033', 'Sarah testemunha o suicídio de uma mulher que se parece com ela e decide assumir a identidade da falecida, mas acaba se '),
(23, 'How to Get Away with Murder', 'https://www.netflix.com/br/title/80024057', 'A advogada criminal e professora Annalise Keating se envolve em um caso de assassinato junto com cinco de seus alunos.'),
(24, 'How I Met Your Mother', 'https://br.sonychannel.com/series/how-i-met-your-mother', 'Esta divertida comédia gira em torno da vida de Ted Mosby e a história de como conheceu a mãe de seus filhos. '),
(25, 'Doctor Who', 'https://www.doctorwho.tv', 'Um excêntrico extraterrestre viaja pelo tempo e espaço para resolver problemas e lutar contra injustiças.'),
(26, 'The Big Bang Theory', 'https://globoplay.globo.com/assine/tbbt/', 'Leonard e Sheldon são capazes de explicar a todo mundo mínimos detalhes sobre física quântica. Entretanto, em situações '),
(27, 'American Crime Story', 'https://www.netflix.com/br/title/80083977', 'American Crime Story é uma série de televisão norte-americana antológica de crimes reais.'),
(28, 'American Horror Story', 'https://www.amazon.com/American-Horror-Story-Cult/dp/B074Z3LYM2', 'American Horror Story é uma série de televisão americana antológica de terror criada e produzida por Ryan Murphy e Brad '),
(29, 'Big Mouth', 'https://www.netflix.com/br/title/80117038', 'Uma turma de amigos vive ao sabor das maravilhas e horrores da puberdade nesta comédia dos amigos Nick Kroll e Andrew Go'),
(30, 'Talking Heads', 'https://www.talking-heads.nl', 'Talking Heads foi uma banda surgida em Nova Iorque, EUA, em atividade de 1975 a 1991, situada entre os movimentos punk e'),
(31, 'Radiohead', 'https://www.radiohead.com/deadairspace', 'Radiohead é uma banda britânica de rock alternativo, formada no ano de 1985 em Oxford.'),
(32, 'TV on the Radio', 'http://www.tvontheradio.com', 'O TV on the Radio é uma banda avant-garde de indie rock formada no ano de 2001 em Nova York, Estados Unidos.'),
(33, 'Queen', 'http://www.queenonline.com', 'Queen foi uma banda britânica de rock, fundada em 1970 e ativa, sob sua formação clássica, até 1991.'),
(34, 'Queens of the Stone Age', 'https://qotsa.com', 'Queens of the Stone Age é uma banda estadunidense de rock formada em Palm Desert, Califórnia em 1996. '),
(35, 'The Stone Roses', 'http://www.thestoneroses.org', 'The Stone Roses é uma banda inglesa de rock formada em 1983.'),
(36, 'The Rolling Stones', 'https://www.rollingstones.com', 'The Rolling Stones é uma banda de rock britânica formada em Londres em 1962 e considerada um dos maiores e mais bem suce'),
(37, 'Stone Temple Pilots', 'http://stonetemplepilots.com', 'Stone Temple Pilots é uma banda de rock estadunidense formada por Scott Weiland e Robert Deleo.'),
(38, 'Twenty One Pilots', 'https://www.twentyonepilots.com', 'Twenty One Pilots é um duo americano originário de Columbus, Ohio.'),
(40, 'Dead Kennedys', 'http://www.deadkennedys.com', 'Dead Kennedys é uma banda de punk rock estadunidense formada em 1978 na cidade de São Francisco, Califórnia. '),
(41, 'Dead Fish', 'http://www.deadfishoficial.com', 'Dead Fish é uma banda brasileira de hardcore que se formou em Vitória, Espírito Santo, no ano de 1991.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbsite`
--
ALTER TABLE `tbsite`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbsite`
--
ALTER TABLE `tbsite`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
