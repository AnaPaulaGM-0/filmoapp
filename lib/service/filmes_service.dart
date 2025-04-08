import '../model/filme_model.dart';

class FilmesService {
  List<Filme> getFilmes() {
    return [
      Filme(
        id: 1,
        titulo: 'Vingadores',
        descricao: 'Quando Loki, irmão de Thor, ganha acesso ao poder ilimitado do cubo cósmico, Nick Fury, diretor da S.H.I.E.L.D., inicia uma busca para formar uma equipe de super-heróis capaz de salvar o planeta da destruição iminente.',
        ano: 2012,
        imagenes: "1.jpg",
        teaser: "KeNEGtsCWEk",
      ),
      Filme(
        id: 2,
        titulo: 'Batman',
        descricao: 'Com a ajuda do tenente Jim Gordon e do promotor Harvey Dent, Batman se propõe a desmantelar as organizações criminosas que assolam Gotham City. A ascensão do insano Coringa coloca a cidade em caos e testa os limites morais do herói.',
        ano: 2008,
        imagenes: "2.jpg",
        teaser: "NLOp_6uPccQ",
      ),
      Filme(
        id: 3,
        titulo: 'Harry Potter',
        descricao: 'Harry Potter descobre aos 11 anos que é um bruxo e é convidado a estudar em Hogwarts, uma escola de magia. Lá, ele encontra amigos, aprende feitiços e desvenda os mistérios do seu passado e do vilão Voldemort.',
        ano: 2001,
        imagenes: "3.jpg",
        teaser: "SFzft_2dcV0",
      ),
      Filme(
        id: 4,
        titulo: 'Interestelar',
        descricao: 'Num futuro próximo, a Terra está morrendo. Um grupo de astronautas viaja através de um buraco de minhoca em busca de um novo lar para a humanidade, enfrentando dilemas científicos, temporais e emocionais.',
        ano: 2014,
        imagenes: "4.jpg",
        teaser: "hHBsKHVLAYc",
      ),
      Filme(
        id: 5,
        titulo: 'O Senhor dos Anéis',
        descricao: 'Frodo Bolseiro herda um anel mágico que deve ser destruído para impedir que o maligno Sauron domine a Terra Média. Ele embarca numa jornada épica com a ajuda de amigos e heróis de várias raças.',
        ano: 2001,
        imagenes: "5.jpg",
        teaser: "ICCDDv2p8rA",
      ),
      Filme(
        id: 6,
        titulo: 'Esquadrão Suicida',
        descricao: 'Uma agência secreta do governo recruta supervilões presos para executar missões perigosas em troca de clemência. Eles precisam trabalhar juntos apesar das diferenças para enfrentar uma ameaça sobrenatural.',
        ano: 2016,
        imagenes: "6.jpg",
        teaser: "8pYp4T8TdP4",
      ),
      Filme(
        id: 7,
        titulo: 'Uncharted',
        descricao: 'O jovem Nathan Drake embarca em uma aventura ao redor do mundo para encontrar um tesouro perdido há séculos. Inspirado nos famosos jogos de videogame, o filme mistura ação, enigmas e paisagens exóticas.',
        ano: 2022,
        imagenes: "7.jpg",
        teaser: "R68xqaxgTSI",
      ),
    ];
  }
}
