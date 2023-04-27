DROP DATABASE if exists MD_FLIX;
CREATE DATABASE MD_FLIX DEFAULT CHARACTER SET UTF8 COLLATE UTF8_GENERAL_CI;

USE MD_FLIX;
CREATE TABLE IF NOT EXISTS Usuarios (
	Email VARCHAR(50) NOT NULL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Cpf CHAR(11) NOT NULL,
	Senha VARCHAR(20) NOT NULL,
	Data_nascimento DATE NOT NULL
)DEFAULT CHARSET = utf8;

INSERT INTO Usuarios VALUES ('matheusmendes55@outlook.com', 'Matheus Mendes', '11110800055', '123456', '1993-08-02');

INSERT INTO Usuarios VALUES ('tomazalbino@outlook.com', 'Tomaz Albino', '15610900055', '654321', '1990-07-22');

INSERT INTO Usuarios VALUES ('fernandacecilia10@outlook.com', 'Fernanda cecilia', '41211020505', '57@904', '1999-01-05');

INSERT INTO Usuarios VALUES ('paloma5novanta@outlook.com', 'Paloma Novanta', '34512905623', '23a671@', '1995-10-21');

INSERT INTO Usuarios VALUES ('joseferreira7@outlook.com', 'Jose Ferreira', '00489032177', '789123000', '1980-07-15');

INSERT INTO Usuarios VALUES ('fehmaria35@outlook.com', 'Maria Fernanda', '15117100713', 'feh3577@', '2000-03-27');

INSERT INTO Usuarios VALUES ('enzofernandez@outlook.com', 'Enzo Fernandez', '72194610010', 'enzinho010@', '2005-05-10');

INSERT INTO Usuarios VALUES ('gertrudesmaria@outlook.com', 'Maria Gertrudes', '00402112007', '45612390', '1970-11-20');

INSERT INTO Usuarios VALUES ('lorrana10ap@outlook.com', 'Lorrana Aparecida', '23178923100', 'lolo231@', '2001-04-17');

INSERT INTO Usuarios VALUES ('rafamendes10@outlook.com', 'Rafael Mendes', '32165710577', 'rafinha010', '2000-11-03');

USE MD_FLIX;
CREATE TABLE IF NOT EXISTS Series (
	ID INT PRIMARY KEY auto_increment,
	Titulo VARCHAR(50) NOT NULL,
	Diretor VARCHAR(50),
	Sinopse TEXT,
	Temporadas INT,
	Genero VARCHAR(50)
)DEFAULT CHARSET utf8;


INSERT INTO Series VALUES (default, 'The 100', 'Jason Rothenberg', 'Quase 100 anos após um apocalipse nuclear devastar a Terra, 100 sobreviventes de uma estação espacial voltam para avaliar as condições do planeta', '7', 'Ficção científica, Drama, Distopia, Ação, Ficção pós-apocalíptica, Aventura, Mistério');

INSERT INTO Series VALUES (default, 'The Walking Dead', 'Robert Kirkiman', 'Baseado na história em quadrinhos escrita por Robert Kirkman, este drama potente e visceral retrata a vida nos Estados Unidos pós-apocalíptico. Um grupo de sobreviventes, liderado pelo policial Rick Grimes, segue viajando em busca de uma nova moradia segura e distante dos mortos-vivos. A pressão para permanecerem vivos e lutarem pela sobrevivência faz com que muitos do grupo sejam submetidos às mais profundas formas de crueldade humana. Rick acaba descobrindo que o tão assustador desespero pela subsistência pode ser ainda mais fatal do que os próprios mortos-vivos que os rodeiam', '11', 'Terror, Apocalipse zumbi, Drama, Ficção pós-apocalíptica, Suspense');

INSERT INTO Series VALUES (default, 'Arrow', 'David Nutter', 'Após um violento naufrágio, o playboy milionário Oliver Queen é dado como morto. Cinco anos depois, é resgatado de uma ilha do Pacífico e enviado de volta para Starling City, onde passa a agir como vigilante secreto', '8', 'Super-herói, Drama, Ação, Crime, Mistério');

INSERT INTO Series VALUES (default, 'Sombra e Ossos', ' Leigh Bardugo, Eric Heisserer, Vanya Asher, Christina Strain, Daegan Fryklind, Shelley Meals, M. Scott Veach', 'Forças sinistras conspiram contra uma jovem depois dela revelar um poder capaz de unir seu mundo', '2', 'romance, fantasia');

INSERT INTO Series VALUES (default, 'Vis a Vis', 'Jesús Colmenar', 'Manipulada pelo homem por quem se apaixonou, Macarena comete um crime e é condenada á prisão. Assim, ela precisa aprender a sobreviver em um novo e violento mundo', '4', 'Folhetim televisivo, Suspense, Ficçãoo policial, Crime TV');

INSERT INTO Series VALUES (default, 'Prison Break: Em Busca da verdade', ' Paul Scheuring, Nick Santora, Zack Estrin', 'Michael Scofield é um homem desesperado em uma situação desesperada. Seu irmão, Lincoln Burrows, foi condenado por um crime que nÃ£o cometeu e colocado no corredor da morte. Michael rende um banco para conseguir ser encarcerado junto ao irmão na penitênciaria estadual de Fox River e coloca em açãoo uma série de planos elaborados para permitir a fuga de Lincoln e provar sua inocência. Mesmo fora da prisÃ£o, seus perigos nÃ£o acabam -- os irmãos precisam fugir para evitar a recaptura e lutar contra uma intricada conspiração policial que coloca a vida de todo mundo em risco', '5', 'ação, drama, mistério, ficção policial');

INSERT INTO Series VALUES (default, 'The Flash', ' Greg Berlanti, Andrew Kreisberg, Gabrielle Stanton', 'Acompanhe as aventuras do homem mais veloz do planeta, o cientista da Central City Police Barry Allen, que após um trágico acidente adquire o poder da velocidade', '9', 'super-herói, drama, ficção científica, aventura');

INSERT INTO Series VALUES (default, 'Riverdale', 'Roberto Aguirre-Sacasa', 'Uma versão subversiva de Archie, Betty, Veronica e seus amigos, explora o surrealismo da vida em uma pequena cidade e mostra a estranheza que se esconde atrás da fachada saudável de Riverdale', '7', 'drama, misterio');

INSERT INTO Series VALUES (default, 'Perdidos no Espaço', 'Irwin Allen, Burk Sharpless, Matt Sazama, Ed McCardie, Katherine Collins', 'Após um pouso forçado em um planeta desconhecido, a família Robinson tenta sobreviver aos perigos que encontra nesse novo mundo', '3', 'Ficção cientí­fica, aventura');

INSERT INTO Series VALUES (default, 'Van Helsing', 'Neil LaBute', 'Depois de três anos em coma, Vanessa desperta em um mundo dominado por vampiros. Nessa nova realidade, ela precisa encontrar uma forma de lutar por sua sobrevivência', '5', 'terror, ação, aventura, fantasia, drama');

USE MD_FLIX;
CREATE TABLE IF NOT EXISTS Filmes (
	ID INT PRIMARY KEY auto_increment,
	Titulo VARCHAR(50) NOT NULL,
	Diretor VARCHAR(50),
	Sinopse TEXT,
	Duracao TIME,
	Genero VARCHAR(50)
)DEFAULT CHARSET utf8;

INSERT INTO Filmes VALUES (default, 'Bad Boys Para Sempre', 'Adil El Arbi, Bilall Fallah', 'Chegou a vez de Marcus desfrutar de sua merecida aposentadoria da policia. Antes ele só precisa livrar seu parceiro Mike de um perigoso cartel', '2h 4m', 'ação, aventura, comedia, policial');

INSERT INTO Filmes VALUES (default, 'Os Mercenarios 3', 'Patrick Hughes', 'Com sangue novo na equipe os Mercenarios enfretam o impiedoso traficante de armas Conrad Stonebanks, que nao mede esforços para destrui-los', '2h 6m', 'Ação e aventura');

INSERT INTO Filmes VALUES (default, 'Resgate', 'Sam Hargrave', 'Em Bangladesh, o mercenário do mercado negro Tyler Rake luta para sobreviver durante a missão para resgatar o filho sequestrado de um chefe do crime internacional', '1h 58m', 'Ação e aventura');

INSERT INTO Filmes VALUES (default, 'Avatar', 'James Cameron', 'Jake Sully (Sam Worthington) é um soldado escalado para substituir o irmão, um cientista recém falecido. Cadeirante, ele aceita de bom grado a missão de ganhar outra vida através de um avatar, ou seja, um ser modelado geneticamente e desprovido de consciência, que lhe servirá¡ como disfarce', '2h 42m1', 'ação, ficcao cientifica, aventura, fantasia, misterio');

INSERT INTO Filmes VALUES (default, 'Velozes e furiosos', 'Rob Cohen', 'Brian OConner é um policial que se infiltra no submundo dos rachas de rua para investigar uma série de furtos. Enquanto tenta ganhar o respeito e a confiança do líder Dom Toretto, ele corre o risco de ser desmascarado', '1h 46m', 'ação, aventura, policial');

INSERT INTO Filmes VALUES (default, 'Harry Potter', 'Chris Columbus', 'Harry Potter é um garoto orfão que vive infeliz com seus tios, os Dursleys. Ele recebe uma carta contendo um convite para ingressar em Hogwarts, uma famosa escola especializada em formar jovens bruxos. Inicialmente, Harry é impedido de ler a carta por seu tio, mas logo recebe a visita de Hagrid, o guarda-caça de Hogwarts, que chega para levá-lo até a escola. Harry adentra um mundo mágico que jamais imaginara, vivendo diversas aventuras com seus novos amigos, Rony Weasley e Hermione Granger', '2h 32m', 'fantasia, aventura, ficção, infantil');

INSERT INTO Filmes VALUES (default, 'O Atirador', 'Antoine Fuqua', 'O atirador Bob Lee Swagger deixa o exército e desaparece sem deixar rastros. Ele volta para impedir o assassinato do Presidente dos Estados Unidos, mas é enganado e passa a ser perseguido como criminoso', '2h 06m', 'Ação, Thriller');

INSERT INTO Filmes VALUES (default, 'Olhos Famintos', 'Victor Salva', 'Ao voltarem para casa por uma estrada sem movimento, os irmãos Trish e Darry veem um vulto atirando o que parece ser um corpo embrulhado. Parando para investigar, eles descobrem centenas de corpos mutilados, pendurados embaixo de uma antiga igreja', '1h 30m', 'terror');

INSERT INTO Filmes VALUES (default, 'Cinquenta Tons de Cinza', 'Sam Taylor-Johnson', 'A estudante de literatura Anastasia Steele, de 21 anos, entrevista o jovem bilionário Christian Grey, como um favor a sua colega de quarto Kate Kavanagh. Ela vê nele um homem atraente e brilhante, e ele fica igualmente fascinado por ela. Embora seja sexualmente inexperiente, Anastasia mergulha de cabeça nessa relação e descobre os prazeres do sadomasoquismo, tornando-se o objeto de submissão do enigmático Grey', '2h 05m', 'Romance, drama');

INSERT INTO Filmes VALUES (default, 'Dragon Ball Super Broly', 'Tatsuya Nagamine', 'Apesar da Terra estar em um período de calmaria, Goku se recusa a parar de treinar constantemente. O que ele não imaginava era que seu novo inimigo seria Broly, um poderoso super saiyajin sedento por vingança, que deseja destruir todos que encontrar pela frente', '1h 40m', 'Ação, Animação');


alter table Usuarios drop column data_nascimento;
alter table Usuarios add column data_nascimento DATE;
update Usuarios set data_nascimento = '1993-08-02' where email = 'matheusmendes55@outlook.com';
update Usuarios set data_nascimento = '2000-08-21' where email = 'tomazalbino@outlook.com'; 
update Usuarios set data_nascimento = '1999-01-12' where email = 'fernandacecilia10@outlook.com';
update Usuarios set data_nascimento = '1988-12-30' where email = 'paloma5novanta@outlook.com';
update Usuarios set data_nascimento = '1995-09-27' where email = 'joseferreira7@outlook.com';
update Usuarios set data_nascimento = '1993-11-07' where email = 'fehmaria35@outlook.com';
update Usuarios set data_nascimento = '1997-10-01' where email = 'enzofernandez@outlook.com';
update Usuarios set data_nascimento = '2000-07-22' where email = 'gertrudesmaria@outlook.com';
update Usuarios set data_nascimento = '2001-05-17' where email = 'lorrana10ap@outlook.com';
update Usuarios set data_nascimento = '2005-02-13' where email = 'rafamendes10@outlook.com';
alter table Usuarios change column Senha Senha_forte char(10) not null;

