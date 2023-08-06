-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2022 at 06:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `street_food_order_online`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `cart report`
-- (See below for the actual view)
--
CREATE TABLE `cart report` (
`cart_id` int(2)
,`product_name` varchar(25)
,`user_name` varchar(20)
,`cart_qty` int(2)
,`product_price` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `category report`
-- (See below for the actual view)
--
CREATE TABLE `category report` (
`category_id` int(5)
,`category_name` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `feedback report`
-- (See below for the actual view)
--
CREATE TABLE `feedback report` (
`feedback_id` int(5)
,`user_name` varchar(20)
,`feedback_details` text
,`feedback_date_time` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `order detail report`
-- (See below for the actual view)
--
CREATE TABLE `order detail report` (
`order_detail_id` int(5)
,`product_name` varchar(25)
,`product_price` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `order master report`
-- (See below for the actual view)
--
CREATE TABLE `order master report` (
`order_id` int(5)
,`user_name` varchar(20)
,`order_date_time` datetime
,`order_amt` int(5)
,`order_status` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `payment report`
-- (See below for the actual view)
--
CREATE TABLE `payment report` (
`payment_id` int(5)
,`user_name` varchar(20)
,`order_id` int(5)
,`payment_date_time` datetime
,`payment_mode` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product report`
-- (See below for the actual view)
--
CREATE TABLE `product report` (
`product_id` int(5)
,`product_name` varchar(25)
,`product_price` int(5)
,`product_details` text
,`sub_category_name` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `subcategory report`
-- (See below for the actual view)
--
CREATE TABLE `subcategory report` (
`sub_category_id` int(5)
,`sub_category_name` varchar(25)
,`category_name` varchar(25)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(2) NOT NULL,
  `product_id` int(2) NOT NULL,
  `user_id` int(2) NOT NULL,
  `cart_qty` int(2) NOT NULL,
  `product_price` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `product_id`, `user_id`, `cart_qty`, `product_price`) VALUES
(2, 2, 1, 1, 130),
(4, 3, 1, 1, 125),
(5, 1, 2, 1, 149),
(6, 21, 2, 1, 110);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(5) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Indian'),
(2, 'Meal'),
(3, 'Fast Food'),
(4, 'Continental'),
(5, 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `feedback_details` text NOT NULL,
  `feedback_date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`feedback_id`, `user_id`, `feedback_details`, `feedback_date_time`) VALUES
(1, 4, 'Delivery agent is late today.', '2022-04-01 10:01:06'),
(2, 5, 'Thank you for faster delivery!', '2022-04-05 12:04:57'),
(3, 9, 'I got the french fries which is soggy... please try to improve it.', '2022-04-04 13:05:30'),
(4, 7, 'Taste is superb.', '2022-04-05 05:05:53'),
(5, 4, 'Late delivery.', '2022-04-05 08:06:02'),
(6, 6, 'Street food online delivery service is great idea.', '2022-04-05 17:06:15'),
(7, 10, 'Received food on proper time.', '2022-04-07 04:06:26'),
(8, 8, 'Food is as same as shown in picture.', '2022-04-07 07:06:46'),
(9, 6, 'Best food at best price.', '2022-04-07 11:06:59'),
(10, 5, 'Glad to see the work for street food business hub.', '2022-04-07 13:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_detail_id` int(5) NOT NULL,
  `order_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `product_price` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_detail_id`, `order_id`, `product_id`, `product_price`) VALUES
(1, 1, 5, 15),
(2, 1, 2, 130),
(3, 2, 7, 179),
(4, 3, 17, 129),
(5, 4, 13, 75),
(6, 4, 12, 70),
(7, 5, 19, 135),
(8, 6, 30, 95),
(9, 7, 33, 15),
(10, 7, 34, 15),
(11, 8, 46, 90),
(12, 9, 49, 105),
(13, 10, 37, 105),
(14, 10, 42, 65),
(15, 10, 39, 75);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_master`
--

CREATE TABLE `tbl_order_master` (
  `order_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `order_date_time` datetime NOT NULL,
  `order_amt` int(5) NOT NULL,
  `order_status` text NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_mobile` varchar(50) NOT NULL,
  `s_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order_master`
--

INSERT INTO `tbl_order_master` (`order_id`, `user_id`, `order_date_time`, `order_amt`, `order_status`, `s_name`, `s_mobile`, `s_address`) VALUES
(1, 4, '2022-04-01 15:31:06', 145, 'Delivered', 'Priyank', '8200567980', 'FF5 Chinmay Crystal Opposit -Vastrapur lake, Vastrapur, Ahmedabad, Gujarat 380015	'),
(2, 5, '2022-04-05 17:34:57', 179, 'Delivered', 'Tejas', '7228988476', '2, Hina Complex, Parasnagar, Naranpura, Ahmedabad-13	'),
(3, 9, '2022-04-04 18:35:30', 129, 'Delivered', 'Shivani', '9475565250', '30/12, shivalik complex,science city, ahmedabad-380011	'),
(4, 7, '2022-04-05 10:35:53', 145, 'Delivered', 'Parth ', '8757154707', 'Manav Mandir Road, Memnagar, Ahemdabad-380013	'),
(5, 4, '2022-04-05 13:36:02', 135, 'Delivered', 'Priyank', '8200567980', 'FF5 Chinmay Crystal Opposit -Vastrapur lake, Vastrapur, Ahmedabad, Gujarat 380015	'),
(6, 6, '2022-04-05 22:36:15', 95, 'Delivered', 'Shruti ', '9428647822', '26/374, Gayatri Appartment, Navrangpura, Ahmedabad-380009	'),
(7, 10, '2022-04-07 09:36:26', 30, 'Confirmed', 'Jayraj ', '7461237491	', '26/34, Gayatri complex, Navrangpura, Ahmedabad-380009	'),
(8, 8, '2022-04-07 12:36:46', 90, 'Confirmed', 'Viraj ', '9876543404', '3002 , gold crest, shilaj ,ahmedabad-380019	'),
(9, 6, '2022-04-07 16:36:59', 105, 'Preparing', 'Shruti ', '9428647822', '26/374, Gayatri Appartment, Navrangpura, Ahmedabad-380009	'),
(10, 5, '2022-04-07 18:37:11', 245, 'Pending', 'Tejas', '7228988476', '2, Hina Complex, Parasnagar, Naranpura, Ahmedabad-13	');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `order_id` int(5) NOT NULL,
  `payment_date_time` datetime NOT NULL,
  `payment_mode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `user_id`, `order_id`, `payment_date_time`, `payment_mode`) VALUES
(1, 4, 1, '2022-04-01 15:37:00', 'UPI'),
(2, 5, 2, '2022-04-05 17:38:00', 'UPI'),
(3, 9, 3, '2022-04-04 18:40:00', 'UPI'),
(4, 7, 4, '2022-04-05 11:36:00', 'Cash On Delivery'),
(5, 4, 5, '2022-04-05 12:42:00', 'UPI'),
(6, 6, 6, '2022-04-05 22:46:00', 'UPI'),
(7, 10, 7, '2022-04-07 09:44:00', 'UPI'),
(8, 10, 7, '2022-04-07 09:43:00', 'UPI'),
(9, 8, 8, '2022-04-07 12:36:00', 'Cash On Delivery'),
(10, 6, 9, '2022-04-07 16:38:00', 'UPI'),
(11, 5, 10, '2022-04-07 18:39:00', 'Cash On Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(5) NOT NULL,
  `sub_category_id` int(5) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_details` text NOT NULL,
  `product_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `sub_category_id`, `product_name`, `product_price`, `product_details`, `product_image`) VALUES
(1, 1, 'Aloo Paratha', 149, 'Aloo paratha is a bread dish originating from the Indian subcontinent. It is a breakfast dish originated from the Punjab region. The recipe is one of the most popular breakfast dishes throughout the western, central and northern regions of India', 'aloo_parotha.png'),
(2, 1, 'Cheese Butter Masala', 130, 'Cheese Butter Masala is a popular recipe you will find in Dhabas of Gujarat. This famous recipe of Gujarat is loved by everyone and especially children. Yummy Cheese cubes cooked in a buttery gravy and enjoyed with hot Naans is simply amazing.', 'cheese_butter_masala.jfif'),
(3, 1, 'Malai Kofta', 125, 'Malai Kofta is a delicious dish of fried balls of potato and paneer in a rich and creamy mild gravy made with sweet onions and tomatoes. This melt-in-your-mouth recipe is a labor of love, but one that is well worth it.', 'malai_kofta.png'),
(4, 1, 'Naan', 20, 'This soft, pillowy, buttery, irresistible flatbread has long been one of my favorite sides to order out at Indian restaurants. But while naan bread is traditionally baked inside blazing-hot Tandoor ovens in India, a homemade version is actually quite easy to make on the stovetop in a hot skillet.', 'naan.png'),
(5, 1, 'Kulcha', 15, 'Kulcha is a type of mildly leavened flatbread that originated in the Indian subcontinent.', 'kulcha.jfif'),
(6, 1, 'Butter Roti', 15, 'This simply delicious North Indian Tandoori Roti is one of my favorite Indian flatbreads of all time. With crisp edges, a soft interior, and a chewy texture, this whole wheat roti recipe is perfect for serving with any kind of Punjabi food, especially rich curry dishes.', 'butter_roti.png'),
(7, 2, 'Dosa', 179, 'A dosa is a thin pancake originating from South India, made from a fermented batter predominantly consisting of lentils and rice. It is somewhat similar to a crepe in appearance, although savoury flavours are generally emphasized.', 'dosa.png'),
(8, 2, 'Idli', 30, 'Idli or idly are a type of savoury rice cake, originating from the Indian subcontinent, popular as breakfast foods in Southern India and in Sri Lanka. The cakes are made by steaming a batter consisting of fermented black lentils and rice.', 'idli.jfif'),
(9, 2, 'Mendu Vada', 75, 'Medu vada is a South Indian fritter made from Vigna mungo. It is usually made in a doughnut shape, with a crispy exterior and soft interior. A popular food item in South Indian and Sri Lankan Tamil cuisines, it is generally eaten as a breakfast or a snack.', 'mendu_vada.png'),
(10, 2, 'Uttapam', 108, 'Uthappam is a type of dosa from South India. In Tamil Nadu it is known as Uthappam, in Karnataka it is known as Uttappa. In Kerala it is known as Oothappam In Tulu it is known as Ootappa or Ootappo. Unlike a typical dosa, which is crisp and crepe-like, uttapam is thicker, with toppings. ', 'uttapam.png'),
(11, 2, 'Apam', 70, 'Appam is a type of pancake, originating from South India, made with fermented rice batter and coconut milk, common in Kerala, India. It is eaten most frequently for breakfast or dinner. ', 'Apam.png'),
(12, 3, 'Handvo', 70, 'Handvo is a savory vegetable cake originating from Gujarat, India. It is a part of the Gujarati cuisine. It is often made with a bottle gourd filling, though many other vegetables can be added. Sometimes crushed peanuts are also added.', 'handvo.jfif'),
(13, 3, 'Khaman', 75, 'Khaman is a food from the Gujarat state of India. It is a very popular Gujarati snack in India.', 'khaman.jpg'),
(14, 3, 'Khandvi', 62, 'Khandvi, also known as Patuli, Dahivadi or Suralichi Vadi, is a savory snack in Maharashtrian cuisine as well as in Gujarati cuisine of India. It consists of yellowish, tightly rolled bite-sized pieces and is primarily made of gram flour and yogurt.', 'khandvi.png'),
(15, 3, 'Gathiya', 75, 'Ganthiya, gathiya or gathia are deep fried Indian snacks made from chickpea flour. Along with Khakra, Fafda, Dhokla, and Khandvi, they are among the most popular snacks originating from the Indian State of Gujarat.', 'gathiya.png'),
(16, 3, 'Patra', 70, 'Patrode/Patrodo/Patra/Patrodu originally a vegetarian dish from the Western coast, India. It is also adapted in the Himachal Pradesh region, UP & Bihar as \"Rikvach\" and some other names in other parts of India.', 'Patra.jpg'),
(17, 4, 'Gujarati Thali', 129, 'Green Sabzi[1]+Kathol Sabzi[1]+5 Roti+Dal+Rice+Buttermilk+Sweet[1]+Pickle+Papad+Salad.', 'gujarati_thali.jfif'),
(18, 4, 'Punjabi Thali', 129, '2 Tandoori roti or ( 4 chapati roti), 1 paneer veg.,1 regular veg., dalfry , jira rice, papad, 1 sweet, 1 farsan, salad', 'punjabi_thali.jpg'),
(19, 5, 'Fried Rice With Manchuria', 135, 'A classical fusion food made by tossing the long grain rice in a manchurian sauce. basically a combination of 2 indo chinese food which has the crunchy taste from a bowl of traditional fried rice and loaded with manchurian flavour.', 'c1.jfif'),
(20, 5, 'Chole Bhature', 115, '○	Chole bhature is a food dish popular in the Northern areas of the Indian subcontinent. It is a combination of chana masala (spicy white chickpeas) and bhatura/puri, a fried bread made from maida. Although it is known as a typical Punjabi dish, there are varied claims around the origin of dish.', 'c2.jpg'),
(21, 5, 'Burger with French Fries', 110, '○	burger! Crunchy potato and peas patty topped with veg sauce, ketchup, tomatoes and onions. Also French Fries included.', 'c3.jfif'),
(22, 6, 'Manchow Soup', 75, 'Manchow Soup is another popular soup recipe from Indian chinese cuisine. This hot and spicy veg soup is perfect to serve as an appetizer or with the main course like hakka noodles or fried rice during cold winter days.', 'manchaw.jfif'),
(23, 6, 'Manchurian Soup', 85, 'Manchurian Soup is another popular soup recipe from Indian chinese cuisine. This hot and spicy veg soup is perfect to serve as an appetizer or with the manchurian pieces or fried rice during cold winter days.', 'manchurian_soup.jpg'),
(24, 6, 'Tomato Soup', 65, 'Tomato soup is a soup with tomatoes as the primary ingredient. It can be served hot or cold, and may be made in a variety of ways. It may be smooth in texture, and there are also recipes that include chunks of tomato, cream, chicken or vegetable stock, vermicelli, chunks of other vegetables and meatballs.', 'tomato.jfif'),
(25, 6, 'Sweet Corn Soup', 75, 'Sweet corn soup made with tender corn kernels, spices and herbs. Make this simple, comforting and delicious soup under 25 mins. Serve it any time of the day, for a simple meal with cheese toast, noodles or pasta. Corn soup is a dish made in several cultures across the world. So you will find several kinds of sweet corn soups made in many different ways. But the primary ingredient is the corn and mostly it is the tender sweet corn that is used.', 'sweet_corn.jfif'),
(26, 7, 'Dahi Puri', 25, 'Dahipuri, or dahi puri, is a snack, originating from India, which is especially popular in the state of Maharashtra, India. The dish is a form of chaat and originates from the city of Mumbai. It is served with mini-puri shells, which are more popularly recognized from the dish pani puri.', 'dahi_puri.jfif'),
(27, 7, 'Pani Puri', 25, 'The round, hard, puffy puri shell is first broken on top and partially filled with some potato Masala, and chana and then mixed with pani puri water to eaten.', 'pani_puri.jfif'),
(28, 7, 'Sev Puri', 25, 'The round, hard, puffy puri shell is first broken on top and filled with some sev and Potato Masala and then Pani puri water is filled and eaten.', 'sev_puri.jfif'),
(29, 7, 'Samosa Chaat', 35, 'Samosa chaat is made of a base of chana masala (chickpea curry) and samosa (savory fried pastries). Popular toppings include tamarind and cilantro chutneys, additional spices, thin sev, cilantro and occasionally onions and pomegranate seeds.', 'samosa_chaat.jfif'),
(30, 8, 'Sandwich', 95, 'Paneer Cubes + Tandoori Sauce + Cheesy Sauce + Diced Tomato, Cucumber, Cabbage, Capsicum', 'sandwich.jfif'),
(31, 8, 'Samosa', 18, 'A samosa is a fried or baked pastry with a savory filling, including ingredients such as spiced potatoes, onions, peas, chicken and/or other meats. It may take different forms, including triangular, cone, or half-moon shapes, depending on the region.', 'samosa.jfif'),
(32, 8, 'Khasta Kachori', 65, 'Khasta Kachori is a spicy deep-fried snack, originating from the Indian subcontinent, and common in places with Indian diaspora and other South Asian diaspora. Alternative names for the snack include kachauri, kachodi and katchuri. ', 'khasta_kachori.jpg'),
(33, 8, 'Vadapav', 15, 'Vadapav with seasoning of red chilli powder and a green chilli. It consists of a deep fried potato dumpling placed inside a bread bun (pav) sliced almost in half through the middle.', 'vadapav.jfif'),
(34, 8, 'Dabeli', 15, 'Dabeli is a spicy, tangy and sweet potato filling inside a bun – more specifically the Indian bun – called as pav, drizzled with a spicy and sweet chutney and some pomegranate, grapes, onions and sev.', 'dabeli.jfif'),
(35, 8, 'French Fries', 50, 'French fries are deep-fried, very thin, salted slices of potato that are usually served at room temperature.', 'french_fries.jfif'),
(36, 8, 'Momos', 70, 'Momo is a type of dumpling dish popular primarily in Nepal, Tibet, Pakistan, and India. Momo can be found in the cuisines of Nepal and Tibet. It is similar to baozi, jiaozi and mantou in Chinese cuisine, buuz in Mongolian cuisine, gyoza in Japanese cuisine, mandu in Korean cuisine and manti in Afghan cuisines.', 'momos.jfif'),
(37, 9, 'Hara Bhara Kabab', 105, 'Hara Bhara Kabab is a very popular snack of North Indian fried patties made with spinach, peas and potatoes. This word means a kabab full of greens. Here the green colored veggies are spinach and green peas.', 'hara_bhara_kabab.jfif'),
(38, 9, 'Veg. Lolipop', 125, 'Veg lollipop are crispy fried balls made with mix vegetable filling. In the Indo Chinese cuisine, there are two types of vegetarian lollipops. One is made with cauliflower and the second one is made with mix veggies. In this post I am sharing the mix vegetable version.', 'veg_lolipop.jfif'),
(39, 9, 'Dry Manchurian', 75, 'Veg Dry Manchurian is a tasty Indo Chinese dish of fried veggie balls in a spicy, sweet and tangy sauce. There are 2 popular variations of making veg manchurian.', 'manchurian.jfif'),
(40, 9, 'Garlic Bread', 95, 'Garlic bread consists of bread, topped with garlic and olive oil or butter and may include additional herbs, such as oregano or chives. It is then either grilled until toasted or baked in a conventional or bread oven.', 'garlic_bread.jfif'),
(41, 10, 'Dry Manchurian', 75, 'Veg Dry Manchurian is a tasty Indo Chinese dish of fried veggie balls in a spicy, sweet and tangy sauce. There are 2 popular variations of making veg manchurian.', 'manchurian.jfif'),
(42, 10, 'Dragon Potato', 65, 'Dragon Potato is made by frying sliced potato dipped in a flour slurry and then sauteeing them with some flavourful sauces to give them the required spiciness and tinge. Dragon Potato is spicy, crispy and full of flavours. ', 'dragon potato.jpg'),
(43, 10, 'Noodles', 85, 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, stretched or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use. Noodles are usually cooked in boiling water, sometimes with cooking oil or salt added.', 'noodles.jfif'),
(44, 10, 'Pasta', 85, 'Pasta is a type of food typically made from an unleavened dough of wheat flour mixed with water or eggs, and formed into sheets or other shapes, then cooked by boiling or baking.', 'pasta.jfif'),
(45, 10, 'Fried Rice', 110, 'Fried rice is a dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as eggs, vegetables, seafood, or meat. It is often eaten by itself or as an accompaniment to another dish.', 'fried_rice.jfif'),
(46, 11, 'Italian Pizza', 90, 'Pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature.', 'pizza.png'),
(47, 11, 'Hot Dogs', 95, 'A hot dog is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself. The sausage used is a wiener or a frankfurter. The names of these sausages also commonly refer to their assembled dish. Some consider it to be a sandwich.', 'hotdog.jfif'),
(48, 11, 'Mexican Grilled Sandwich', 115, 'This classic Mexican sandwich, or torta, swaps the usual meat for colorful grilled summer vegetables. The traditional black bean spread adds protein and acts as a moisture barrier so the bread stays extra crispy.', 'mexican_grilled_sandwitches.jpg'),
(49, 12, 'Oreo Shake', 105, 'Its made of vanilla ice cream, Oreo cookies, milk, and chocolate sauce.', 'oreo.jfif'),
(50, 12, 'Falooda', 50, 'A falooda is an Indian version of a cold dessert made with noodles. It has origins in the Persian dish faloodeh, variants of which are found across West, Central, and South Asia. Traditionally it is made by mixing rose syrup, vermicelli, and sweet basil seeds with milk, often served with ice cream.', 'falooda.jpg'),
(51, 12, 'Kitkat Shake', 75, 'The kitkat shake has a luscious, chocolaty mouth-feel punctuated by crunchy titbits of Kit Kat. The rich taste and unique mouth-feel make it a special treat that is incomparable to other milkshakes.', 'kitkat.png'),
(52, 12, '5 Star Shake', 65, 'The 5-Star shake has a luscious, chocolaty mouth-feel punctuated by crunchy titbits of 5-Star. The rich taste and unique mouth-feel make it a special treat that is incomparable to other milkshakes.', 'five_star.jpg'),
(53, 12, 'Cold Coco', 50, 'Cold Coco milkshake is an ideal and perfect choice. It is loved by kids as well as adults.', 'cold_coco.jpg'),
(54, 13, 'Shrikhand', 175, 'Shrikhand is a traditional sweet of the Indian subcontinent made from strained yogurt. Also known as matho, it is often served as part of a thali or with puris. It is a traditional dessert in Gujarati and Marathi cuisine.', 'shrikhand_sfoo.jfif'),
(55, 13, 'Jalebi', 150, 'The south Asian variety is made by deep-frying maida flour batter in pretzel or circular shapes, which are then soaked in sugar syrup.', 'jalebi.jfif'),
(56, 13, 'Gulab Jamun', 125, 'Gulab jamun is a milk-solid-based sweet, originating in the Indian subcontinent and a type of mithai popular in India, Nepal, Pakistan, the Maldives, and Bangladesh, as well as Myanmar.', 'gulab_jamun.jfif'),
(57, 13, 'Penda', 195, 'Usually prepared in thick, semi-soft pieces, its main ingredients are khoa, sugar and traditional flavorings including cardamom seeds, pistachio nuts and saffron.', 'penda.png'),
(58, 13, 'Mohnthal', 75, 'Mohanthal is a traditional Gujarati mithai with the rich flavour and melt-in-the-mouth texture of ghee-roasted besan and sugar.', 'mohnthal.jpg'),
(59, 14, 'Vanilla Family Pack', 165, 'Ice Creams and Frozen Desserts Family Pack Box', 'family_pack.jpg'),
(60, 14, 'Brownie', 75, 'A chocolate brownie or simply a brownie is a square or rectangular chocolate baked confection. Brownies come in a variety of forms and may be either fudgy or cakey, depending on their density. Brownies often, but not always, have a glossy \"skin\" on their upper crust.', 'brownie.jfif'),
(61, 14, 'Kulfi', 15, 'Kulfi is a frozen dairy dessert originating in the Indian subcontinent in the 16th century. It is often described as \"traditional Indian ice cream\" and is a traditional sweet of the Indian subcontinent. In India, it is commonly sold by street vendors called kulfiwallahs.', 'kulfi.jpg'),
(62, 14, 'Chocolate Chips', 25, 'Chocolate chips or chocolate morsels are small chunks of sweetened chocolate, used as an ingredient in a number of desserts (notably chocolate chip cookies and muffins), in trail mix and less commonly in some breakfast foods such as pancakes.', 'choclate_chips.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `sub_category_id` int(5) NOT NULL,
  `category_id` int(5) NOT NULL,
  `sub_category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`sub_category_id`, `category_id`, `sub_category_name`) VALUES
(1, 1, 'Punjabi'),
(2, 1, 'South Indian'),
(3, 1, 'Gujarati'),
(4, 2, 'Thali'),
(5, 2, 'Combos'),
(6, 2, 'Soups'),
(7, 3, 'Chaat'),
(8, 3, 'Snacks'),
(9, 3, 'Starters'),
(10, 4, 'Chinese'),
(11, 4, 'Mexican'),
(12, 5, 'Shakes'),
(13, 5, 'Sweets'),
(14, 5, 'IceCreams');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(5) NOT NULL,
  `user_type_id` int(5) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_gender` varchar(6) NOT NULL,
  `user_date_of_birth` date NOT NULL,
  `user_contact_no` bigint(10) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_password` varchar(16) NOT NULL,
  `user_address` text NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `user_aadhar_photo` varchar(100) NOT NULL,
  `user_license_photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_type_id`, `user_name`, `user_gender`, `user_date_of_birth`, `user_contact_no`, `user_email`, `user_password`, `user_address`, `user_photo`, `user_aadhar_photo`, `user_license_photo`) VALUES
(1, 1, 'Anthony Christian', 'Male', '2001-11-08', 9875624627, 'akash@gmail.com', '12345678', 'Amreli, Gujarat', '1.jpg', '1.jpg', '1.jpg'),
(2, 1, 'Yash Gada', 'Male', '2002-02-07', 7573086400, 'yashgada0702@gmail.com', 'Yashgada@0702', '401, Kunal Heights, Summair Club Road, Jamnagar', 'yg1.JPG', 'yg1.JPG', 'yg1.JPG'),
(3, 1, 'Poojan Shah', 'Male', '2001-09-18', 7228598719, 'poojanshahh1809@gmail.com', 'Poojanshahh@1809', '26/312, Gayatri Appartment, Sola Road, Naranpura, Ahmedabad-13.', '7.jpg', '7.jpg', '7.jpg'),
(4, 2, 'Priyank Haria', 'Male', '2002-01-06', 8200567980, 'priyankharia567@gmail.com', 'Priyank@567', 'FF5 Chinmay Crystal Opposit -Vastrapur lake, Vastrapur, Ahmedabad, Gujarat 380015', '1.jpg', '2.jpg', '3.jpg'),
(5, 2, 'Tejas Parekh', 'Male', '1993-07-07', 7228988476, 'tejasbarber11@gmail.com', 'Tejasbarber@11', '2, Hina Complex, Parasnagar, Naranpura, Ahmedabad-13', 't-4.jpg', '7.jpg', '4.jpg'),
(6, 2, 'Shruti Arora', 'Female', '1999-02-11', 9428647822, 'shrutiarora1102@gmail.com', 'Shrutiarora@1102', '26/374, Gayatri Appartment, Navrangpura, Ahmedabad-380009', '7.jpg', '4.jpg', '2.jpg'),
(7, 2, 'Parth Patel', 'Male', '1995-06-15', 8757154707, 'pathpatel1506@gmail.com', 'Parthpatel!1506', 'Manav Mandir Road, Memnagar, Ahemdabad-380013', '7.jpg', '8.jpg', '5.jpg'),
(8, 2, 'Viraj Mehta', 'Male', '2007-07-14', 9876543404, 'virajmehta05@gmail.com', 'Virajmehta@05', '3002 , gold crest, shilaj ,ahmedabad-380019', '6.jpg', '5.jpg', '4.jpg'),
(9, 2, 'Shivani Patel', 'Female', '2000-07-04', 9475565250, 'shivanipatel07@gmail.com', 'Shivanipatel@07', '30/12, shivalik complex,science city, ahmedabad-380011', 't-4.jpg', '3.jpg', '1.jpg'),
(10, 2, 'Jayraj Jadeja', 'Male', '2008-06-25', 7461237491, 'jayrajadeja01@gmail.com', 'Jayrajjadeja@01', '26/34, Gayatri complex, Navrangpura, Ahmedabad-380009', '5.jpg', '7.jpg', '2.jpg'),
(11, 4, 'Tushar Parmar', 'Male', '1998-02-17', 9640012454, 'tushar05@gmail.com', 'Tushar@05', 'Ram Mandir Road, Memnagar, Ahemdabad-380013', '7.jpg', '6.jpg', '8.jpg'),
(12, 4, 'Jayesh Patel', 'Male', '1996-05-14', 7476081741, 'jayeshpatel@gmail.com', 'Jayesh@05', '259/314, paras nagar, ahmedabad-380013', '5.jpg', '1.jpg', '2.jpg'),
(13, 4, 'Meet Pramod', 'Male', '1993-10-07', 8221476543, 'meetpramod07@gmail.com', 'Meetpramod@07', '288/312, Shruti Appartment, Memnagar, Ahmedabad-380014', '6.jpg', '7.jpg', '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_type`
--

CREATE TABLE `tbl_user_type` (
  `user_type_id` int(5) NOT NULL,
  `user_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_type`
--

INSERT INTO `tbl_user_type` (`user_type_id`, `user_type`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Stall Owner'),
(4, 'Delivery Agent');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `vendor_id` int(2) NOT NULL,
  `vendor_name` varchar(15) NOT NULL,
  `vendor_details` text NOT NULL,
  `vendor_logo` varchar(50) NOT NULL,
  `vendor_address` text NOT NULL,
  `vendor_email` varchar(15) NOT NULL,
  `vendor_password` varchar(15) NOT NULL,
  `vendor_contact` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`vendor_id`, `vendor_name`, `vendor_details`, `vendor_logo`, `vendor_address`, `vendor_email`, `vendor_password`, `vendor_contact`) VALUES
(1, 'Jalaram Khaman ', 'A quick and anytime-to-eat Gujarati snack – spongy, flavorful and rich in texture; made out of soaked moong dal, very nutritious in zinc, irons and proteins.', 'jalaram_khaman.png', '1,Maharshi Avenue,Ankur Char Rasta, Ankur Rd, Rang Jyot Society, Naranpura, Ahmedabad, Gujarat 380013', 'jalaramkhaman@g', 'Jalaramkhaman', 8754698712),
(2, 'Dragon Chinese ', 'Hello! Dragons is friendly local Chinese takeaway, striving to provide you with affordable', 'dragon.png', 'FF5 Chinmay Crystal Opposit -Vastrapur lake, Vastrapur, Ahmedabad, Gujarat 380015', 'dragon121@gmail', 'Dragon121', 7285476384),
(3, 'Janta Fast Food', 'Janta Fast Food And Namkeen at Maninagar makes sure one has a great food experience by offering highly palatable food', 'janta.png', 'Sterling Hospital Rd, Nilmani Society, Memnagar, Ahmedabad, Gujarat 380052', 'jantafast07@gma', 'Jantafast07', 7574994600),
(4, 'Prem Mevad', 'A perfect place for a sweet treat whenever in the neighbourhood is Prem Mevad Ice Cream at Odhav, Ahmedabad', 'prem_mevad.jpg', ' Gh 5 Chopati, Nr. Hotel Gokul, Sector 16, Ahmedabad, Gujarat 382016', 'premmevad@gmail', 'Premmevad', 8975468465),
(5, 'Jay Shankar', 'A Mixture of authentic and common Indian vegetables fried and sauteed in a variety of Indian spices. This dish serves a major part of Indian main course', 'jay_shankar.jpg', 'Shop No. 2, Hinglaj Complex, Thaltej Rd, Gam, Thaltej, Ahmedabad, Gujarat 380054', 'jayshankar01@gm', 'Jayshankar01', 8200457637),
(6, 'Rolitos', 'Fast Food And Namkeen at Memnagar makes sure one has a great food experience by offering highly palatable food', 'rolitos.jpg', 'Manav Mandir Road, Memnagar, Ahemdabad-380013', 'rolitosfood2017', 'Rolitosfood@201', 7246598127),
(7, 'Chaat Cart', 'Chaat Cart are Manchester’s original chaat-wallahs! A true family business, this husband and wife team are inspired by a love of travel and food tasted along the way', 'chaat_cart.jpg', 'Near Someshwar Complex, Mithakali Six Road, Ahemedabad-380009', 'chaatchart001@g', 'Chaatchart@001', 74760949200),
(8, 'Bhaaji', 'Dhaba or Punjabi dhaba is a roadside restaurant in India. They are on highways, generally serve local cuisine, and also serve as truck stops.', 'bhaaji.png', 'Near H L College, Commerce Six Road, Ahmedabad-380013', 'bhaajidhaba@gma', 'Bhaajidhaba', 7154698750),
(9, 'Nukkad', 'Nukkad is also known as mini manek chowk located at gurukul.', 'nukkad.jpg', 'Alpha One Mall, Gurukul, Ahmedabad, Gujarat 380052', 'nukkad@gmail.co', 'Nukkad@123', 9464986751),
(10, 'Babuji', 'The cuisine is famous for dosas, vadas, idlis and uttapams with Sambhar- the usual combination of these items', 'babuji.jpg', '3 Gold leaf complex, Near Mardia Plaza, Chimanlal Girdharlal Rd, Ahmedabad, Gujarat 380009', 'babuji007@gmail', 'Babuji@007', 7471717378);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_product`
--

CREATE TABLE `tbl_vendor_product` (
  `vendor_product_id` int(2) NOT NULL,
  `vendor_id` int(2) NOT NULL,
  `product_id` int(2) NOT NULL,
  `product_price` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vendor_product`
--

INSERT INTO `tbl_vendor_product` (`vendor_product_id`, `vendor_id`, `product_id`, `product_price`) VALUES
(1, 1, 13, 70),
(2, 1, 14, 60),
(3, 1, 16, 70),
(4, 1, 12, 65),
(5, 1, 31, 15),
(6, 2, 23, 85),
(7, 2, 41, 75),
(8, 2, 42, 75),
(9, 2, 43, 82),
(10, 2, 19, 135),
(11, 3, 26, 25),
(12, 3, 27, 25),
(13, 3, 28, 25),
(14, 3, 33, 15),
(15, 3, 34, 15),
(16, 4, 53, 50),
(17, 4, 50, 50),
(18, 4, 61, 15),
(19, 4, 62, 25),
(20, 4, 59, 165),
(21, 5, 17, 129),
(22, 5, 18, 139),
(23, 5, 56, 125),
(24, 5, 54, 175),
(25, 5, 20, 115);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user report`
-- (See below for the actual view)
--
CREATE TABLE `user report` (
`user_id` int(5)
,`user_name` varchar(20)
,`user_gender` varchar(6)
,`user_date_of_birth` date
,`user_contact_no` bigint(10)
,`user_email` varchar(30)
,`user_address` text
,`user_type` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user type report`
-- (See below for the actual view)
--
CREATE TABLE `user type report` (
`user_type_id` int(5)
,`user_type` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vendor product report`
-- (See below for the actual view)
--
CREATE TABLE `vendor product report` (
`vendor_product_id` int(2)
,`vendor_name` varchar(15)
,`product_name` varchar(25)
,`product_price` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vendor report`
-- (See below for the actual view)
--
CREATE TABLE `vendor report` (
`vendor_id` int(2)
,`vendor_name` varchar(15)
,`vendor_details` text
,`vendor_address` text
,`vendor_email` varchar(15)
,`vendor_contact` bigint(10)
);

-- --------------------------------------------------------

--
-- Structure for view `cart report`
--
DROP TABLE IF EXISTS `cart report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cart report`  AS SELECT `tbl_cart`.`cart_id` AS `cart_id`, `tbl_product`.`product_name` AS `product_name`, `tbl_user`.`user_name` AS `user_name`, `tbl_cart`.`cart_qty` AS `cart_qty`, `tbl_cart`.`product_price` AS `product_price` FROM ((`tbl_product` join `tbl_cart` on(`tbl_cart`.`product_id` = `tbl_product`.`product_id`)) join `tbl_user` on(`tbl_cart`.`user_id` = `tbl_user`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `category report`
--
DROP TABLE IF EXISTS `category report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `category report`  AS SELECT `tbl_category`.`category_id` AS `category_id`, `tbl_category`.`category_name` AS `category_name` FROM `tbl_category` ;

-- --------------------------------------------------------

--
-- Structure for view `feedback report`
--
DROP TABLE IF EXISTS `feedback report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `feedback report`  AS SELECT `tbl_feedback`.`feedback_id` AS `feedback_id`, `tbl_user`.`user_name` AS `user_name`, `tbl_feedback`.`feedback_details` AS `feedback_details`, `tbl_feedback`.`feedback_date_time` AS `feedback_date_time` FROM (`tbl_feedback` join `tbl_user` on(`tbl_feedback`.`user_id` = `tbl_user`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `order detail report`
--
DROP TABLE IF EXISTS `order detail report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order detail report`  AS SELECT `tbl_order_details`.`order_detail_id` AS `order_detail_id`, `tbl_product`.`product_name` AS `product_name`, `tbl_order_details`.`product_price` AS `product_price` FROM (`tbl_order_details` join `tbl_product` on(`tbl_order_details`.`product_id` = `tbl_product`.`product_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `order master report`
--
DROP TABLE IF EXISTS `order master report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order master report`  AS SELECT `tbl_order_master`.`order_id` AS `order_id`, `tbl_user`.`user_name` AS `user_name`, `tbl_order_master`.`order_date_time` AS `order_date_time`, `tbl_order_master`.`order_amt` AS `order_amt`, `tbl_order_master`.`order_status` AS `order_status` FROM (`tbl_order_master` join `tbl_user` on(`tbl_order_master`.`user_id` = `tbl_user`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `payment report`
--
DROP TABLE IF EXISTS `payment report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `payment report`  AS SELECT `tbl_payment`.`payment_id` AS `payment_id`, `tbl_user`.`user_name` AS `user_name`, `tbl_payment`.`order_id` AS `order_id`, `tbl_payment`.`payment_date_time` AS `payment_date_time`, `tbl_payment`.`payment_mode` AS `payment_mode` FROM (`tbl_payment` join `tbl_user` on(`tbl_payment`.`user_id` = `tbl_user`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `product report`
--
DROP TABLE IF EXISTS `product report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product report`  AS SELECT `tbl_product`.`product_id` AS `product_id`, `tbl_product`.`product_name` AS `product_name`, `tbl_product`.`product_price` AS `product_price`, `tbl_product`.`product_details` AS `product_details`, `tbl_sub_category`.`sub_category_name` AS `sub_category_name` FROM (`tbl_product` join `tbl_sub_category` on(`tbl_product`.`sub_category_id` = `tbl_sub_category`.`sub_category_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `subcategory report`
--
DROP TABLE IF EXISTS `subcategory report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `subcategory report`  AS SELECT `tbl_sub_category`.`sub_category_id` AS `sub_category_id`, `tbl_sub_category`.`sub_category_name` AS `sub_category_name`, `tbl_category`.`category_name` AS `category_name` FROM (`tbl_sub_category` join `tbl_category` on(`tbl_sub_category`.`category_id` = `tbl_category`.`category_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `user report`
--
DROP TABLE IF EXISTS `user report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user report`  AS SELECT `tbl_user`.`user_id` AS `user_id`, `tbl_user`.`user_name` AS `user_name`, `tbl_user`.`user_gender` AS `user_gender`, `tbl_user`.`user_date_of_birth` AS `user_date_of_birth`, `tbl_user`.`user_contact_no` AS `user_contact_no`, `tbl_user`.`user_email` AS `user_email`, `tbl_user`.`user_address` AS `user_address`, `tbl_user_type`.`user_type` AS `user_type` FROM (`tbl_user` join `tbl_user_type` on(`tbl_user`.`user_type_id` = `tbl_user_type`.`user_type_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `user type report`
--
DROP TABLE IF EXISTS `user type report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user type report`  AS SELECT `tbl_user_type`.`user_type_id` AS `user_type_id`, `tbl_user_type`.`user_type` AS `user_type` FROM `tbl_user_type` ;

-- --------------------------------------------------------

--
-- Structure for view `vendor product report`
--
DROP TABLE IF EXISTS `vendor product report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vendor product report`  AS SELECT `tbl_vendor_product`.`vendor_product_id` AS `vendor_product_id`, `tbl_vendor`.`vendor_name` AS `vendor_name`, `tbl_product`.`product_name` AS `product_name`, `tbl_vendor_product`.`product_price` AS `product_price` FROM ((`tbl_vendor_product` join `tbl_vendor` on(`tbl_vendor_product`.`vendor_id` = `tbl_vendor`.`vendor_id`)) join `tbl_product` on(`tbl_vendor_product`.`product_id` = `tbl_product`.`product_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vendor report`
--
DROP TABLE IF EXISTS `vendor report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vendor report`  AS SELECT `tbl_vendor`.`vendor_id` AS `vendor_id`, `tbl_vendor`.`vendor_name` AS `vendor_name`, `tbl_vendor`.`vendor_details` AS `vendor_details`, `tbl_vendor`.`vendor_address` AS `vendor_address`, `tbl_vendor`.`vendor_email` AS `vendor_email`, `tbl_vendor`.`vendor_contact` AS `vendor_contact` FROM `tbl_vendor` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `tbl_order_master`
--
ALTER TABLE `tbl_order_master`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user_type`
--
ALTER TABLE `tbl_user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `tbl_vendor_product`
--
ALTER TABLE `tbl_vendor_product`
  ADD PRIMARY KEY (`vendor_product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_detail_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_order_master`
--
ALTER TABLE `tbl_order_master`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_user_type`
--
ALTER TABLE `tbl_user_type`
  MODIFY `user_type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  MODIFY `vendor_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_vendor_product`
--
ALTER TABLE `tbl_vendor_product`
  MODIFY `vendor_product_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
