create database sainteclaires;

insert into account(login_name, password, type) values('admin', 'Jnw5ofpjlbE=vGiXdN246MI=', 'ADMIN');

INSERT INTO sainteclaires.config (id,description,ckey,note,value,type) VALUES (17,NULL,'quarter',NULL,'1','QUARTER'
);

INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (12,'限量版',1,NULL,'','Limited Edition',''
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (13,'婴儿装',2,NULL,'','Babywear',''
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (14,'幼儿装',3,NULL,'','Infants′ wear',''
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (15,'女童装',4,NULL,'','Girls\' clothes',''
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (16,'男童装',5,NULL,'','Boys\' clothes',''
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (17,'浴室用品',6,NULL,'','Bathroom ware',''
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (18,'正装',7,NULL,'','Formalwear',''
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (19,'玩具',8,NULL,'','Toys',''
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (20,'化妆品',9,NULL,'','Cosmetics',''
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (21,'礼品盒',10,NULL,'','Gift baskets',''
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (22,'针织衫',1,13,'婴儿装','Knit wear','New Born'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (23,'裙子',2,13,'婴儿装','Skirt','New Born'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (24,'上衣',3,13,'婴儿装','Coats','New Born'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (25,'长裙',4,13,'婴儿装','Longguette','New Born'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (26,'婴儿连体裤',5,13,'婴儿装','Baby Jumpsuits','New Born'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (27,'婴儿短裤',6,13,'婴儿装','Baby Shorts','New Born'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (28,'围兜',7,13,'婴儿装','Bib','New Born'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (29,'纯棉服饰',8,13,'婴儿装','Pure Cotton Dresses','New Born'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (30,'系带帽',9,13,'婴儿装','Lace-up Cap','New Born'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (31,'床单',10,13,'婴儿装','Sheet','New Born'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (32,'上衣',1,14,'幼儿装','Waist','Baby'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (33,'针织衣物',2,14,'幼儿装','Knit wear','Baby'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (34,'长裤',3,14,'幼儿装','Trousers','Baby'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (35,'连体裤',4,14,'幼儿装','Jumpsuits','Baby'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (36,'裙子',5,14,'幼儿装','Dresses','Baby'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (37,'短裤',6,14,'幼儿装','Shorts','Baby'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (38,'配饰',7,14,'幼儿装','Accessories','Baby'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (39,'衬衫',1,15,'女童装','Blouses','Girl'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (40,'背带裤',2,15,'女童装','Overalls','Girl'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (41,'裤子',3,15,'女童装','Trousers','Girl'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (42,'长袖衫',4,15,'女童装','Long Shirt','Girl'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (43,'短裤短裙',5,15,'女童装','Shouts/Kilt','Girl'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (44,'正装',6,15,'女童装','Formalwear','Girl'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (45,'长衫',7,15,'女童装','Long Gown','Girl'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (46,'配饰',8,15,'女童装','Accessories','Girl'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (47,'衬衫',1,16,'男童装','Shirt','Boy'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (48,'裤子',2,16,'男童装','Trousers','Boy'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (49,'长袖衬衫',3,16,'男童装','Long-sleeve Shirt','Boy'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (50,'其他单品',4,16,'男童装','Other Single Item','Boy'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (51,'浴衣',1,17,'浴室用品','Bathrobe','Bathroom ware'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (52,'婴儿服饰',1,18,'正装','Babies\' Wear','Formal dress'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (53,'女童装',2,18,'正装','Girls\' Wear','Formal dress'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (54,'男童装',3,18,'正装','Boys\' Wear','Formal dress'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (55,'其他装饰元素',4,18,'正装','Other Decorative Elements','Formal dress'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (56,'毛绒玩具',1,19,'玩具','Peluches','Toys'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (57,'古龙香水',1,20,'化妆品','Cologne','Cosmetics'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (58,'礼品盒',1,21,'礼品盒','Gift Cases','Gift baskets'
);
INSERT INTO sainteclaires.category (id,name,order_no,parent_id,parent_name,name_en,parent_name_en) VALUES (59,'限量版',1,12,'限量版','Limited Edition','Special Occasions'
);