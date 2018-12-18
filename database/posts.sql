-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 02:25 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `postr`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `likes`) VALUES
(6, 14, 'Hi, my second post', 'This is my second post. I&#39;m currently carrying out tests to see if the app is functioning as i intended and coded it to.', '2018-02-04 02:36:48', 1),
(9, 17, 'Iheanyi Just Joined', 'I am Iheanyi, I just joined PostR. For testing purposes though. Might soon crap out.', '2018-02-04 16:51:15', 1),
(10, 18, 'Biose Nonso Just Joined', 'I am Biose Nonso. I am a programmer from ejigbo, Lagos. I schooled in Ghana. #iamaprogrammer I just applied for the flutterwave internship and I am quite confident that with God&#39;s help I will be successful.', '2018-02-05 17:25:54', 1),
(11, 14, 'My Bootstrap 4 challenges', 'The bootstrap 4 class - &#34;invalid-feedback&#34; had it&#39;s display set to none by default, I still can&#39;t figure why. I tried to set it to &#34;inline-block&#34; but it seemed the bootstrap 4 specificity was slightly more than mine and it didn&#39;t work. I eventually got a little angry and did span.invalid-feedback { display: inline-block !important; } then it worked. Whew! I had to do the !important... The bootstrap 4 though looks nicer than the previous versions', '2018-02-06 03:43:47', 1),
(12, 14, 'Flash messages', 'I&#39;m trying to inspect a flash message that&#39;s the reason for this post. The message that says &#34;Post added successfully&#34; because it seems that the class = &#34;alert alert-success&#34; is not exactly what i coded there probably made a few mistakes that&#39;s why the alert-success class doesn&#39;t work.', '2018-02-06 03:50:43', 0),
(13, 14, 'Flash messages continued', 'I did a little change to see if i can correct that. I stored the class in a php variable, maybe a little slip-up on my part caused the issue.', '2018-02-06 04:09:14', 0),
(16, 14, 'Hurray! It&#39;s fixed', 'I&#39;m less happy than the title suggests though. I eventually got it to work, it turns out it was a problem with single and double quotes. Mehnnnn something as trivial as that. Maybe feeling irritated just didn&#39;t make me spot it on time.', '2018-02-06 04:21:45', 1),
(17, 14, 'CRUD soon to be complete. Delete remains', 'PostR has got basic functionality working at least till this point. I&#39;ve done Create, Read. I&#39;d start working on an Update and Delete functionality soon. I can say though that I&#39;ve learnt quite a lot from doing this. Heavy OOP, MVC Workflow and I&#39;m proud that&#39;s this is built on my framework so, there&#39;s some use for it. I&#39;d work on a social network next, it won&#39;t be a production stuff though, it&#39;d serve to give me a more in-depth understanding of the MVC Workflow, How web technologies come beautifully together to do some awesome thing, and more proof that my framework is useful.', '2018-02-06 04:26:42', 0),
(18, 16, 'I need someone to create a site for Verdant Comics', 'Verdant comic readers have suggested I create a website for Verdant comics that it&#39;ll create more reach and increase readership and be a good indicator that I am really taking Verdant Comics seriously, I recently asked someone to do the site for me and he&#39;s been uh... busy of sorts... I almost think he&#39;s not serious, so I need an awesome web developer and pay is not so good but then creativity and learning opportunities present itself and you&#39;d get part of the earnings of Verdant comics for some agreed period of time.', '2018-02-06 15:35:13', 1),
(21, 14, 'PostR is officially completed', 'PostR now has the basic CRUD functionality. Even though there are little bugs like our JS confirmation on the delete button on the show post page and the about link in the navbar when a user is logged in, and then so many simple features that would make it nicer to use like clicking on the name of the writer to see a timeline of his/her posts, A simple individual details page too would be nice, probably some like button so a writer can know how many folks are interested in their post, form below show.php for comments would not be bad either. Meanwhile, I&#39;ve learnt a great deal, it was fun, challenging, engaging. In the end, it produced beautiful software, I now have a good idea how the MVC works, how they magnificently interact to make stuff nice... Even the Login page, what if someone forgets his/her password, then what? so much features to add but i&#39;d take a break now, I&#39;ve learnt the most important things.', '2018-02-08 01:07:08', 0),
(23, 16, 'Verdant Comics now relaunched as Caramon Comics', '<p>Hi everyone,<br />\r\n<br />\r\nWe are glad to announce that from now henceforth,<em><strong> verdant comics</strong></em> has now changed its name to <strong>Caramon comics</strong> as a result of branding and registration purposes. We hope that you guys will be comfortable with this change.</p>\r\n\r\n<p><q>Do unto others what you would have them do unto you.</q><br />\r\n<br />\r\n<strong>Thanks for the loyalty :)</strong></p>', '2018-09-04 10:37:02', 2),
(24, 21, 'A new experience', 'I&#39;m Nonso. I just joined PostR, it&#39;s a whole new experience for me, I&#39;m super excited about it though.<br />\r\nI really hope to learn from everyone&#39;s post and to really engage with the community.<br />\r\n<br />\r\nRegards,<br />\r\nSuper stoked to be here!', '2018-10-12 04:27:37', 1),
(25, 16, 'New Post', 'Hi, I&#39;m making a new post', '2018-11-10 20:34:00', 1),
(26, 16, 'Just Added CKEDITOR for rich text', '<p>Hello everyone,<br />\r\n<br />\r\nI&#39;m rolling out a rich text feature for post creation. This would enable the creation of engaging posts.<br />\r\n<br />\r\nYou can now <strong>bold text</strong>; <em>italicize text</em>; <code>write code</code>;&nbsp;<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<caption>\r\n	<h2><strong>Make a table and a heading</strong></h2>\r\n	</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td>1. Do something</td>\r\n			<td>Check</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n<a href=\"http://github.com/kingdageek\">Insert a link</a><br />\r\n<br />\r\nAnd many more features. <strong>Explore</strong>.<br />\r\n<br />\r\n<strong>Rich text baby</strong>,</p>\r\n\r\n<hr />\r\n<p><br />\r\nThank you</p>', '2018-11-16 17:32:15', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
