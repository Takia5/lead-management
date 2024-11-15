-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 15, 2024 at 08:26 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lead_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'c575a8cb-4b0f-48f1-b4b1-0ef4d7e4e801', 'database', 'default', '{\"uuid\":\"c575a8cb-4b0f-48f1-b4b1-0ef4d7e4e801\",\"displayName\":\"App\\\\Listeners\\\\SendMissedFollowUpNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:44:\\\"App\\\\Listeners\\\\SendMissedFollowUpNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:32:\\\"App\\\\Events\\\\FollowUpStatusChanged\\\":1:{s:8:\\\"followUp\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\FollowUp\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'InvalidArgumentException: Driver [kimflower92@gmail.com] not supported. in C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Manager.php:109\nStack trace:\n#0 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(109): Illuminate\\Support\\Manager->createDriver(\'kimflower92@gma...\')\n#1 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Manager.php(80): Illuminate\\Notifications\\ChannelManager->createDriver(\'kimflower92@gma...\')\n#2 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Support\\Manager->driver(\'kimflower92@gma...\')\n#3 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(NULL, \'3be48270-3b37-4...\', Object(App\\Notifications\\MissedFollowUpNotification), \'kimflower92@gma...\')\n#4 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#5 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#6 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow(Array, Object(App\\Notifications\\MissedFollowUpNotification))\n#7 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send(Array, Object(App\\Notifications\\MissedFollowUpNotification))\n#8 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(358): Illuminate\\Notifications\\ChannelManager->send(NULL, Object(App\\Notifications\\MissedFollowUpNotification))\n#9 C:\\Users\\admin\\Documents\\laravel-app\\app\\Listeners\\SendMissedFollowUpNotification.php(26): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#10 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\CallQueuedListener.php(114): App\\Listeners\\SendMissedFollowUpNotification->handle(Object(App\\Events\\FollowUpStatusChanged))\n#11 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#12 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#18 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#19 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#21 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#22 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#23 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#25 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(440): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(390): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(141): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(124): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#37 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\Users\\admin\\Documents\\laravel-app\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#45 {main}', '2024-11-14 18:10:14'),
(2, '7f76aa87-5bf5-4a10-b9bc-9ebdc618b99c', 'database', 'default', '{\"uuid\":\"7f76aa87-5bf5-4a10-b9bc-9ebdc618b99c\",\"displayName\":\"App\\\\Listeners\\\\SendMissedFollowUpNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:44:\\\"App\\\\Listeners\\\\SendMissedFollowUpNotification\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:32:\\\"App\\\\Events\\\\FollowUpStatusChanged\\\":1:{s:8:\\\"followUp\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\FollowUp\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'InvalidArgumentException: Driver [kimflower92@gmail.com] not supported. in C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Manager.php:109\nStack trace:\n#0 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(109): Illuminate\\Support\\Manager->createDriver(\'kimflower92@gma...\')\n#1 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Manager.php(80): Illuminate\\Notifications\\ChannelManager->createDriver(\'kimflower92@gma...\')\n#2 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Support\\Manager->driver(\'kimflower92@gma...\')\n#3 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(NULL, \'7ed52668-4746-4...\', Object(App\\Notifications\\MissedFollowUpNotification), \'kimflower92@gma...\')\n#4 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#5 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#6 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow(Array, Object(App\\Notifications\\MissedFollowUpNotification))\n#7 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send(Array, Object(App\\Notifications\\MissedFollowUpNotification))\n#8 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(358): Illuminate\\Notifications\\ChannelManager->send(NULL, Object(App\\Notifications\\MissedFollowUpNotification))\n#9 C:\\Users\\admin\\Documents\\laravel-app\\app\\Listeners\\SendMissedFollowUpNotification.php(26): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#10 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\CallQueuedListener.php(114): App\\Listeners\\SendMissedFollowUpNotification->handle(Object(App\\Events\\FollowUpStatusChanged))\n#11 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#12 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#18 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#19 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#21 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#22 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#23 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#25 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(440): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(390): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(177): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(141): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(124): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#37 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\Users\\admin\\Documents\\laravel-app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\Users\\admin\\Documents\\laravel-app\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#45 {main}', '2024-11-14 18:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `follow_ups`
--

DROP TABLE IF EXISTS `follow_ups`;
CREATE TABLE IF NOT EXISTS `follow_ups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` bigint UNSIGNED NOT NULL,
  `scheduled_at` timestamp NOT NULL,
  `status` enum('Pending','Completed','Missed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `follow_ups_lead_id_foreign` (`lead_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follow_ups`
--

INSERT INTO `follow_ups` (`id`, `lead_id`, `scheduled_at`, `status`, `created_at`, `updated_at`) VALUES
(14, 9, '2024-12-04 21:00:00', 'Pending', '2024-11-15 17:25:01', '2024-11-15 17:25:01'),
(13, 8, '2024-11-26 21:00:00', 'Pending', '2024-11-15 17:23:02', '2024-11-15 17:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(7, 'default', '{\"uuid\":\"a2ff1291-605b-4c82-afbf-3739f269fc34\",\"displayName\":\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:60:\\\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\\\":3:{s:10:\\\"notifiable\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Lead\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:44:\\\"App\\\\Notifications\\\\FollowUpMissedNotification\\\":2:{s:11:\\\"\\u0000*\\u0000followUp\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\FollowUp\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"lead\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"56c4669c-3715-49aa-8468-dc45ce9b3376\\\";}s:4:\\\"data\\\";a:4:{s:7:\\\"message\\\";s:91:\\\"The follow-up for lead John Doe scheduled on 2024-11-15 10:00:00 has been marked as Missed.\\\";s:7:\\\"lead_id\\\";i:1;s:12:\\\"follow_up_id\\\";i:1;s:12:\\\"scheduled_at\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-15 10:00:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1731688611, 1731688611),
(6, 'default', '{\"uuid\":\"2b1feddd-974c-4e4f-a4cf-0b3ed3366520\",\"displayName\":\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:60:\\\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\\\":3:{s:10:\\\"notifiable\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Lead\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:44:\\\"App\\\\Notifications\\\\FollowUpMissedNotification\\\":2:{s:11:\\\"\\u0000*\\u0000followUp\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\FollowUp\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"lead\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"7a8f6974-787a-42ec-ab69-960cacf0f35d\\\";}s:4:\\\"data\\\";a:4:{s:7:\\\"message\\\";s:91:\\\"The follow-up for lead John Doe scheduled on 2024-11-15 10:00:00 has been marked as Missed.\\\";s:7:\\\"lead_id\\\";i:1;s:12:\\\"follow_up_id\\\";i:1;s:12:\\\"scheduled_at\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-15 10:00:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1731687449, 1731687449),
(5, 'default', '{\"uuid\":\"6f1d252c-2b77-461b-af9e-e354d2ab0654\",\"displayName\":\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:60:\\\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\\\":3:{s:10:\\\"notifiable\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Lead\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:44:\\\"App\\\\Notifications\\\\FollowUpMissedNotification\\\":2:{s:11:\\\"\\u0000*\\u0000followUp\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\FollowUp\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"lead\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"fbf367e4-b364-4fa4-847c-b809b9e2430a\\\";}s:4:\\\"data\\\";a:4:{s:7:\\\"message\\\";s:91:\\\"The follow-up for lead John Doe scheduled on 2024-11-15 10:00:00 has been marked as Missed.\\\";s:7:\\\"lead_id\\\";i:1;s:12:\\\"follow_up_id\\\";i:1;s:12:\\\"scheduled_at\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-15 10:00:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1731687449, 1731687449),
(8, 'default', '{\"uuid\":\"1e723001-0aa5-4243-bbe5-53dda989a090\",\"displayName\":\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:60:\\\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\\\":3:{s:10:\\\"notifiable\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Lead\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:44:\\\"App\\\\Notifications\\\\FollowUpMissedNotification\\\":2:{s:11:\\\"\\u0000*\\u0000followUp\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\FollowUp\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"lead\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"00a9c8a8-b236-4aec-abe2-fc093f74e9f5\\\";}s:4:\\\"data\\\";a:4:{s:7:\\\"message\\\";s:91:\\\"The follow-up for lead John Doe scheduled on 2024-11-15 10:00:00 has been marked as Missed.\\\";s:7:\\\"lead_id\\\";i:1;s:12:\\\"follow_up_id\\\";i:1;s:12:\\\"scheduled_at\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-15 10:00:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1731688611, 1731688611),
(9, 'default', '{\"uuid\":\"469beebb-1c23-4145-8a2b-50940b5f0b21\",\"displayName\":\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:60:\\\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\\\":3:{s:10:\\\"notifiable\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Lead\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:44:\\\"App\\\\Notifications\\\\FollowUpMissedNotification\\\":2:{s:11:\\\"\\u0000*\\u0000followUp\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\FollowUp\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"lead\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"51bfb9b3-9d2c-4c2e-b078-84a7c5c8d00b\\\";}s:4:\\\"data\\\";a:4:{s:7:\\\"message\\\";s:91:\\\"The follow-up for lead John Doe scheduled on 2024-11-15 10:00:00 has been marked as Missed.\\\";s:7:\\\"lead_id\\\";i:1;s:12:\\\"follow_up_id\\\";i:1;s:12:\\\"scheduled_at\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-15 10:00:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1731693670, 1731693670),
(10, 'default', '{\"uuid\":\"b9bdbce3-4ffa-4857-bf5d-e989c163dd36\",\"displayName\":\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:60:\\\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\\\":3:{s:10:\\\"notifiable\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Lead\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:44:\\\"App\\\\Notifications\\\\FollowUpMissedNotification\\\":2:{s:11:\\\"\\u0000*\\u0000followUp\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\FollowUp\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"lead\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"18f4b537-14e8-426f-91da-efaba8a96555\\\";}s:4:\\\"data\\\";a:4:{s:7:\\\"message\\\";s:91:\\\"The follow-up for lead John Doe scheduled on 2024-11-15 10:00:00 has been marked as Missed.\\\";s:7:\\\"lead_id\\\";i:1;s:12:\\\"follow_up_id\\\";i:1;s:12:\\\"scheduled_at\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-15 10:00:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1731693670, 1731693670);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE IF NOT EXISTS `leads` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `leads_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(9, 'Peter Doe', 'peter@gmail.com', '078434534533', '2024-11-15 17:24:45', '2024-11-15 17:24:45'),
(8, 'Jane Doe', 'jane@gmail.com', '0783434343', '2024-11-15 17:22:28', '2024-11-15 17:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '0001_01_01_000001_create_cache_table', 1),
(10, '0001_01_01_000002_create_jobs_table', 1),
(11, '2024_11_13_232543_create_leads_table', 1),
(12, '2024_11_13_232634_create_follow_ups_table', 1),
(13, '2024_11_13_233117_create_users_table', 1),
(14, '2024_11_14_095046_create_sessions_table', 1),
(15, '2024_11_14_144642_create_personal_access_tokens_table', 1),
(16, '2024_11_14_162922_update_role_default_in_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API Token', '4855ab7c648501923525d6164c39ba70dfc173773f705129a1084070cb5edaaa', '[\"*\"]', '2024-11-14 17:57:57', NULL, '2024-11-14 13:48:24', '2024-11-14 17:57:57'),
(2, 'App\\Models\\User', 2, 'API Token', '00be90ae8109a0a4566e751d00b5ca9d9c418aaaf1c44fa4e8058d43b635bddc', '[\"*\"]', '2024-11-15 03:30:39', NULL, '2024-11-14 17:50:49', '2024-11-15 03:30:39'),
(3, 'App\\Models\\User', 2, 'API Token', 'bab6d89149de81fbe7e7597fe5dea5de7dedbaab4f7edaa24c3b06819a5a1f17', '[\"*\"]', NULL, NULL, '2024-11-14 19:45:34', '2024-11-14 19:45:34'),
(4, 'App\\Models\\User', 3, 'API Token', '39b1b9a1186f4d0497dc541803407961cc0df60545bfd0c75c6b07331ec0a0d2', '[\"*\"]', NULL, NULL, '2024-11-14 19:48:59', '2024-11-14 19:48:59'),
(5, 'App\\Models\\User', 3, 'API Token', '684ad233b36e87e5c6f247c426b603ba920d73a21f01a35d71293dbf9f5104fc', '[\"*\"]', NULL, NULL, '2024-11-14 19:50:13', '2024-11-14 19:50:13'),
(6, 'App\\Models\\User', 2, 'API Token', '8da6e2c2a924e629269e7c60d1709cad6a15aa4832328db316857c0f19a4529c', '[\"*\"]', '2024-11-15 17:03:06', NULL, '2024-11-14 20:08:46', '2024-11-15 17:03:06'),
(7, 'App\\Models\\User', 4, 'API Token', 'c74439f92198828887c4da488b3403b849c42e5b866a24174a07885515e9b6d6', '[\"*\"]', NULL, NULL, '2024-11-14 20:17:05', '2024-11-14 20:17:05'),
(8, 'App\\Models\\User', 5, 'API Token', 'd0b2f765ebc67d747e5066e6a2aace4da23baa191c9afbb74e3f42b67808a71e', '[\"*\"]', '2024-11-14 20:21:19', NULL, '2024-11-14 20:19:16', '2024-11-14 20:21:19'),
(9, 'App\\Models\\User', 2, 'API Token', 'e49076d802cce8e8db84f651c826bb698e1ceb5fca983a13ef6686cef6873043', '[\"*\"]', NULL, NULL, '2024-11-14 20:47:05', '2024-11-14 20:47:05'),
(10, 'App\\Models\\User', 2, 'API Token', '4864c53b60fe94fea79a669d33c5c3207e6cb4d756222ae8583b988ab00c847a', '[\"*\"]', '2024-11-14 21:28:51', NULL, '2024-11-14 20:55:19', '2024-11-14 21:28:51'),
(11, 'App\\Models\\User', 2, 'API Token', '24e09d230a8cb60748475a434cdf09dc7abaed9839f9732efbc67a8444d61718', '[\"*\"]', '2024-11-14 21:39:04', NULL, '2024-11-14 21:29:52', '2024-11-14 21:39:04'),
(12, 'App\\Models\\User', 2, 'API Token', '8aac86a37ba18b7a475690d457ddff88f5800aa62a3dbc143be756a41ae6bf81', '[\"*\"]', '2024-11-14 21:50:37', NULL, '2024-11-14 21:39:59', '2024-11-14 21:50:37'),
(13, 'App\\Models\\User', 3, 'API Token', '1c8684431d18191a5e45885d0e4663f19e0354cd61480c5682faf99d2b1d6c2e', '[\"*\"]', '2024-11-14 21:49:31', NULL, '2024-11-14 21:49:18', '2024-11-14 21:49:31'),
(14, 'App\\Models\\User', 2, 'API Token', '398fec82535afe2850b8d7fc494160d70c1fe76988cee981725e830d7be7cc2c', '[\"*\"]', '2024-11-14 21:55:12', NULL, '2024-11-14 21:51:45', '2024-11-14 21:55:12'),
(15, 'App\\Models\\User', 2, 'API Token', 'eb766c785c299129043b3025f388a4d50ebeb5f2e66fe904004ac3edefa37594', '[\"*\"]', '2024-11-14 22:18:50', NULL, '2024-11-14 22:15:09', '2024-11-14 22:18:50'),
(16, 'App\\Models\\User', 2, 'API Token', '9286b371d645facd18eeacbd43e269ce4934dc69b35331dc0dced4c3e744fd17', '[\"*\"]', '2024-11-14 22:37:57', NULL, '2024-11-14 22:19:20', '2024-11-14 22:37:57'),
(17, 'App\\Models\\User', 2, 'API Token', '239cffd94ec731e0101ca69c829add1cf4acf7562154b9ea55c0e2fb2e2fa662', '[\"*\"]', '2024-11-14 22:47:31', NULL, '2024-11-14 22:38:55', '2024-11-14 22:47:31'),
(18, 'App\\Models\\User', 2, 'API Token', '5e01c7df2a2dc610fd997437bf51dae59d0934e607cd854cd2d32f0f438f523d', '[\"*\"]', '2024-11-14 22:52:27', NULL, '2024-11-14 22:48:46', '2024-11-14 22:52:27'),
(19, 'App\\Models\\User', 2, 'API Token', 'e9d2cca097a7e7a92486f4c5d548862f6d4008ecd9a823ea0c7f8d65f2db6273', '[\"*\"]', '2024-11-15 03:29:11', NULL, '2024-11-15 03:21:22', '2024-11-15 03:29:11'),
(20, 'App\\Models\\User', 2, 'API Token', '88299bf2b8eb829626932789e4dc849f6812f0855066c7a8ba7f54df455fb2ae', '[\"*\"]', '2024-11-15 03:56:33', NULL, '2024-11-15 03:32:23', '2024-11-15 03:56:33'),
(21, 'App\\Models\\User', 2, 'API Token', 'aec09a4df34eff6b9d44c5d42e66ce174822ee0b359a10b1baf694a3eceb9454', '[\"*\"]', '2024-11-15 03:37:08', NULL, '2024-11-15 03:37:06', '2024-11-15 03:37:08'),
(22, 'App\\Models\\User', 2, 'API Token', 'cb93bcca3b3b2c3ebf4d765225235a2f7b9a5b7f455578999b493cdbcffad8f1', '[\"*\"]', '2024-11-15 03:41:14', NULL, '2024-11-15 03:41:11', '2024-11-15 03:41:14'),
(23, 'App\\Models\\User', 2, 'API Token', 'da2932c00937fbdc795d09e1a180e59a7cdafa2b77f77dde65dc62ce523ae124', '[\"*\"]', '2024-11-15 03:44:42', NULL, '2024-11-15 03:44:40', '2024-11-15 03:44:42'),
(24, 'App\\Models\\User', 2, 'API Token', '8ae0f29d0025cad530413c7bbab507ec78a63c52a83fc6f0189b7fbc454b7eaf', '[\"*\"]', '2024-11-15 03:46:36', NULL, '2024-11-15 03:46:34', '2024-11-15 03:46:36'),
(25, 'App\\Models\\User', 2, 'API Token', 'bdb4ea74033a1db6a0092bae0c680302cc16c934ae04cb3a6cb245734d95ccdb', '[\"*\"]', '2024-11-15 03:52:43', NULL, '2024-11-15 03:52:41', '2024-11-15 03:52:43'),
(26, 'App\\Models\\User', 2, 'API Token', 'abd473f30198b4625ef4cfeba9dcffc4de1fa8ac482cb9188668291bd0f95b13', '[\"*\"]', '2024-11-15 04:05:55', NULL, '2024-11-15 03:56:25', '2024-11-15 04:05:55'),
(27, 'App\\Models\\User', 2, 'API Token', '154614273aa287ed091361032eb7d472155d5272a810997a5dbaa34da70748bb', '[\"*\"]', '2024-11-15 04:23:23', NULL, '2024-11-15 04:06:40', '2024-11-15 04:23:23'),
(28, 'App\\Models\\User', 3, 'API Token', '2e24a1edee58998bdd52839e831dc240703808304e7358dc6c3f9970bd02b15f', '[\"*\"]', '2024-11-15 04:41:21', NULL, '2024-11-15 04:38:25', '2024-11-15 04:41:21'),
(29, 'App\\Models\\User', 3, 'API Token', '4aef558080598d9d351d51d6c6027b53ab35f3b79b7d12b9ee5cfc8f49eb699c', '[\"*\"]', '2024-11-15 05:36:14', NULL, '2024-11-15 05:16:50', '2024-11-15 05:36:14'),
(30, 'App\\Models\\User', 2, 'API Token', 'a75b5e60b3609bbb3d1b1206d188061e05138b6416309c2a20952991fb1eb314', '[\"*\"]', '2024-11-15 05:40:38', NULL, '2024-11-15 05:37:11', '2024-11-15 05:40:38'),
(31, 'App\\Models\\User', 2, 'API Token', 'a216466753fbf63103e87439948851323da220ed49406e70d8ac90fe4613953e', '[\"*\"]', '2024-11-15 05:51:44', NULL, '2024-11-15 05:42:10', '2024-11-15 05:51:44'),
(32, 'App\\Models\\User', 2, 'API Token', '20f7350d5b09ddb29631fc0c2363c22340e78523e21bfc63bd7dd4e8f45ebab6', '[\"*\"]', '2024-11-15 06:17:55', NULL, '2024-11-15 05:52:49', '2024-11-15 06:17:55'),
(33, 'App\\Models\\User', 2, 'API Token', '60cc05e07fbff188f8fa32904ed25fc3d809f70d3fec2baf4e758c8cb7055ab6', '[\"*\"]', '2024-11-15 06:23:49', NULL, '2024-11-15 06:18:40', '2024-11-15 06:23:49'),
(34, 'App\\Models\\User', 2, 'API Token', 'c9ce6f67dcd6742e1684878d3a7cb1583b54fe76cb19997ff24a6e50cd2948aa', '[\"*\"]', '2024-11-15 06:53:08', NULL, '2024-11-15 06:49:58', '2024-11-15 06:53:08'),
(35, 'App\\Models\\User', 2, 'API Token', 'e76f8cb77acb2f8f30d6b76360cea316b3833abc1e85043e73b79fdca82fb204', '[\"*\"]', '2024-11-15 07:07:10', NULL, '2024-11-15 06:57:55', '2024-11-15 07:07:10'),
(36, 'App\\Models\\User', 2, 'API Token', '6668afadc45d09514d886a14e3c80c8282c06c09c4d2ba20767cf9af58cd9242', '[\"*\"]', '2024-11-15 07:38:45', NULL, '2024-11-15 07:16:49', '2024-11-15 07:38:45'),
(37, 'App\\Models\\User', 2, 'API Token', 'aa7196109a8d9ad31533efe082ffe64ca397270401bccf690e5a45bd0738a768', '[\"*\"]', '2024-11-15 09:17:39', NULL, '2024-11-15 09:16:58', '2024-11-15 09:17:39'),
(38, 'App\\Models\\User', 2, 'API Token', '69c2ceb1cdbe9959ccc3237edc4192b18a692f821cfaeea19f64c3a7c119a075', '[\"*\"]', '2024-11-15 13:13:26', NULL, '2024-11-15 13:10:35', '2024-11-15 13:13:26'),
(39, 'App\\Models\\User', 2, 'API Token', '2b08f0d6b4e583352c730f629859b3eb941575295448679e13dc972a8a49d6b6', '[\"*\"]', '2024-11-15 13:22:00', NULL, '2024-11-15 13:17:03', '2024-11-15 13:22:00'),
(40, 'App\\Models\\User', 2, 'API Token', '8d7a43e30589b248bf6aa6058a6cd8d93da332620ab8f7191b5c07ad534feb19', '[\"*\"]', '2024-11-15 13:31:27', NULL, '2024-11-15 13:22:44', '2024-11-15 13:31:27'),
(41, 'App\\Models\\User', 2, 'API Token', 'ef3adc52f46f0475aa73caf91fc0758c9451e183b7260ecb7aa22e0aa38dcdfa', '[\"*\"]', '2024-11-15 13:32:16', NULL, '2024-11-15 13:32:16', '2024-11-15 13:32:16'),
(42, 'App\\Models\\User', 2, 'API Token', '496149257e5403e44f288f6121f9a2ba288ae32060cf0d40b1e5615b68a6ebc4', '[\"*\"]', '2024-11-15 14:59:40', NULL, '2024-11-15 13:36:20', '2024-11-15 14:59:40'),
(43, 'App\\Models\\User', 2, 'API Token', '1b5bd622901e85bc4230b28fe2199a04ab95950a16776bcd831bec4278c36716', '[\"*\"]', '2024-11-15 15:00:18', NULL, '2024-11-15 15:00:11', '2024-11-15 15:00:18'),
(44, 'App\\Models\\User', 2, 'API Token', '81e594e34430b6b5b1a69fd3d732c250fa7468a396b32b83dbf143d73c4b5225', '[\"*\"]', '2024-11-15 15:02:36', NULL, '2024-11-15 15:00:52', '2024-11-15 15:02:36'),
(45, 'App\\Models\\User', 3, 'API Token', '005ed60e8f297e0360e3088780654e8c443467532817bb1a81ea9a7e48b8a8fa', '[\"*\"]', '2024-11-15 15:09:48', NULL, '2024-11-15 15:03:15', '2024-11-15 15:09:48'),
(46, 'App\\Models\\User', 2, 'API Token', 'ec61d371980f570fa4b82d2c6a7aa396e2cf3a2b20358d11d21cc9b8c636c1de', '[\"*\"]', '2024-11-15 15:11:20', NULL, '2024-11-15 15:10:23', '2024-11-15 15:11:20'),
(47, 'App\\Models\\User', 2, 'API Token', '10d5c4d64da3b863c28bde48659781e862bdfc08fbe98de27f6df66140ca5fab', '[\"*\"]', '2024-11-15 15:19:19', NULL, '2024-11-15 15:19:08', '2024-11-15 15:19:19'),
(48, 'App\\Models\\User', 2, 'API Token', 'd9cb0ab3a0eff0681e759b428cb4693abf40ab76053f50edc1f4cb6402ea0b03', '[\"*\"]', '2024-11-15 15:24:28', NULL, '2024-11-15 15:24:27', '2024-11-15 15:24:28'),
(49, 'App\\Models\\User', 2, 'API Token', '9d69b7f6e2e727f4b12d6eff5038577a57b43a8c5dd3a9f3142aa5940dcd6c36', '[\"*\"]', '2024-11-15 15:28:10', NULL, '2024-11-15 15:25:56', '2024-11-15 15:28:10'),
(50, 'App\\Models\\User', 2, 'API Token', 'eb8c15f5c7331aaab2fbeaf98c4a81796e13bd588728bffb1e8907489d45dd8a', '[\"*\"]', '2024-11-15 15:32:08', NULL, '2024-11-15 15:28:48', '2024-11-15 15:32:08'),
(51, 'App\\Models\\User', 2, 'API Token', '0b6fc89efba4181f1dc21183eff1a3e86ae48f6bc12ce0d7affa47e1606f024c', '[\"*\"]', '2024-11-15 15:35:42', NULL, '2024-11-15 15:33:40', '2024-11-15 15:35:42'),
(52, 'App\\Models\\User', 6, 'API Token', 'be2ee5cbef84a1f0e68cf0b1946d5514d6987c128595e4aeeea3039324d76f28', '[\"*\"]', '2024-11-15 15:50:44', NULL, '2024-11-15 15:41:11', '2024-11-15 15:50:44'),
(53, 'App\\Models\\User', 7, 'API Token', '03cdbcec5a2a80ae5f87f69163cf9cbf9ce172cd4770c5ab74a2286a9a22bc5d', '[\"*\"]', '2024-11-15 16:07:39', NULL, '2024-11-15 15:59:48', '2024-11-15 16:07:39'),
(54, 'App\\Models\\User', 2, 'API Token', 'f70ab600ec71bd113b3eff83bd669d45a8349b02db98a5ba639b79d2c89cfe61', '[\"*\"]', '2024-11-15 16:27:36', NULL, '2024-11-15 16:18:38', '2024-11-15 16:27:36'),
(55, 'App\\Models\\User', 3, 'API Token', 'a7daa40a659dafa138b1fe06ce05e44d1b0dde3e6a5fafa4d35f690fc46cd97d', '[\"*\"]', '2024-11-15 16:32:43', NULL, '2024-11-15 16:31:04', '2024-11-15 16:32:43'),
(56, 'App\\Models\\User', 2, 'API Token', 'c536f209e12c43470aaa90bfbead4aecfe7ef8a59bcf70cfb77aa1030cc53c1d', '[\"*\"]', '2024-11-15 16:55:57', NULL, '2024-11-15 16:55:56', '2024-11-15 16:55:57'),
(57, 'App\\Models\\User', 8, 'API Token', '8ad972df14b29422577711a14c8fa4e83ef9395ab4e98043257f60984d5b05fa', '[\"*\"]', NULL, NULL, '2024-11-15 16:57:18', '2024-11-15 16:57:18'),
(58, 'App\\Models\\User', 9, 'API Token', '5bcac406045e18d040fb02a0dcfb77c465dc12f83ea5d5d18403fbb1196b568d', '[\"*\"]', '2024-11-15 16:58:52', NULL, '2024-11-15 16:58:49', '2024-11-15 16:58:52'),
(59, 'App\\Models\\User', 10, 'API Token', '9ef76f3019be61843682088636704e1ccfb9ed2ad234ae5b5114318afa159891', '[\"*\"]', '2024-11-15 17:03:49', NULL, '2024-11-15 17:03:46', '2024-11-15 17:03:49'),
(60, 'App\\Models\\User', 11, 'API Token', 'e3f84e4bd58217f6a8be6b2e4ac613395cebf27100d06fd032da10475c919809', '[\"*\"]', '2024-11-15 17:20:55', NULL, '2024-11-15 17:20:01', '2024-11-15 17:20:55'),
(61, 'App\\Models\\User', 11, 'API Token', 'a6331ee2631a25f00d97c51e2e5d2de4e6dd00331a46d4c0251045a46d61abf3', '[\"*\"]', '2024-11-15 17:23:15', NULL, '2024-11-15 17:22:04', '2024-11-15 17:23:15'),
(62, 'App\\Models\\User', 12, 'API Token', 'dce9fd2750bf22fb4fb7840732db646700364982d8980d70b035dc7b545bfd6f', '[\"*\"]', '2024-11-15 17:25:02', NULL, '2024-11-15 17:23:44', '2024-11-15 17:25:02'),
(63, 'App\\Models\\User', 13, 'API Token', '73cd072abcc435b52c28538de76918f5f5d7add6064027c1189a1d5320854081', '[\"*\"]', '2024-11-15 17:25:46', NULL, '2024-11-15 17:25:36', '2024-11-15 17:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0tmjL52L0tfX250VrTlhhuNjaLzoVvoiOy2VLhTw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEdZNkoyTFkxemhqSTRXMjNRYkhyUTVSaWtxYUNqbFFLcFhFTnF5QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731617166),
('5ao691UhcRfoDIw7Y28276I2jL2lHACwVrQkkWdF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienhLMDBmeldINEFscFRiNFFZMTNnZENHUGhNcFFscnBVWGVNRGFFYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731617447),
('g0X21rs43NozgIO9HP2wDlGRoe8NTiZYSniZWdFy', NULL, '127.0.0.1', 'PostmanRuntime/7.42.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2J6ZzNpUlh3S09GN1dVdGhSQ09VcnpFOGtrRGhrSzYzZ2RodGg5ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731617915),
('jPkk5a0KlBASY0vmuSuZULfBetlBZNVjbXVGzYYG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclhxWTJkTFN5eDRmRHhkYldMNGhYSFFUMHowc0ZoVE9RS29TMjlUQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731668943),
('xw9eMPUTtChHYIouEeTfhyrXPXotUFMDH1ygz5ff', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamZBNUE0NDBPRjFxdGZLSm9JYnlicGU0aFBndVRaMXdBTGFTSmVUVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731672992),
('3MugOhbgGHaca9kOrD19eGvx054Sw4r9GAt0cZSY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTR3TUxRbFdmNTJ2T2hrN0MwdE9PN1JhRm00WnlmR3g4b2ZjSTlGViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731680423);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Sales Manager','Sales Rep') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sales Rep',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(13, 'rep@leadmgt.com', '$2y$12$0r2m2nJtqg24ib9yvrjiAOX3iN2NIOaQ2csXNs7331AgGXPbqGH9S', 'Sales Rep', '2024-11-15 17:25:36', '2024-11-15 17:25:36'),
(12, 'manager@leadmgt.com', '$2y$12$ULeW0PrrDtO8dsCBhUpVFe.fFaB2CBFnozy5pRRENchVH5tbJqfz.', 'Sales Manager', '2024-11-15 17:23:44', '2024-11-15 17:23:44'),
(11, 'admin@leadmgt.com', '$2y$12$p5nfKFX9WECkvUZShuUPiuoLXv82RLi4nc2ivL/edJ8hN5YKwAUzC', 'Admin', '2024-11-15 17:20:01', '2024-11-15 17:20:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
