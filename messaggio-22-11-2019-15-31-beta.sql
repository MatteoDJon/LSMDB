-- Generation time: Fri, 22 Nov 2019 15:31:16 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_23
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `messaggio`;
CREATE TABLE `messaggio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `stake` int(11) NOT NULL,
  `testo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `destinatario_id` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `mittente_id` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `progetto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjc8oisxdpquj6vepecs2v3si1` (`progetto_id`),
  KEY `FKmcfl90j2lqnviat7jclgif75e` (`mittente_id`),
  KEY `FKsa18mpdmuvtef6b964f4wgc99` (`destinatario_id`),
  CONSTRAINT `FKjc8oisxdpquj6vepecs2v3si1` FOREIGN KEY (`progetto_id`) REFERENCES `progetto` (`id`),
  CONSTRAINT `FKmcfl90j2lqnviat7jclgif75e` FOREIGN KEY (`mittente_id`) REFERENCES `azienda` (`nomeAzienda`),
  CONSTRAINT `FKsa18mpdmuvtef6b964f4wgc99` FOREIGN KEY (`destinatario_id`) REFERENCES `azienda` (`nomeAzienda`)
) ENGINE=InnoDB AUTO_INCREMENT=15101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messaggio` VALUES ('15001','1983-01-03','1','8cf9ef185a8a9f62aaf6b477818f98d258e8d07c652f8cba333b6a6bc69076bb','09ed9e6d3bafd208cfebc739668265d4fda8c92bf3c6a9b5d63af9d3c2fee5e9','09ed9e6d3bafd208cfebc739668265d4fda8c92bf3c6a9b5d63af9d3c2fee5e9','10001'),
('15002','2013-12-23','0','461e77879f100af30b47199fe5a05726e9488c6137f4f988d213cddad004e6ce','0a41641f2c7da957d9abff9051c9018ac9bfa942c038b5a8c1f94377a53895a4','0a41641f2c7da957d9abff9051c9018ac9bfa942c038b5a8c1f94377a53895a4','10002'),
('15003','1977-04-24','6','0552d7620c015e16dfd1cd1755822ba6d183abf0c5c67b31ee692e002d585af0','0ccd1c6ffd825bd2a32c67e76646714a8f830ba09054a88b90bd70e2f79e1eff','0ccd1c6ffd825bd2a32c67e76646714a8f830ba09054a88b90bd70e2f79e1eff','10003'),
('15004','1990-06-12','8','ddff4dac852810153d85ca617602adfd26094938a1ad809338cba4ef7b12ef05','0fe654c29cb3c2139d4c1effaf3bbf2bedca1ca5babb4355a863889cee0abc9e','0fe654c29cb3c2139d4c1effaf3bbf2bedca1ca5babb4355a863889cee0abc9e','10004'),
('15005','1975-03-28','2','75624f13acaa7811c56c0dfa00e5c8f2cf338ccdd006aabb87e9bc13e40607ab','106282b345e7b628b69efd6caeac720fd4b3479a51208eec64f46fa73f78a560','106282b345e7b628b69efd6caeac720fd4b3479a51208eec64f46fa73f78a560','10005'),
('15006','2005-12-30','2','e910f86fc6df9b3ddd786efbfb6f8a11e1471946021f7afee20ba663867b9b0a','18ba30fe55b041fe6cc64a3f2cce60cce45b15830f4275d84434cb02624058a3','18ba30fe55b041fe6cc64a3f2cce60cce45b15830f4275d84434cb02624058a3','10006'),
('15007','1985-05-19','0','cc343459b5f3f99942818e8761f7260d8a5452af5c091423f8492a39b3372828','1991b7d4392f7b49d567b2547ed8781b2e38d8209d1afd9e7b0c8ef1a5ee0594','1991b7d4392f7b49d567b2547ed8781b2e38d8209d1afd9e7b0c8ef1a5ee0594','10007'),
('15008','1988-05-06','0','6925035fe8daab15b89e31dbd93e33fce360c24db2faa54cda268ffad8553e1a','19ccbe1667111de4bf62051a8b8f92bd6550a7e3a31de9ce138463cd238dbeae','19ccbe1667111de4bf62051a8b8f92bd6550a7e3a31de9ce138463cd238dbeae','10008'),
('15009','2016-05-24','0','4ff4b27a832b3dcc1ff82768c1d7f2ce0341287746c11cdc4806c439bce60da7','1cb29f1173758117e64d9fdb8f7feab9138774e5e806f65803e1213ecb2c2f4f','1cb29f1173758117e64d9fdb8f7feab9138774e5e806f65803e1213ecb2c2f4f','10009'),
('15010','1985-07-02','1','54e720db321898a0fc068fe2b7363b565cda3765167feba418398cb7b836615f','1f7aeba52ab84ae80873763a11d817c798456a2fcfac8df419b5c9778ea91e2f','1f7aeba52ab84ae80873763a11d817c798456a2fcfac8df419b5c9778ea91e2f','10010'),
('15011','2001-09-16','8','a95f58b11948a13a8b02b2c0942291460905d77dbbb195234a3bbcd8b5b0b453','207690f91b656e1553f593c6b8fdb29afb65ee0a7922a070c86aef6c8d631d24','207690f91b656e1553f593c6b8fdb29afb65ee0a7922a070c86aef6c8d631d24','10011'),
('15012','1981-02-12','4','1262a0a874625e335aec6c6596c0807d2cfa45cf96b047c4a92933aceb0c8133','216115f032cc0936154d6f22d190551ff6e48d5051c9fefedd0301438d4f1f7f','216115f032cc0936154d6f22d190551ff6e48d5051c9fefedd0301438d4f1f7f','10012'),
('15013','1979-07-15','8','025153500d0badb6fa69a164a816d4f4e61486d5f89b4ffb55c9146ee60c80ba','269218e971224c9d4695a05cec225d6c8ea44e8a49119eb5d4f7a2127c097ec9','269218e971224c9d4695a05cec225d6c8ea44e8a49119eb5d4f7a2127c097ec9','10013'),
('15014','2011-04-20','0','115cda409c382147f3225bd0e935306f741cf2e1d37608e24a390fba702f2e34','26b11b6e54b27583223953c44b72324c8140b7dcbcbc4330a92a023ec493935c','26b11b6e54b27583223953c44b72324c8140b7dcbcbc4330a92a023ec493935c','10014'),
('15015','1990-09-28','1','ae0f37eaa404abce5004d4642cbce4f577350b4d4f80c1888edc125e340d216a','27859a832ff2702b0926dd1ae0b211070f89f6b46bf5c0048a53e0c6c009aff9','27859a832ff2702b0926dd1ae0b211070f89f6b46bf5c0048a53e0c6c009aff9','10015'),
('15016','1977-06-26','5','c612860ed642bf877d22f08188bc3b14ce390d7bb23504e46b5377156aa661cd','2beb74df04b244a7208f377fa802ec91cd1db62d5d15074cde2025111a5c023d','2beb74df04b244a7208f377fa802ec91cd1db62d5d15074cde2025111a5c023d','10016'),
('15017','1997-10-01','6','e38127f247b2687c556298c668a077072ae5967d97eb86d81452223d6caf8c06','2dd165d5138393c8ab7614b1ef3cd367e52cd52df365432b60f45e6f68110d7a','2dd165d5138393c8ab7614b1ef3cd367e52cd52df365432b60f45e6f68110d7a','10017'),
('15018','2008-04-10','5','3735ed91af065beaa2adb822823d5e9c879ec3289ad6786016c2939bdffbf20a','2fa6c3017ddb8a15cfa14d31415704b39be00095674dcf23bbceec73c71fe211','2fa6c3017ddb8a15cfa14d31415704b39be00095674dcf23bbceec73c71fe211','10018'),
('15019','1997-08-13','0','24daa8fc79b94eb61ea2d9b61541581451271e89d4b699c012674a6ce08402e3','32200e6930fc059aefe87ce6f96ebfa7796e8f9fed4575aa54cf1a150747a3bb','32200e6930fc059aefe87ce6f96ebfa7796e8f9fed4575aa54cf1a150747a3bb','10019'),
('15020','1985-09-05','7','581d1f96ed2de149dcb76d513d0fa768f7d8e43c8cc476e0e1da56b4aa49a5f1','3321ad21ae92f867812eb19a42b232941919be9e3f51840a5fa93ee18f986485','3321ad21ae92f867812eb19a42b232941919be9e3f51840a5fa93ee18f986485','10020'),
('15021','2013-12-30','6','7e24bbe11a1fd5a497ec28c35cbec41b5260be84fb91ac2ba9efb5a4805350a5','34b42e7b16d4162d77f8ad6de4f02c504bcd3a99c2ca8b1c475d3ad480f94e33','34b42e7b16d4162d77f8ad6de4f02c504bcd3a99c2ca8b1c475d3ad480f94e33','10021'),
('15022','2001-12-15','6','cee96b058207286bd2a3b8cd2643fdac85e70006d284076b6d9e833a52b380ad','3e41b87ddc1b1edcb160fa52d2046b085c2d083cee2b3714994ac4bd72b21ba9','3e41b87ddc1b1edcb160fa52d2046b085c2d083cee2b3714994ac4bd72b21ba9','10022'),
('15023','2013-07-04','9','f464608203708292a83cea173db33940c70fbf966b8d8af7ffce3421752a5cc2','3e5b3d2bd3950faebc3a8170ce8954d71340a3f936fb9501adfa10bca7ca2ac6','3e5b3d2bd3950faebc3a8170ce8954d71340a3f936fb9501adfa10bca7ca2ac6','10023'),
('15024','2017-01-31','2','8e1fd7aef039c26d86634da3629e50b2ebbedba48bc1e3ff272075cb3dc97249','457191b7be38835103b70e1bea3c75362ec9086ce917945630d06e54dcd31d2c','457191b7be38835103b70e1bea3c75362ec9086ce917945630d06e54dcd31d2c','10024'),
('15025','1970-08-08','7','be48546eb6c29edd80f13d96a17d32691bf2e536365acd409d22b728c70141a0','4bbbaf163d67baf072eb63eae7a0a863fb5f1da04a8ea76c6f556bb5438e96ed','4bbbaf163d67baf072eb63eae7a0a863fb5f1da04a8ea76c6f556bb5438e96ed','10025'),
('15026','2017-10-31','4','ff80486ed3b4ce0e241661ab4393a1756e93e4964073bdc38543c1e08214a4f3','4c3aabf2107bde6f9162d820cdf216ebba1d96338e3c5abf74a349bd233435f0','4c3aabf2107bde6f9162d820cdf216ebba1d96338e3c5abf74a349bd233435f0','10026'),
('15027','2004-09-18','2','aaaf5ad81a9d49c8557a53c2f4561a90eb7cd17da5a29002101a40979cfac16c','4e627669af20d3703042a82d9eae92523dcfeee7786e2f302fa166e539fe3511','4e627669af20d3703042a82d9eae92523dcfeee7786e2f302fa166e539fe3511','10027'),
('15028','2009-07-06','0','96f96f3db99a5ec8883958c7978ad0f82759d8db380aefbea4610c1e743a74b9','4f21aea2779c8c27473f5e3b816ac89ce544de97361c5b45fa569877a9911d90','4f21aea2779c8c27473f5e3b816ac89ce544de97361c5b45fa569877a9911d90','10028'),
('15029','1975-01-01','4','953a51c39ffad7db58a525c4fa70bc9de878c01c831e044193f3fa1be3bc7fbc','5450e0daff844770e005f9cee9f73ad3ba1a5450b18574f84f44a8920d3627e8','5450e0daff844770e005f9cee9f73ad3ba1a5450b18574f84f44a8920d3627e8','10029'),
('15030','1975-12-17','3','1d27b15ab23d9da01b73c0593ebda5e1594528c259a1dd779439dc929b657fd3','54904f5a63b54cab9ea30c920b9a2ba23817695f9f14faab2dc72eace2e62734','54904f5a63b54cab9ea30c920b9a2ba23817695f9f14faab2dc72eace2e62734','10030'),
('15031','1981-07-11','7','36d2c16ac0436d366dd421c5abd5b0f112ab52b3e836bfbb9e1a6eb7fa7e95b1','57c6dcbfbcfec07f0100979fecc007d4c9e2656bf5d5f8eb8f6853b604fefdb5','57c6dcbfbcfec07f0100979fecc007d4c9e2656bf5d5f8eb8f6853b604fefdb5','10031'),
('15032','2011-06-08','6','46d0e6e68ce5cf3b3abf37ca6f13909eaae5f3ca7581f3577a51cb684323f9fd','5dc0c584cbfdce6dfd335c43238ab35a4268e71863cb4090975e3e46f4083ff9','5dc0c584cbfdce6dfd335c43238ab35a4268e71863cb4090975e3e46f4083ff9','10032'),
('15033','1971-08-21','7','c0a5f7b9242328c52c665185fda2666a57736d47890f8a6c657f29040433c051','5f223af4cc6943b3287823c0f8d6c39b1782705f68fe2b519c1a92eb09c6a903','5f223af4cc6943b3287823c0f8d6c39b1782705f68fe2b519c1a92eb09c6a903','10033'),
('15034','1986-07-11','9','e99c6dec57056d83851570ac40819d3fd08baca8be7452abbeb0ae2593605638','61bf09c67d3ead3be6245b1b9de282091a28e87387275a3106f63315899ca1e2','61bf09c67d3ead3be6245b1b9de282091a28e87387275a3106f63315899ca1e2','10034'),
('15035','1983-08-24','7','d6f9ad15022e4084b858eff3d2c0d173462d466fec8ad3e5d639dea9e84386b9','6949d5abf9248bcc6963463f7511849ee421536bb1e429781b1ec78d57bdec5e','6949d5abf9248bcc6963463f7511849ee421536bb1e429781b1ec78d57bdec5e','10035'),
('15036','1998-01-06','4','4e3abde2a936d5084713bfda30373309a131d1c44c4d235b736b8e0ec9e7151b','6aacd5f96fa2873ab9331b489ff6e000f10248969b983e8ef1d5cf5e8a66fb2b','6aacd5f96fa2873ab9331b489ff6e000f10248969b983e8ef1d5cf5e8a66fb2b','10036'),
('15037','1997-05-18','8','c52ed9f92d66410295bedc6ce261a73419030997731babb0821ae92841a3a2ba','7106400e66bba7e0c6f6f5c98b133bfdb0873ffa7325acbeab9e41ded2a5ef57','7106400e66bba7e0c6f6f5c98b133bfdb0873ffa7325acbeab9e41ded2a5ef57','10037'),
('15038','1987-03-21','8','f6d91156f0a6692962f9264959d1194dfc2bd7e868b1ddac1c8d641051c9f104','7395a9b790113b9e0da866c09dc2bff4601324f5b37439ac459ca8c67803f78f','7395a9b790113b9e0da866c09dc2bff4601324f5b37439ac459ca8c67803f78f','10038'),
('15039','1985-12-03','4','0980ad732522d96a5a2f06671394db08d46e1e30ff7813ff8720233b0a4835eb','73c360525d50f1f894a294cd45a29d3c4a04ddbd0046adc3e87d4e41fde3a47b','73c360525d50f1f894a294cd45a29d3c4a04ddbd0046adc3e87d4e41fde3a47b','10039'),
('15040','2005-11-08','2','a6c1aef4f987f855e5385b97003c7606b4afe30b886f49edd20bc32d77d4b975','767ac47ae0544e2343b35d7ad56f73035531ee2e4a45487a8a6352ea27384807','767ac47ae0544e2343b35d7ad56f73035531ee2e4a45487a8a6352ea27384807','10040'),
('15041','1983-12-14','9','0101d8389fe75460a81fc349e134a3b91fd075a813e00ffba8cffb51777d4970','79e1915f69e9bf554b3d9311d307b44c139d71a3e6380cd3c3a113fdde55a6de','79e1915f69e9bf554b3d9311d307b44c139d71a3e6380cd3c3a113fdde55a6de','10041'),
('15042','2010-01-28','4','fc71f140318280bf6c04c25c445932d5a96aa4e6eb1780c2f46f35177edc1c81','7a1a54dfd1d4cc013d0303fac01998a8dcad3c0dbd0f722a2b8158098ad2ade7','7a1a54dfd1d4cc013d0303fac01998a8dcad3c0dbd0f722a2b8158098ad2ade7','10042'),
('15043','1988-07-15','7','9b07b15a68437410b4b900542806d7fb3e5b76f531706e5b00f5ca20b224e17f','7cf64c3cc4531271351d1e92d475f87957dd1a4bc085b6114a4428e141e115b7','7cf64c3cc4531271351d1e92d475f87957dd1a4bc085b6114a4428e141e115b7','10043'),
('15044','1989-04-02','1','b1b023df5a76d3856101993c1be8bfb2c7c3b737e0496a2465865f74bebacfb5','7f1c62992a02b4b9b9e5174f8b0a3ed1e867d1f94f6615eb91b41a69b9632ecb','7f1c62992a02b4b9b9e5174f8b0a3ed1e867d1f94f6615eb91b41a69b9632ecb','10044'),
('15045','1986-10-15','9','208b8a48ea41157dcfeae455459804eb8bf05ba7da03ab9f3f20cb3e48c82d18','8135ae402ad6a7d9e8845a18e99bff5db8394147764d8e3ce53fa85246772596','8135ae402ad6a7d9e8845a18e99bff5db8394147764d8e3ce53fa85246772596','10045'),
('15046','1985-10-04','8','cf97c3e12839913e9153fbffcce62c6eda6b396a84e26bffedfd91bc859d92ab','8201cca27126ef493364a4357fb14d5225d4af46384f17b0d244b50e6abca87f','8201cca27126ef493364a4357fb14d5225d4af46384f17b0d244b50e6abca87f','10046'),
('15047','1988-04-21','5','9c0a26f9704cb5eec94beb3f4bdf9a946f258be83b245587a478d38c292c36e9','824e06a40438cc147aeed1d6bfd36f1b36ce81b8d0a663234aad0a1f61bf3857','824e06a40438cc147aeed1d6bfd36f1b36ce81b8d0a663234aad0a1f61bf3857','10047'),
('15048','1974-11-05','0','d0067d3ef25509e397971f5607bcf3d6aa57e1cbcc69027c56aa1d9f8806b27f','83cc2d833180e98c90f7f87193ad50ff805aa7e5422c667b43f42a38979ae7b9','83cc2d833180e98c90f7f87193ad50ff805aa7e5422c667b43f42a38979ae7b9','10048'),
('15049','2001-07-31','1','e2f1dc024e9ca645b56fbff043c342f855a0e38c11476c7cfad42d54d1bbc116','8bfc4c4ab73fbedbe1ee677788da6fb66dc3ea7d9101413da1e16932e063acfd','8bfc4c4ab73fbedbe1ee677788da6fb66dc3ea7d9101413da1e16932e063acfd','10049'),
('15050','1984-01-31','4','5a0bb6fd7bb221a26bf5c35c775b9b06e786844a16b1c0db5e5f7ce7b2bf3f84','8e79c90a99667e893b20247dce8f25266871cdbe6b991b37a8b66f3f929a1b8e','8e79c90a99667e893b20247dce8f25266871cdbe6b991b37a8b66f3f929a1b8e','10050'),
('15051','1987-09-20','1','fa6e53dd0dfc5adefe5a0ae8afe342eb6f2856c8bb9108338f5cbcb3edb7b80d','9180932d52f81da58e67ac91cd44ba83983519e696bd339630b21302a1cb9a8e','9180932d52f81da58e67ac91cd44ba83983519e696bd339630b21302a1cb9a8e','10051'),
('15052','1991-10-29','9','fb712c2efc83dfad78d76bacaf78ac59c806cc2592039114043e43b14907e778','927bca9763ee965db1e04ef00cda264ba417df260560a5ba5d84a6196365cb4d','927bca9763ee965db1e04ef00cda264ba417df260560a5ba5d84a6196365cb4d','10052'),
('15053','2004-10-30','2','c3b4069cc1bf9c5d1275cccd4b4d818f3ae9356ab276d8e886268b5f013a996c','93edf1070cb557e637a796619e287d35a3d490ec5a480b2cdba6ed63cb209ed6','93edf1070cb557e637a796619e287d35a3d490ec5a480b2cdba6ed63cb209ed6','10053'),
('15054','1975-03-06','5','5169d3e1e5523f54df9da858688843e65b9f4c9c16d0ed73bd4a05d42bca2a72','982be719ee49c48b364a1244b71ff19a36124031f9105b01657da34302ad73e4','982be719ee49c48b364a1244b71ff19a36124031f9105b01657da34302ad73e4','10054'),
('15055','2008-07-20','1','e49f1a16c823db79d2058fe6cf7ce1897854c1916703396f5c3f51e3b0544f5f','98a218161f04af3b0ec654b7d9550cbf7aebfd845d682312debfb8429fe12d44','98a218161f04af3b0ec654b7d9550cbf7aebfd845d682312debfb8429fe12d44','10055'),
('15056','1979-11-12','3','fa437fe0ca824c783609baef89aaf2bb73d0b9d9346a3fcb53d0f58a40104b8e','9aeb8f9f78bbb21876d788888e0f0538c5c710f679bb10bf4fcf8b1a3669ed03','9aeb8f9f78bbb21876d788888e0f0538c5c710f679bb10bf4fcf8b1a3669ed03','10056'),
('15057','2008-11-09','9','165e6e2d8a998743dc49ee56253c7de5fdc5a3b65e554bdb31f7e90507e938bc','9b0cbff9b73c7184c078805a2bf368aacc8b8f6bfbe2d344eb398d723d2add50','9b0cbff9b73c7184c078805a2bf368aacc8b8f6bfbe2d344eb398d723d2add50','10057'),
('15058','2016-06-01','0','1784c1909470bc29a8110f239062f646c4bbe27de1f8cc136046230d929524f1','a51898c70a5319d3ae508ba3b6a9b3e4b3fba27f629255aef75b9b5bd839ac36','a51898c70a5319d3ae508ba3b6a9b3e4b3fba27f629255aef75b9b5bd839ac36','10058'),
('15059','2003-07-09','7','585d71d124f7cce95a7776c5403f215bf28a75e11e8789e1c325abea9f387776','a58d3a021639b035f60c3787dc8fc23b2a916ff920ba60c03b23f7751f8ca84f','a58d3a021639b035f60c3787dc8fc23b2a916ff920ba60c03b23f7751f8ca84f','10059'),
('15060','2011-10-27','5','bb3694500a0a103b5319bc24e6b477fa2b64ad4695a18beaa2d1936101cbd336','a64d7b7379ab9332e614bb349aaa43cc62e98f49d69bfecbd5786ce2682be673','a64d7b7379ab9332e614bb349aaa43cc62e98f49d69bfecbd5786ce2682be673','10060'),
('15061','1972-03-19','3','0c987aee5b11b07c99a513b7e2323d7acdb1b9c3799ca53eae5ce44166c4eb2e','a7735a33b029ced7a105eddbe84975620f0ca5abe7315f48b3fbc190af3df960','a7735a33b029ced7a105eddbe84975620f0ca5abe7315f48b3fbc190af3df960','10061'),
('15062','1975-03-02','2','cb7981538ca983acc79002519339f2f06a2723059f0889130505e5f85a8ca847','a814c44092171e6015edd8f38a7f3b85e6459088b6b722aa60c85070280b0622','a814c44092171e6015edd8f38a7f3b85e6459088b6b722aa60c85070280b0622','10062'),
('15063','1995-02-17','1','2d15e9285eab82ae09d16881922641ece908fd2760f0f01bc20fe100009941fe','aa7f1f2b8c0ccb2617bf7810d6349e41dc3546a2a22bc753f5c6702cfddd3c8a','aa7f1f2b8c0ccb2617bf7810d6349e41dc3546a2a22bc753f5c6702cfddd3c8a','10063'),
('15064','1985-07-13','7','13d380d944c9948d6ce39fb71e213e46cade0601b4f54d504f272ce86f9926b5','abccc06b588ba7ec4443c8f4f4853cf4c5125aa1fa019898d86497b4e44ba726','abccc06b588ba7ec4443c8f4f4853cf4c5125aa1fa019898d86497b4e44ba726','10064'),
('15065','2014-06-29','2','a1dc10ead64cef745b701a420b3084bc484a36a2d34df25cd1df29f8c71a15bd','afab3fae3efaba6e78b01d80b123caf57b1c9658fe269b0b31a641e791c0464b','afab3fae3efaba6e78b01d80b123caf57b1c9658fe269b0b31a641e791c0464b','10065'),
('15066','2006-02-17','0','7ad356b007855ed396d0f6e149cdd20afd32c505e87c60fb98852307575c226e','b0461386be6418a1df01e3cba76abfa098c3e4cbbcfaa0b30e6733c0a57a03be','b0461386be6418a1df01e3cba76abfa098c3e4cbbcfaa0b30e6733c0a57a03be','10066'),
('15067','1981-12-19','4','5af1ee42ded4d0b60e10e57300b1e9617cc5e9c9a032d00944f4096958a2d3bf','b32f4f86d32607d81078c75fb9275393fb10db57eb690e104bf02dc143907172','b32f4f86d32607d81078c75fb9275393fb10db57eb690e104bf02dc143907172','10067'),
('15068','1986-04-25','4','dd0920cd28870a40670f21ec458570749372bd31fa17e8395d48176f7fd217af','b4baf150d6d49fe38ebf61d5b6d188755d21c679859a8543353ebbed1eddf4f3','b4baf150d6d49fe38ebf61d5b6d188755d21c679859a8543353ebbed1eddf4f3','10068'),
('15069','1994-04-09','1','305f4a212dbc6ad168fd712e7aa6280fbff916c86f8494195a9e5172383fa7e4','b5e7e30ec8abca1a6b1e31c957d43f4e2282030340cb6003ae0cbfbd243ecc57','b5e7e30ec8abca1a6b1e31c957d43f4e2282030340cb6003ae0cbfbd243ecc57','10069'),
('15070','1990-12-25','5','4bf6b6de08186b46ce5aff50dd2439cb137778c2665b564393cfa3b88ba4859f','b9fd99e490e105eb3926b25d4ded43afb90433f036613558c0cf682934afdf50','b9fd99e490e105eb3926b25d4ded43afb90433f036613558c0cf682934afdf50','10070'),
('15071','1981-12-23','5','172a6ed94a01aede1192829c3a6f1aa0153492049650a11642928dfc7fa1470d','ba1c2373e79dd20fb0e6a3d99d972023e9c8629a99967346a353f97c7fd8346d','ba1c2373e79dd20fb0e6a3d99d972023e9c8629a99967346a353f97c7fd8346d','10071'),
('15072','1999-06-10','0','9653418fb3f8a40dddedd605e899e8293765f0da07aa703561f5a17d9df09cc8','bdb19081d0d6d82104fcc9101fe0249ef89c3e3189ffc6fe5244333a8108bd2f','bdb19081d0d6d82104fcc9101fe0249ef89c3e3189ffc6fe5244333a8108bd2f','10072'),
('15073','1990-06-23','2','b1403885cd94aa507c16fe1ee019d892a0972781a6133c7d353254546fcc30a1','bf2f9d26b9cf7d136de66c51657e81265aa6ccff162704288dd59a4dcfd7b04b','bf2f9d26b9cf7d136de66c51657e81265aa6ccff162704288dd59a4dcfd7b04b','10073'),
('15074','1974-08-08','2','13af608fb5b9790a74ebd247c8a4a3852650a7c2be6a86820140a64524686038','bf825946b8ef04026be7c15c97c0642e8fb63ad8af2af5b1dca236ef56232366','bf825946b8ef04026be7c15c97c0642e8fb63ad8af2af5b1dca236ef56232366','10074'),
('15075','1997-12-02','9','56c4fdc6b2239c556441bb0f0b4c73480d7a8a271708de0de310d96cac7dc88d','c2defa2814b29f948d6a7ca2ed098d4dcaea0e6ca594f07372500ed1774aec5c','c2defa2814b29f948d6a7ca2ed098d4dcaea0e6ca594f07372500ed1774aec5c','10075'),
('15076','1982-04-20','4','810c3f77972959d095dcb15cabb6f704e4e89ebf85a686e1ebf0c58ab62bb48e','c779f469199919f7e3d66714a3a201279fe65ba0558505caee2a311393702215','c779f469199919f7e3d66714a3a201279fe65ba0558505caee2a311393702215','10076'),
('15077','2014-01-06','4','2a62f032b428fa5ef8994d9dd59dcf4ded602217d1ecb311766b70609f6560fd','ce3f13df2d2e9c87bd9073c0358d3947a47324d0707f3927bfde72f929f0a6a3','ce3f13df2d2e9c87bd9073c0358d3947a47324d0707f3927bfde72f929f0a6a3','10077'),
('15078','1991-11-29','7','b4f737e43472e4e50170d2ab9ca66d74905128a7bf7e9d30bcbd97deb8c9a685','d1619c3309aad98920559ef15809f7ca1a42ea2805397ab4fe413856ac2823e3','d1619c3309aad98920559ef15809f7ca1a42ea2805397ab4fe413856ac2823e3','10078'),
('15079','2018-02-05','0','b4edba84b51c1d0c845521049b0007755e49e13ffc291ccd8cf2fc28e4f78976','d539162fd34fc9e60caf3438439a14bd91c4d1d4875226dbe9c8d7790b048605','d539162fd34fc9e60caf3438439a14bd91c4d1d4875226dbe9c8d7790b048605','10079'),
('15080','2015-01-11','1','7964fca8baedc7de31b477caa997ef3ec373a600c6c77b297c69890d58d7c85e','d7ee0ac47b778d3ed9dfcc058378cb2d71108123f68efa637690b85f2da5413f','d7ee0ac47b778d3ed9dfcc058378cb2d71108123f68efa637690b85f2da5413f','10080'),
('15081','1977-09-24','1','f338b5620b21ba9fa115ba835f7c40a03302b39f8d098a973e78c5f9eb946aed','d80528542bfae23404f29db54cbffaa07838d744ff865e411ca7d1adcff9e9df','d80528542bfae23404f29db54cbffaa07838d744ff865e411ca7d1adcff9e9df','10081'),
('15082','1974-11-29','0','76687630728eae68b46add755c25fed2190883c0637f0cf6524a5a2339e72531','d9ad2737d9c8380f8ff231726ef1f181b505e67f6691a3a337f37d70248957d3','d9ad2737d9c8380f8ff231726ef1f181b505e67f6691a3a337f37d70248957d3','10082'),
('15083','2006-05-19','7','7839a06895514295e5b078373c4a720494681d0e1e2921cddd9af4387e00acd4','dab574f550385fc6919d1293b041ceca69ac55f264b441174ab2017ca3cbc178','dab574f550385fc6919d1293b041ceca69ac55f264b441174ab2017ca3cbc178','10083'),
('15084','2013-11-27','7','03ac7f194a4dee0ae4c2674498362d4e524dc5199c53237bde07bdca43145062','dada93af533bbc11a025554c5f4436922366f0b43870b35cfc8d182890172b6f','dada93af533bbc11a025554c5f4436922366f0b43870b35cfc8d182890172b6f','10084'),
('15085','1984-08-06','1','ffb215d5189960482826d6bee4bb3068111f46cd8fdb36da85be9155bf3117c4','e2a705e046a5be2eccec974b30a118eb9988ca1c0ae78d7fa60342bef43dc137','e2a705e046a5be2eccec974b30a118eb9988ca1c0ae78d7fa60342bef43dc137','10085'),
('15086','2008-05-05','6','5770b9f563c450cba42bc02b80633bcc1f702eacf742d13dae58fbaf30ebdefb','e59f4759ba92bd00c16927fa0a915fbdd28237cc928099d332af85530bd72d6f','e59f4759ba92bd00c16927fa0a915fbdd28237cc928099d332af85530bd72d6f','10086'),
('15087','1995-06-01','3','466984e50e2403a62417f3c4dff2202797cf3c1a0d0cf0caea4e9695eccfe9a6','e6dc6fb43d3c8292d3b21a67c12b094ed89fb247c9d3a99db64941534795d32c','e6dc6fb43d3c8292d3b21a67c12b094ed89fb247c9d3a99db64941534795d32c','10087'),
('15088','1994-03-24','5','b3dc6e9a56105ee7cff1f17d1506214dd7f46a3b57dd9d44554a412030b05308','e77a440de7c327b613b6e6eb46cc047d05c480f7ee5b50995018caaa77236e99','e77a440de7c327b613b6e6eb46cc047d05c480f7ee5b50995018caaa77236e99','10088'),
('15089','1971-01-19','9','eac7fbf7302108f0eba4ba481d20da6f1ae46dc9b91acdc4ef858901247978e2','e96712e7634240ca8a4e22b70fe0168e3f656403c3d44f5ec73c317eb56cf3cc','e96712e7634240ca8a4e22b70fe0168e3f656403c3d44f5ec73c317eb56cf3cc','10089'),
('15090','2015-01-06','8','f43d7ccff95b26a273b7bf99da5992c7568dade90b49506bfa08c6349adb4330','e9709f332cee6f4f34d8a5a5e42137aed02f4588ea809100e1eb6b8d70884d86','e9709f332cee6f4f34d8a5a5e42137aed02f4588ea809100e1eb6b8d70884d86','10090'),
('15091','1992-12-01','1','7a8d0ae94578a5de6cc3d5744f108f6ac07c2fe8c736d2a1323a40ae1d687fa2','e9af99b7ce2280e7822d86f645f4936d49c1220ff35b10bf6efdce242c9111af','e9af99b7ce2280e7822d86f645f4936d49c1220ff35b10bf6efdce242c9111af','10091'),
('15092','1986-01-09','1','35031246f687e0816159807d16ee5219fbd12392afd8b09c6bb060fcbae01eb3','e9f2c609bec63d9f2a219a3ce0b8bb2018572d4e3bb3064a7f195ee654301147','e9f2c609bec63d9f2a219a3ce0b8bb2018572d4e3bb3064a7f195ee654301147','10092'),
('15093','1977-01-16','8','1e1e5ed033eeac530e61c4be44368cd3c60872aec76855b23472506ab26ae586','eb4cd64b258bf87f9a04526331f5a197c4d8fc9fc947223ba2f49812121d249a','eb4cd64b258bf87f9a04526331f5a197c4d8fc9fc947223ba2f49812121d249a','10093'),
('15094','2009-04-15','5','70952c155445c5664051cc49a95f985542fadc2d7ad36e900d448ce1a7e8c4be','ec5cd9e43a29684eb94e70f9c53f8381d966e782430f1bdcdcaa045951e0b33d','ec5cd9e43a29684eb94e70f9c53f8381d966e782430f1bdcdcaa045951e0b33d','10094'),
('15095','1982-08-25','0','8b11b1cc371e5306111b525189f5be8f63958e28f66336e7ce42ad9f67d079e0','ece4b406964b28f128a2773afce75c0acaf76c628e105b6ec924857055345fb1','ece4b406964b28f128a2773afce75c0acaf76c628e105b6ec924857055345fb1','10095'),
('15096','2018-04-17','6','c0a38aa6a12c2a962b6e6d690079a296456da72373fd063f4c5e9e48f2980831','ed1a0b1d89de2e50009ddcc32e5ed4dc4c5831ea4257456bc62d29e7d39541fd','ed1a0b1d89de2e50009ddcc32e5ed4dc4c5831ea4257456bc62d29e7d39541fd','10096'),
('15097','1975-05-28','7','e9afc96b0ea6259cc311a39ebf4adf1ff3633c74f37623f368c5680e3537f8f7','ef2e0c2da35d70da3d6d33ef1536d11debe8733398924f7217aab2f937c559b2','ef2e0c2da35d70da3d6d33ef1536d11debe8733398924f7217aab2f937c559b2','10097'),
('15098','1992-04-26','9','bdb8ad33fb62f739036454d1f07eebd03e9c56bf85636a8f0252107270697ce7','f047ce6ac0141deca6ad6d40c34b81c3c2a8310876c8e1a1f8d226cd055129af','f047ce6ac0141deca6ad6d40c34b81c3c2a8310876c8e1a1f8d226cd055129af','10098'),
('15099','1995-05-21','9','912ce6f96de296e1b72ea8f9fdeb5250f8b4f4e4e90d63e69bfa9652a47bb167','f6286f09c4ebebaa792634c32c57c01bc1efae00e177a337de62df2d9cd32c9a','f6286f09c4ebebaa792634c32c57c01bc1efae00e177a337de62df2d9cd32c9a','10099'),
('15100','1979-05-09','0','bf3135959202d6ae0ae0b71ed706684ec31a21943248e0b50dd53e2bf06241b4','f7a0a915ed1860092dd053e94dceb4a9c1fb2ee929a95601a9881052dc0f4709','f7a0a915ed1860092dd053e94dceb4a9c1fb2ee929a95601a9881052dc0f4709','10100'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
