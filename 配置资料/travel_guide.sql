/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : travel_guide

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2021-05-27 20:08:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin', '2021-05-23 22:05:03', '2021-05-23 22:05:03');

-- ----------------------------
-- Table structure for t_admin_info
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_info`;
CREATE TABLE `t_admin_info` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `admin_id` int(6) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `head_image` varchar(500) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_admin_info
-- ----------------------------
INSERT INTO `t_admin_info` VALUES ('1', '1', '小王Hello', '18830001299', 'xc70210@163.coom', 'http://localhost:8888/71878219-654e-4944-9b0d-c3d36a6ff7b5.jpg', '每天进步一点点');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `view_id` int(6) DEFAULT NULL,
  `guide_id` int(6) DEFAULT NULL,
  `travel_notes_id` int(6) DEFAULT NULL,
  `question_answer_id` int(6) DEFAULT NULL,
  `user_id` int(6) DEFAULT NULL,
  `comment` text,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', null, null, null, '1', '2', '<p>1.【行程~~】<br>建议蜂蜂选择前两天景点~~~<br>强烈推荐【</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>之眼】【意式风情区-马可波罗广场】【西开教堂】【瓷房子】【古文化街】<br><br><b>第一天</b>火车站——解放桥——世纪钟——津湾广场——意式风情区（住宿离这里很近）——金汤桥（玻璃桥）——古文化街（游船）——</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>之眼<br></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>站下车右手边就是世纪钟，穿过解放桥（造型类似于上海外白渡桥）就是津湾广场，津湾广场在火车站看对岸风景更美 。之后沿着海河往北安桥方向走就能到，还可以沿途欣赏海河美景。也可以从世纪钟那边自由道走进去。总之条条大路通罗马，只要蜂蜂找对了方向就行了，打车是完全不必的。至于蜂蜂行李要是很多，可以选择公交，很便宜的~~~从火车站坐公交（火车站有很多公交都到例如645、634、672等等）到意式风情区站下车。步行穿过金汤桥（玻璃、钢铁、木板集一体的特色桥）就是古文化街（可游览天后宫、</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>特色泥人张、杨柳青年画、名流茶馆），走到古文化街尽头可步行至天眼（摩天轮），其间还通过望海楼大教堂（基督教堂）。具体坐游船可以在古文化街附近问一下售票处上船的地点之类问题，同程船票打八折。<br><b>第二天</b>五大道——滨江道步行街——西开教堂（南京路对面）——瓷房子（赤峰道72号）——和平路步行街 ——南市食品街（带特产回家）<br>坐地铁（1号线小白楼站）或公交（小营门站）下车步行至马场道，可以乘坐马车，五大道较大，建议 坐马车租车，不赶时间可以步行。之后可以去逛街，公交到滨江道站下车，地铁在营口道站下车，南京 路对面是西开教堂，可以顺便参观，顺着滨江道步行街可以逛到和平路步行街，到了步行街尽头可以选 择公交坐到南市食品街，大约三站地。<br><b>第三天</b>可以选择做动车到</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/173669.html\" target=\"_blank\">武清</a></p><p>佛罗伦萨小镇转一转，票价很便宜，逛街拍照两不误（动车很多趟，算好回程时间，东站下车不耽误回家）</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/173669.html\" target=\"_blank\">武清</a></p><p>火车站下车对面就是，很近的。<br><b>第四天</b></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/16032.html\" target=\"_blank\">塘沽</a></p><p>外滩——极地海洋世界（适合带小孩或者情侣去玩）<br><br>2.【温馨提示】<br>a.建议蜂蜂从</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>站下车，</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>站（</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>东站）离景点较近，方便游览~~其次是</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>西站，也在市区~~</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>南站在郊区，相对于其他车站，比较远~~<br>b.</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>夜游美景也很美~~<br>c.</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>站下车的话可以优先选择住在东站附近，方便一下车放完行李就可以开始玩了~~<br>d.可以找个下午或者晚上去名流茶馆等听听相声~~<br><br>3.【</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>特色美食推荐~~】<br></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>特色早餐比较多，例如煎饼果子、锅巴菜、老豆腐等，早点铺和早点摊很多。<br></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>名小吃有十八街麻花、狗不理包子、耳朵眼炸糕（还有驴打滚）、小宝栗子和糖堆、康乐小豆冰棍（滨江道）、果仁张（南市食品街）、崩豆张（南市食品街）等等后面会做详细说明~~<br><br>A.【辽宁路小吃街】就在滨江道，但是个人感觉不是很好吃，很多都不是本地的小吃，不过可以去滨江道时顺路去看看~~<br>B.【辽宁路小吃街附近本地小吃~~】<br>a.【桂顺斋的糕干】现做的糕干，有别于杨村糕干，但是同样很美味~~沿着辽宁路小吃街进去，第一个路口左转就有买桂顺斋糕干的，现做现吃最好，不要放凉了在吃，一块两元钱，不要买多，一人一块就可以。好吃可以在买哦~~<br>b. 【小宝栗子和糖堆】滨江道附近，长春道153号(近新华路)<br>c.【鸭油包】桂顺斋对面就是正阳春鸭子楼，有鸭油包外卖，很不错哦~~~<br>d. 【康乐小豆冰棍】滨江道上，辽宁路小吃街对面~~<br><br>C.【餐馆推荐~~】<br>a.【成桂西餐厅(河北路店)】河北路287-289号疙瘩楼，人均175，但是环境一级棒，本身餐厅就是历史风貌保护建筑。<br>b.【Vista黔城(大理道店) 】大理道8号(近新华路)，人均100参评，菜品口味比较好，环境“幽雅”，装修“考究”，充满“民族特色”又“不失品位”。有团购哦~~~<br>c.【桂园餐厅】成都道101-103号(近桂林路)，人均70,推荐鱼香肉丝、八珍豆腐、牛肉粒。去桂园吃饭最好提前打电话预约一下，怕没位置。<br>d.【洋味食屋(外院店)】马场道117号</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>外国语学院食堂3楼，人均50，推荐黑椒牛排（分量超级大）、意面、各类店家自制蛋糕，个人超级推荐此家，性价比较高，适合年轻人<br>e.【陈记锅巴菜】这是</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>特色早点哦~~重庆道104号(桂林路口)，人均6元，推荐锅巴菜、老豆腐。<br>f.【NaNa‘s bar】小资情调的店~~有好几家分店，大悦城，南开区风荷园小区附近都有~~蜂蜂可以自己在大众点评上搜一下，离哪个近就去哪个~~<br>g.【烤羊肉】<br></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>人晚上喜欢吃烧烤，烤羊肉很火的，可以推荐你们去汾水道（地铁2号线咸阳路站下车，步行十分钟就到了，下车最好问一下路），一条街灯火通明，羊肉一般45一斤，绝对是真羊肉，晚上12点还会灯火通明~~推荐永坤！！！<br>h.【麻辣小龙虾】推荐四喜~~~乘坐公交686、645、672、841在芥园里下车就是。<br><br>4.【</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>特产~~】<br>【1】泥人张<br>首先说明一下，</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>泥人张，比泥人张世家会便宜一些，自己买着玩，也不是收藏，不用买那么贵的。泥人张就在娘娘宫对面~~从几块钱到几百块钱不等，通常小一点会便宜一些，有很多中国传统元素在里面，送财童子、京剧脸谱、杨柳青年画的娃娃、寿星寿婆、琴棋书画、拔萝卜、相声、双簧、糖堆、刮脸等等，可以根据要送的人的岁数、结婚与否、有孩子与否选择适合她的~~~摆件挂件都有，蜂蜂可以慢慢选择~~不要带零碎太多的，经过路途容易坏掉~~<br>【2】杨柳青年画<br>杨柳青年画以传统胖娃娃抱红鱼为主要元素，另外还有很多延伸，寿星公以及各种寓意的胖娃娃，可以慢慢挑选，价格会根据画工不同有所不同，便宜一点的话一两百就可以入手~~记得划价哦~~不是画工好就一定适合您，蜂蜂要靠眼缘~~~<br>【3】桂发祥十八街麻花<br>送礼当然很好看，</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>首屈一指的特产，便于携带，但是本人不是很喜欢吃，蜂蜂可以先买点散的尝尝，觉得好吃再买盒装的~~记得南市食品街很多假的，一定要看好了桂发祥十八街麻花，不要买成</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>大麻花~~<br>【4】果仁张<br>果仁张个人感觉比其他小吃都好吃，脆脆甜甜，果仁包着彩色糖果外衣，外衣虽是糖但是不硬，很酥，里面是果仁~~包装大小不同，适合送朋友~~<br>【5】崩豆张<br>崩豆本身就不是适合所有人，因为比较硬，岁数大的人就不建议了~~个人比较喜欢~~虽然难嚼，但是很香~~<br>【6】桂顺斋~~欣乐~~百瑞~~<br>本人最喜欢白皮~~最喜欢欣乐~~<br></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>的点心很多，也就是传统</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>人过年送礼的点心~~俗称八件~~北京的朋友就不建议买了，北京稻香村已经做的很好了，其他地区的朋友建议买点尝尝~~甜咸都有，很多种馅料~~当然除了桂顺斋还有欣乐、百瑞这些都是</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>的老牌子了，个人比较喜欢欣乐，觉得价格比桂顺斋便宜，味道也很不错，只是名气没有桂顺斋那么大~~<br>【7】传统年味装饰品<br>如果不是北方的朋友，可以带一些</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>年味回去，例如春联、掉钱（</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>特有）、福字（福到）、窗花等等<br>【8】驴打滚<br>本人超级爱吃，最喜欢吃耳朵眼店做的，另外还有一些摆摊的小商人自己做的，有的还不错，超级喜欢绿豆面的味道，耳朵眼的豆馅儿也是一绝~~<br>【9】耳朵眼炸糕<br>个人觉得一般，一定要去大店，正规店，吃现炸出来的，带走不推荐~~<br>【10】没有牌子的小吃~~一般食品街的小店都有卖的~~<br>后来发现有的淘宝店也有~~<br>a.【杨村糕干】真正的就是透明塑料袋，已将粉色的纸在袋子里面，很简易装~~<br>b.【栗子羹】最原始的口味，小的时候没有那么多口味，也不记得有什么牌子，以前买的都是散装的~~<br>c.【豆根糖】 很硬，牙不好的不能吃~~绿豆面做的<br>d.【绿豆糕】 吃的少味道还不错，吃多了有点噎~~毕竟都是绿豆面的~~<br>e.</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>【红果】很出名，也就是山楂~~相应的糖粘子和很多秘制红果做的很不错，可以买路边摊，但是自己也要看看品相~~<br>f.【山楂糕】袋装的，食品街也应该有卖的，晶糕梨丝不知道大家吃没吃过，就是山楂糕和梨，同时切细丝，凉拌，很爽口~~<br>g.【茶汤】传统龙嘴大铜壶热水冲制而成~~食品街和古文化街有卖的，但是有些不太正宗，根据自己口味选择就好~~<br>h.待补充~~~<br><br>祝蜂蜂旅途愉快，有问题可以随时联系我~~<br><br>【补充照片~~】<br>应蚂蜂窝问答君的邀请，为了推广</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>旅游，为更多的蜂蜂提供帮助，需要添加一些照片，不过非常抱歉的是，没有近期的照片，都是几年前的，有时间一定补上大片~~请各位见谅~<br><br>【</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>之眼】<br><br>【马可波罗广场~~】位于意式风情区<br><br>【意式风情区】看腻了景点照片，来几张雪景，</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>难得下那么大~~同样手机拍摄，见谅~~<br><br>【西开教堂~~】<br><br>【北安桥~~】<br><br>北安桥附近海河边晨景~~奥运会火炬传递那天照的~~<br><br>奥运会火炬传递那天，北安桥已经戒严了~~<br><br><br>【和平路步行街~~】现在右侧的百盛已经关门了~~<br>【劝业场~~】现在的劝业场附近更漂亮，路中间有铜钱路~~四面建筑都很好看~~<br><br>【五大道~~】<br></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>疙（</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>人念ga一声）瘩楼，也就是粤味鲜，五大道比较有名的建筑，同样有名的餐馆，人均不算低~~<br><br>五大道的马车~~<br><br>【津湾广场~~】抱歉晚上遛弯时手机拍的~~<br><br>【</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>站~~】在津湾广场看对岸</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>站，忽然发现它的美~~<br><br>【极地海洋馆~~】位于</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/16032.html\" target=\"_blank\">塘沽</a></p><p>区~~离市区比较远~~<br><br>【本人最爱的</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>美食~~】<br>抱歉照片很少，以后吃之前一定不忘了蜂蜂们，一定要先拍照~~<br><br>嗡儿嗡儿糕，有人也叫熟梨糕，里面有很多童年记忆~~做的好吃的不多了，很多都是外地人在做，尤其在古文化街那边，很多外地人做的，不好吃，还比较贵，我买这个才五元，今年的事~~我比较喜欢果酱的，还有人喜欢砂糖的，砂糖同样是各种口味，各种颜色都有~~<br><br><br>【二嫂子煎饼果子~~】不在我家门口，但是我还是去排队，因为真的有小时候的味道，现在家门口的煎饼果子，因为耐不住物价上涨，煎饼果子不涨价，只能偷工减料，所以很慢吃，二嫂子家的有点贵，但是值得~~每次都和好多游客凑热闹~~<br><img src=\"http://b1-q.mafengwo.net/s9/M00/E2/4F/wKgBs1grGZ2AKcLCAAo459KxlEo06.jpeg?imageView2%2F2%2Fh%2F1000%2Fq%2F90%7Cwatermark%2F1%2Fimage%2FaHR0cDovL24xLXEubWFmZW5nd28ubmV0L3MxMS9NMDAvOTEvNzAvd0tnQkVGcF9faTZBUHYtZEFBQUwxMzg3aE0wNjk5LnBuZw%3D%3D%2Fgravity%2FSouthEast%2Fdx%2F10%2Fdy%2F11\"><br><br>待补充~~~~~<br><br>==========<br></p>', '2021-01-14 22:39:23', '2021-01-14 22:39:29');
INSERT INTO `t_comment` VALUES ('2', null, null, null, '1', '4', '<p>因为我是本地娃娃，愿意为来津的朋友们认识</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>，继而喜欢上</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>这座美丽的城市。对于</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>这座直辖市，首先面积非常令人，也就意味着两日的行程你会很赶，不会逛的太透。其次</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>这座城市的文化非常多元化，两天的时间得需要看你的侧重点是什么？<br><br>客观建议，地标性的景点两天时间基本逛不完，所以要学会删除法。两天的概念一定是两天两夜，而不是上午才来，那就更加缩短了时间。下面为大家带来最教科书式的行程……<br><br>前一日抵津，无论是火车还是飞机都直接找酒店或客栈下榻，因不知具体行程，所以不做讨论。好好休息一宿之后，你的旅程真正开始了，会很累很累……<br><br></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>主要游览路径及观光点为：<br>1、两街（古文化街和意式风情街）<br>2、五道（五大道：“马场道、大理道、睦南道、常德道、重庆道”。后有人说因常德道太短了，故会把“成都道”也算作内了），<br>3、一路（解放北路风情区）<br>4、一河（母亲河海河）<br>5、一山（</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/17257.html\" target=\"_blank\">盘山</a></p><p>）<br>6、一港（东疆港）。<br><br>A、如果你是文艺范，要去学院和博物馆等地，又将是一番风情。<br>B、如果你是吃货，那在</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>可以让你的味蕾大开。</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>融汇了各地风味小吃以及本土特色的小吃，另外就是“海水两鲜”。</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>是港口，大海的儿女，海产品在</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>从不匮乏，到</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>来不吃海货，你算是白来一趟的<br>C、还有就是如果内陆地区对大海感兴趣的朋友，</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>东疆港沙滩公园也是必须要去一趟的。<br><br>目前</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>两个五星级景区是古文化街和</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/17257.html\" target=\"_blank\">盘山</a></p><p>，古文化街在市区，而</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/17257.html\" target=\"_blank\">盘山</a></p><p>在</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/15031.html\" target=\"_blank\">蓟县</a></p><p>，两天的游玩时间你就不用考虑了。乾隆曾说过“早知有</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/17257.html\" target=\"_blank\">盘山</a></p><p>，何必下江南”的经典语录。另外就是</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/173669.html\" target=\"_blank\">武清</a></p><p>区作为京津的走廊，有一座绿博园，里面有各地区的缩小时景，值得一览。最主要到</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/173669.html\" target=\"_blank\">武清</a></p><p>的绿博园玩耍后，余下时间，你可以到凯旋王国（刺激设备的游乐场）和佛罗伦萨小镇观光，这又是一条线路。<br><br><br>为大家的两日游制定了一条最实惠的路线：<br>1、早晨七点出发，你不必在宾馆吃早餐，除非含餐没办法了，我个人认为，</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>人对于吃早餐是非常讲究的，种类繁多，来津的客人可以尝试一下。<br><br></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>早餐主要是：云吞，锅巴菜，老豆腐（豆腐脑），豆浆，方便面，羊汤，拉面各种粥等。主食类有烧饼，大饼，果子（油条）还有糖皮（糖果子），果蓖，鸡蛋果子等。另外就是煎饼果子，大饼鸡蛋，大饼夹一切，白吉馍腊肉，鸡蛋灌饼等各个地方小吃，且大街小巷遍地随处可见早餐店铺和早餐车，光是早餐就花样行繁多。<br><br>2、早晨吃一顿饱满的早餐后，你就可以踏上观光之路了。具体路线我没办法去说，因为我不知道你们会住在哪里，所以我会以我的一个开端延续后面的景点。<br><br>备注，从</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>站出来的朋友一定先别着急打车或者坐地铁离开。从</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>站出来就可以看到世纪钟，还有解放桥，这两个是地标性的景点，又以夜景美观，另外就是如果你出站一定是绕道前广场去看这些。</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>站广场对面是灯光辉煌的津湾广场，走过解放桥在路口处就有津湾广场的地铁站，或者打车（滴滴）去住宿。<br><br><b>第一站，五大道。</b><br>五大道是</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>在发展过程中的一个重要的历史脉络，了解</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>的近现代变换可以从这里开始。在这几条路上你可以游览地标式建筑“民园体育场”、“音乐厅、”“外国语学院”、“瓷房子”、“老和平饭店”等建筑群，还有各式的文物性质的楼宇，让你感觉会身处在很有年代感的西洋街区。这里拍照摄影都是不错的选择，很多电影和电视剧也都在这里取景。<br><br>在音乐厅附近的有一条小街称之“法式风情街”，不用理会，没啥风景可看。<br><br>如果中午想吃一份西餐的话，“起士林”、“成桂西餐厅”这两家老字号的西餐厅都是不错的选择。另外很多新式的西餐厅都集结在民园体育场的周边的底商，很好找。很多本地人都去在我说的这些地方吃饭，不是那种为景点而兴俢的既不好吃又特别贵的商家，大可放心。<br><br>在民园体育场有各种载人工具，最有特色的是马车观光，还有人可以讲解。还有各式租的双人、四人自行车等。如果你不想乘坐花钱的这种花钱的摆渡车，可以选择共享单车在道路里一边逛一边拍照，闲情雅兴。不过车子一定是从景区外就骑进来，而且还得看好了，非常抢手，一不留神就被别人骑走了。<br><br><b>从五大道出来看眼音乐厅，就此上午行程结</b>束，在音乐厅合影留念之后，下午进军解放北路风情区，从这里打车起步价即可到达，如果不着急就骑单车过去。<br><br>到解放北路风情区，你首先要到利顺德饭店老楼的旧址参观，然后那一片的建筑群都是巴洛克建筑，跟具有规模和观赏性，在周边照相是很有范的一件事情。从利顺德饭店顺着解放北路一直向着解放桥的方向去走，就会到了津湾广场。因为你昨晚已经看过解放桥和世纪钟，就不要再去耽误时间，到津湾广场打车（或骑车）都不远到意式风情街，在哪里别买东西，基本都是景区购物点，你懂的，也没啥特色。其实有时间在意街那里你可以去看一下</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>规划展览馆，馆内介绍了整个</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>的历史建设，让你能迅速了解</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>的各个历史脉络点。<br><br>如果你愿意感受晚上酒吧式的晚餐，就在那里多逗留吃饭，连看海哥的夜景真的很棒。如果不愿意就去</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>之眼看夜景，你可以顺着河边骑行，没多久就能到了，当然打车方便，却会错过一些美景。我到一个地方旅行的时候，在不远的距离内我会多半选择步行，边走边看。到</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>之眼摩天轮，感受一下一路上海河的美景，一座一座都很有特色的桥梁汇聚在</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>这条母亲河上，记载着</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>这座城市的点点滴滴。如果你要是选择在海河上坐船游览听讲解，可以在津湾广场等船，到</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>之眼，来回是一圈。你到</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>之眼，如果是旺季和周末想坐一圈俯瞰</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>夜景的话，你需要至少六点之前就过来买票。就这样你在海哥美丽的夜景中拍照留念，在绚烂的灯光中结束了这天的行程。<br><br><b>第二天，我们要找传统</b><br><br>第一站当然是古文化街，古文化街很短，主街一公里不到。整条街都是各式商铺，买东西慎重，不是不能买，是你需要砍价，最重要你得懂这些东西。因为是旅游景点，东西肯定会有真有假，我作为</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>人，深知古文化街还是有“宝贝”的，不全是假货。你在古文化街可以喝茶汤，可以听相声，可以观摩娘娘庙。<br>鼓楼的话看具体时间，选择去与不去。<br>南市食品街也是</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>的一个坐标地点，很多吃的店铺集聚于此，不过价格方面不便宜。<br>南市是</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>旧时候的“三不管”地方，也是地主资本家常驻的地方。<br></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>人爱吃包子，所以</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>包子很是出名，代表“狗不理”、“张记”、“石头门槛”。不过吃狗不理建议去辽宁路老店，其它都商业化的不行。在南市食品街你可以带点特色的</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>小吃回去。因为</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>有太多吃饭的地方，你可以大众点评网查看，太有“名气”的地方需要甄别，我一一介绍起来太过于复杂，可以留言问我。<br><br>还有下午半天的时间，如果你不想太累，又有购物倾向，就直接过去南开大悦城，那里离南市食品街很近，能满足吃、逛、看、玩一个商圈。<br><br>如果不想去商圈，建议最后半天去</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>博物馆或者水上公园（动物园）转一下。<br>有学府情怀就到南开大学看看，这些都是不用花钱的地方。<br><br>结束了两天的行程，当晚上你离开</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10320.html\" target=\"_blank\">天津</a></p><p>的时候，希望你可以感受都这座都市的现代感和年代感，欢迎下次再来，有充足的时间到</p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/16032.html\" target=\"_blank\">塘沽</a></p><p>等周围的景点再去感受不一样的风景。<br>==========<br><br>如果你觉得TA的回答不错，快来给TA点个赞吧！<br>你的支持是对作者莫大的鼓励~<br></p>', '2021-01-14 22:39:25', '2021-01-14 22:39:32');
INSERT INTO `t_comment` VALUES ('3', '1', null, '1', null, '2', '不错，我去过', '2021-01-30 12:36:48', '2021-01-30 12:36:51');
INSERT INTO `t_comment` VALUES ('4', '1', null, '1', null, '4', '挺不错的', '2021-01-31 11:01:33', '2021-01-31 11:01:36');
INSERT INTO `t_comment` VALUES ('6', '11', null, null, null, '1', '不过哈，海河的夜景，我滴最爱', '2021-02-02 21:00:32', '2021-02-02 21:00:38');
INSERT INTO `t_comment` VALUES ('7', '2', null, null, null, '1', '漂亮的解放桥，有兴趣来玩吗？', '2021-02-02 21:01:43', '2021-02-02 21:01:43');
INSERT INTO `t_comment` VALUES ('8', '12', null, null, null, '1', '盘山很厉害啊，过来玩', '2021-02-02 21:09:25', '2021-02-02 21:09:25');
INSERT INTO `t_comment` VALUES ('9', '14', null, null, null, '1', '欢迎使用来在                                        天塔                                    留下你的评论', '2021-02-10 12:30:28', '2021-02-10 12:30:28');
INSERT INTO `t_comment` VALUES ('10', '14', null, null, null, '1', 'hello', '2021-02-21 12:11:42', '2021-02-21 12:11:42');
INSERT INTO `t_comment` VALUES ('11', null, '1', null, '1', '1', '不错哦', '2021-03-08 15:47:42', '2021-03-08 15:47:45');
INSERT INTO `t_comment` VALUES ('12', '11', null, null, null, '1', '欢迎使用来在                                        海河                                    留下你的评论胸甲', '2021-03-08 20:11:08', '2021-03-08 20:11:08');
INSERT INTO `t_comment` VALUES ('13', null, null, null, '2', '2', '我曾经3天时间在天津吃了31顿，俨然把天津变成了自助餐厅....\r\n\r\nNo.1 煎饼果子\r\n煎饼果子，已经成为天津的符号了。它的各种衍生版，也早已席卷全国的街头巷尾。在其他城市，它或许叫煎饼（果子）、或许叫杂粮煎饼。\r\n\r\n但当你来到天津的街头，排着随便一家街头小店，等着买一个天津的煎饼果子，看着老板那手法、那食材，迷之熟悉，然而又有种说不出的不同。是了，在天津，此煎饼果子非外地的彼煎饼果子。\r\n\r\n就像外地绿牌牌的兰州拉面被兰州本地人嗤之以鼻一样，煎饼果子这种从山东的大片儿煎饼蜕变而来的早点，也被天津人化成了一种有当地特色的早餐品类，化成了一种每天早晨的仪式，化成了一种需要捍卫的信仰。  \r\n在天津，不需要推荐任何煎饼果子店，随便个居民区、大街小巷、菜场集市都能找到煎饼果子摊。天津的煎饼果子已经不简单的是早饭了，而是天津人的情怀。\r\n\r\n\r\nNo.2 锅巴菜\r\n首先一定要说下，天津当地对这个小吃的特别说法和写法。\r\n书面：锅巴菜；口语：ga巴菜。\r\n\r\n它看似不起眼，土黄色的掺一点点粉色卤汁满满一碗，糊了吧唧的，卤子里泡着饼条儿，装的太满，漏出碗边往外滴着。\r\n\r\n第一次见到，想着：这啥啊，吃的也太不讲究了。\r\n但是，刚一入嘴，立即打脸，不起眼的颜值下，味道好吃到词穷，好吃到没有嘴说话只有嘴咂吧。  \r\n\r\n【推荐店铺】\r\n鑫顺成锅巴菜\r\n地址：胜利路兴隆街10号，近天津站\r\n\r\n柴记早点\r\n地址：铃铛阁街道西马民族楼13门对过，近西北角地铁站  \r\n\r\n陈记锅巴菜\r\n地址：重庆道104号（桂林路口，近五大道）\r\n\r\n大福来（连锁店铺）、真素诚（连锁店铺）\r\n\r\n\r\nNo.3 卷圈\r\n淮河流域的安徽北部有小吃\"卷馍\"，用烙饼（更多是用春卷皮）卷上卤好的豆芽、面筋、香菜、干子、白煮蛋碎等等。\r\n\r\n而天津的卷圈，则多了两步骤，变成了完全不同的东西。一是把各类杂菜裹进薄薄的豆皮里，卷成有点像春卷的样子，把两头用面糊封住；二是把这\"春卷\"下油锅炸，炸至金黄捞出，包裹在烙饼里。  \r\n\r\n【推荐店铺】\r\n穆记卷圈\r\n地址：\r\n\r\n芥园道邮局对过铃铛阁中学旁边\r\n\r\n，近西北角地铁站\r\n\r\n柴记早点\r\n地址：铃铛阁街道西马民族楼13门对过，近西北角地铁站    \r\n\r\n\r\nNo.4 老豆腐\r\n首先强调下，严格来说老豆腐和豆腐脑是不同的东西，老豆腐是不带卤的，只放调料，类似于凉拌，豆腐脑带卤汤，但是多数天津人也都默认豆腐脑=老豆腐了。\r\n\r\n天津的老豆腐，一碗里基本只有一整块豆腐，上面划个十字刀，呼啦把汤浇上去。没有那么多零零碎碎的小菜，配菜大概只有零星的黄花菜、木耳丝和香菇丝，不仔细看也找不见，汤也不是稀的，而是调过味勾过芡的浓汤，吃起来很实在。根据口味还可以加上辣椒。  \r\n\r\n【推荐店铺】\r\n罗锅老豆腐\r\n地址： 华捷道美福园底商（东义芳堂门诊部旁，近天津站）\r\n\r\n大福来（连锁店铺）、\r\n\r\n真素诚（连锁店铺）\r\n', '2021-03-12 17:53:22', '2021-03-12 17:53:25');
INSERT INTO `t_comment` VALUES ('14', null, null, null, '2', '1', '欢迎使用来在                                        此                                        留下你的评论sdfa', '2021-03-12 18:23:04', '2021-03-12 18:23:04');
INSERT INTO `t_comment` VALUES ('15', '1', null, null, null, '1', '太漂亮了，', '2021-03-13 18:10:36', '2021-03-13 18:10:36');
INSERT INTO `t_comment` VALUES ('16', '1', null, null, null, '1', '天津之眼真漂亮', '2021-04-13 14:23:55', '2021-04-13 14:23:55');
INSERT INTO `t_comment` VALUES ('18', '1', null, null, null, '1', '欢迎使用阿斯蒂芬', '2021-04-13 16:12:07', '2021-04-13 16:12:07');
INSERT INTO `t_comment` VALUES ('19', '10', null, null, null, '1', '欢迎使用来在                                        古文化街                                    留下你的评论', '2021-04-18 14:02:33', '2021-04-18 14:02:33');
INSERT INTO `t_comment` VALUES ('20', '10', null, null, null, '1', '欢迎使用来在                                        古文化街                                    留下你的评论', '2021-04-18 14:02:39', '2021-04-18 14:02:39');
INSERT INTO `t_comment` VALUES ('21', '1', null, null, null, '1', '欢迎使用来在                                        天津之眼                                    留下你的评论但是手打', '2021-05-24 09:11:23', '2021-05-24 09:11:23');
INSERT INTO `t_comment` VALUES ('22', '1', null, null, null, '1', '欢迎使用来在                                        天津之眼                                    留下你的评论撒旦法', '2021-05-24 09:11:37', '2021-05-24 09:11:37');

-- ----------------------------
-- Table structure for t_guide
-- ----------------------------
DROP TABLE IF EXISTS `t_guide`;
CREATE TABLE `t_guide` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `category_id` int(6) DEFAULT NULL,
  `user_id` int(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `detail` text,
  `watch_count` int(6) DEFAULT '0',
  `praise_count` int(6) DEFAULT '0',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_guide
-- ----------------------------
INSERT INTO `t_guide` VALUES ('1', '1', '1', '在天津卫，暴走还是亲子你说了算！', '2016-06-15 00:00:00', '来天津旅游，通常大家都会选择去海河夜游或者意大利风情街拍拍照。但是天津文化真正的精髓却是在相声茶馆。如果来一趟天津卫不听一回天津相声，那你肯定会留有遗憾。喝着茶水，磕着瓜子，吃着点心，听着相声，那可是一乐。比较著名的“名流茶馆”，它的匾额出自马三立先生之手。最早是在新华路，现在在古文化街和多伦道也有名流茶馆分店，演出团队是相同的，因此不存在哪家更好的问题，一个团60多人，每次上场的也就六七对，都是大伙轮着演，即便是连续去同一家茶馆看演出，也不会跟昨天的重复。如果你实在有老店情怀，可以去新华路这家。官网上面有订票信息，如果周末去看，最好提前订票，以免买不上自己想看的场次。<br>如果你说自己已经去过海洋馆所以同类景点就没必要去的话，那么天津海昌极地海洋公园一定可以颠覆你之前的认知。这里的白鲸、海豚、伪虎鲸、海象、海狮各怀绝技，是最受欢迎的动物明星。全国领先的三大表演白鲸之恋、人鱼传说和欢乐海洋秀-麦莉的奥斯卡，每次都能引来无数游客的尖叫和欢呼。令人印象深刻的五大极地动物喂食秀和美轮美奂的十二大展区就在这等着你的到来。不要以为这里只是小孩子的乐园，如果你运气不错，可能有机会看到年轻的小伙在这里为自己心爱的姑娘安排的海底求婚甚至是婚礼哟（敲黑板，看重点，这里可以求婚有没有！）。\r\n', '100', '9623', '2021-03-08 14:47:08', '2021-03-08 14:47:08');
INSERT INTO `t_guide` VALUES ('2', '2', '1', '畅游天津：精简实用的旅行攻略', '2021-01-13 00:00:00', '1.【行程~~】\r\n建议蜂蜂选择前两天景点~~~\r\n强烈推荐【天津之眼】【意式风情区-马可波罗广场】【西开教堂】【瓷房子】【古文化街】\r\n\r\n第一天火车站——解放桥——世纪钟——津湾广场——意式风情区（住宿离这里很近）——金汤桥（玻璃桥）——古文化街（游船）——天津之眼\r\n天津站下车右手边就是世纪钟，穿过解放桥（造型类似于上海外白渡桥）就是津湾广场，津湾广场在火车站看对岸风景更美 。之后沿着海河往北安桥方向走就能到，还可以沿途欣赏海河美景。也可以从世纪钟那边自由道走进去。总之条条大路通罗马，只要蜂蜂找对了方向就行了，打车是完全不必的。至于蜂蜂行李要是很多，可以选择公交，很便宜的~~~从火车站坐公交（火车站有很多公交都到例如645、634、672等等）到意式风情区站下车。步行穿过金汤桥（玻璃、钢铁、木板集一体的特色桥）就是古文化街（可游览天后宫、天津特色泥人张、杨柳青年画、名流茶馆），走到古文化街尽头可步行至天眼（摩天轮），其间还通过望海楼大教堂（基督教堂）。具体坐游船可以在古文化街附近问一下售票处上船的地点之类问题，同程船票打八折。\r\n第二天五大道——滨江道步行街——西开教堂（南京路对面）——瓷房子（赤峰道72号）——和平路步行街 ——南市食品街（带特产回家）\r\n坐地铁（1号线小白楼站）或公交（小营门站）下车步行至马场道，可以乘坐马车，五大道较大，建议 坐马车租车，不赶时间可以步行。之后可以去逛街，公交到滨江道站下车，地铁在营口道站下车，南京 路对面是西开教堂，可以顺便参观，顺着滨江道步行街可以逛到和平路步行街，到了步行街尽头可以选 择公交坐到南市食品街，大约三站地。\r\n第三天可以选择做动车到武清佛罗伦萨小镇转一转，票价很便宜，逛街拍照两不误（动车很多趟，算好回程时间，东站下车不耽误回家）武清火车站下车对面就是，很近的。\r\n第四天塘沽外滩——极地海洋世界（适合带小孩或者情侣去玩）', '200', '1532', '2021-03-08 16:04:40', '2021-03-08 16:04:40');

-- ----------------------------
-- Table structure for t_guide_category
-- ----------------------------
DROP TABLE IF EXISTS `t_guide_category`;
CREATE TABLE `t_guide_category` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `sort_order` int(6) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_guide_category
-- ----------------------------
INSERT INTO `t_guide_category` VALUES ('1', '自由行指南', '1', '1', '2021-01-13 11:12:02', '2021-01-13 11:12:06');
INSERT INTO `t_guide_category` VALUES ('2', '组团指南', '1', '1', '2021-01-14 16:41:59', '2021-01-14 16:42:01');

-- ----------------------------
-- Table structure for t_question_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_question_answer`;
CREATE TABLE `t_question_answer` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `watch_count` int(6) DEFAULT '0',
  `praise_count` int(6) DEFAULT '0',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_question_answer
-- ----------------------------
INSERT INTO `t_question_answer` VALUES ('1', '1', '天津两日游，要如何安排行程呢？', '456', '546', '2021-03-10 14:44:00', '2021-03-10 14:44:00');
INSERT INTO `t_question_answer` VALUES ('2', '2', '你在天津吃的尽兴吗？', '1635', '156', '2021-03-10 20:39:46', '2021-03-10 20:39:46');
INSERT INTO `t_question_answer` VALUES ('3', '1', '天津一日游，从天津站开始!', '1653', '156', '2021-03-10 15:03:46', '2021-03-10 15:03:46');
INSERT INTO `t_question_answer` VALUES ('4', '1', '在天津去哪里能拍出民国风的照片？', '1659', '6532', '2021-03-10 14:44:39', '2021-03-10 14:44:39');
INSERT INTO `t_question_answer` VALUES ('5', '1', '天津五大道哪些地方最好玩？', '123', '416', '2021-03-10 14:44:23', '2021-03-10 14:44:23');
INSERT INTO `t_question_answer` VALUES ('6', '1', ' 吃货游天津，有哪些津味美食最值得推荐？', '5165', '5613', '2021-03-10 14:44:30', '2021-03-10 14:44:30');
INSERT INTO `t_question_answer` VALUES ('7', '1', '夏天天津有什么好玩的地方呢？', '0', '0', '2021-03-12 11:13:35', '2021-03-12 11:13:35');
INSERT INTO `t_question_answer` VALUES ('8', '1', '时间在哪里', '0', '0', '2021-04-13 14:26:08', '2021-04-13 14:26:08');
INSERT INTO `t_question_answer` VALUES ('9', '1', '三大地方', '0', '0', '2021-05-24 09:10:03', '2021-05-24 09:10:03');
INSERT INTO `t_question_answer` VALUES ('10', '1', '十大女', '0', '0', '2021-05-24 09:10:10', '2021-05-24 09:10:10');

-- ----------------------------
-- Table structure for t_travel_notes
-- ----------------------------
DROP TABLE IF EXISTS `t_travel_notes`;
CREATE TABLE `t_travel_notes` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `main_image` varchar(500) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `start_day` varchar(50) DEFAULT NULL,
  `start_number` varchar(50) DEFAULT NULL,
  `average_cost` varchar(50) DEFAULT NULL,
  `watch_count` int(6) DEFAULT '0',
  `praise_count` int(6) DEFAULT '0',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_travel_notes
-- ----------------------------
INSERT INTO `t_travel_notes` VALUES ('1', '1', '出发，新一年的旅程就从天津开始', 'http://localhost:8888/wKgEaVxsHMGACrzVAA2cpQIfBwk06.jpeg', '2021-03-10 14:29:46', '3 天', '带孩子', '800RMB', '935', '865', '2021-03-10 14:29:46', '2021-03-10 14:29:46');
INSERT INTO `t_travel_notes` VALUES ('2', '2', '这是天津味儿——美食编辑私房食单', 'http://localhost:8888/travel2.jpg', '2021-03-08 16:39:30', '1天', '3人', '900RMB', '500', '500', '2021-03-08 16:39:30', '2021-03-08 16:39:30');
INSERT INTO `t_travel_notes` VALUES ('3', '1', '一个人吃遍所有人均10元的地道天津小吃', 'http://localhost:8888/travel3.jpg', '2021-03-08 16:39:30', '3 天', '带孩子', '800RMB', '400', '400', '2021-03-08 16:39:30', '2021-03-08 16:39:30');
INSERT INTO `t_travel_notes` VALUES ('4', '1', '天津四年｜我在这里拍照散步、吃美食', 'http://localhost:8888/travel4.jpg', '2021-03-08 16:39:30', '3 天', '带孩子', '800RMB', '300', '300', '2021-03-08 16:39:30', '2021-03-08 16:39:30');
INSERT INTO `t_travel_notes` VALUES ('5', '1', '纪念甲骨文发现120周年特展举凡', 'http://localhost:8888/travel5.jpg', '2021-03-08 16:39:30', '3 天', '带孩子', '800RMB', '100', '100', '2021-03-08 16:39:30', '2021-03-08 16:39:30');
INSERT INTO `t_travel_notes` VALUES ('6', '1', '纪念甲骨文发现120周年特展举凡', 'http://localhost:8888/travel5.jpg', '2021-03-08 16:39:30', '3 天', '带孩子', '800RMB', '100', '100', '2021-03-08 16:39:30', '2021-03-08 16:39:30');
INSERT INTO `t_travel_notes` VALUES ('7', '1', '纪念甲骨文发现120周年特展举凡', 'http://localhost:8888/travel5.jpg', '2021-03-08 16:39:30', '3 天', '带孩子', '800RMB', '100', '100', '2021-03-08 16:39:30', '2021-03-08 16:39:30');

-- ----------------------------
-- Table structure for t_travel_notes_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_travel_notes_detail`;
CREATE TABLE `t_travel_notes_detail` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `travel_notes_id` int(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `detail` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_travel_notes_detail
-- ----------------------------
INSERT INTO `t_travel_notes_detail` VALUES ('1', '1', '为什么是天津', '2019年01月22日，我向自己预约了这篇游记，当时我说：新年第一游，带孩子们一起去探索兼具民国范与现代气息的 天津 城。');
INSERT INTO `t_travel_notes_detail` VALUES ('2', '1', '梦想照进现实', '梦想还是要有的，万一实现了呢？\r\n— 马云？雷军？\r\n谁说的不重要，重要的是大佬的话很有道理，心动不如行动，努力实现自己的梦想吧。');
INSERT INTO `t_travel_notes_detail` VALUES ('3', '1', 'Step 1：先过父母关', '因为是春节出行，所以必须先跟父母打招呼，在爸妈的印象里， 天津 跟工业城市是完全挂钩的。所以他们眼中的 天津 是这样的↓,别忙着擦屏幕了，是窗户上的土   。\r\n\r\n爸妈的理由很充分：空气不好，天儿冷，大过年的瞎折腾啥， 天津 没什么孩子玩的。其实父母对 天津 的印象可能还停留在二十年前，那时候 中国 的大多数城市空气都不怎么样，华北地区到处是重工业城市。不过跟父母讲道理一般是徒劳的，因为从没 成功 过，最好的方法就是让他们的孙子出马。于是我问孩子们：\r\n想不想去看航母！！！');
INSERT INTO `t_travel_notes_detail` VALUES ('4', '1', 'Step 2：亲子游不能大众化', '严格来说， 天津 跟 青岛 还是有几份相似的， 比如 老城区一栋栋民国时期兴建的洋楼和充满异域风情的街道。不过，文艺青年和小资们的最爱不一定适合孩子，而且容易形成审美疲劳。所以这次旅行我们选择了不走寻常路的小众玩法，网络上排名前几位的景区全部忽略，以孩子的兴趣为主。然后是订酒店，虽然父母同意，但过年也不能不意思意思，正好媳妇家的习惯是初四回娘家，加上除夕陪爸妈，初一至初四插空三天玩。\r\n此外，还有三大因素需要考虑   。\r\n1、返程顺路去丈母娘家一般都大包小包的，只能开车去，所以得找个有停车场的酒店；\r\n2、只有三天，时间紧迫，酒店位置也不能太差，玩起来比较方便；\r\n3、过年手头紧张，价格还不能太高    ，不过春节期间的酒店貌似都涨价了。\r\n还好运气不错，这样的酒店真给我找到了。就是↓\r\n\r\n');
INSERT INTO `t_travel_notes_detail` VALUES ('5', '1', 'Step 3：等等等等…', '万事俱备，只有等等等…。\r\n等什么呢：\r\n一、孩子别生病。冬天小朋友容易生病，这也是我们一直没有跟哥俩跑太远的原因，每次出行都小心翼翼，带着各种药物以防万一。虽然大多数都没有用到，但还是有备无患的好。<br>亲子游好多次了，从来没敢订不可取消的酒店。\r\n为啥？\r\n细菌无处不在，流感随时爆发，孩子伤不起啊…\r\n还好这次孩子们很争气   ,<br><br>二、天气。旅行千万不能忽略了天气影响，阴天下雨跟风和日丽完全两种心情，试想一开车门，满眼的乌云密布，身体被狂风摧残…仿佛一万只羊驼在我面前走过，真想马上打道回府。http://www.mafengwo.cn/photo/10320/scenery_11906222/429226764.html<br>初到 天津 阴云密布，教堂的屋顶感觉都灰头土脸的↑');
INSERT INTO `t_travel_notes_detail` VALUES ('11', '2', '为什么是天津', '2019年01月22日，我向自己预约了这篇游记，当时我说：新年第一游，带孩子们一起去探索兼具民国范与现代气息的 天津 城。');
INSERT INTO `t_travel_notes_detail` VALUES ('12', '2', '梦想照进现实', '梦想还是要有的，万一实现了呢？\r\n— 马云？雷军？\r\n谁说的不重要，重要的是大佬的话很有道理，心动不如行动，努力实现自己的梦想吧。');
INSERT INTO `t_travel_notes_detail` VALUES ('13', '2', 'Step 1：先过父母关', '因为是春节出行，所以必须先跟父母打招呼，在爸妈的印象里， 天津 跟工业城市是完全挂钩的。所以他们眼中的 天津 是这样的↓,别忙着擦屏幕了，是窗户上的土   。\r\n\r\n爸妈的理由很充分：空气不好，天儿冷，大过年的瞎折腾啥， 天津 没什么孩子玩的。其实父母对 天津 的印象可能还停留在二十年前，那时候 中国 的大多数城市空气都不怎么样，华北地区到处是重工业城市。不过跟父母讲道理一般是徒劳的，因为从没 成功 过，最好的方法就是让他们的孙子出马。于是我问孩子们：\r\n想不想去看航母！！！');
INSERT INTO `t_travel_notes_detail` VALUES ('14', '2', 'Step 2：亲子游不能大众化', '严格来说， 天津 跟 青岛 还是有几份相似的， 比如 老城区一栋栋民国时期兴建的洋楼和充满异域风情的街道。不过，文艺青年和小资们的最爱不一定适合孩子，而且容易形成审美疲劳。所以这次旅行我们选择了不走寻常路的小众玩法，网络上排名前几位的景区全部忽略，以孩子的兴趣为主。然后是订酒店，虽然父母同意，但过年也不能不意思意思，正好媳妇家的习惯是初四回娘家，加上除夕陪爸妈，初一至初四插空三天玩。\r\n此外，还有三大因素需要考虑   。\r\n1、返程顺路去丈母娘家一般都大包小包的，只能开车去，所以得找个有停车场的酒店；\r\n2、只有三天，时间紧迫，酒店位置也不能太差，玩起来比较方便；\r\n3、过年手头紧张，价格还不能太高    ，不过春节期间的酒店貌似都涨价了。\r\n还好运气不错，这样的酒店真给我找到了。就是↓\r\n\r\n');
INSERT INTO `t_travel_notes_detail` VALUES ('15', '2', 'Step 3：等等等等…', '万事俱备，只有等等等…。\r\n等什么呢：\r\n一、孩子别生病。冬天小朋友容易生病，这也是我们一直没有跟哥俩跑太远的原因，每次出行都小心翼翼，带着各种药物以防万一。虽然大多数都没有用到，但还是有备无患的好。<br>亲子游好多次了，从来没敢订不可取消的酒店。\r\n为啥？\r\n细菌无处不在，流感随时爆发，孩子伤不起啊…\r\n还好这次孩子们很争气   ,<br><br>二、天气。旅行千万不能忽略了天气影响，阴天下雨跟风和日丽完全两种心情，试想一开车门，满眼的乌云密布，身体被狂风摧残…仿佛一万只羊驼在我面前走过，真想马上打道回府。http://www.mafengwo.cn/photo/10320/scenery_11906222/429226764.html<br>初到 天津 阴云密布，教堂的屋顶感觉都灰头土脸的↑');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'hello', 'admin', '2021-05-23 22:59:41', '2021-05-23 22:59:41');
INSERT INTO `t_user` VALUES ('2', 'world', 'admin', '2021-01-14 19:40:12', '2021-01-14 19:40:15');
INSERT INTO `t_user` VALUES ('4', 'nice', 'admin', '2021-01-14 21:48:57', '2021-01-14 21:48:59');
INSERT INTO `t_user` VALUES ('5', 'lll', '123456q', '2021-05-23 19:03:45', '2021-05-23 19:03:45');

-- ----------------------------
-- Table structure for t_user_info
-- ----------------------------
DROP TABLE IF EXISTS `t_user_info`;
CREATE TABLE `t_user_info` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `head_image` varchar(500) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_user_info
-- ----------------------------
INSERT INTO `t_user_info` VALUES ('1', '1', '万事顺心', '18830007001', 'wxc7010@163.com', 'http://localhost:8888/191209e0-7872-4842-978b-a2521478da5f.jpg', '万事顺心，开开心心');
INSERT INTO `t_user_info` VALUES ('2', '2', '闲心', '18830007222', 'wxcv@163.com', 'http://localhost:8888/cdf5aa11-bee3-4159-8954-be70c2de02aa.jpg', '大智若愚，求技若渴');
INSERT INTO `t_user_info` VALUES ('4', '4', '花好月圆', '18890007021', 'er@163.com', 'http://localhost:8888/d5a7f526-7838-4c7a-8602-8dd75433d1c4.jpg', '时间就像海绵里面的水。');
INSERT INTO `t_user_info` VALUES ('5', '5', '123', '18830007021', '123asd', 'http://localhost:8888/191209e0-7872-4842-978b-a2521478da5f.jpg', 'sdsf');

-- ----------------------------
-- Table structure for t_view
-- ----------------------------
DROP TABLE IF EXISTS `t_view`;
CREATE TABLE `t_view` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `category_id` int(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `english_name` varchar(50) DEFAULT NULL,
  `subtitle` varchar(200) DEFAULT NULL,
  `main_image` varchar(500) DEFAULT NULL,
  `sub_images` text,
  `detail` text,
  `traffic` varchar(255) DEFAULT NULL,
  `ticket` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `need_time` varchar(50) DEFAULT NULL,
  `opening_hours` varchar(200) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `watch_count` int(6) DEFAULT '0',
  `praise_count` int(6) DEFAULT '0',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_view
-- ----------------------------
INSERT INTO `t_view` VALUES ('1', '2', '天津之眼', 'Eye of Tianjin', '天津之眼是世界上唯一一个桥上瞰景摩天轮，是天津的地标之一', 'http://localhost:8888/d6af066e-7d1b-4f87-9f68-48594462bf58.jpg', 'http://localhost:8888/1d665f89-2806-495f-92b7-f82c90db8d73.jpg,http://localhost:8888/8b44b6a5-f311-4eec-8a69-9db919fea1c5.jpg', '摩天轮天津之眼是天津市河北区的一处国家4A级景区（由天津市河北区政府出资建设）是亚洲第一摩天轮，是一座跨河建设、桥轮合一的摩天轮，兼具观光和交通功用。<br>摩天轮外挂装48个透明座舱，每舱可乘8个人。舱内有空调和风扇调节温度，可同时供384人观光。 摩天轮转动一圈的时间会受到乘客人数、天气变化的影响，保持在20至40分钟之间。天津永乐桥摩天轮的每个座舱的面积达到12平方米左右，可供8个人同时乘坐。据了解，48个座舱将在电力的驱动下匀速旋转，转一圈大约需要30分钟。可供300~400人同时观光。摩天轮的直径有110米，因此，对它的转动轴技术含量要求很高,天津之眼的转动轴是德国制造的，摩天轮已经通过了抗压、抗渗、抗折、抗冻等强度试验。', '乘坐34、4、607、611、640、659、673、802、841、849、863、869、878路公交车在五马路站下车即可到达', '全价票：70元', '18830007000', '1-3小时', '周二至周日 09:30-21:30', '天津市红桥区三岔河口永乐桥上', '1656', '123', '2021-01-29 17:43:39', '2021-01-29 17:43:39');
INSERT INTO `t_view` VALUES ('2', '2', '解放桥', 'Jiefang Bridge', '原名为“万国桥”，因当时天津有九国租界，号称“国中之国”，天津解放后，此桥更名为“解放桥”', 'http://localhost:8888/bb80b421-f068-4763-9306-6294cc9b019f.jpg', 'http://localhost:8888/1c012e72-fd6b-4107-956a-ab491f65588b.jpg,http://localhost:8888/5f8b1445-0286-4088-9bcc-2f851589c522.jpg', '<p>1</p>', '乘13路至天津站下(线路非常多，注意是到天津站，而不是天津站海河广场或天津站后广场)乘818路至长春道站下车直行到解放北路可到达。', '免费', '18830007000', '1小时以下', '全天', '天津市和平区解放北路与张自忠路交口', '656', '58', '2021-01-28 21:30:04', '2021-01-28 21:30:04');
INSERT INTO `t_view` VALUES ('3', '2', '金汤桥', '', '金汤桥最初建于1906年，是天津最早的大型钢铁结构桥梁，因平津战役中解放军胜利会师于此，而成为象征天津解放的标志性大桥。桥梁制造有玻璃成分，因而也叫“玻璃桥”。白色的桥上布满了灯柱，到了晚上全部亮起来，夜景非常美，值得一游。', 'http://localhost:8888/7e6c4466-5cc4-441a-9ccd-95594789c992.jpg', 'http://localhost:8888/c76ff2c6-d3e0-4d6f-9f2a-c11323de5aab.jpg,http://localhost:8888/02d2da92-ef7f-472f-8b12-313a06e60e44.jpg', '<p>1</p>', '从古文化街景区向南，沿张自忠路步行即到。公交：乘坐324路到瑞海名苑站下车可达。', '具体详情请咨询景区', '18830007000', '1小时以下', '全天 (1月1日-12月31日 周一-周日)', '天津市南开区建国道西端与水阁大街之间的海河上', '965', '156', '2021-01-28 21:30:26', '2021-01-28 21:30:27');
INSERT INTO `t_view` VALUES ('4', '2', '狮子林桥', '', '狮子林桥位于横跨海河之上，连接起古文化街景区和望海楼地区，是海河上一座地标性的桥梁。桥上的狮子们每一个都形态不一，生动活泼，有黑色和白色的，非常可爱。', 'http://localhost:8888/537688fc-09f3-466b-8889-ad1a55b437da.jpg', 'http://localhost:8888/f9c9ade2-81de-4576-923a-a286b6b9b523.jpg,http://localhost:8888/d5044837-4ca8-4a80-87f5-f421650e94e6.jpg', '<p>1</p>', '公交：乘15、172、461、574、600路内环、600路外环、633、653、675、681、804、849、856、863、903、907、908、954路至望海楼站下。', '具体详情请咨询景区', '18830007000', '1小时以下', '全天 (1月1日-12月31日 周一-周日)', '天津市河北区狮子林大桥', '894', '123', '2021-01-28 21:30:59', '2021-01-28 21:30:59');
INSERT INTO `t_view` VALUES ('5', '2', '金刚桥', '', '金刚桥始建于1903年，因不能负重，1924年又建新桥，即今改建前的金钢桥。这座纯用铆钉铆起来的钢铁浮桥，曾是天津一道著名的风景。每到晚上，这座桥亮起灯来，变得特别漂亮。', 'http://localhost:8888/a250808d-fbb9-47e4-b594-7fb266b96e14.jpg', 'http://localhost:8888/9b14c6d2-adc0-45a0-87ad-dc2c9d9a9d35.jpg,http://localhost:8888/21d9f899-5ae2-4969-9549-f1f9bb3699b8.jpg', '<p>1</p>', '沿中山路南行即到，或乘公交车1、4、12、18、34、324、609、610、611、619路等，到金钢桥站下车即是。', '具体详情请咨询景区', '18830007000', '1小时以下', '全天 (1月1日-12月31日 周一-周日)天津市红桥区中山路', '天津市红桥区中山路', '965', '516', '2021-01-29 11:57:24', '2021-01-29 11:57:24');
INSERT INTO `t_view` VALUES ('6', '2', '大沽桥', '', '大沽桥是海河上众多桥梁中的一座，连接河北五马路和和平大沽北路。桥梁外观很有设计感和现代美感，造型别致，晚上的夜景更是漂亮。', 'http://localhost:8888/4360c45d-2fab-4f89-91b6-93fbb80aa218.jpg', 'http://localhost:8888/3cb55d83-a7ff-4646-9a69-45547476f1ed.jpg,http://localhost:8888/704d8a6b-694d-4b5e-82c4-95e2b18f71ff.jpg', '<p>1</p>', '乘5、901路到大沽桥车站下车即是。', '具体详情请咨询景区', '18830007000', '1小时以下', '全天 (1月1日-12月31日 周一-周日)', '天津市和平区大沽北路（五经路口）', '8956', '5623', '2021-01-28 21:31:46', '2021-01-28 21:31:46');
INSERT INTO `t_view` VALUES ('7', '2', '北安桥', '', '北安桥位于意式风情街附近，始建于1939年，是连接起河北区胜利路与和平区福安大街的跨海河桥。', 'http://localhost:8888/a901a896-19da-4547-8d7b-eeac191e9a67.jpg', 'http://localhost:8888/7a4abf6b-f8a5-4ae0-9cc9-4924c6b1a8ae.jpg,http://localhost:8888/655357f9-1e90-45e3-9b84-8ca797485ba7.jpg', '<p>1</p>', '公交：乘坐191路;324路;570路津芦专线;574路;639东线;639西线;651路;672路;676路;901路;905路;961路;津芦空调专线;通勤快车55路到北安桥站下车可达。', '具体详情请咨询景区', '18830007000', '1小时以下', '全天 (1月1日-12月31日 周一-周日)', '天津市河北区胜利路（北安道）', '8956', '4520', '2021-01-28 21:32:13', '2021-01-28 21:32:14');
INSERT INTO `t_view` VALUES ('8', '2', '大光明桥', '', '大光明桥建于1983年，桥长350米，宽30.5米，是连接河东、和平两区的重要跨河枢纽桥梁。', 'http://localhost:8888/44405ab2-ae0f-4337-9f02-e318eaad4c23.jpg', 'http://localhost:8888/ee6e8514-442d-4f97-b174-33d0157f4f6b.jpg,http://localhost:8888/8cf59794-f491-4995-b053-0e703d66719d.jpg', '<p>1</p>', '从曲阜道向东即到；或乘600、643、673、840、842、843、847、866、871、963路到大光明桥站下车即是', '具体详情请咨询景区', '18830007000', '1小时以下', '全天 (1月1日-12月31日 周一-周日)', '天津市河东区十一经路', '9865', '5613', '2021-01-28 21:32:32', '2021-01-28 21:32:33');
INSERT INTO `t_view` VALUES ('9', '2', '赤峰桥', '', '赤峰桥是天津地标性的一座跨河大桥，是连接和平区与河东区的交通要道，从天津站、津湾广场就可以望见这座壮观的大桥。', 'http://localhost:8888/5c84610a-61b6-4596-b5d4-fc9805d2c21e.png', 'http://localhost:8888/83f31f1e-8984-4ca0-851b-6e0933c4814a.jpg,http://localhost:8888/35efafd6-1c5a-4c3c-a5b1-07eeeb9bd136.jpg', '<p>1</p>', '公交：乘坐96路;96路区间;338路;516路市区线;528路;600路河北河东方向;600路南开和平方向;640路;663路;681路;803路;856路;868路;916路;通勤快车19路到李公楼站下车可达。', '具体详情请咨询景区', '18830007000', '1小时以下', '全天 (1月1日-12月31日 周一-周日)', '天津市河东区六纬路', '6532', '513', '2021-01-28 21:32:55', '2021-01-28 21:32:56');
INSERT INTO `t_view` VALUES ('10', '1', '古文化街', 'Tianjin ancient cultural street', '古文化街位于天津市南开区，以天后宫为中心，是天津著名老字号和手工艺品店的集中地，来津必游地之一。', 'http://localhost:8888/152f1603-7819-4544-827e-0783badd15ad.jpg', 'http://localhost:8888/3297ee20-1206-4cdd-abba-6a37453bb658.jpg,http://localhost:8888/5293d2f5-0490-4fe0-81ba-18a716e92fa1.jpg', '<p>1</p>', '乘1、1区间、605、610、611、619、632、633、641、671空调、804、904、908、954、观光2路等公交车在北城街站或东北角站下车可达。', '免费', '18830007000', '1-3小时', '全天 (1月1日-12月31日 周一-周日)', '天津市南开区通北路', '561', '6323', '2021-01-29 11:57:22', '2021-01-29 11:57:22');
INSERT INTO `t_view` VALUES ('11', '1', '海河', '', '起自天津金钢桥，到大沽口入渤海湾，贯穿天津市区，是天津的“母亲河”。', 'http://localhost:8888/a970be49-b29e-4557-923c-79c8598ef330.jpg', 'http://localhost:8888/8135a05b-f355-4b0b-adf0-a12c87544cde.jpg,http://localhost:8888/236e2b18-ddc1-4d9a-9b58-1a4bc9efdcac.jpg', '<p>1</p>', '公交：乘坐760路;观光3路到刘庄桥站下车可达。', '具体详情请咨询景区', '18830007000', '1-3小时', '全天', '天津市河东区大直沽中路附近', '6531', '132', '2021-01-28 21:33:57', '2021-01-28 21:33:57');
INSERT INTO `t_view` VALUES ('12', '1', '盘山风景名胜区', '', '盘山风景区集幽林，古洞，奇峰，秀水于一身，开放了五大景区，一百三十余处景点。', 'http://localhost:8888/accc42f3-41af-4aba-8e74-b7c1088d5d05.jpg', 'http://localhost:8888/3315bfdb-da1f-4771-bef5-0e09276aa5f3.jpg,http://localhost:8888/453adcad-5805-4ede-ad63-b17c9ef5c91f.jpg', '<p>1</p>', '在天津河北客运站乘至蓟县的长途车，30-40元/人，车程约2.5-3小时，到达后在鼓楼广场转乘面包车前往景区，约10元/人；', '盘山门票:成人票78人民币；成人票+单程上行入胜索道:138人民币；成人票+单程上行云松索道:138人民币；成人票+上行电瓶车+单程上行挂月索道:178人民币 (1月1日-12月31日 周一-周日)', '18830007000', '2-4小时', '08:00-16:30 (01月01日-04月30日 周一-周日)08:00-17:00 (05月01日-10月15日 周一-周五)07:00-18:00 (05月01日-10月15日 周六-周日)08:00-16:30 (10月16日-12月31日 周一-周日)', '天津市蓟州区官庄镇莲花岭村盘山风景名胜区天津市蓟州区官庄镇莲花岭村盘山风景名胜区天津市蓟州区官庄镇莲花岭村盘山风景名胜区天津市蓟州区官庄镇莲花岭村盘山风景名胜区', '6513', '2313', '2021-01-28 21:34:26', '2021-01-28 21:34:27');
INSERT INTO `t_view` VALUES ('13', '1', '天津水上公园', 'Tianjin Water Park', '4A级景区，津门十景之一，又名“龙潭浮翠”，是天津最大的公园，适合早晚漫步和约会。', 'http://localhost:8888/5d962409-b662-4875-b5b3-89d1550d155e.jpg', 'http://localhost:8888/9a74d910-051e-4a04-901f-8c77b519d4b5.jpg,http://localhost:8888/4a7d3adb-6056-4ae8-a39c-736c599f406f.jpg', '<p>1</p>', '地铁：乘坐3号线至周邓纪念馆站下车即可到达。', '公园免门票，内部娱乐设施、动物园等单独收费', '18830007000', '1-3小时', '06:00-19:00 (1月1日-12月31日 周一-周日)', '天津市南开区水上公园东路', '6552', '7777', '2021-01-31 21:29:09', '2021-01-31 21:29:09');
INSERT INTO `t_view` VALUES ('14', '1', '天塔', 'Tientsin Tower', '津门十景之一，景名“天塔旋云”。集旅游观光、餐饮娱乐和广播电视发射多功能于一体。', 'http://localhost:8888/b1e6ff6f-8424-4d67-917b-63e81bf15c50.jpg', 'http://localhost:8888/0d9b18e5-4400-4eb6-b286-815994185f61.jpg,http://localhost:8888/3ecb9fa6-152a-44b4-a059-4779b25ac2e6.jpg', '<p>1</p>', '乘地铁3号线直达，或乘8、12、161、628、643、658、675、686、710、710区、832、859、866、872路等公交车在天塔站下东侧即是。', '成人:50人民币 (1月1日-12月31日 周一-周日);半票:身高1.2米（不含）以上6-8周岁儿童、60岁以上（含）老人凭本人身份证或老年证;免票:身高1.2米（含）以下儿童', '18830007000', '1-3小时', '08:00-22:00(旺季)；停止入场时间:21:30 (05月01日-10月31日 周一-周日);08:30-21:30(淡季)；停止入场时间:21:00 (01月01日-04月30日,11月01日-12月31日 周一-周日)', '天津市河西区卫津南路1号', '1', '0', '2021-01-29 10:52:19', '2021-01-29 10:52:19');
INSERT INTO `t_view` VALUES ('15', '1', '黄崖关长城', '', '东侧山崖的岩石多为黄褐色，在夕阳映照下，金碧辉煌，素有“晚照黄崖”之称，关城因此得名。', 'http://localhost:8888/af4c55ef-779d-49a5-bed3-84d42ce1bf99.jpg', 'http://localhost:8888/4c53cff8-6502-4be4-a2f1-a595a628e657.jpg,http://localhost:8888/d85dceb0-957b-4fc3-8655-93f0543cd08f.jpg', '<p>1</p>', '在天津河北客运站乘至蓟县的长途车，走高速40元，时程约100分钟；不走高速30元。到达蓟县后，转乘中巴车或小面包车至景区，10-25元/人。从黄崖关长城返回蓟县，在景区门口的马路上拦车即可。;公交：乘坐平50路快活林到快活林站下车可达', '成人票:65人民币；观光车:单程30人民币/全程50人民币 (1月1日-12月31日 周一-周日)半票:60周岁以上老人、全日制大中小学生凭有效证件免票:1.2米以下儿童、现役军人、70周岁以上老人、残疾人凭相关证件', '18830007000', '3小时以上', '08:00-17:00 (1月1日-12月31日 周一-周日)', '天津市蓟州区黄崖关村津围公路', '1100', '0', '2021-01-29 11:59:34', '2021-01-29 11:59:34');
INSERT INTO `t_view` VALUES ('16', '1', '独乐寺', '', '独乐寺，又称大佛寺，位于中国天津市蓟州区，是中国仅存的三大辽代寺院之一，也是中国现存著名的古代建筑之一。独乐寺虽为千年名刹，而寺史则殊渺茫，其缘始无可考，寺庙历史最早可追至贞观十年（公元636年）。', 'http://localhost:8888/850a67cf-0e3d-4d27-8bc1-7c2ff58513b9.jpg', 'http://localhost:8888/0f7bffed-d981-43df-9c1d-3c3a2bea38d6.jpg,http://localhost:8888/eb0d7eff-2751-4323-a0f6-51036fbe91ac.jpg', '<p>1</p>', '乘旅游专线11路在古街西口站下车可达，乘531路公交车在独乐寺站下车可达。', '门票37元，联票50元', '18830007000', '1-3小时', '08:00-18:00 (5月1日-10月1日 周一-周日)08:00-17:00 (10月2日-次年4月30日 周一-周日)', '天津市蓟县城内武定街41号（古街西口）', '100', '0', '2021-01-29 11:58:07', '2021-01-29 11:58:07');
INSERT INTO `t_view` VALUES ('17', '1', '大沽口炮台遗址博物馆', 'Taku Fort', '毗邻大沽口的海门大桥、大沽灯塔。白天，可在炮台遗址游玩，乘快艇出海；入夜，可观赏大桥无数彩灯齐放。', 'http://localhost:8888/3e35c1f0-1362-443c-9b14-883dec64f460.jpg', 'http://localhost:8888/77d24afb-9f7b-40d8-833b-3ae19b53df2a.jpg,http://localhost:8888/7ec6eec5-4747-4ece-bb36-918cb0b5ed53.jpg', '摩天轮天津之眼是天津市河北区的一处国家4A级景区（由天津市河北区政府出资建设）是亚洲第一摩天轮，是一座跨河建设、桥轮合一的摩天轮，兼具观光和交通功用。<br>\r\n摩天轮外挂装48个透明座舱，每舱可乘8个人。舱内有空调和风扇调节温度，可同时供384人观光。 摩天轮转动一圈的时间会受到乘客人数、天气变化的影响，保持在20至40分钟之间。天津永乐桥摩天轮的每个座舱的面积达到12平方米左右，可供8个人同时乘坐。据了解，48个座舱将在电力的驱动下匀速旋转，转一圈大约需要30分钟。可供300~400人同时观光。摩天轮的直径有110米，因此，对它的转动轴技术含量要求很高,天津之眼的转动轴是德国制造的，摩天轮已经通过了抗压、抗渗、抗折、抗冻等强度试验。', '位于滨海新区塘沽东炮台路，自驾或者乘坐公共交通到达。', '门票30元/人（学生证和团体票半价）；讲解100元/场', '18830007000', '1-3小时', '09:00-17:30；停止售票时间:17:00 (04月01日-10月31日 周一-周日)09:00-16:30；停止售票时间:16:00 (11月01日-次年03月31日 周一-周日)', '天津市滨海新区塘沽东炮台路1号', '1', '0', '2021-01-29 17:42:00', '2021-01-29 17:42:00');
INSERT INTO `t_view` VALUES ('18', '1', '中环线', null, '中环线天津市中环线是一条围绕津城市区的环城公路，道路两旁不仅高楼林立，树木成荫，还有众多的公园及园林小品令人流连忘返，目不暇接。因此说中环线就象一条彩练一样，把津城打扮得分外妖娆', '1', ';', null, '天津市西青区东半环（光华桥至勤俭桥）', '具体详情请咨询景区', '18830007000', '1小时以下', '全天 (1月1日-12月31日 周一-周日)', '天津市西青区东半环（光华桥至勤俭桥）', '1', '0', '2021-01-28 19:56:39', '2021-01-28 19:56:39');
INSERT INTO `t_view` VALUES ('19', '4', '天津博物馆', null, '天津博物馆的前身可追溯到1918年成立的天津博物院，尽管是近年新建的，失了不少古味，却依然是承续天津地方历史文化的主要场所。\r\n博物馆共4层，一楼是“天津人文的由来”，二楼是馆藏文物精品展，三楼是“中华百年看天津”，四楼是书画展。在此了解整个天津的历史变迁、地方文化等，而镇馆之宝如北宋范宽《雪景寒林图》轴、清乾隆珐琅彩芍药稚鸡纹玉壶春瓶、西周太保鼎、黄玉猪龙等也会让你值得此行。', '1', ';', null, '地铁：乘坐5、6号线至文化中心站，F/G口出站后步行400米即可到达。\r\n公交：乘坐47单层、655、668、686、835、868、912路公交车到天津博物馆站下车即可到达。', '门票免费，可网上预约或凭身份证在现场领票参观；讲解费用为80元/展厅', null, '1-3小时', '不对外开放(节假日除外)\r\n(1月1日-12月31日 周一)', '天津市和平区赤峰道72号(近和平路商业街)', '0', '0', '2021-01-28 19:56:40', '2021-01-28 19:56:40');
INSERT INTO `t_view` VALUES ('22', '1', '美景', 'beautiful scenery', '美景很美呀', 'http://localhost:8888/966a5476-c222-47c1-b8f9-03aed849127e.jpg', 'http://localhost:8888/cd72d97a-3a8a-4b1b-ab69-dde2b3768d7a.jpg,http://localhost:8888/3f1b7c92-9a8d-485e-801c-86b3ac31bc0e.jpg', '<p>啊色地方</p>', '天津市西青区东半环（光华桥至勤俭桥）', '免费', '18830007000', 's地方', '违法', '撒地方', '1', '0', '2021-04-06 23:54:02', '2021-04-06 23:54:02');
INSERT INTO `t_view` VALUES ('23', '1', '水电费', 'ewr', '325', 'http://localhost:8888/f4f68c15-c4db-49d2-88a0-63fbdead9591.jpg', 'http://localhost:8888/0a590fad-f5be-46d4-aa6a-0d2987e0def9.jpg,http://localhost:8888/cce4e86a-65b6-4916-b6f6-23e67920cc52.jpg', '<p>435</p>', '345', '435', '435', '45', '45', '4532', '0', '0', '2021-01-11 21:01:53', '2021-01-11 21:01:54');
INSERT INTO `t_view` VALUES ('25', '1', '津门石晶', '', 'jkl', 'http://localhost:8888/cdb8cf44-2b5f-4265-8e65-7f2edbc99f4a.jpg', 'http://localhost:8888/3f0bd6ec-f874-469f-947b-88160b2d9f7d.jpg,http://localhost:8888/b9ce29a7-9c0d-456e-bc44-953f91c99199.jpg', '<p>asdf</p>', 'sdf', 'dsaf', '123', 'dsaf', '132', 'dsfa', '0', '0', '2021-01-11 17:38:48', '2021-01-11 17:38:48');
INSERT INTO `t_view` VALUES ('28', '1', '天津之眼', 'Eye of Tianjin', '最美的天津之眼', 'http://localhost:8888/676292d1-d997-4461-9e33-9c7047b55a5a.jpg', 'http://localhost:8888/232a172a-d423-44dc-9e19-e2d6f51dcf82.jpg,http://localhost:8888/fb5b0e52-436c-47c8-8834-962874024685.jpg', '<p>3421</p>', 'dsf', '324', '18888132132', '3214', '3214', '1324', '0', '0', '2021-01-15 20:33:31', '2021-01-15 20:33:31');
INSERT INTO `t_view` VALUES ('29', '3', '天津之眼', 'Eye of Tianjin', '天津之眼是世界上唯一一个桥上瞰景摩天轮，是天津的地标之一', '1', ';', null, '乘坐34、4、607、611、640、659、673、802、841、849、863、869、878路公交车在五马路站下车即可到达', '全价票：70元', '18830007000', '1-3小时', '周二至周日 09:30-21:30', '天津市红桥区三岔河口永乐桥上', '1656', '123', '2021-01-28 19:56:45', '2021-01-28 19:56:45');
INSERT INTO `t_view` VALUES ('32', '3', '天主教天津教区西开主教座堂天主堂', 'St. Joseph Cathedral', '天津市最大的天主教堂，也是天主教天津教区主教座堂，典型巴洛克式风格的建筑。', '1', null, null, '地铁：乘坐1、3号线至营口道站B1口出站，步行200米即可到达。公交：乘3、45、50、503、600、606、631、632、641、643、657、800、851、865、867、870、901、954、观光2等线路公交车在滨江道站下车。', '具体详情请咨询景区', null, '1小时以下', '05:00-16:30 (1月1日-12月31日 周一-周六)05:00-20:00 (1月1日-12月31日 周日)', '天津市和平区西宁道9号(近国际商场)', '0', '0', '2021-01-28 19:56:45', '2021-01-28 19:56:45');
INSERT INTO `t_view` VALUES ('33', '3', '瓷房子', null, '瓷房子是一座用数万件古董瓷片装修而成的法式洋楼，是天津市的地标建筑之一。', '1', null, null, '乘坐3号线至和平路站D口出站，步行200米即可到达。\r\n乘831、838、35、9、1路等公交车在山东路站下车步行约160米即可到达。', '普通票:50人民币 (1月1日-12月31日 周一-周日)\r\n免票:1.2米以下儿童、80周岁以上老人、残疾人、现役军人军官', null, '1-3小时', '09:00-18:00；停止售票时间:17:30 (3月16日-11月14日 周一-周日)\r\n09:00-17:30；停止售票时间:17:00 (11月15日-次年3月15日 周一-周日)', '天津市和平区赤峰道72号(近和平路商业街)', '0', '0', '2021-01-28 19:56:46', '2021-01-28 19:56:46');
INSERT INTO `t_view` VALUES ('34', '3', '世纪钟', null, '全金属材料构筑而成，在钟表面镶嵌着十二星座的青铜浮雕，长杆、齿轮、底座构成了一个完美的时空造型。', '1', null, null, '公交：乘5路;8路;8路区间;13路;24路;27路;28路;50路;97路;186路;186路定制专线;186路快线;188路;461路;462路;469路;570路津芦专线;574路;621路;634路;638路;638路区间;639西线;645路;660路;663路;666路;672路;689路;760路;802路;808路;824路;832路;951路;953路;961路;津芦空调专线;通勤快车55路;通勤快车6路到天津站。', '具体详情请咨询景区', null, '1小时以下', '全天', '天津市河北区光复道街道进步道17号', '0', '0', '2021-01-28 19:56:46', '2021-01-28 19:56:46');
INSERT INTO `t_view` VALUES ('35', '3', '劝业场商场', 'Tianjin Quanyechang Building', '劝业场商场(和平路店)是天津最早的百货商场，目前依旧占据着商业街的最中心位置，乃当地商业的一个象征。', '1', null, null, '地铁：乘坐3号线至和平路站，步行100米即可到达。\r\n公交：乘坐1路、20路、35路、50路、97路、189路、190路、808路、845路、901路、951路公交车到渤海大楼站下车，步行200米即可到达。', '免费', null, '1-3小时', '09:00-21:00 (1月1日-12月31日 周一-周日)\r\n', '天津市和平区和平路290号', '0', '0', '2021-01-28 19:56:50', '2021-01-28 19:56:50');
INSERT INTO `t_view` VALUES ('36', '3', '解放桥', 'Jiefang Bridge', '原名为“万国桥”，因当时天津有九国租界，号称“国中之国”，天津解放后，此桥更名为“解放桥”', '1', ';', null, '乘13路至天津站下(线路非常多，注意是到天津站，而不是天津站海河广场或天津站后广场)\r\n乘818路至长春道站下车直行到解放北路可到达。', '免费', '18830007000', '1小时以下', '全天', '天津市和平区解放北路与张自忠路交口', '656', '58', '2021-01-28 19:56:47', '2021-01-28 19:56:47');
INSERT INTO `t_view` VALUES ('37', '3', '天塔', 'Tientsin Tower', '津门十景之一，景名“天塔旋云”。集旅游观光、餐饮娱乐和广播电视发射多功能于一体。', '1', ';', null, '乘地铁3号线直达，或乘8、12、161、628、643、658、675、686、710、710区、832、859、866、872路等公交车在天塔站下东侧即是。', '成人:50人民币 (1月1日-12月31日 周一-周日);半票:身高1.2米（不含）以上6-8周岁儿童、60岁以上（含）老人凭本人身份证或老年证;免票:身高1.2米（含）以下儿童', '18830007000', '1-3小时', '08:00-22:00(旺季)；停止入场时间:21:30 (05月01日-10月31日 周一-周日);08:30-21:30(淡季)；停止入场时间:21:00 (01月01日-04月30日,11月01日-12月31日 周一-周日)', '天津市河西区卫津南路1号', '1', '0', '2021-01-28 19:56:51', '2021-01-28 19:56:51');
INSERT INTO `t_view` VALUES ('38', '3', '望海楼天主堂', 'Wanghailou Church', '望海楼教堂是中国近代史上著名的“天津教案”遗址。这里原有一座望海楼，建于清代康熙年间，曾是清代皇帝出巡到天津时游玩的地方。', '1', null, null, '乘15、172、461、574、600路内环、600路外环、633、653、675、681、804、849、856、863、903、907、908、954路至望海楼站下。', '具体详情请咨询景区', null, '1-3小时', '平日弥撒7:00，主日弥撒6:00，7:30，19:00', '天津市河北区狮子林大街292号', '0', '0', '2021-01-28 19:56:48', '2021-01-28 19:56:48');
INSERT INTO `t_view` VALUES ('39', '3', '津塔', null, '津塔为全钢结构的超高层建筑，其外形设计吸收了中国传统元素，呈风帆造型，塔基略小，中部稍大，上部逐层收缩。而外部的玻璃幕墙运用纵向多折面的折纸造型，使得形体庞大的整体外观显得格外轻盈而秀美。\r\n津塔是天津的地标性写字楼，在世界排名中位列第26位。2011年该建筑还获得了美国加州建筑结构设计奖。', '1', null, null, '乘24、37、605、642、688、818、824、837路等车至津塔下车后步行可达。', '具体详情请咨询景区', null, '1小时以下', '全天 (1月1日-12月31日 周一-周日)', '天津市和平区大沽桥与兴安路交汇处', '0', '0', '2021-01-28 19:56:52', '2021-01-28 19:56:52');
INSERT INTO `t_view` VALUES ('40', '3', '天津奥林匹克体育中心', null, '天津奥林匹克中心体育场是第29届奥运会足球预选赛赛场之一，其昵称为“水滴”，它的表层全部由曲面状的板块组成。', '1', null, null, '乘301、302、306、8、快速1、2路等车至体育中心站下车后步行可达。\r\n公交：乘坐8路;52路;162路;301路;306路;349路;王稳庄专线到体育中心站下车可达。', '200元', null, '1-3小时', '全天', '天津市南开区境内', '0', '0', '2021-01-28 19:56:53', '2021-01-28 19:56:53');
INSERT INTO `t_view` VALUES ('41', '4', '瓷房子', null, '瓷房子是一座用数万件古董瓷片装修而成的法式洋楼，是天津市的地标建筑之一。', '1', null, null, '乘坐3号线至和平路站D口出站，步行200米即可到达。\r\n乘831、838、35、9、1路等公交车在山东路站下车步行约160米即可到达。', '普通票:50人民币 (1月1日-12月31日 周一-周日)\r\n免票:1.2米以下儿童、80周岁以上老人、残疾人、现役军人军官', null, '1-3小时', '09:00-18:00；停止售票时间:17:30 (3月16日-11月14日 周一-周日)\r\n09:00-17:30；停止售票时间:17:00 (11月15日-次年3月15日 周一-周日)', '天津市和平区赤峰道72号(近和平路商业街)', '0', '0', '2021-01-28 19:56:54', '2021-01-28 19:56:54');
INSERT INTO `t_view` VALUES ('43', '4', '天津天后宫', null, '天津有一句老话：先有天后宫，后有天津卫。可见天后宫在天津人心目中的地位。这是中国三大天后宫之一，也是天津现存最古老的建筑。\r\n·天后宫实际是老百姓供奉天后娘娘的庙宇，俗称“娘娘宫”。昔日，天后宫供奉主神，当然是天后娘娘。由于历史原因，天后宫在漫长的岁月里，形成了佛道混杂、百神聚集的复杂情况。', '1', null, null, '乘1、1区间、605、610、611、619、632、633、641、671空调、804、904、908、954、观光2路等公交车在东北角站下车可达。', '门票10元/人', null, '1-3小时', '不对外开放 (1月1日-12月31日 周一)09:00-16:30；停止入场时间:16:30 (1月1日-12月31日 周二-周日)', '天津市南开区古文化街80号', '0', '0', '2021-01-28 19:56:55', '2021-01-28 19:56:55');
INSERT INTO `t_view` VALUES ('44', '4', '天津自然博物馆', null, '天津自然博物馆面积开阔，共有三层，包括常设陈列区、临展区、体验娱乐区、科普教育区。馆内展品众多，如初入展区就能先看到一幅生命进化长卷，大厅中央一对“母与子”巨型山东龙骨架立刻将你带入自然传奇的情境之中；而在大厅的左侧是国内首家博物馆内的活体蝴蝶园，你不仅观赏到色彩斑斓、漫天飞舞的活体蝴蝶，还可观察从毛虫到美丽蝴蝶的蜕变过程，真正体验“羽化成蝶”。', '1', null, null, '乘662、668、686、835、868、912、529、641、675、800、826、838、906、655等路公交车至宾馆南道站或天津博物馆站下车。\r\n', '门票免费，当天现场分时段凭有效证件免费领取参观券，依次排队入馆参观（每个证件只能领取一张票；未成年人由其监护人代领，当日有效）\r\n有效证件包括：身份证、驾照、护照、户口本、军官证、士兵证、中、小学生证等', null, '1-3小时', '不对外开放(国家法定节假日除外)\r\n(1月1日-12月31日 周一)\r\n09:00-16:30；停止售票时间:16:00 (1月1日-12月31日 周二-周日)', '天津市河西区友谊路31号', '0', '0', '2021-01-28 19:56:55', '2021-01-28 19:56:55');
INSERT INTO `t_view` VALUES ('45', '4', '天津邮政博物馆', null, '天津邮政博物馆即天津大清邮政局旧址。1897年2月2日，天津大清邮政局挂牌营业，成为中国大清邮政官局的第一家，并发行了中国第一套邮票――大龙邮票，如今这座欧式风格的建筑仍保存完好。', '1', null, null, '乘13、35、96、97等公交车在承德道站下车即到；或从东站步行10-15分钟即到。', '门票免费，需身份证登记；如果要看珍宝馆，门票5元', null, '1-3小时', '不对外开放 (1月1日-12月31日 周一)09:00-16:00 (1月1日-12月31日 周二-周日)', '天津市和平区解放北路111号(近口腔医院)', '0', '0', '2021-01-28 19:56:56', '2021-01-28 19:56:56');
INSERT INTO `t_view` VALUES ('46', '4', '五大道博物馆', null, '五大道历史博物馆为一家小型私人博物馆，于2014年5月重新开放，向人们展示一百年前的历史生活痕迹。', '1', null, null, '公交：乘4、619、871、906、954路等公交车在重庆道站下车步行约200米可达', '成人票30元，学生票15元（讲解免费）', null, '1小时以下', '08:00-17:00 (1月1日-12月31日 周一-周日)', '天津市和平区五大道民园广场旅游客服中心2层', '0', '0', '2021-01-28 19:56:57', '2021-01-28 19:56:57');
INSERT INTO `t_view` VALUES ('47', '4', '天津老城博物馆', 'Tianjin Old City Museum', '天津老城博物馆坐落在徐家大院，这是天津市唯一保存完好的传统民居三进四合套院落。\r\n博物馆不大，墙壁上挂满旧照片，展品主要有当时的生活工品、服饰、匾额、炊具、家具等老物件，讲述了天津老城厢历史。\r\n门口是老城小梨园，每天下午、晚上都有相声演出，团购的票价也不贵，很值得一听。', '1', null, null, '乘15路、61路、 168路、 635路、 657路、 693路、 840路、 855路、 863路、 865路、 便民61路到鼓楼站下车，东侧即是。', '门票5元', null, '1-3小时', '周一闭馆，周二-周日9:00-17:00，16:30停止入场。', '天津市南开区鼓楼东街202号', '0', '0', '2021-01-28 19:56:58', '2021-01-28 19:56:58');
INSERT INTO `t_view` VALUES ('48', '4', '利顺德博物馆', null, '利顺德博物馆是中国历史最悠久的酒店博物馆，也是享誉世界的“天津小洋楼”经典代表。', '1', null, null, '乘13、953路公交车在泰安道站下车即到。', '利顺德博物馆每天开放，供酒店住客免费参观。非酒店住客可买门票进入参观。门票50元。', null, '1-3小时', '9:00-20:00;中途12:30-13:00、18:00-19:00会闭馆一段时间。', '天津市和平区台儿庄路33号利顺德大饭店1楼', '0', '0', '2021-01-28 19:57:01', '2021-01-28 19:57:01');
INSERT INTO `t_view` VALUES ('49', '4', '天津戏剧博物馆', null, '天津广东会馆作为主要建筑的戏楼，最多可容纳六七百人，楼上是包间，楼下是散座。戏台木雕是最为精华的部分，件件都透射出南方雕刻技艺的灵美之气；还有藻井、雕案、舞台等都独具匠心，因此《金粉世家》、《一个陌生女人的来信》等影视剧曾在此取景。在此还可欣赏快板、相声等特色表演。', '1', null, null, '乘15、161、168、611快车、635、657、693、840、855、863、865、便民61路等公交车在鼓楼站下车即到。', '门票10元/人（学生半价）', null, '1-3小时', '09:00-11:30,14:00-16:30 (1月1日-12月31日 周一-周日)', '天津市南开区东门里大街257号', '0', '0', '2021-01-28 19:57:00', '2021-01-28 19:57:00');
INSERT INTO `t_view` VALUES ('50', '4', '华夏鞋文化博物馆', null, '华夏鞋文化博物馆是中国首家以鞋文化为专题的博物馆，馆中的“历史回顾主题”从远古先人的鞋履出发，踏循着历史的脚印，展示了五千年来中国鞋履在各朝历代的进程。', '1', null, null, '公交:乘坐公交1、605、609、610、632、633路等车至东北角站下车步行可达。', '20元/人', null, '1-3小时', '上午9:30-11:30，下午13:00-16:00，周一闭馆。', '天津南开区古文化街海河楼166号', '0', '0', '2021-01-28 19:57:02', '2021-01-28 19:57:02');
INSERT INTO `t_view` VALUES ('51', '4', '华夏鞋文化博物馆', null, '华夏鞋文化博物馆是中国首家以鞋文化为专题的博物馆，馆中的“历史回顾主题”从远古先人的鞋履出发，踏循着历史的脚印，展示了五千年来中国鞋履在各朝历代的进程。', '1', null, null, '公交:乘坐公交1、605、609、610、632、633路等车至东北角站下车步行可达。', '20元/人', null, '1-3小时', '上午9:30-11:30，下午13:00-16:00，周一闭馆。', '天津南开区古文化街海河楼166号', '0', '0', '2021-01-28 19:57:02', '2021-01-28 19:57:02');

-- ----------------------------
-- Table structure for t_view_category
-- ----------------------------
DROP TABLE IF EXISTS `t_view_category`;
CREATE TABLE `t_view_category` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `sort_order` int(6) DEFAULT '1',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_view_category
-- ----------------------------
INSERT INTO `t_view_category` VALUES ('1', '津门十景', '1', '1', '2020-12-07 17:30:37', '2020-12-07 17:30:43');
INSERT INTO `t_view_category` VALUES ('2', '跨河大桥', '1', '1', '2020-12-07 17:31:33', '2020-12-07 17:31:35');
INSERT INTO `t_view_category` VALUES ('3', '地标建筑', '1', '1', '2020-12-07 17:32:05', '2020-12-07 17:32:08');
INSERT INTO `t_view_category` VALUES ('4', '特色博物馆', '1', '1', '2020-12-07 17:32:23', '2020-12-07 17:32:27');
INSERT INTO `t_view_category` VALUES ('5', '名人故居', '1', '1', '2020-12-07 17:32:42', '2020-12-07 17:32:45');
INSERT INTO `t_view_category` VALUES ('6', '亲子游', '1', '1', '2020-12-07 17:32:59', '2020-12-07 17:33:01');
INSERT INTO `t_view_category` VALUES ('7', '文艺创意园', '1', '1', '2020-12-07 17:33:50', '2020-12-07 17:33:54');
