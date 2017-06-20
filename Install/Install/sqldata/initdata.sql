﻿-- ----------------------------
-- Records of zswin_syslogs
-- ----------------------------

INSERT INTO `zswin_syslogs` VALUES 

('19', '系统管理', '系统安装', '添加管理员', '成功', '1', '管理员', '127.0.0.1', '1373021937'),

('20', '系统管理', '系统安装', '添加管理员', '成功', '1', '管理员', '127.0.0.1', '1373022495'),

('21', '系统管理', '系统安装', '添加管理员', '成功', '1', '管理员', '127.0.0.1', '1373024066');


-- ----------------------------
-- Records of zswin_role_user
-- ----------------------------

INSERT INTO `zswin_role_user` VALUES 
(1, '1');



-- -----------------------------
--Records of `zswin_addons`
-- -----------------------------

INSERT INTO `zswin_addons` VALUES
(16, 'Avatar', '头像插件', '用于头像的上传', 1, '{"random":"1"}', 'caipeichao', '0.1', 1394449710, 1),
(41, 'LocalComment', '本地评论', '本地评论插件，不依赖社会化评论平台', 1, '{"can_guest_comment":"1"}', 'caipeichao', '0.1', 1399440324, 0);
-- Records of `zswin_hooks`
-- -----------------------------

INSERT INTO `zswin_hooks` VALUES

(1, 'pageHeader', '页面header钩子，一般用于加载插件CSS文件和代码', 1, 0, ''),

(2, 'pageFooter', '页面footer钩子，一般用于加载插件JS文件和JS代码', 1, 0, ''),

(14, 'topicComment', '评论提交方式扩展钩子。', 1, 1380163518, ''),

(16, 'app_begin', '应用开始', 2, 1384481614, ''),

(21, 'localComment', '本地评论插件', 1, 1399440321, 'LocalComment'),

(24, 'syncLogin', '第三方登陆', 1, 1403700633, ''),

(25, 'syncMeta', '第三方登陆meta接口', 1, 1403700633, ''),

(27, 'J_China_City', '每个系统都需要的一个中国省市区三级联动插件。', 1, 1406690225, ''),

(28, 'Advs', '广告位插件', 1, 1406690225, ''),

(29, 'imageSlider', '图片轮播钩子', 1, 1406690225, ''),

(30, 'friendLink', '友情链接插件', 1, 1406690225, ''),

(13, 'AdminIndex', '默认后台插件', 1, 1382596073, ''),

(4, 'documentDetailAfter', '末尾显示', 1, 0, ''),

(3, 'avatar', '前台显示', 1, 0, 'Avatar'),

(31, 'AdminJChinaCity', '后台中国省市区三级联动插件。', 1, 1406690225, '');


-- ----------------------------
-- Records of zswin_group
-- ----------------------------

INSERT INTO `zswin_group` VALUES 

('16', 'System', '系统管理', '1222841259', '0', '1', '7','icon-cog'),

('3', 'Info', '扩展管理', '1373021663', '0', '1', '8','icon-puzzle-piece'),

('4', 'User', '用户管理', '1373021663', '0', '1', '6','icon-group'),

('7', 'Content', '内容管理', '1373021663', '0', '1', '5','icon-book');


-- ----------------------------
-- Records of zswin_node
-- ----------------------------

INSERT INTO `zswin_node` VALUES
(7, 'Member', '用户管理', 1, '', 0, 1, 2, 0, 4, 'icon-user'),
(6, 'Role', '管理组', 1, '', 2, 1, 2, 0, 4, ' icon-cloud-upload'),
(2, 'Node', '节点管理', 1, '', 3, 1, 2, 0, 16, 'icon-bullseye'),
(84, 'Group', '一级菜单管理', 1, '', 4, 1, 2, 0, 16, 'icon-trello'),
(92, 'access', '授权', 1, '', 0, 6, 3, 0, 0, ''),
(93, 'user', '用户列表', 1, '', 0, 6, 3, 0, 0, ''),
(1, 'Admin', '系统菜单', 1, '', 0, 0, 1, 0, 0, ''),
(8, 'Database', '数据备份', 1, '', 5, 1, 2, 0, 16, 'icon-archive'),
(9, 'Dataimport', '数据恢复', 1, '', 6, 1, 2, 0, 16, 'icon-asterisk'),
(111, 'selectedDelete', '批量删除', 1, '', 10, 2, 3, 0, 0, ''),
(112, 'selectedDelete', '批量删除', 1, '', 10, 6, 3, 0, 0, ''),
(113, 'selectedDelete', '批量删除', 1, '', 10, 7, 3, 0, 0, ''),
(114, 'selectedDelete', '批量删除', 1, '', 10, 84, 3, 0, 0, ''),
(115, 'importxls', '导入数据', 1, '', 11, 4, 3, 0, 0, ''),
(116, 'outxls', '导出数据', 1, '', 12, 4, 3, 0, 0, ''),
(118, 'Addons', '插件管理', 1, '', 0, 1, 2, 0, 3, 'icon-tasks'),
(119, 'create', '创建', 1, '', 12, 118, 3, 0, 0, ''),
(120, 'checkForm', '检测创建', 1, '', 12, 118, 3, 0, 0, ''),
(121, 'preview', '预览', 1, '', 12, 118, 3, 0, 0, ''),
(122, 'build', '快速生成插件', 1, '', 12, 118, 3, 0, 0, ''),
(123, 'config', '设置', 1, '', 12, 118, 3, 0, 0, ''),
(124, 'disable', '禁用', 1, '', 12, 118, 3, 0, 0, ''),
(125, 'enable', '启用', 1, '', 12, 118, 3, 0, 0, ''),
(126, 'install', '安装', 1, '', 12, 118, 3, 0, 0, ''),
(127, 'uninstall', '卸载', 1, '', 12, 118, 3, 0, 0, ''),
(128, 'saveconfig', '更新配置', 1, '', 12, 118, 3, 0, 0, ''),
(129, 'adminList', '插件后台列表', 1, '', 12, 118, 3, 0, 0, ''),
(130, 'execute', 'URL方式访问插件', 1, '', 12, 118, 3, 0, 0, ''),
(131, 'Hooks', '钩子管理', 1, '', 2, 1, 2, 0, 3, 'icon-vk'),
(132, 'add', '新增钩子', 1, '', 12, 131, 3, 0, 0, ''),
(133, 'edit', '编辑钩子', 1, '', 12, 131, 3, 0, 0, ''),
(134, 'foreverdelete', '删除', 1, '', 0, 131, 3, 0, 0, ''),
(135, 'AddonsAdmin', '已装插件管理', 1, '', 1, 1, 2, 0, 3, 'icon-cutlery'),
(170, 'index', '列表', 1, '', 0, 84, 3, 0, 0, ''),
(171, 'add', '新增', 1, '', 0, 84, 3, 0, 0, ''),
(172, 'edit', '编辑', 1, '', 0, 84, 3, 0, 0, ''),
(173, 'insert', '写入', 1, '', 0, 84, 3, 0, 0, ''),
(174, 'update', '更新', 1, '', 0, 84, 3, 0, 0, ''),
(175, 'forbid', '禁用', 1, '', 0, 84, 3, 0, 0, ''),
(176, 'resume', '恢复', 1, '', 0, 84, 3, 0, 0, ''),
(177, 'foreverdelete', '删除', 1, '', 0, 84, 3, 0, 0, ''),
(178, 'index', '列表', 1, '', 0, 7, 3, 0, 0, ''),
(179, 'add', '新增', 1, '', 0, 7, 3, 0, 0, ''),
(180, 'edit', '编辑', 1, '', 0, 7, 3, 0, 0, ''),
(181, 'insert', '写入', 1, '', 0, 7, 3, 0, 0, ''),
(182, 'update', '更新', 1, '', 0, 7, 3, 0, 0, ''),
(183, 'forbid', '禁用', 1, '', 0, 7, 3, 0, 0, ''),
(184, 'resume', '恢复', 1, '', 0, 7, 3, 0, 0, ''),
(185, 'foreverdelete', '删除', 1, '', 0, 7, 3, 0, 0, ''),
(186, 'index', '列表', 1, '', 0, 6, 3, 0, 0, ''),
(187, 'add', '新增', 1, '', 0, 6, 3, 0, 0, ''),
(188, 'edit', '编辑', 1, '', 0, 6, 3, 0, 0, ''),
(189, 'insert', '写入', 1, '', 0, 6, 3, 0, 0, ''),
(190, 'update', '更新', 1, '', 0, 6, 3, 0, 0, ''),
(191, 'forbid', '禁用', 1, '', 0, 6, 3, 0, 0, ''),
(192, 'resume', '恢复', 1, '', 0, 6, 3, 0, 0, ''),
(193, 'foreverdelete', '删除', 1, '', 0, 6, 3, 0, 0, ''),
(194, 'index', '列表', 1, '', 0, 2, 3, 0, 0, ''),
(195, 'add', '新增', 1, '', 0, 2, 3, 0, 0, ''),
(196, 'edit', '编辑', 1, '', 0, 2, 3, 0, 0, ''),
(197, 'insert', '写入', 1, '', 0, 2, 3, 0, 0, ''),
(198, 'update', '更新', 1, '', 0, 2, 3, 0, 0, ''),
(199, 'forbid', '禁用', 1, '', 0, 2, 3, 0, 0, ''),
(200, 'resume', '恢复', 1, '', 0, 2, 3, 0, 0, ''),
(201, 'foreverdelete', '删除', 1, '', 0, 2, 3, 0, 0, ''),
(205, 'resetPwd', '保存修改密码', 1, '', 0, 7, 3, 0, 0, ''),
(206, 'password', '修改密码', 1, '', 0, 7, 3, 0, 0, ''),
(277, 'setGroupAll', '设置权限', 1, '', 0, 6, 3, 0, 0, ''),
(278, 'setUser', '设置用户', 1, '', 0, 6, 3, 0, 0, ''),
(283, 'Syslogs', '日志管理', 1, '', 4, 1, 2, 0, 16, 'icon-pencil-square-o'),
(284, 'index', '列表', 1, '', 0, 283, 3, 0, 0, ''),
(285, 'Config', '网站设置', 1, 'group', 0, 1, 2, 0, 16, 'icon-flickr'),
(286, 'Config', '配置管理', 1, '', 1, 1, 2, 0, 16, 'icon-adn'),
(287, 'edit', '编辑', 1, '', 10, 286, 3, 0, 16, ''),
(288, 'foreverdelete', '删除', 1, '', 10, 286, 3, 0, 16, ''),
(289, 'add', '新增', 1, '', 10, 286, 3, 0, 16, ''),
(290, 'update', '更新', 1, '', 10, 286, 3, 0, 16, ''),
(291, 'insert', '写入', 1, '', 10, 286, 3, 0, 16, ''),
(292, 'sort', '排序', 1, '', 10, 286, 3, 0, 16, ''),
(293, 'selectedDelete', '批量删除', 1, '', 10, 286, 3, 0, 16, ''),
(294, 'Article', '博客管理', 1, '', 4, 1, 2, 0, 7, 'icon-instagram'),
(295, 'index', '列表', 1, '', 0, 294, 3, 0, 7, ''),
(296, 'add', '新增', 1, '', 0, 294, 3, 0, 7, ''),
(297, 'edit', '编辑', 1, '', 0, 294, 3, 0, 7, ''),
(298, 'insert', '写入', 1, '', 0, 294, 3, 0, 7, ''),
(299, 'update', '更新', 1, '', 0, 294, 3, 0, 7, ''),
(300, 'forbid', '禁用', 1, '', 0, 294, 3, 0, 7, ''),
(301, 'resume', '恢复', 1, '', 0, 294, 3, 0, 7, ''),
(302, 'foreverdelete', '删除', 1, '', 0, 294, 3, 0, 7, ''),
(303, 'selectedDelete', '批量删除', 1, '', 10, 294, 3, 0, 7, ''),
(304, 'Cate', '分类管理', 1, '', 4, 1, 2, 0, 7, 'icon-magic'),
(305, 'index', '列表', 1, '', 0, 304, 3, 0, 7, ''),
(306, 'add', '新增', 1, '', 0, 304, 3, 0, 7, ''),
(307, 'edit', '编辑', 1, '', 0, 304, 3, 0, 7, ''),
(308, 'insert', '写入', 1, '', 0, 304, 3, 0, 7, ''),
(309, 'update', '更新', 1, '', 0, 304, 3, 0, 7, ''),
(310, 'forbid', '禁用', 1, '', 0, 304, 3, 0, 7, ''),
(311, 'resume', '恢复', 1, '', 0, 304, 3, 0, 7, ''),
(312, 'foreverdelete', '删除', 1, '', 0, 304, 3, 0, 7, ''),
(313, 'selectedDelete', '批量删除', 1, '', 10, 304, 3, 0, 7, ''),
(314, 'Mrole', '会员组', 1, '', 4, 1, 2, 0, 4, 'icon-male'),
(315, 'index', '列表', 1, '', 0, 314, 3, 0, 7, ''),
(316, 'add', '新增', 1, '', 0, 314, 3, 0, 7, ''),
(317, 'edit', '编辑', 1, '', 0, 314, 3, 0, 7, ''),
(318, 'insert', '写入', 1, '', 0, 314, 3, 0, 7, ''),
(319, 'update', '更新', 1, '', 0, 314, 3, 0, 7, ''),
(320, 'forbid', '禁用', 1, '', 0, 314, 3, 0, 7, ''),
(321, 'resume', '恢复', 1, '', 0, 314, 3, 0, 7, ''),
(322, 'foreverdelete', '删除', 1, '', 0, 314, 3, 0, 7, ''),
(323, 'config', '权限', 1, '', 10, 314, 3, 0, 7, ''),
(324, 'sort', '排序', 1, '', 10, 286, 3, 0, 16, ''),
(325, 'save', '保存网站设置', 1, '', 10, 286, 3, 0, 16, ''),
(326, 'index', '列表', 1, '', 0, 286, 3, 0, 0, ''),
(327, 'group', '网站设置', 1, '', 0, 286, 3, 0, 0, ''),
(328, 'index', '列表', 1, '', 0, 8, 3, 0, 0, ''),
(329, 'index', '列表', 1, '', 0, 9, 3, 0, 0, ''),
(330, 'index', '列表', 1, '', 0, 131, 3, 0, 0, ''),
(331, 'index', '列表', 1, '', 0, 118, 3, 0, 0, ''),
(333, 'Urlset', 'URL设置', 1, '', 0, 1, 2, 0, 16, 'icon-instagram'),
(334, 'index', '列表', 1, '', 0, 333, 3, 0, 0, ''),
(335, 'Nav', '导航管理', 1, '', 4, 1, 2, 0, 16, 'icon-globe'),
(336, 'index', '列表', 1, '', 0, 335, 3, 0, 0, ''),
(337, 'add', '新增', 1, '', 0, 335, 3, 0, 0, ''),
(338, 'edit', '编辑', 1, '', 0, 335, 3, 0, 0, ''),
(339, 'insert', '写入', 1, '', 0, 335, 3, 0, 0, ''),
(340, 'update', '更新', 1, '', 0, 335, 3, 0, 0, ''),
(341, 'forbid', '禁用', 1, '', 0, 335, 3, 0, 0, ''),
(342, 'resume', '恢复', 1, '', 0, 335, 3, 0, 0, ''),
(343, 'foreverdelete', '删除', 1, '', 0, 335, 3, 0, 0, ''),
(344, 'selectedDelete', '批量删除', 1, '', 10, 335, 3, 0, 0, ''),
(346, 'Message', '消息管理', 1, '', 4, 1, 2, 0, 7, 'icon-bell'),
(347, 'index', '列表', 1, '', 0, 346, 3, 0, 0, ''),
(348, 'add', '发送', 1, '', 0, 346, 3, 0, 0, ''),
(349, 'insert', '写入', 1, '', 0, 346, 3, 0, 0, ''),
(350, 'foreverdelete', '删除', 1, '', 0, 346, 3, 0, 0, ''),
(351, 'selectedDelete', '批量删除', 1, '', 10, 346, 3, 0, 0, ''),
(352, 'Comments', '评论管理', 1, '', 4, 1, 2, 0, 7, 'icon-reply-all'),
(353, 'index', '列表', 1, '', 0, 352, 3, 0, 0, ''),
(354, 'foreverdelete', '删除', 1, '', 0, 352, 3, 0, 0, ''),
(355, 'selectedDelete', '批量删除', 1, '', 10, 352, 3, 0, 0, ''),
(356, 'Tags', '标签管理', 1, '', 4, 1, 2, 0, 7, 'icon-tags'),
(357, 'index', '列表', 1, '', 0, 356, 3, 0, 0, ''),
(358, 'foreverdelete', '删除', 1, '', 0, 356, 3, 0, 0, ''),
(359, 'selectedDelete', '批量删除', 1, '', 10, 356, 3, 0, 0, ''),
(360, 'Update', '系统升级', 1, '', 4, 1, 2, 0, 16, 'icon-rocket'),
(361, 'index', '列表', 1, '', 0, 360, 3, 0, 0, '');


-- ----------------------------
-- Records of zswin_role
-- ----------------------------

INSERT INTO `zswin_role` VALUES 

('1', '超级管理员', '0', '1', '', '', '1208784792', '1373020066'),

('2', '管理员', '0', '1', '', '', '1215496283', '1373020058'),

('3', '审核员', '0', '1', '', '', '1307071286', '1373020052');

-- ----------------------------
-- Records of zswin_mroleconfig
-- ----------------------------

INSERT INTO `zs_mroleconfig` VALUES

(1, '{"yescomment":"1","yesart":"2","yesartedit":"1","artedittime":"1","yesshen":"1","yesfile":"2","filesize":"1","fileext":"jpg,gif"}');



-- ----------------------------
-- Records of zswin_mrole
-- ----------------------------

INSERT INTO `zswin_mrole` VALUES 

('1', '普通会员', '0', '1', '', '', '0', '1208784792', '1373020066');

-- -----------------------------
-- Records of `zswin_config`
-- -----------------------------

INSERT INTO `zswin_config` VALUES

(1, 'WEB_SITE_TITLE', 1, '网站标题', 1, '', '网站标题前台显示标题', 1378898976, 1379235274, 1, 'ZSWIN社交类博客', 0),

(2, 'WEB_SITE_DESCRIPTION', 2, '网站描述', 1, '', '网站搜索引擎描述', 1378898976, 1379235841, 1, 'ZSWIN社交类博客是一款快速建立社交网站、自媒体网站、博客网站的免费开源产品', 1),

(3, 'WEB_SITE_KEYWORD', 2, '网站关键字', 1, '', '网站搜索引擎关键字', 1378898976, 1381390100, 1, 'ZSWIN社交类博客', 8),

(4, 'WEB_SITE_CLOSE', 4, '关闭站点', 1, '0:关闭,1:开启', '站点关闭后其他用户不能访问，管理员可以正常访问', 1378898976, 1379235296, 1, '1', 1),

(9, 'CONFIG_TYPE_LIST', 3, '配置类型列表', 4, '', '主要用于数据解析和页面表单的生成', 1378898976, 1379235348, 1, '0:数字\r\n1:字符\r\n2:文本\r\n3:数组\r\n4:枚举\r\n5:富文本\r\n6:密码', 2),

(10, 'WEB_SITE_ICP', 1, '网站备案号', 1, '', '设置在网站底部显示的备案号，如“沪ICP备12007941号-2', 1378900335, 1379235859, 1, '', 9),

(20, 'CONFIG_GROUP_LIST', 3, '配置分组', 4, '', '配置分组', 1379228036, 1419497120, 1, '1:基本\r\n2:内容\r\n3:用户\r\n4:系统\r\n5:邮件\r\n6:积分规则\r\n7:微信配置', 15),

(21, 'HOOKS_TYPE', 3, '钩子的类型', 4, '', '类型 1-用于扩展显示内容，2-用于扩展业务处理', 1379313397, 1379313407, 1, '1:视图\r\n2:控制器', 6),

(26, 'USER_ALLOW_REGISTER', 4, '是否允许用户注册', 3, '0:关闭注册\r\n1:允许注册', '是否开放用户注册', 1379504487, 1379504580, 1, '1', 3),

(28, 'DATA_BACKUP_PATH', 1, '数据库备份根路径', 4, '', '路径必须以 / 结尾', 1381482411, 1381482411, 1, './Data/', 5),

(29, 'DATA_BACKUP_PART_SIZE', 0, '数据库备份卷大小', 4, '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', 1381482488, 1381729564, 1, '20971520', 7),

(30, 'DATA_BACKUP_COMPRESS', 4, '数据库备份文件是否启用压缩', 4, '0:不压缩\r\n1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', 1381713345, 1381729544, 1, '1', 9),

(31, 'DATA_BACKUP_COMPRESS_LEVEL', 4, '数据库备份文件压缩级别', 4, '1:普通\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', 1381713408, 1381713408, 1, '9', 10),
(36, 'ADMIN_ALLOW_IP', 2, '后台允许访问IP', 4, '', '多个用逗号分隔，如果不配置表示不限制IP访问', 1387165454, 1387165553, 1, '', 12),


(38, 'WEB_SITE', 1, '网站名称', 1, '', '用于邮件,短信,站内信显示', 1388332311, 1388501500, 1, 'ZSWIN社交类博客', 0),

(39, 'MAIL_TYPE', 4, '邮件类型', 5, '1:SMTP 模块发送', '需要填写SMTP相关内容', 1388332882, 1388931416, 1, '1', 0),

(40, 'MAIL_SMTP_HOST', 1, 'SMTP 服务器', 5, '', 'SMTP服务器', 1388332932, 1388332932, 1, '', 0),

(41, 'MAIL_SMTP_PORT', 0, 'SMTP服务器端口', 5, '', '默认25', 1388332975, 1388332975, 1, '25', 0),

(42, 'MAIL_SMTP_USER', 1, 'SMTP服务器用户名', 5, '', '填写完整用户名', 1388333010, 1388333010, 1, '', 0),

(43, 'MAIL_SMTP_PASS', 6, 'SMTP服务器密码', 5, '', '填写您的密码', 1388333057, 1389187088, 1, '', 0),

(51, 'PIC_FILE_PATH', 1, '图片文件保存根目录', 4, '', '图片文件保存根目录./目录/', 1388673255, 1388673255, 1, './Uploads/', 0),

(46, 'MAIL_SMTP_CE', 1, '邮件发送测试', 5, '', '填写测试邮件地址', 1388334529, 1388584028, 1, '', 11),

(47, 'MAIL_USER_REG', 5, '注册邮件模板', 5, '', '支持HTML代码', 1388337307, 1389532335, 1, '<p><a href="http://kssoulmate.com" target="_blank">点击进入公司官网</a></p><p><a href="http://zswin.cn" target="_blank">点击进入产品官网</a></p><p><span style="color:#E53333,">当您收到这封邮件，表明您已注册成功，以上为您的用户名和密码。。。。祝您生活愉快····</span></p>', 55),


(24, 'NICK_NAME_BAOLIU', 1, '保留昵称', 3, '', '禁止注册昵称,用" , "号隔开', 1388845937, 1388845937, 1, '管理员,测试,admin,垃圾', 0),
(52, 'USER_NAME_BAOLIU', 1, '保留用户名', 3, '', '禁止注册用户名,用" , "号隔开', 1388845937, 1388845937, 1, '管理员,测试,admin,垃圾', 0),

(53, 'USER_REG_TIME', 0, '注册时间限制', 3, '', '同一IP注册时间限制，防恶意注册，格式分钟', 1388847715, 1388847715, 1, '2', 0),

(48, 'VERIFY_OPEN', 1, '验证码配置', 4, '', '验证码配置，填写数字，数字中间用半角逗号隔开。1:注册显示2:登陆显示3:后台登陆显示', 1388500332, 1388500800, 1, '1,2,3', 0),
(55, 'USER_RESPASS', 5, '密码找回模板', 3, '', '密码找回文本', 1396191234, 1396191234, 1, '<span style="color:#009900,">请点击以下链接找回密码，如无反应，请将链接地址复制到浏览器中打开(有效时间5分钟)</span>', 9),

(56, 'CATE_TYPE', 3, '分类类型', 4, '', '分类类型', 1379228036, 1384418383, 1, '1:博客\r\n', 15),

(58, 'ARTSCORE', 0, '发布文章积分', 6, '', '', 1419497086, 1419497129, 1, '1', 1),

(59, 'REGSCORE', 0, '注册积分', 6, '', '', 1419497168, 1419497168, 1, '2', 2),
(60, 'WEB_THEME', 1, '模板名称', 1, '', '请填写模板的文件夹名称，默认为simple。模板均在根目录下的Theme文件夹下。', 1420474619, 1420474619, 1, 'simple', 2),
(61, 'WEB_DIR', 1, '网站目录', 1, '', '仅在网站安装在非根目录时需要填写并区分大小写！如果是根目录安装的网站，请留空.', 1420535295, 1420535295, 1, '', 12),
(62, 'SYSTEM_UPDATRE_VERSION', 1, '版本号', 0, '', '记录当前系统的版本号，这是与官方比较是否有升级包的唯一标识，不熟悉者只勿改变其数值', 1420802515, 1420802814, 1, '20150218', 1),
(66, 'TOKEN', 1, '微信公众号token', 7, '', '微信公众平台的token配置必须和此处保持一致！', 1420975387, 1420975464, 1, '', 2),
(68, 'WXAPPSECRET', 1, '微信公众号appsecret', 7, '', '', 1420975417, 1420975417, 1, '', 0),
(67, 'WXAPPID', 1, '微信公众号appid', 7, '', '', 1420975435, 1420975455, 1, '', 1),
(69, 'WXHOST', 1, '信任网站', 7, '', '', 1420975435, 1420975455, 1, '', 9),
INSERT INTO `zswin_nav` VALUES
(1, '动态', 'Index', 'index', 1, 0, 'U(Index/index)', 2, 999, 1, 1),
(2, '标签', 'Index', 'alltag', 1, 0, 'U(Index/alltag)', 2, 998, 1, 1);
