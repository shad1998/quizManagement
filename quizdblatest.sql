-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2018 at 05:20 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `viewresult` (IN `uname` VARCHAR(20))  select * from result where username=uname$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `ans_id` varchar(10) DEFAULT NULL,
  `aid` varchar(10) DEFAULT NULL,
  `answer` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`ans_id`, `aid`, `answer`) VALUES
('101', '1001', 'Selector'),
('101', '1002', 'Property'),
('101', '1003', 'Value'),
('101', '1004', 'All of the above'),
('102', '1005', 'Any inline style sheet takes highest priority. So, it will override any rule defined in tags or rules defined in any external style sheet file.'),
('102', '1006', ' Any rule defined in tags will override rules defined in any external style sheet file.'),
('102', '1007', 'Any rule defined in external style sheet file takes lowest priority, and rules defined in this file will be applied only when above two rules are not applicable.'),
('102', '1008', 'All of the above'),
('103', '1009', 'This color value is specified using the rgb( ) property.'),
('103', '1010', 'This property takes three values, one each for red, green, and blue.'),
('103', '1011', 'The value can be an integer between 0 and 255 or a percentage.'),
('103', '1012', 'All of the above'),
('104', '1013', 'background-color'),
('104', '1014', 'background-image'),
('104', '1015', 'background-repeat'),
('104', '1016', 'background-position'),
('105', '1017', 'color'),
('105', '1018', 'direction'),
('105', '1019', 'letter-spacing'),
('105', '1020', 'word-spacing'),
('106', '1021', 'border'),
('106', '1022', 'height'),
('106', '1023', 'width'),
('106', '1024', '-moz-opacity'),
('107', '1025', ':border-collapse'),
('107', '1026', ':border-spacing'),
('107', '1027', ':caption-side'),
('107', '1028', ':empty-cells'),
('108', '1029', ':margin'),
('108', '1030', ':margin-bottom'),
('108', '1031', ':margin-top'),
('108', '1032', ':margin-left'),
('109', '1033', ' E[attr^=value]'),
('109', '1034', ' E[attr$=value]'),
('109', '1035', ' E[attr*=value]'),
('109', '1036', ' None of these'),
('110', '1037', 'margin'),
('110', '1038', 'spacing'),
('110', '1039', 'padding'),
('110', '1040', 'border'),
('111', '1041', 'a:link'),
('111', '1042', 'a:active'),
('111', '1043', 'a:focus'),
('111', '1044', 'a:visited'),
('112', '1045', 'text-color'),
('112', '1046', 'text:color'),
('112', '1047', 'color'),
('112', '1048', 'font-color'),
('113', '1049', 'list-style-type:upper-roman;'),
('113', '1050', 'list-type:roman;'),
('113', '1051', 'list-bullet-type:roman-numerals;'),
('113', '1052', 'list-style:roman;'),
('114', '1053', 'color'),
('114', '1054', 'background-color'),
('114', '1055', 'background:color'),
('114', '1056', 'color:background'),
('115', '1057', 'list-image:'),
('115', '1058', 'list-style-image:'),
('115', '1059', 'list-image-src:'),
('115', '1060', 'image-list:'),
('116', '1061', 'display:left;'),
('116', '1062', 'display:inline;'),
('116', '1063', 'display:horizontal;'),
('116', '1064', 'None of the above'),
('117', '1065', 'position and bottom'),
('117', '1066', 'display and float'),
('117', '1067', 'position and float'),
('117', '1068', 'display and bottom'),
('118', '1069', 'tr:even{background-color:#CCC;}'),
('118', '1070', 'td:even{background-color:#CCC;}'),
('118', '1071', 'td:nth-child(even){background-color:#CCC;}'),
('118', '1072', 'tr:nth-child(even){background-color:#CCC;}'),
('119', '1073', 'bottom-border:solid;'),
('119', '1074', 'border-bottom-style:solid;'),
('119', '1075', 'border-bottom-weight:solid;'),
('119', '1076', 'None of the above.'),
('120', '1077', '#special{ }'),
('120', '1078', '.special{ }'),
('120', '1079', 'id.special{ }'),
('120', '1080', 'element.id.special{ }'),
('201', '2001', 'document.location=\'http://www.newlocation.com\';'),
('201', '2002', 'browser.location=\'http://www.newlocation.com\';'),
('201', '2003', 'navigator.location=\'http://www.newlocation.com\';'),
('201', '2004', 'window.location=\'http://www.newlocation.com\';'),
('202', '2005', 'length()'),
('202', '2006', 'size()'),
('202', '2007', 'index()'),
('202', '2008', 'None of these'),
('203', '2009', 'toUpperCase()'),
('203', '2010', 'toUpper()'),
('203', '2011', 'changeCase(case)'),
('203', '2012', 'None of these'),
('204', '2013', 'charAt()'),
('204', '2014', 'charCodeAt()'),
('204', '2015', 'concat()'),
('204', '2016', 'indexOf()'),
('205', '2017', 'slice()'),
('205', '2018', 'split()'),
('205', '2019', 'replace()'),
('205', '2020', 'search()'),
('206', '2021', 'anchor()'),
('206', '2022', 'big()'),
('206', '2023', 'blink()'),
('206', '2024', 'italics()'),
('207', '2025', 'interface'),
('207', '2026', 'throws'),
('207', '2027', ' program'),
('207', '2028', 'short'),
('208', '2029', 'pop()'),
('208', '2030', 'push()'),
('208', '2031', 'reduce()'),
('208', '2032', 'reduceRight()'),
('209', '2033', 'reverse()'),
('209', '2034', 'shift()'),
('209', '2035', 'slice()'),
('209', '2036', 'some()'),
('210', '2037', '< script=\'java\'> '),
('210', '2038', '< javascript>'),
('210', '2039', '< script> '),
('210', '2040', '< js> '),
('211', '2041', '&'),
('211', '2042', '\\'),
('211', '2043', '-'),
('211', '2044', '%'),
('212', '2045', 'Any of the below'),
('212', '2046', 'number in JavaScript, derived by dividing number by a negative number. '),
('212', '2047', 'number in JavaScript, derived by dividing number by zero.'),
('212', '2048', 'number in JavaScript, derived by dividing negative number by zero '),
('213', '2049', 'arr[arr.length] = value '),
('213', '2050', 'arr[arr.length+1] = new Arrays() '),
('213', '2051', 'arr[arr.length-1] = value '),
('213', '2052', ' arr[arr.length*1] = value '),
('214', '2053', 'JavaScript is a lightweight, interpreted programming language.'),
('214', '2054', 'JavaScript is designed for creating network-centric applications.'),
('214', '2055', 'JavaScript is complementary to and integrated with Java.'),
('214', '2056', 'All'),
('215', '2057', ' A callback is a plain JavaScript function passed to some method as an argument or option.'),
('215', '2058', 'Some callbacks are just events, called to give the user a chance to react when a certain state is triggered.'),
('216', '2059', 'All except none'),
('217', '2060', 'None'),
('216', '2061', 'None'),
('216', '2062', 'valueOf()'),
('216', '2063', 'toString()'),
('216', '2064', 'toSource()'),
('217', '2065', 'concat()'),
('217', '2066', 'replace()'),
('217', '2067', 'match()'),
('217', '2068', 'search()'),
('218', '2069', 'using typeof operator'),
('218', '2070', 'using getType function'),
('218', '2071', 'Both of the above'),
('218', '2072', 'None of these'),
('219', '2073', 'toLocaleUpperCase()'),
('219', '2074', 'toUpperCase()'),
('219', '2075', 'toString()'),
('219', '2076', 'substring()'),
('220', '2077', 'toFixed()'),
('220', '2078', 'toExpotential()'),
('220', '2079', 'toString()'),
('220', '2080', 'toLocaleString()'),
('301', '3001', 'output'),
('301', '3002', 'placeholder'),
('301', '3003', 'autofocus'),
('301', '3004', 'required'),
('302', '3005', 'Content-Type: text/event-stream'),
('302', '3006', 'Content-Type: text/application-stream'),
('302', '3007', 'Content-Type: text/data-stream'),
('302', '3008', 'None of these'),
('303', '3009', 'accesskey'),
('303', '3010', 'key'),
('303', '3011', 'contextmenu'),
('303', '3012', 'contextkey'),
('304', '3013', 'offlineprint'),
('304', '3014', 'onprint'),
('304', '3015', 'onafterprint'),
('304', '3016', 'onbeforeprint'),
('305', '3017', 'ondrag'),
('305', '3018', 'ondragleave'),
('305', '3019', 'ondragover'),
('305', '3020', 'ondragstart'),
('306', '3021', 'onhaschange'),
('306', '3022', 'oninput'),
('306', '3023', 'onload'),
('306', '3024', 'onloaddata'),
('307', '3025', 'Hyper Throttle Manly Language '),
('307', '3026', 'How to make language '),
('307', '3027', 'Hyper Text Markup Language'),
('307', '3028', 'How to move language '),
('308', '3029', 'Method'),
('308', '3030', 'Action'),
('308', '3031', 'Both'),
('308', '3032', 'None'),
('309', '3033', 'Document object model '),
('309', '3034', 'Data object model'),
('309', '3035', 'Document Oriented model'),
('309', '3036', 'None of these'),
('310', '3037', 'How to organise the page'),
('310', '3038', 'How to display page'),
('310', '3039', 'How to display message box on page'),
('310', '3040', 'None'),
('311', '3041', 'World Wide Web Consortium '),
('311', '3042', 'world wide web corporation'),
('311', '3043', 'world wide web company'),
('311', '3044', 'world wide web controlling'),
('312', '3045', 'local server '),
('312', '3046', 'client server '),
('312', '3047', ' 3 tier '),
('312', '3048', 'None of these'),
('313', '3049', 'Hyper Text Markup Language'),
('313', '3050', 'High Text Markup Language'),
('313', '3051', 'Hyper Tabular Markup Language'),
('313', '3052', 'None of these'),
('314', '3053', 'How to organise the page'),
('314', '3054', 'How to display the page'),
('314', '3055', 'How to display message box on page'),
('314', '3056', 'None of these'),
('315', '3057', 'Local-server'),
('315', '3058', 'Client-server'),
('315', '3059', '3-tier'),
('315', '3060', 'None of these'),
('316', '3061', 'No, there is no such terms as Empty Element'),
('316', '3062', 'Empty elements are element with no data'),
('316', '3063', 'No, it is not valid to use Empty Element'),
('316', '3064', 'None of these'),
('317', '3065', 'size'),
('317', '3066', 'len'),
('317', '3067', 'maxlen'),
('317', '3068', 'None of these'),
('318', '3069', 'dl tag'),
('318', '3070', 'ul tag'),
('318', '3071', 'list tag'),
('318', '3072', 'ol tag'),
('319', '3073', 'method used to represent numbers in a character'),
('319', '3074', 'method used to represent character in a number'),
('319', '3075', 'a system that consists of a code which pairs each character with a pattern,sequence of natural numbers or electrical pulse in order to transmit the data'),
('319', '3076', 'None of these'),
('320', '3077', 'BASE element'),
('320', '3078', 'HEAD element'),
('320', '3079', 'Both (a) and (b)'),
('320', '3080', 'None of these'),
('401', '4001', 'The jQuery is very lightweight library - about 19KB in size ( Minified and gzipped ).'),
('401', '4002', 'The jQuery has cross-browser support, and works well in IE 6.0+, FF 2.0+, Safari 3.0+, Chrome and Opera 9.0+'),
('401', '4003', 'The jQuery supports CSS3 selectors and basic XPath syntax.'),
('401', '4004', 'All of the above'),
('402', '4005', 'last()'),
('402', '4006', 'get()'),
('402', '4007', 'pop()'),
('402', '4008', 'None of these'),
('403', '4009', 'substr()'),
('403', '4010', 'getString()'),
('403', '4011', 'slice()'),
('403', '4012', 'None of these'),
('404', '4013', 'deleteAttr( name )'),
('404', '4014', 'removeAttr( name )'),
('404', '4015', 'removeAttribute( name )'),
('404', '4016', 'None of these'),
('405', '4017', 'setContent( val )'),
('405', '4018', 'val( val )'),
('405', '4019', 'setValue( val )'),
('405', '4020', 'None of These'),
('406', '4021', 'locate( selector )'),
('406', '4022', 'find( selector)'),
('406', '4023', 'search( selector )'),
('406', '4024', 'None of these'),
('407', '4025', 'parents( selector )'),
('407', '4026', 'prevAll( selector)'),
('407', '4027', 'siblings( selector )'),
('407', '4028', 'None of these'),
('408', '4029', 'getCSSHeight( )'),
('408', '4030', 'getHeight( )'),
('408', '4031', 'outerHeight( [margin] )'),
('408', '4032', 'None of these'),
('409', '4033', 'ready(url, [data], [callback] )'),
('409', '4034', 'load( url, [data], [callback] )'),
('409', '4035', 'reload(url, [data], [callback] )'),
('409', '4036', 'None of these'),
('410', '4037', 'ajaxStart( callback )'),
('410', '4038', 'ajaxSuccess( callback )'),
('410', '4039', 'ajaxSend( callback )'),
('410', '4040', 'ajaxStop(callback)'),
('411', '4041', 'hover() '),
('411', '4042', 'stopPropagation() '),
('411', '4043', '.toggle() '),
('411', '4044', 'trigger() '),
('412', '4045', 'serialize() '),
('412', '4046', 'serializeAll() '),
('412', '4047', 'synchronized() '),
('412', '4048', 'none of these '),
('413', '4049', 'Client'),
('413', '4050', 'Server'),
('413', '4051', 'Both a & b'),
('413', '4052', 'None of these'),
('414', '4053', 'Javascript'),
('414', '4054', 'Java'),
('414', '4055', 'HTML'),
('414', '4056', 'VBScript'),
('415', '4057', 'hover()'),
('415', '4058', 'all()'),
('415', '4059', 'toggle()'),
('415', '4060', 'each()'),
('416', '4061', '1'),
('416', '4062', '2'),
('416', '4063', '3'),
('416', '4064', '4'),
('417', '4065', 'Dough'),
('417', '4066', 'Session'),
('417', '4067', 'Dazzler'),
('417', '4068', 'None of these'),
('418', '4069', ' jQuery.holdReady() '),
('418', '4070', ' jQuery.ready() '),
('418', '4071', ' jQuery.hold()'),
('418', '4072', 'jQuery.holdready()'),
('419', '4073', 'push()'),
('419', '4074', 'pop()'),
('419', '4075', 'pushStack()'),
('419', '4076', 'popStack()'),
('420', '4077', 'do while'),
('420', '4078', 'for'),
('420', '4079', 'for each'),
('420', '4080', 'None of these'),
('121', '1081', 'selector'),
('121', '1082', 'attribute'),
('121', '1083', 'value'),
('121', '1084', 'tag'),
('321', '3081', 'SGMT'),
('321', '3082', 'SGML'),
('321', '3083', 'SGMD'),
('321', '3084', 'None of the above'),
('122', '1085', ''),
('122', '1086', ''),
('122', '1087', ''),
('122', '1088', '');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `sub_id` varchar(10) DEFAULT NULL,
  `q_id` varchar(10) NOT NULL,
  `question` varchar(300) DEFAULT NULL,
  `ans_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`sub_id`, `q_id`, `question`, `ans_id`) VALUES
('s1', '101', 'Which of the following is a component of CSS style rule?', '1004'),
('s1', '102', 'Which of the following is a true about CSS style overriding?', '1008'),
('s1', '103', 'Which of the following is correct about RGB Values format of CSS colors?', '1012'),
('s1', '104', 'Which of the following property is used to control the repetition of an image in the background?', '1015'),
('s1', '105', 'Which of the following property is used to set the text direction?', '1018'),
('s1', '106', 'Which of the following property is used to set the width of an image border?', '1021'),
('s1', '107', 'Which of the following property of a table element controls the placement of the table caption?', '1027'),
('s1', '108', 'Which of the following property specifies the left margin of an element?', '1032'),
('s1', '109', 'Which of the following selector selects all elements of E that have the attribute attr that end with the given value?', '1034'),
('s1', '110', 'What property do you use to create spacing between HTML elements? ', '1037'),
('s1', '111', 'For users that use the tab key to navigate websites, what property shows moving from one element to another using this behavior?', '1043'),
('s1', '112', 'What is the property used to set the class\'s text color?', '1047'),
('s1', '113', 'What property would you use to change the list style to show roman numerals instead of normal numbers?', '1049'),
('s1', '114', 'What property do you use to set the background color of an image', '1054'),
('s1', '115', 'What property would you use to set an image instead of a standard bullet in a list?', '1058'),
('s1', '116', 'How would you style an element so that the next element would appear right next to it not underneath it if both elements widths were collectively smaller than the container element?', '1062'),
('s1', '117', 'If you want to make a cool footer that attaches to the bottom of the user\'s window and not just the bottom of the page, what two properties would you use?', '1065'),
('s1', '118', 'How would you style table rows to have alternating background colors?', '1072'),
('s1', '119', 'How would you only create a border below an HTML element?', '1074'),
('s1', '120', 'How to set the style for a specific HTML element with an id of \'special\'?', '1077'),
('s1', '121', 'In CSS what does h1 can be called as ', '1081'),
('s2', '201', 'Which of the following is the correct syntax to redirect a url using JavaScript?', '2004'),
('s2', '202', 'Which built-in method returns the length of the string?', '2005'),
('s2', '203', 'Which built-in method returns the calling string value converted to upper case?', '2009'),
('s2', '204', 'Which of the following function of String object returns a number indicating the Unicode value of the character at the given index?', '2014'),
('s2', '205', 'Which of the following function of String object extracts a section of a string and returns a new string?', '2017'),
('s2', '206', 'Which of the following function of String object creates a string to be displayed in a big font as if it were in a <big> tag?', '2022'),
('s2', '207', 'Which of the following is not a reserved word in JavaScript?', '2027'),
('s2', '208', 'Which of the following function of Array object applies a function simultaneously against two values of the array (from left-to-right) as to reduce it to a single value?', '2031'),
('s2', '209', 'Which of the following function of Array object removes the first element from an array and returns that element?', '2034'),
('s2', '210', 'To insert a JavaScript into an HTML page, which tag is used?', '2039'),
('s2', '211', 'Which of the below is used in Java script to insert special characters?', '2042'),
('s2', '212', 'What is negative infinity in Java script?', '2048'),
('s2', '213', 'How to append a value to an array of Java Script?', '2049'),
('s2', '214', 'Which of the following statements is valid for the features of JavaScript?', '2056'),
('s2', '215', 'Which of the following is a true statement for JavaScript callbacks?', '2059'),
('s2', '216', 'Which of the following method of Boolean object returns a string depending upon the value of the object?', '2063'),
('s2', '217', 'Which of the following function of String object would compare a regular expression with a string?', '2067'),
('s2', '218', 'Which of the following will return the type of the arguments passed to a function?', '2069'),
('s2', '219', 'Which of the following function of String object returns the capitalized string while respecting the current locale?', '2073'),
('s2', '220', 'Which of the following functions of Number object would return a string version of the number that may change according to the browser\'s locale settings?', '2080'),
('s3', '301', 'Which of the following tag automatically focus one particular form field in HTML5?', '3003'),
('s3', '302', 'Which of the following is correct Content-type header that a server side script should send for SSE in HTML5?', '3005'),
('s3', '303', 'Which of the following attribute specifies a keyboard shortcut to access an element in HTML5?', '3009'),
('s3', '304', 'Which of the following attribute triggers event after the document is printed?', '3015'),
('s3', '305', 'Which of the following attribute triggers event when an element leaves a valid drop target?', '3018'),
('s3', '306', 'Which of the following attribute triggers event when media data is loaded?', '3024'),
('s3', '307', 'What does HTML stands for?', '3027'),
('s3', '308', 'The attribute of &ltform&gt tag', '3031'),
('s3', '309', 'DOM stands for', '3033'),
('s3', '310', 'Markup tags tell the web browser', '3038'),
('s3', '311', 'What is W3C?', '3041'),
('s3', '312', 'What is the correct HTML tag for adding a background color?', '3046'),
('s3', '313', 'HTML stands for?', '3049'),
('s3', '314', 'Markup tags tell the web browser', '3054'),
('s3', '315', 'www is based on which model?', '3058'),
('s3', '316', 'What are Empty elements and is it valid?', '3062'),
('s3', '317', 'Which of the following attributes of text box control allow to limit the maximum character?', '3067'),
('s3', '318', 'How can you make a numbered list?', '3072'),
('s3', '319', 'Character encoding is', '3075'),
('s3', '320', 'A much better approach to establish the base URL is to use', '3077'),
('s3', '321', 'HTML is subset of ', '3082'),
('s4', '401', 'Which of the following is correct about jQuery?', '4004'),
('s4', '402', 'Which built-in method removes the last element from an array and returns that element?', '4007'),
('s4', '403', 'Which built-in method returns the characters in a string beginning at the specified location?', '4009'),
('s4', '404', 'Which of the following jQuery method removes an attribute from each of the matched elements?', '4014'),
('s4', '405', 'Which of the following jQuery method set the value of an element?', '4018'),
('s4', '406', 'Which of the following jQuery method searches for descendent elements that match the specified selectors?', '4022'),
('s4', '407', 'Which of the following jQuery method gets a set of elements containing all of the unique siblings of each of the matched set of elements?', '4027'),
('s4', '408', 'Which of the following jQuery method returns the outer height (including the border) of an element?', '4031'),
('s4', '409', 'Which of the following jQuery method can be used to make a ajax call?', '4034'),
('s4', '410', 'Which of the following jQuery method can be used to attach a function to be executed whenever AJAX request completed successfully?', '4038'),
('s4', '411', ' ________________ is use for alternately expand and collapse a page element', '4044'),
('s4', '412', 'The ________ method acts on JQuery objects and translate the match DOM element into query string that can be pass along with AJAX request.', '4045'),
('s4', '413', 'Jquery is a library for _______ scripting.', '4049'),
('s4', '414', 'jquery written in which scripting language?', '4053'),
('s4', '415', 'The ______ Method acts as explicit iterator.', '4060'),
('s4', '416', 'How many types of selectors available in jquery.', '4063'),
('s4', '417', 'To deal with cookies in jQuery we have to use ______ cookie plugin', '4065'),
('s4', '418', 'Using ________ function, we can hold or release the execution of jQuery\'s ready event.', '4069'),
('s4', '419', 'The ________ method works for accepting an array of DOM elements and pushes them into a stack.', '4075'),
('s4', '420', 'The .each method is the more convenient form of _______ loop.', '4078');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `username` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `correct` int(11) DEFAULT NULL,
  `timeSubmitted` datetime NOT NULL,
  `sub_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`username`, `total`, `correct`, `timeSubmitted`, `sub_id`) VALUES
('shiv_619', 20, 5, '2018-11-23 16:37:00', 's3'),
('shiv_619', 20, 2, '2018-11-23 16:39:17', 's2'),
('shiv_619', 20, 2, '2018-11-23 16:40:08', 's2'),
('shiv_619', 20, 1, '2018-11-23 19:32:59', 's4'),
('shiv_619', 20, 1, '2018-11-23 19:36:14', 's4'),
('shiv_619', 20, 1, '2018-11-23 19:36:50', 's4'),
('shiv_619', 20, 1, '2018-11-23 19:37:05', 's4'),
('shiv_619', 20, 1, '2018-11-23 19:37:24', 's1'),
('shiv_619', 20, 1, '2018-11-23 19:39:01', 's1'),
('shiv_619', 20, 1, '2018-11-23 19:39:31', 's1'),
('shiv_619', 20, 12, '2018-11-24 09:19:19', 's1'),
('shiv_619', 20, 1, '2018-11-24 09:24:00', 's1'),
('shiv_619', 20, 1, '2018-11-24 09:24:41', 's1'),
('shiv_619', 20, 1, '2018-11-24 09:27:48', 's1'),
('shiv_619', 20, 1, '2018-11-24 11:12:35', 's1'),
('shiv_619', 20, 1, '2018-11-24 11:46:31', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:05:08', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:06:53', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:09:16', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:10:50', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:11:58', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:16:01', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:16:23', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:17:01', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:17:23', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:20:36', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:21:23', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:21:37', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:22:39', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:23:05', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:23:35', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:25:40', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:26:40', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:26:51', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:27:08', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:27:29', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:27:44', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:28:59', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:29:25', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:29:50', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:30:35', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:31:40', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:32:01', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:32:54', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:33:22', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:34:35', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:36:07', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:36:34', 's1'),
('shiv_619', 20, 2, '2018-11-24 12:38:11', 's1'),
('shiv_619', 20, 0, '2018-11-24 17:56:36', 's3'),
('shiv_619', 20, 0, '2018-11-24 17:56:53', 's1'),
('shiv_619', 20, 1, '2018-11-26 08:46:42', 's1'),
('shiv_619', 20, 1, '2018-11-26 08:52:33', 's2'),
('shiv_619', 20, 1, '2018-11-26 08:54:31', 's3'),
('shiv_619', 20, 1, '2018-11-26 08:57:23', 's4'),
('shiv_619', 20, 1, '2018-11-26 17:21:57', 's1'),
('shiv_619', 20, 1, '2018-11-26 17:25:21', 's1'),
('shiv_619', 20, 1, '2018-11-26 17:35:59', 's3'),
('shiv_619', 20, 1, '2018-11-26 17:37:14', 's3'),
('shiv_619', 121, 2, '2018-11-26 17:43:01', 's1'),
('shiv_619', 121, 2, '2018-11-26 17:43:31', 's1'),
('shiv_619', 121, 2, '2018-11-26 17:43:34', 's1'),
('shiv_619', 21, 2, '2018-11-26 17:44:04', 's1'),
('shiv_619', 21, 2, '2018-11-26 17:44:41', 's1'),
('shiv_619', 21, 2, '2018-11-26 17:46:09', 's1'),
('shiv_619', 21, 2, '2018-11-26 17:47:16', 's1'),
('shiv_619', 21, 2, '2018-11-26 17:47:39', 's1'),
('shiv_619', 20, 2, '2018-11-26 17:54:49', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:55:23', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:55:40', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:55:58', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:56:20', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:56:48', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:56:56', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:57:17', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:57:30', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:57:58', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:58:04', 's2'),
('shiv_619', 20, 2, '2018-11-26 17:59:10', 's2'),
('shiv_619', 21, 2, '2018-11-26 18:31:35', 's1'),
('shiv_619', 21, 1, '2018-11-26 18:34:17', 's1'),
('shiv_619', 21, 3, '2018-11-27 07:13:46', 's3'),
('shiv_619', 20, 1, '2018-11-27 07:14:09', 's4'),
('shiv_619', 20, 2, '2018-11-27 07:14:25', 's2');

--
-- Triggers `result`
--
DELIMITER $$
CREATE TRIGGER `timesub` BEFORE INSERT ON `result` FOR EACH ROW set new.timeSubmitted=now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_name` varchar(100) NOT NULL,
  `sub_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_name`, `sub_id`) VALUES
('CSS', 's1'),
('JS', 's2'),
('HTML', 's3'),
('JAVA', 's4');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `user_pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `user_email`, `name`, `user_pwd`) VALUES
('shiv_619', 'shad16cs@cmrit.ac.in', 'Shivendra', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `sub_id` (`sub_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`timeSubmitted`),
  ADD KEY `sub_id` (`sub_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
