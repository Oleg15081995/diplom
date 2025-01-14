-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 10 2018 г., 12:03
-- Версия сервера: 5.5.25
-- Версия PHP: 5.6.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `dogcat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `board`
--

CREATE TABLE IF NOT EXISTS `board` (
  `id_msg` int(8) NOT NULL AUTO_INCREMENT,
  `contact` tinytext NOT NULL,
  `type` enum('1','2','3','4','5','6','7') DEFAULT '2',
  `object` enum('1','2','3','4','5','6','7','8','9','10','11','12') DEFAULT '1',
  `city` tinytext NOT NULL,
  `msg` mediumtext NOT NULL,
  `puttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hide` enum('show','hide') NOT NULL DEFAULT 'show',
  PRIMARY KEY (`id_msg`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `board`
--

INSERT INTO `board` (`id_msg`, `contact`, `type`, `object`, `city`, `msg`, `puttime`, `hide`) VALUES
(4, 'sdsfsdf', '2', '4', 'sdfdsf', 'sdfsdfsdvsdcfsdfsdvb ncbmn111111', '2017-06-14 21:30:55', 'show'),
(5, 'kira', '3', '7', 'asdsadfsa', 'Хочу кумпить', '2017-06-14 21:31:30', 'show'),
(6, 'Ольга', '3', '1', 'Киев', 'Возьму в опеку маленького котенка', '2017-06-14 22:17:22', 'show'),
(7, 'Олег', '4', '2', 'Житомир', 'Дворняга. Хорошая', '2017-06-14 22:18:40', 'show'),
(8, 'sdfsd', '3', '2', 'sdfs', 'sfsg', '2017-06-15 12:22:47', 'show'),
(9, 'Петро', '1', '2', 'Київ', 'Продам хорошого пса. Вірного товарища', '2018-04-10 11:50:22', 'show');

-- --------------------------------------------------------

--
-- Структура таблицы `cat`
--

CREATE TABLE IF NOT EXISTS `cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `cat`
--

INSERT INTO `cat` (`id`, `cat`, `text`, `img`) VALUES
(1, 'Собаки', '', 'catdogs.png'),
(2, 'Кошки', '', 'catcats.png');

-- --------------------------------------------------------

--
-- Структура таблицы `cat_news`
--

CREATE TABLE IF NOT EXISTS `cat_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `cat_news`
--

INSERT INTO `cat_news` (`id`, `title`) VALUES
(1, 'Новости'),
(2, 'Публикации'),
(3, 'Информация');

-- --------------------------------------------------------

--
-- Структура таблицы `help`
--

CREATE TABLE IF NOT EXISTS `help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `help`
--

INSERT INTO `help` (`id`, `id_user`, `text`) VALUES
(1, 12, 'Могу Выгуливать собак'),
(2, 13, 'eferfvrvgrfgvt'),
(3, 16, 'dsgdgdgfgfg');

-- --------------------------------------------------------

--
-- Структура таблицы `new`
--

CREATE TABLE IF NOT EXISTS `new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `img` varchar(50) NOT NULL,
  `desc` text NOT NULL,
  `text` text NOT NULL,
  `id_cat` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cat` (`id_cat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `new`
--

INSERT INTO `new` (`id`, `name`, `img`, `desc`, `text`, `id_cat`, `date`) VALUES
(4, 'Подяка!', '1.jpg', 'Завдяки проведенню міжнародного фестивалю WUFF 2017 https://wuff.org.ua/2017/ і особисто Анна Ліхтман були зібрані кошти в розмірі 15500 гривень для придбання морозильної камери в притулок! величезне', 'Завдяки проведенню міжнародного фестивалю WUFF 2017 https://wuff.org.ua/2017/ і особисто Анна Ліхтман були зібрані кошти в розмірі 15500 гривень для придбання морозильної камери в притулок! Величезне спасибі!!!!!', 1, '2017-06-08'),
(5, 'Щасливий пост', '2.jpg', 'Щасливий пост за минулий тиждень! Поїхали додому два котика Іполит і Гіві, а також собаки - Анфіса, Вульф, Моріс і Хані! І ще ми знайшли господарів втраченої спаніелька) Ось бачите, як важливі', 'Щасливий пост за минулий тиждень! Поїхали додому два котика Іполит і Гіві, а також собаки - Анфіса, Вульф, Моріс і Хані! І ще ми знайшли господарів втраченої спаніелька) Ось бачите, як важливі', 1, '2017-06-21'),
(6, 'Чи не забуваймо про братів наших менших', '3.jpg', 'Тварини, Які Живуть поруч людини Вже НЕ Одне тисячоліття звіклі до неї и потребують максимально Дбайливий Ставлення. Чи варто Говорити про ті, что людина не винних завдаваті Їм Шкоди, а навпаки - максимально допомагаті? На жаль, все Частіше ми стаємо свідкамі того, як жорстокі люди поводять з тварин, зраджують їх. Леонардо да Вінчі колись сказав:', 'Тварини, Які Живуть поруч людини Вже НЕ Одне тисячоліття звіклі до неї и потребують максимально Дбайливий Ставлення. Чи варто Говорити про ті, что людина не винних завдаваті Їм Шкоди, а навпаки - максимально допомагаті? На жаль, все Частіше ми стаємо свідкамі того, як жорстокі люди поводять з тварин, зраджують їх. Леонардо да Вінчі колись сказав: «Прийде час, коли люди будут Дивитися на вбивцю тварини так само, як смороду дівляться поза вбивцю людини».\nЛюдяність візначається тім, як ми поводімося з тварин. У Вишневому є Справжня оаза тваринного світу - приклад гуманного відношення до тварин.\nПритулок «У добрі руки» або центр допомоги Безпритульний тваринам існує Вже декілька років. Ее незмінній директор Катерина Жуковська. За ее словами Основним его завдання и метою залішається як и Було задумано з самого качана: Вілов, стерілізація, випуск, або регуляція кількості Безпритульний тварин. Слід уточніті, что випуск НЕ означає віпустіті (вікінуті) просто на вулицю. Ті, що віховуваліся и звіклі жити у Притулка НЕ ​​прістосовані до життя на вулиці.\nОсновні мешканці Притулка - собаки, якіх у Притулка 105 и біля 80 котів. Альо тут Живуть и парі птахів.\n\nІншим направлення ДІЯЛЬНОСТІ Притулка є допомога и ТИМЧАСОВЕ Утримання щенят, кошенят, післяопераційніх и важкохворіх тварин.\nТут такоже знаходять притулок тварини-інваліди, что потребують постійного догляд.\nОдним з напрямків ДІЯЛЬНОСТІ, Звичайно є поиск Нових господарів для вихованців.\nНовою програмою є великий Вігула, Які беруть собак на повідки и вігулюють їх.\nКоманда Притулка - це справжні сподвижники, оскількі Працюють за невеликі плату. Аджея кажуть: «Собака-це НЕ сенс життя, но Завдяк їй, життя набуває особливого змісту».', 2, '2017-06-12');

-- --------------------------------------------------------

--
-- Структура таблицы `pets`
--

CREATE TABLE IF NOT EXISTS `pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `pol` varchar(20) NOT NULL,
  `age` varchar(100) NOT NULL,
  `size` varchar(200) NOT NULL,
  `poroda` varchar(200) NOT NULL,
  `okras` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(400) NOT NULL,
  `o_pets` text NOT NULL,
  `id_cat` int(11) NOT NULL,
  `ster` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cat` (`id_cat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `pets`
--

INSERT INTO `pets` (`id`, `name`, `pol`, `age`, `size`, `poroda`, `okras`, `text`, `img`, `o_pets`, `id_cat`, `ster`) VALUES
(1, 'Ильда', 'Дівчинка', '5', 'Маленький', 'Другая Беспородная', 'Муругий (темно-рыжий)', 'Компаньон\r\nДружит с другими собаками\r\nДружит с детьми', '87207/md/1.jpg,87207/md/2.jpg,87207/md/3.jpg', 'Ищем дом Ильде, это собака небольшого размера, 40 см в холке, весом 12 кг, родилась 4 мая 2015 года. Девочка стерилизована, привита и имеет ветеринарный паспорт. Собака с уравновешенной психикой, подойдет для квартирного содержания, хорошо ладит с детьми, коммуникабельная, добрая. Отлично ходит на поводке, знает базовые команды.', 1, 0),
(2, 'Бэкки', 'Хлопчик', '1', 'Середній', 'Другая Беспородный', 'Подпалый', 'Компаньон\r\nДружит с другими собаками\r\nДружит с детьми', '87217/md/1.jpg,87217/md/2.jpg', 'Бэкки щенок мальчик, возраст 3-3,5 месяца, небольшая, вряд ли вырастет выше колена, а скорее даже меньше, она намного меньше своих ровесников щенков. Характер приятный, хорошая психика, в меру активна. Гарантируем бесплатную стерилизацию по достижении половой зрелости.', 1, 1),
(3, 'Невил', 'Хлопчик', '4', 'Середній', 'Другая Беспородный', 'Другой Пятнистый', 'Компаньон\r\nДружит с другими собаками\r\nДружит с детьми', '88475/md/1.jpg,88475/md/2.jpg,88475/md/3.jpg,88475/md/4.jpg', 'Однажды в одном из районов Киева проводился ярмарок, когда он закрылся, все разъехались , остался вот такой подросток(( Мы назвали его Невил, вакцинировали и он готов переехать к людям, которые не предадут. Невилу полгода, это изящный подросток среднего размера, можно сказать даже небольшой -40 см в холке, с замечательным щенячьим характером, очень красивый экстерьер. Ищем самых лучших хозяев', 1, 1),
(4, 'Бетси', 'Дівчинка', '1', 'Середній', 'Другая Беспородная', 'Голубокремовая черепаха', '', '94104/md/1.jpg,94104/md/2.jpg,94104/md/3.jpg,94104/md/4.jpg', 'Ищем дом Бетси, ей полтора месяца, от глистов и блох обработана, к лотку приучена , ест самостоятельно. Котенок здоровый, игривый, от домашней кошки. По достижении половой зрелости мы гарантируем бесплатную стерилизацию.', 2, 0),
(6, 'Асик', 'Хлопчик', '1', 'Середній', 'Другая Беспородный', 'Черный', '', '94103/md/1.jpg,94103/md/2.jpg,94103/md/3.jpg,94103/md/4.jpg', 'Асик, полуторамесячный черненький котик,игривый, абсолютно домашний, берешь на руки, сразу благодарное муркотение, очень милый и хороший. Лоток знает, у нас ест сухой корм, мы гарантируем бесплатную кастрацию по достижении половой зрелости.', 2, 1),
(7, 'Харкли', 'Хлопчик', '3', 'Великий', 'без породи', 'плямистий', 'Хороший', '94117/md/1.jpg,94117/md/2.jpg', '', 1, 0),
(9, 'Мурчик', 'Хлопчик', '2', 'Великий', 'Сіамський', 'пегий', 'Лагідний', '94075/md/1.jpg,94075/md/2.jpg', '', 2, 0),
(10, 'Маркиз', 'Хлопчик', '1', 'Маленький', 'сибірський', 'сірий', '', '94086/md/1.jpg,94086/md/2.jpg', '', 2, 0),
(11, 'Тильда', 'Дівчинка', '2', 'Середній', 'персидский', 'плямистий', 'У Тильды особенный хвостик.Он закручен спиралькой, но не от природы.Так постарался очень злой человек.Накрутил на свой палец хвост, раскрутил и швырнул кошку о забор. Косточки переломались и свернулись так причудливо. Эту боль даже представить невозможно…Несмотря на пережитое,Тильда-нежнейшее, ласковое и доверчивое создание.Очень хочется, чтобы она узнала,что добрые люди тоже есть. По всем вопросам звонить куратораам: Катя 098 38 797 84, Даша 066-676-3922\r\nчитати далі', 'c1.jpeg', '', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `mail`, `text`) VALUES
(7, 'Андрей', '+38050674832', 'andr@ukr.net', 'Обычная семья 2 детей. Хотим друга.'),
(12, 'Anna', '2323435435', 'andr@ukr.net', ''),
(13, 'Vika', '3425435454', 'vika@dsf', ''),
(14, 'gdgdg', '+38(343) 24-23-433', 'fdgd@dfr', 'dfgdhdghdh'),
(15, 'gdgdg', '+38(343) 24-23-433', 'fdgd@dfr', 'dfgdhdghdh'),
(16, 'aaa', '634543545', 'andr@ukr.net', ''),
(17, 'Oleg', '+380976785645', 'oleg@ukr.net', 'ok');

-- --------------------------------------------------------

--
-- Структура таблицы `user_pets`
--

CREATE TABLE IF NOT EXISTS `user_pets` (
  `id_user` int(11) NOT NULL,
  `id_pets` int(11) NOT NULL,
  `date` date NOT NULL,
  `stat` int(11) NOT NULL,
  KEY `id_user` (`id_user`),
  KEY `id_pets` (`id_pets`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_pets`
--

INSERT INTO `user_pets` (`id_user`, `id_pets`, `date`, `stat`) VALUES
(7, 2, '2017-06-14', 1),
(14, 7, '2018-04-07', 1),
(15, 7, '2018-04-07', 1),
(17, 11, '2018-04-09', 0),
(13, 2, '2018-05-03', 1),
(12, 9, '2018-01-02', 1),
(12, 7, '2018-07-09', 1),
(13, 4, '2018-06-12', 1),
(13, 7, '2018-08-16', 1),
(12, 1, '2018-09-26', 1);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `new`
--
ALTER TABLE `new`
  ADD CONSTRAINT `new_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `cat_news` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `cat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `user_pets`
--
ALTER TABLE `user_pets`
  ADD CONSTRAINT `user_pets_ibfk_1` FOREIGN KEY (`id_pets`) REFERENCES `pets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_pets_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
