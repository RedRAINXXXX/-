/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : investment_evaluation

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 22/05/2019 19:37:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for evaluation_index
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_index`;
CREATE TABLE `evaluation_index`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `weight` double(5, 4) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `standard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 746 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of evaluation_index
-- ----------------------------
INSERT INTO `evaluation_index` VALUES (100, '技术成长与产业发展', 1, NULL, 0.2000, NULL, NULL);
INSERT INTO `evaluation_index` VALUES (110, '技术成熟度（项目信息要提供技术所处阶段属性及评价证据）', 2, 100, 0.1000, NULL, '质量和水平：\r\n优（85-100）\r\n良（75-84）\r\n中（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (111, '应用基础研究', 3, 110, 0.0100, '发现新现象、新问题、新需求并提出报告，及形成满足需求或解决问题的技术方案', NULL);
INSERT INTO `evaluation_index` VALUES (112, '关键技术研发', 3, 110, 0.0200, '核心技术概念模型仿真验证成功，实验室内关键功能指标测试达到预期目标', NULL);
INSERT INTO `evaluation_index` VALUES (113, '实验验证', 3, 110, 0.0300, '功能样品、图纸＋工艺设计、测试通过；功能样机演示测试合格、工艺验证可行；工程样机系统运行、例行环境试验合格；小批试产合格、生产条件完备、工艺成熟；实现大批量商业化生产，产品质量合格', NULL);
INSERT INTO `evaluation_index` VALUES (114, '中试孵化', 3, 110, 0.0400, '产品在大规模量产前的较小规模试验完成；形成研发、中试生产、经营的场地和办公方面的共享设施，及政策、管理、法律、财务、融资、市场推广和培训等方面的服务', NULL);
INSERT INTO `evaluation_index` VALUES (120, '产业成长阶段（项目信息要提供技术领域对应的相关新兴产业）', 2, 100, 0.1000, NULL, '产业发展状况\r\n和前景：\r\n优（85-100）\r\n良（75-84）\r\n中（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (121, '初创期', 3, 120, 0.0400, '新产业刚刚诞生不久，只有为数不多的创业公司', NULL);
INSERT INTO `evaluation_index` VALUES (122, '成长期', 3, 120, 0.0300, '产品经过一段时间，已有相当知名度、销售快速增长、利润也显著增加', NULL);
INSERT INTO `evaluation_index` VALUES (123, '扩张期', 3, 120, 0.0200, '竞争者看到有利可图，纷纷进入市场参与竞争，逐渐形成企业群，及至形成完整的创新产业链', NULL);
INSERT INTO `evaluation_index` VALUES (124, '成熟期', 3, 120, 0.0100, '市场成长趋势饱和，少数大厂商主导了整个行业的市场，产品已被大多数潜在购买者所接受，利润在达到顶点后逐渐走下坡路', NULL);
INSERT INTO `evaluation_index` VALUES (200, '投资企业战略', 1, NULL, 0.1000, NULL, NULL);
INSERT INTO `evaluation_index` VALUES (210, '投资类型（投资企业要提供投资类型组合偏好及证据材料）', 2, 200, 0.0500, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (211, '与天使投资战略的匹配程度', 3, 210, 0.0200, '投资于本产业的初创期', NULL);
INSERT INTO `evaluation_index` VALUES (212, '与VC投资战略的匹配程度', 3, 210, 0.0150, '投资于本产业的初创期和成长期', NULL);
INSERT INTO `evaluation_index` VALUES (213, '与PE投资战略的匹配程度', 3, 210, 0.0150, '投资于本产业的成长期和成熟期', NULL);
INSERT INTO `evaluation_index` VALUES (220, '投资领域（投资企业要提供现有投资产业领域布局及计划拓展新产业领域的战略规划及证据材料）', 2, 200, 0.0500, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (221, '与企业现有投资产业领域的相关度', 3, 220, 0.0300, '企业现有投资产业领域与该新兴技术领域的相关程度', NULL);
INSERT INTO `evaluation_index` VALUES (222, '与企业规划拓展新产业领域的相关度', 3, 220, 0.0200, '企业规划拓展新产业领域与新兴技术领域的相关程度', NULL);
INSERT INTO `evaluation_index` VALUES (300, '产业链和创新生态协同（专家判断为主）', 1, NULL, 0.1500, NULL, NULL);
INSERT INTO `evaluation_index` VALUES (310, '国内区域产业链协同', 2, 300, 0.0500, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (311, '本区域产业链协同', 3, 310, 0.0300, '在本区域内发展该产业，其价值链、企业链、供需链和空间链的协同程度', NULL);
INSERT INTO `evaluation_index` VALUES (312, '国内跨区域产业链协同', 3, 310, 0.0200, '在本国跨区域内发展该产业，其价值链、企业链、供需链和空间链的协同程度', NULL);
INSERT INTO `evaluation_index` VALUES (320, '海外目标国产业链协同', 2, 300, 0.0250, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (321, '海外投资目标国产业链协同', 3, 320, 0.0250, '是指在目标国发展该产业而，其价值链、企业链、供需链和空间链的协同程度', NULL);
INSERT INTO `evaluation_index` VALUES (330, '国内区域产业创新生态', 2, 300, 0.0500, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (331, '本区域产业创新生态', 3, 330, 0.0300, '是指目前在本区域中发展该产业，其政策支持、经济发展、文化制度的支持力度以及创新主体的协同合作程度', NULL);
INSERT INTO `evaluation_index` VALUES (332, '国内跨区域产业创新生态', 3, 330, 0.0200, '是指目前在本国跨区域中发展该产业，其政策支持、经济发展、文化制度的支持力度以及创新主体的协同合作程度', NULL);
INSERT INTO `evaluation_index` VALUES (340, '国外目标国产业创新生态', 2, 300, 0.0250, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (341, '海外投资目标国产业创新生态', 3, 340, 0.0250, '是指在国外目标国发展该产业，该国的政策支持、经济发展、文化制度的支持力度以及创新主体的协同合作程度', NULL);
INSERT INTO `evaluation_index` VALUES (400, '未来市场竞争力（专家判断为主）', 1, NULL, 0.1500, NULL, NULL);
INSERT INTO `evaluation_index` VALUES (410, '未来该项目产业化的国内市场竞争力', 2, 400, 0.1000, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (411, '未来3-5年该项目产业化的国内市场竞争力', 3, 410, 0.0800, '是指未来3-5年该项目产业化后在国内市场中形成并表现出来的与供应商、客户、行业竞争者等争夺资源或市场的能力', NULL);
INSERT INTO `evaluation_index` VALUES (412, '未来5-10年该项目产业化的国内市场竞争力', 3, 410, 0.0200, '是指未来5-10年该项目产业化后在国内市场中形成并表现出来的与供应商、客户、行业竞争者等争夺资源或市场的能力', NULL);
INSERT INTO `evaluation_index` VALUES (420, '未来该项目产业化的全球市场竞争力', 2, 400, 0.0500, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (421, '未来3-5年该项目产业化的全球市场竞争力', 3, 420, 0.0400, '是指未来3-5年该项目产业化后在国际市场中形成并表现出来的与供应商、客户、行业竞争者等争夺资源或市场的能力', NULL);
INSERT INTO `evaluation_index` VALUES (422, '未来5-10年该项目产业化的全球市场竞争力', 3, 420, 0.0100, '在国际目标市场上，本成果与主要竞争对手的竞争优势分析', NULL);
INSERT INTO `evaluation_index` VALUES (500, '投资风险与收益（投资企业提供该项目的投资预期收益期望及证据材料，专家对各类风险作出独立判断）', 1, NULL, 0.1500, NULL, NULL);
INSERT INTO `evaluation_index` VALUES (510, '投资风险与收益之间的匹配程度', 2, 500, 0.1500, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (511, '市场风险与投资收益之间的匹配程度', 3, 510, 0.0375, '是指由于市场及相关的外部环境的不确定性而导致的市场风险与投资收益之间匹配程度', NULL);
INSERT INTO `evaluation_index` VALUES (512, '资金风险与投资收益之间的匹配程度', 3, 510, 0.0375, '是指企业融资、变现、资金运营等所具有的风险与投资收益之间的匹配程度', NULL);
INSERT INTO `evaluation_index` VALUES (513, '制造风险与投资收益之间的匹配程度', 3, 510, 0.0375, '是指企业在生产产品中原材料供应、生产设备及工艺等制造风险与投资收益的匹配程度', NULL);
INSERT INTO `evaluation_index` VALUES (514, '技术和产品风险与投资收益之间的匹配程度', 3, 510, 0.0375, '是指技术的先进性、适用性及可靠性等所带来的风险与投资收益的之间的匹配程度', NULL);
INSERT INTO `evaluation_index` VALUES (600, '市场规模与产业周期（专家判断为主）', 1, NULL, 0.1500, NULL, NULL);
INSERT INTO `evaluation_index` VALUES (610, '市场规模', 2, 600, 0.0750, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (611, '该产业现有的国内市场规模', 3, 610, 0.0225, '该产业目前在国内市场上所拥有市场容量', NULL);
INSERT INTO `evaluation_index` VALUES (612, '该产业未来3-5年的国内市场规模', 3, 610, 0.0150, '该产业在未来3-5年在国内市场上所拥有市场容量', NULL);
INSERT INTO `evaluation_index` VALUES (613, '该产业现有的全球市场规模', 3, 610, 0.0225, '该产业目前在国际上所拥有市场容量', NULL);
INSERT INTO `evaluation_index` VALUES (614, '该产业未来3-5年的全球市场规模', 3, 610, 0.0150, '该产业未来在3-5年在国际上所拥有市场容量', NULL);
INSERT INTO `evaluation_index` VALUES (620, '产业周期', 2, 600, 0.0750, NULL, '初创（85-100）\r\n成长（75-84）\r\n扩张（60-74）\r\n成熟（0-59）');
INSERT INTO `evaluation_index` VALUES (621, '该技术现有的国内产业周期所处阶段', 3, 620, 0.0225, '该技术目前在国内产业周期中所处的阶段性', NULL);
INSERT INTO `evaluation_index` VALUES (622, '该技术未来3-5年的国内产业周期所处阶段', 3, 620, 0.0150, '该技术未来3-5年在国内产业周期中所处的阶段性', NULL);
INSERT INTO `evaluation_index` VALUES (623, '该技术现有的发达国家产业周期所处阶段', 3, 620, 0.0225, '该技术目前在现有的发达国家所处的阶段性', NULL);
INSERT INTO `evaluation_index` VALUES (624, '该技术未来3-5年的发达国家产业周期所处阶段', 3, 620, 0.0150, '该技术未来3-5年在现有的发达国家所处的阶段性', NULL);
INSERT INTO `evaluation_index` VALUES (700, '投资环境（投资企业提供本区域相关的政策环境证据材料，专家作出独立判断）', 1, NULL, 0.1000, NULL, NULL);
INSERT INTO `evaluation_index` VALUES (710, '科技创新', 2, 700, 0.0300, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (711, '科技投入强度', 3, 710, 0.0090, '是指国家和地区促进、支撑和发展该技术和产业时所进行的财政拨款、科技基金等经费投入', NULL);
INSERT INTO `evaluation_index` VALUES (712, '科技创新人才队伍规模和质量', 3, 710, 0.0060, '目前从事该技术研发、产业发展的科技人才数量及层次', NULL);
INSERT INTO `evaluation_index` VALUES (713, '人才引进与人才流动', 3, 710, 0.0060, '是指国家和地区为促进、支撑和发展该技术和产业所颁布的人才引进政策和措施', NULL);
INSERT INTO `evaluation_index` VALUES (714, '科技创新平台开放水平', 3, 710, 0.0030, '是指为了促进技术进步和产业发展，国家开放科技创新平台促进交流合作的程度', NULL);
INSERT INTO `evaluation_index` VALUES (715, '创新创业服务水平', 3, 710, 0.0060, '是指为促进创新创业的发展，国家和地区提升政策服务、融资服务、技术服务、中介服务和商务服务等配套服务体系', NULL);
INSERT INTO `evaluation_index` VALUES (720, '产业支持', 2, 700, 0.0300, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (721, '政府采购促进创新和新兴产业发展', 3, 720, 0.0090, '是指各级政府在财政的监督下，以法定的方式、方法和程序，通过公开招标、公平竞争向新兴产业购买货物、工程或者劳务，以满足日常政务活动或为公众提供服务的行为', NULL);
INSERT INTO `evaluation_index` VALUES (722, '对节能环保产品消费财政补贴', 3, 720, 0.0060, '是指国家为促进节能环保产业的发展，由财政安排专项基金向企业或个人提供的一种补贴', NULL);
INSERT INTO `evaluation_index` VALUES (723, '对新兴产业扶持', 3, 720, 0.0090, '是指国家为发展和促进新兴产业而颁布的人才、技术、行业等政策', NULL);
INSERT INTO `evaluation_index` VALUES (724, '对科技型中小企业扶持', 3, 720, 0.0060, '是指国家为发展和促进科技型中小企业而颁布的人才、技术、行业等政策', NULL);
INSERT INTO `evaluation_index` VALUES (730, '知识产权保护与服务', 2, 700, 0.0200, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (731, '知识产权保护力度', 3, 730, 0.0120, '是指为实现知识产权的独占权利而实施的打击侵权行为、建立侵权赔偿制度和维权渠道等措施', NULL);
INSERT INTO `evaluation_index` VALUES (732, '知识产权专业服务水平', 3, 730, 0.0040, '是指对知识产权的代理、转让、登记、鉴定、评估、认证、咨询、检索等进行专业服务的发展水平', NULL);
INSERT INTO `evaluation_index` VALUES (733, '知识产权公共服务水平', 3, 730, 0.0040, '是指国家和地区政府引导和监督下，以实现知识产权、技术成果的转化交易等任务的综合服务水平，体现为知识产权公共服务平台的建立以及运行绩效', NULL);
INSERT INTO `evaluation_index` VALUES (740, '市场环境', 2, 700, 0.0200, NULL, '高（85-100）\r\n较高（75-84）\r\n一般（60-74）\r\n差（0-59）');
INSERT INTO `evaluation_index` VALUES (741, '投融资环境', 3, 740, 0.0060, '是影响整个过程中投融资主体的投融资动机、决策、效益的外部因素的总和', NULL);
INSERT INTO `evaluation_index` VALUES (742, '税收激励', 3, 740, 0.0060, '是指国家针对该项目投资，在税收过程中通过给予减免税收、优惠税率、纳税延期等不同形式的税收优惠，以进行引导和激励对该产业的投资发展', NULL);
INSERT INTO `evaluation_index` VALUES (743, '市场监管', 3, 740, 0.0020, '是指政府机构或者法律授权的公共管理机构对破坏市场秩序、规范市场运行而进行的监督管理工作', NULL);
INSERT INTO `evaluation_index` VALUES (744, '公共服务', 3, 740, 0.0030, '是指为了促进该技术进步和产业发展，政府利用公共资源所提供的满足生产和发展的服务', NULL);
INSERT INTO `evaluation_index` VALUES (745, '公共基础设施', 3, 740, 0.0030, '是指保证该产业有效运行和发展的服务设施，包括交通、信息、商业服务等设施', NULL);

-- ----------------------------
-- Table structure for expert
-- ----------------------------
DROP TABLE IF EXISTS `expert`;
CREATE TABLE `expert`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth_year` int(11) NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `people` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `institution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `professional_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `administrative_duty` varchar(2047) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `highest_degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `university` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `honor_award` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fields` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 219 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of expert
-- ----------------------------
INSERT INTO `expert` VALUES (1, '景益鹏', NULL, 1964, '男', '汉', '中国科学院上海天文台', '正高', '上海交通大学讲席教授；天文与天体物理研究中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86-21-67285830 ', 'ypjing@sjtu.edu.cn', NULL);
INSERT INTO `expert` VALUES (2, '方忠', NULL, 1970, '男', '汉', '中国科学院物理研究所', '正高', '中科院物理所副所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-82649982', 'zfang@iphy.ac.cn', NULL);
INSERT INTO `expert` VALUES (3, '吴岳良', NULL, 1962, '男', '汉', '中国科学院理论物理研究所', '正高', '中国科学院大学常务副校长，中国科学院理论物理研究所所长，中科院卡弗里研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '62555058', 'ylwu@itp.ac.cn', NULL);
INSERT INTO `expert` VALUES (4, '陈小明', NULL, 1961, '男', '汉', '中山大学', '正高', '生物无机与合成化学教育部重点实验室主任\n', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '（020）84113986', 'cxm@mail.sysu.edu.cn', NULL);
INSERT INTO `expert` VALUES (5, '唐勇', NULL, 1964, '男', '汉', '中国科学院上海有机化学研究所', '正高', '金属有机国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86 21 54925156', 'tangy@sioc.ac.cn', NULL);
INSERT INTO `expert` VALUES (6, '万立骏', NULL, 1957, '男', '汉', '中国科学院化学研究所', '正高', '中国科学院分子纳米结构与纳米技术重点实验室主任,中国科学院化学研究所学术委员会主任，中国科学院大学化学化工学院院长，北京分子科学国家实验室(筹)主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '62558934', 'wanlijun@iccas.ac.cn ', NULL);
INSERT INTO `expert` VALUES (7, '陈建峰', NULL, 1965, '男', '汉', '北京化工大学', '正高', '北京化工大学化工学院院长，有机无机复合材料国家重点实验室主 任，教育部超重力工程研究中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'chenjf@mail.buct.edu.cn ', NULL);
INSERT INTO `expert` VALUES (8, '马兰', NULL, 1958, '女', '汉', '复旦大学', '正高', '复旦大学脑科学研究院院长、药理研究中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-54237522', 'lanma@fudan.edu.cn', NULL);
INSERT INTO `expert` VALUES (9, '张福锁', NULL, 1960, '男', '汉', '中国农业大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '1062732499', 'zhangfs@cau.edu.cn', NULL);
INSERT INTO `expert` VALUES (10, '韩斌', NULL, 1963, '男', '汉', '中国科学院上海生命科学研究院', '正高', '中国科学院国家基因研究中心主任；中科院上海生命科学研究院植物生理生态所所长；上海生命科学研究院副院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (11, '邓子新', NULL, 1957, '男', '汉', '上海交通大学', '正高', '上海交通大学微生物代谢国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' zxdeng@sjtu.edu.cn', NULL);
INSERT INTO `expert` VALUES (12, '谭仁祥', NULL, 1960, '男', '汉', '南京大学', '正高', '南京大学校长助理；南京大学功能生物分子研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' rxtan@nju.edu.cn ', NULL);
INSERT INTO `expert` VALUES (13, '种康', NULL, 1962, '男', '汉', '中国科学院植物研究所', '正高', '中国科学院植物研究所副所长，中国科学院光合作用与环境分子生理学重点实验室主任,中国科学院植物研究所首席研究员；中国科学院研究生院教授、博士生导师', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '(86)-010-62836517', ' chongk@ibcas.ac.cn', NULL);
INSERT INTO `expert` VALUES (14, '马巍', NULL, 1963, '男', '汉', '中国科学院寒区旱区环境与工程研究所', '正高', '冻土工程国家重点实验室主任、中国科学院寒区旱区环境与工程研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '                          ', 'mawei@lzb.ac.cn', NULL);
INSERT INTO `expert` VALUES (15, '张立飞', NULL, 1963, '男', '汉', '北京大学', '正高', '北大地空学院院长；北京大学造山带与地壳演化教育部重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (16, '俞志明', NULL, 1959, '男', '汉', '中国科学院海洋研究所', '正高', '中国科学院海洋生态与环境科学重点实验室室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0532-82898581', ' zyu@ms.qdio.ac.cn', NULL);
INSERT INTO `expert` VALUES (17, '田永君', NULL, 1963, '男', '汉', '燕山大学', '正高', '燕山大学材料科学与工程学院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (18, '任南琪', NULL, 1959, '男', '汉', '哈尔滨工业大学', '正高', '哈尔滨工业大学副校长，城市水资源与水环境国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86-451-86418180 ', 'rnq@hit.edu.cn', NULL);
INSERT INTO `expert` VALUES (19, '林忠钦', NULL, 1957, '男', '汉', '上海交通大学', '正高', '上海交通大学校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (20, '陈立东', NULL, 1960, '男', '汉', '中国科学院上海硅酸盐研究所', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-52412612', 'cld@mail.sic.ac.cn', NULL);
INSERT INTO `expert` VALUES (21, '孟洛明', NULL, 1955, '男', '汉', '北京邮电大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' lmmeng@bupt.edu.cn\n', NULL);
INSERT INTO `expert` VALUES (22, '高小山', NULL, NULL, '男', '汉', '中国科学院数学与系统科学研究院', '正高', '中国科学院数学与系统科学研究院，副院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86-10-82541799', 'xgaoATmmrc.iss.ac.cn', NULL);
INSERT INTO `expert` VALUES (23, '梅宏', NULL, 1963, '男', '汉', '北京大学', '正高', '北京理工大学党委常委、副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (24, '张靖', NULL, 1974, '男', '汉', '山西大学', '正高', '量子光学与光量子器件国家重点实验室主任，山西大学光电研究所副所长、教授、博士生导师', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (25, '彭实戈', NULL, 1947, '男', '汉', '山东大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86-531-88364100', NULL, NULL);
INSERT INTO `expert` VALUES (26, '陈十一', NULL, 1956, '男', '汉', '北京大学', '正高', '北京大学科学与工程计算中心主任；北京大学工学院首任院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (27, '颜毅华', NULL, 1962, '男', '汉', '中国科学院国家天文台', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-64888708', ' goffice@nao.cas.cn', NULL);
INSERT INTO `expert` VALUES (28, '赵红卫', NULL, 1966, '男', '汉', '中国科学院近代物理研究所', '正高', '中科院近代物理研究所副所长，兰州重离子加速器国家实验室副主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (29, '李亚栋', NULL, 1964, '男', '汉族', '清华大学', '正高', '无机化学研究所所长，化学系学术委员会主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010－62772350', ' ydli@tsinghua.edu.cn ', NULL);
INSERT INTO `expert` VALUES (30, '张洪杰', NULL, 1953, NULL, NULL, '中国科学院长春应用化学研究所', '正高', '稀土资源利用国家重点实验室课题组负责人', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (31, '杨柏', NULL, 1962, '男', '汉', '吉林大学', '正高', '超分子结构与材料国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' byangchem@jlu.edu.cn ', NULL);
INSERT INTO `expert` VALUES (32, '杨维才', NULL, 1964, '男', '汉', '中国科学院遗传与发育学研究所', '正高', '中国科学院遗传与发育生物学研究所所长；分子发育生物学国家重点实验室主', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86-10-64807761', ' wcyang@genetics.ac.cn', NULL);
INSERT INTO `expert` VALUES (33, '陈晔光', NULL, NULL, '男', '汉', '清华大学', '正高', '清华大学生命科学学院 教授', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' ygchen@mail.tsinghua.edu.cn', NULL);
INSERT INTO `expert` VALUES (34, '林圣彩', NULL, NULL, '男', '汉', '厦门大学', '正高', '厦门大学生命科学学院院长；调节生物学课题组组长\n', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (35, '许志琴', NULL, 1941, '女', '汉', '中国地质科学院地质研究所', '正高', '大陆动力学重点实验室 主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (36, '郑永飞', NULL, 1959, '男', '汉', '中国科学技术大学', '正高', '中国科学技术大学地球和空间科学学院副院长，中国科学院壳幔物质与环境重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0551-63603554', 'yfzheng@ustc.edu.cn', NULL);
INSERT INTO `expert` VALUES (37, '吴立新', NULL, 1966, '男', '汉', '中国海洋大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (38, '滕斌', NULL, NULL, '男', '汉', '大连理工大学', '正高', '大连理工大学海岸和近海工程国家重点实验室教授', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86-411-84707103', ' eng@dlut.edu.cn', NULL);
INSERT INTO `expert` VALUES (39, '成会明', NULL, 1963, '男', '汉', '中国科学院金属研究所', '正高', '中科院金属研究所研究员、沈阳材料科学国家（联合）实验室先进炭材料研究部主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86-24-23971611', ' cheng@imr.ac.cn', NULL);
INSERT INTO `expert` VALUES (40, '张军', NULL, 1965, '男', '汉', '北京航空航天大学', '正高', '北京航空航天大学党委书记； \n国家空管新航行系统技术重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (41, '李国杰', NULL, 1943, '男', '汉', '中国科学院计算技术研究所', '正高', '中国科学院大学计算机与控制学院院长，国家只能计算机研究开发中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' lig@ict.ac.cn', NULL);
INSERT INTO `expert` VALUES (42, '管晓宏', NULL, NULL, '男', '汉', '西安交通大学', '正高', '西安交通大学电子信息工程学院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '82668662', ' xhguan@sei.xjtu.edu.cn', NULL);
INSERT INTO `expert` VALUES (43, '陈晓红', NULL, 1963, '女', '汉', '中南大学', '正高', '湖南商学院校长，中南大学商学院名誉院长，湖南省科协副主席；两型社会与生态文明协同创新中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' c88877803@163.com', NULL);
INSERT INTO `expert` VALUES (44, '陈志明', NULL, 1965, '男', '汉', '中国科学院数学与系统科学研究院', '正高', '计算数学与科学工程计算研究所研究员', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (45, '王铁军', NULL, 1961, '男', '汉', '西安交通大学', '正高', '西安交通大学副校长；西安交通大学机械结构强度与振动国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '029-82663318', ' wangtj@mail.xjtu.edu.cn', NULL);
INSERT INTO `expert` VALUES (46, '冯小明', NULL, 1964, '男', '汉', '四川大学', '正高', '绿色化学与技术教育部重点实验室副主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (47, '孙世刚', NULL, 1954, '男', '汉', '厦门大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '2180181', ' sgsun@xmu.edu.cn', NULL);
INSERT INTO `expert` VALUES (48, '刘鸣华', NULL, 1965, '男', '汉', '中国科学院化学研究所', '正高', '任国家纳米科学中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (49, '邹汉法', NULL, 1961, '男', '汉', '中国科学院大连化学物理研究所', '正高', '中国科学院分离分析化学重点实验室主任，生物技术部副主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '8437-9560 ', 'hanfazou@dicp.ac.cn', NULL);
INSERT INTO `expert` VALUES (50, '方精云', NULL, 1959, '男', '汉', '北京大学', '正高', '北京大学地表过程分析与模拟教育部重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' fangjingyun@ibcas.ac.cn', NULL);
INSERT INTO `expert` VALUES (51, '施一公', NULL, 1967, '男', '汉', '清华大学', '正高', '清华大学副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86-10-62797560', ' shi-lab@mail.tsinghua.edu.cn', NULL);
INSERT INTO `expert` VALUES (52, '刘树生', NULL, NULL, '男', '汉', '浙江大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0571-88982505', ' shshliu@zju.edu.cn', NULL);
INSERT INTO `expert` VALUES (53, '陈骏', NULL, 1954, '男', '汉', '南京大学', '正高', '南京大学校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' chenjun@nju.edu.cn', NULL);
INSERT INTO `expert` VALUES (54, '孙和平', NULL, 1955, '男', '汉', '中国科学院测量与地球物理研究所', '正高', '中国科学院测量与地球物理研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '027-68881323', 'heping@asch.whigg.ac.cn\n', NULL);
INSERT INTO `expert` VALUES (55, '郑循华', NULL, 1964, '女', '汉', '中国科学院大气物理研究所', '正高', '大气边界层物理与大气化学国家重点实验室副主任', NULL, NULL, NULL, NULL, NULL, '硕士', NULL, NULL, NULL, NULL, ' xunhua.zheng@post.iap.ac.cn', NULL);
INSERT INTO `expert` VALUES (56, '周玉', NULL, 1955, '男', '汉', '哈尔滨工业大学', '正高', '哈尔滨工业大学校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0451-86415898', ' zhouyu@hit.edu.cn', NULL);
INSERT INTO `expert` VALUES (57, '王献红', NULL, 1966, '男', '汉', '中国科学院长春应用化学研究所', '正高', '中国科学院生态环境高分子材料重点实验室主任，长春应化所学术委员会副主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (58, '钟登华', NULL, 1963, '男', '汉', '天津大学', '正高', '天津大学校副校长；天津大学水利工程仿真与安全国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (59, '廖瑞金', NULL, 1963, '男', '汉', '重庆大学', '正高', '重庆大学党委常委、副校长；输配电装备及系统安全与新技术国家重点实验室（重庆大学）主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '023-65112258', 'rjliao@cqu.edu.cn', NULL);
INSERT INTO `expert` VALUES (60, '何积丰', NULL, 1943, '男', '汉', '华东师范大学', '正高', '国家可信嵌入式软件工程技术研究中心首席科学家，上海市高可信计算重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (61, '张运', NULL, 1952, '男', '汉', '山东大学', '正高', '教育部和卫生部心血管重构与功能研究重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (62, '陈雁', NULL, NULL, '男', '汉', '中国科学院上海生命科学研究院', '正高', ' 中国科学院上海生命科学研究院营养科学研究所，研究员', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' ychen3@sibs.ac.cn', NULL);
INSERT INTO `expert` VALUES (63, '高福', NULL, 1961, '男', '汉', NULL, '正高', '中国科学院大学存济医学院院长，[1]  中国科学院微生物研究所所长[2]  ，中国科学院病原微生物与免疫学重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-64807688', ' gaof@im.ac.cn', NULL);
INSERT INTO `expert` VALUES (64, '周又和', NULL, 1957, '男', '汉', '兰州大学', '正高', '兰州大学土木工程与力学学院院长；教育部西部灾害与环境力学重点实验室主任，兰州大学工程与科学高性能计算中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (65, '孙昌璞', NULL, 1962, '男', '汉', '中国科学理论物理研究所', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' suncp at itp.ac.cn', NULL);
INSERT INTO `expert` VALUES (66, '张杰', NULL, 1958, '男', '汉', '上海交通大学', '正高', '上海交通大学校长；中国科学院副院长；光物理重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (67, '江雷', NULL, 1965, '男', '汉', '中国科学院化学研究所', '正高', '中国科学院化学研究所 研究员；北京航空航天大学化学与环境学院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, ' 010-82621396', ' jianglei@iccas.ac.cn', NULL);
INSERT INTO `expert` VALUES (68, '周其林', NULL, 1957, '男', '汉', '南开大学', '正高', '南开大学元素有机化学研究所所长、元素有机化学国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86-22-23500011', ' qlzhou@nankai.edu.cn ', NULL);
INSERT INTO `expert` VALUES (69, '杨金龙', NULL, 1966, '男', '汉', '中国科学技术大学', '正高', '合肥微尺度物质科学国家实验室理论与计算科学研究部主任；化学与材料科学学院执行院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '(0551)-63606408', ' jlyang@ustc.edu.cn', NULL);
INSERT INTO `expert` VALUES (70, '张希', NULL, 1965, '男', '汉', '清华大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62796283', ' xi@mail.tsinghua.edu.cn', NULL);
INSERT INTO `expert` VALUES (71, '赵国屏', NULL, 1948, '男', '汉', '中国科学院上海生命科学研究院', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' gpzhao@sibs.ac.cn', NULL);
INSERT INTO `expert` VALUES (72, '巩志忠', NULL, 1965, '男', '汉', '中国农业大学', '正高', '植物生理学与生物化学国家重点实验室 课题组长；中国农业大学生物学院，教授', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '62733733', 'gongzz', NULL);
INSERT INTO `expert` VALUES (73, '陈焕春', NULL, 1953, '男', '汉', '华中农业大学', '正高', '华中农业大学农业微生物学国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (74, '秦大河', NULL, 1947, '男', '汉', '中国科学院寒区旱区环境与工程研究所', '正高', '冰冻圈科学国家重点实验室实验室名誉主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (75, '窦贤康', NULL, 1966, '男', '汉', '中国科学技术大学', '正高', '中国科学院近地空间环境重点实验室主任；武汉大学校长（副部长级）、党委常委', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '63601599', ' dou@ustc.edu.cn', NULL);
INSERT INTO `expert` VALUES (76, '朱彤', NULL, 1962, '男', '汉', '北京大学', '正高', '环境模拟与污染控制国家重点实验室研究员', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86 10 6275 4789', ' zhu@pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (77, '邵新宇', NULL, 1968, '男', '汉', '华中科技大学', '正高', '华中科技大学常务副校；制造装备数字化国家工程研究中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '027-87557764', ' shaoxy@hust.edu.cn', NULL);
INSERT INTO `expert` VALUES (78, '谈和平', NULL, NULL, '男', '汉', '哈尔滨工业大学', '正高', '哈尔滨工业大学航空航天热物理研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0451-86403794', ' tanheping@hit.edu.cn', NULL);
INSERT INTO `expert` VALUES (79, '李宏男', NULL, 1957, '男', '汉', '大连理工大学', '正高', '沈阳建筑大学副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0411-84709539', ' hnli@dlut.edu.cn', NULL);
INSERT INTO `expert` VALUES (80, '张平', NULL, NULL, '男', '汉', '北京邮电大学', '正高', '网络与交换技术国家重点实验室主任，中德软件研究所副所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (81, '房建成', NULL, 1965, '男', '汉', '北京航空航天大学', '正高', '北京航空航天大学副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (82, '骆清铭', NULL, 1966, '男', '汉', '华中科技大学', '正高', '华中科技大学副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '027-87792033', ' qluo@mail.hust.edu.cn', NULL);
INSERT INTO `expert` VALUES (83, '贺林', NULL, 1953, '男', '汉', '上海交通大学', '正高', 'Bio-X中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (84, '郑树森', NULL, 1950, '男', '汉', '浙江大学', '正高', '卫生部多器官联合移植研究重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '87236601', ' zyzsss@zju.edu.cn ', NULL);
INSERT INTO `expert` VALUES (85, '付小兵', NULL, 1960, '男', '汉', '中国人民解放军总医院', '正高', '解放军总医院生命科学院院长；解放军第三O四医院全军创伤修复重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (86, '潘建伟', NULL, 1970, '男', '汉', '中国科学技术大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0551-3606493', ' pan@ustc.edu.cn', NULL);
INSERT INTO `expert` VALUES (87, '王新年', NULL, 1962, '男', '汉', '华中师范大学', '正高', '华中师范大学粒子物理研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '67867002', NULL, NULL);
INSERT INTO `expert` VALUES (88, '曹荣', NULL, 1966, '男', '汉', '中国科学院福建物质结构研究所', '正高', '中科院福建物质结构研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0591-63173698', ' rcao@fjirsm.ac.cn', NULL);
INSERT INTO `expert` VALUES (89, '付红兵', NULL, 1971, '男', '汉', '中国科学院化学研究所', '正高', '中国科学院光化学重点实验室研究员', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62522039', ' hongbing.fu@iccas.ac.cn ', NULL);
INSERT INTO `expert` VALUES (90, '谭蔚泓', NULL, NULL, '男', '汉', '湖南大学', '正高', '化学生物传感与计量学国家重点实验室（湖南大学）主任，化学生物传感与计量学国家重点实验室（湖南大学）香港浸会大学分室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (91, '周金秋', NULL, NULL, '男', '汉', '中国科学院上海生命科学研究院', '正高', '国科学院上海生命科学研究院生物化学与细胞生物学研究所副所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '54921076', ' zhoulab@@sibcb.ac.cn', NULL);
INSERT INTO `expert` VALUES (92, '程和平', NULL, 1962, '男', '汉', '北京大学', '正高', '北京大学分子医学研究所钙信号 研究室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-6276-5957', ' chengp@pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (93, '董奇', NULL, 1961, '男', '汉', '北京师范大学', '正高', '北京师范大学 校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (94, '钱前', NULL, 1962, '男', '汉', '中国水稻研究所', '正高', '水稻生物学国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (95, '杨进辉', NULL, 1971, '男', '汉', '中国科学院地质与地球物理研究所', '正高', '岩石圈演化国家重点实验室研究员', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-82998510', ' jinhui@mail.igcas.ac.cn', NULL);
INSERT INTO `expert` VALUES (96, '易帆', NULL, 1957, '男', '汉', '武汉大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (97, '赵美训', NULL, 1959, '男', '汉', '中国海洋大学', '正高', '海洋化学理论与工程技术教育部重点实验室，“筑峰人才工程”特聘教授\n', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0532-66782103', ' maxzhao@ouc.edu.cn', NULL);
INSERT INTO `expert` VALUES (98, '杨万泰', NULL, NULL, '男', '汉', '北京化工大学', '正高', '北京化工大学有机表面研究室负责人', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '64432262', 'yangwt@mail.buct.edu.cn', NULL);
INSERT INTO `expert` VALUES (99, '高德利', NULL, 1958, '男', '汉', '中国石油大学（北京）', '正高', '中国石油大学石油工程教育部重点实验室，主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (100, '谭建荣', NULL, 1954, '男', '汉', '浙江大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0571-87951273', ' egi@zju.edu.cn', NULL);
INSERT INTO `expert` VALUES (101, '荣命哲', NULL, 1963, '男', '汉', '西安交通大学', '正高', '电力设备电气绝缘国家重点实验室副主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '029-82667981', ' mzrong@mail.xjtu.edu.cn', NULL);
INSERT INTO `expert` VALUES (102, '尤肖虎', NULL, 1962, '男', '汉', '东南大学', '正高', '移动通信国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (103, '陈收', NULL, 1956, '男', '汉', '湖南大学', '正高', '湖南大学常务副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '86-731-88823790', ' chenshou@hnu.net.cn', NULL);
INSERT INTO `expert` VALUES (104, '段树民', NULL, 1957, '男', '汉', '浙江大学', '正高', '江大学医学部主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0571-88208001 ', ' duanshumin@zju.edu.cn ', NULL);
INSERT INTO `expert` VALUES (105, '张学敏', NULL, 1963, '男', '汉', '中国人民解放军军事医学科学院', '正高', '军事医学科学院研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-68211656', ' zhangxuemin@cashq.ac.cn', NULL);
INSERT INTO `expert` VALUES (106, '席南华', NULL, 1963, '男', '汉', '中国科学院数学与系统科学研究院', '正高', '中国科学院大学副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (107, '陈伟球', NULL, 1969, '男', '汉', '浙江大学', '正高', '浙江大学航空航天学院工程力学系教授', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (108, '高松', NULL, 1964, '男', '汉', '北京大学', '正高', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '62756320', ' gaosong@pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (109, '包信和', NULL, 1959, '男', '汉', '中国科学院大连化学物理研究所', '正高', '中科院沈阳分院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0411-84379128', ' xhbao@dicp.ac.cn', NULL);
INSERT INTO `expert` VALUES (110, '毛兰群', NULL, NULL, '男', '汉', '中国科学院化学研究所', '研究员', '科技处长；实验室副主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'lqmao@iccas.ac.cn', NULL);
INSERT INTO `expert` VALUES (111, '朱本占', NULL, NULL, '男', NULL, '中国科学院生态环境研究中心', '研究员', '中国科学院生态环境研究中心—浸会大学环境科学联合研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62849030　', 'bzhu@rcees.ac.cn', NULL);
INSERT INTO `expert` VALUES (112, '胡志红', NULL, 1966, '女', '汉', '中国科学院武汉病毒研究所', '研究员', '病毒学国家重点实验室副主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '027-87197180', 'huzh@wh.iov.cn', NULL);
INSERT INTO `expert` VALUES (113, '王文', NULL, NULL, '男', NULL, '中国科学院昆明动物研究所', '研究员', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '871-65193359', 'wwang@mail.kiz.ac.cn', NULL);
INSERT INTO `expert` VALUES (114, '吴孔明', NULL, 1964, '男', '汉', '中国农业科学院植物保护研究所', '研究员', '中国农业科学院植物保护研究所所长兼植物病虫害生物学国家重点实验室主任，农业昆虫研究室棉花害虫课题组组长。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62815906', 'kmwu@ippcaas.cn', NULL);
INSERT INTO `expert` VALUES (115, '史培军', NULL, 1959, '男', '汉', '北京师范大学', '教授', '北京师范大学常务副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-58808179', 'spj@bnu.edu.cn', NULL);
INSERT INTO `expert` VALUES (116, '彭平安', NULL, 1960, '男', '汉', '中国科学院广州地球化学研究所', '研究员', '有机地球化学国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '020-85290163', 'pinganp@gig.ac.cn', NULL);
INSERT INTO `expert` VALUES (117, '万卫星', NULL, 1958, '男', NULL, '中国科学院地质与地球物理研究所', '研究员', '地磁与空间物理研究室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-82998306', 'wanw@mail.iggcas.ac.cn', NULL);
INSERT INTO `expert` VALUES (118, '陈大可', NULL, 1957, '男', NULL, '国家海洋局第二海洋研究所', '研究员', '卫星海洋环境动力学国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'dchen@sio.org.cn', NULL);
INSERT INTO `expert` VALUES (119, '康绍忠', NULL, 1962, '男', NULL, '中国农业大学', '教授', '中国农业水问题研究中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62737611', 'kangsz@cau.edu.cn ', NULL);
INSERT INTO `expert` VALUES (120, '姜培学', NULL, 1964, '男', NULL, '清华大学', '教授', '清华大学科研院常务副院长、热能工程系工程热物理研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62772661', 'jiangpx@tsinghua.edu.cn', NULL);
INSERT INTO `expert` VALUES (121, '郭东明', NULL, 1959, '男', NULL, '大连理工大学', '教授', '大连理工大学校长 ', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0411-84708321', 'guodm@dlut.edu.cn', NULL);
INSERT INTO `expert` VALUES (122, '彭练矛', NULL, 1962, '男', '汉', '北京大学', '教授', '教育部纳米器件物理和化学重点实验室主任；北京大学学位评定委员会委员；信息科学技术学院学位分委员会副主任；中国电子显微镜学会副理事长；中国仪器仪表学会微纳器件与系统技术分会副理事长；国际晶体学会电子衍射委员会委员；国际 MICRON, Ultramicroscopy 等杂志编委会成员。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62764967', 'lmpeng@pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (123, '陈杰', NULL, 1965, '男', '汉', '北京理工大学', '教授', '北京理工大学副校长兼科学技术研究院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-68914225', 'chenjie@bit.edu.cn', NULL);
INSERT INTO `expert` VALUES (124, '罗毅', NULL, 1960, '男', '汉', '清华大学', '教授', '清华信息科学与技术国家实验室副主任、集成光电子学重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62782734', 'luoy@tsinghua.edu.cn', NULL);
INSERT INTO `expert` VALUES (125, '唐立新', NULL, NULL, '男', '汉', '东北大学', '教授', '东北大学信息科学与工程学院院长，东北大学工业工程与物流优化研究所所长，辽宁省制造系统与物流管理重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '024-83680169', 'tanglixin@ise.neu.edu.cn', NULL);
INSERT INTO `expert` VALUES (126, '宁光', NULL, 1963, '男', '汉', '上海交通大学', '主任医师', '上海交通大学医学院附属瑞金医院副院长、上海市内分泌代谢病临床医学中心主任、上海市内分泌研究所副所长、上海市高校内分泌代谢病E研究院首席研究员、上海市内分泌重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'guangning@medmail.com.cn', NULL);
INSERT INTO `expert` VALUES (127, '陈谦明', NULL, 1963, '男', NULL, '四川大学', '教授', '四川大学校长助理、研究生院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (128, '朱卫国', NULL, 1962, '男', '汉', '北京大学', '教授', '深圳大学医学部主任、医学院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-82802235', 'zhuweiguo@bjmu.edu.cn', NULL);
INSERT INTO `expert` VALUES (129, '蒋建东', NULL, NULL, '男', NULL, '中国医学科学院医药生物技术研究所', '研究员', '中国医学科学院医药生物技术研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-63017906', 'jiang.jdong@163.com ', NULL);
INSERT INTO `expert` VALUES (130, '封东来', NULL, 1972, '男', NULL, '复旦大学', '教授', '应用表面物理国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-51630266', 'dlfeng@fudan.edu.cn', NULL);
INSERT INTO `expert` VALUES (131, '张平文', NULL, 1966, '男', '汉', '北京大学', '教授', '现任北京大学副教务长、学科建设办公室主任，北京大学科学与工程计算中心常务副主任，北京大学数学科学学院党委书记、常务副院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62759851', 'pzhang@pku.edu.cn ', NULL);
INSERT INTO `expert` VALUES (132, '王俊贤', NULL, 1976, '男', NULL, '中国科学技术大学', '教授', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '551-63600172', 'jxw@ustc.edu.cn', NULL);
INSERT INTO `expert` VALUES (133, '马余刚', NULL, 1968, '男', NULL, '中国科学院上海应用物理研究所', '研究员', '现任党委委员、所长助理、核物理研究室主任、所学术委员会执行副主任。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-59554780', 'mayugang@sinap.ac.cn', NULL);
INSERT INTO `expert` VALUES (134, '樊瑜波', NULL, 1965, '男', NULL, '北京航空航天大学', '教授', '北京航空航天大学、生物与医学工程学院、院长、教授；生物力学与力生物学教育部重点实验室 主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-82339428', 'yubofan@buaa.edu.cn', NULL);
INSERT INTO `expert` VALUES (135, '卿凤翎', NULL, 1964, '男', NULL, '中国科学院上海有机化学研究所', '教授', '东华大学副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, ' flq@mail.sioc.ac.cn', NULL);
INSERT INTO `expert` VALUES (136, '龙亿涛', NULL, 1967, '男', '汉', '华东理工大学', '教授', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-64252339', 'ytlong@ecust.edu.cn', NULL);
INSERT INTO `expert` VALUES (137, '邵久书', NULL, 1965, '男', NULL, '北京师范大学', '研究员', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62656806 ', ' jiushu@mrdlab.icas.ac.cn', NULL);
INSERT INTO `expert` VALUES (138, '彭孝军', NULL, 1962, '男', NULL, '大连理工大学', '教授', '精细化工国家重点实验室主任，辽宁省精细化工工程技术中心主任。民盟大连市副主委。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0411-84986306', 'pengxj@dlut.edu.cn', NULL);
INSERT INTO `expert` VALUES (139, '卜显和', NULL, 1964, '男', '汉', '南开大学', '教授', '金属与分子基材料化学天津市重点实验室主任和先进能源材料化学教育部重点实验室学术委员会副主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '022-23502809', 'buxh@nankai.edu.cn', NULL);
INSERT INTO `expert` VALUES (140, '戚益军', NULL, NULL, '男', '汉', '清华大学', '教授', '植物生物学研究中心主任、生命科学学院副院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62793442', 'qiyijun@tsinghua.edu.cn', NULL);
INSERT INTO `expert` VALUES (141, '饶毅', NULL, 1962, '男', '汉', '北京大学', '教授', '北京大学理学部主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'yrao@pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (142, '裴端卿', NULL, NULL, '男', NULL, '中国科学院广州生物医药与健康研究院', '研究员', '中国科学院广州生物医药与健康研究院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'pei_duanqing@gibh.ac.cn', NULL);
INSERT INTO `expert` VALUES (143, '张宏', NULL, NULL, '男', '汉', '中国科学院生物物理研究所', '研究员', '中科院生物物理所，生物大分子国家重点实验室副主任，创新课题组组长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '64848238', 'hongzhang@sun5.ibp.ac.cn ', NULL);
INSERT INTO `expert` VALUES (144, '宗秋刚', NULL, NULL, '男', NULL, '北京大学', '教授', '北京大学空间物理与应用技术研究所所长，北京大学空间科学与探测中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62767422', 'qgzong@pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (145, '周成虎', NULL, 1964, '男', '汉', '中国科学院地理科学与资源研究所', '研究员', '中国科学院地理科学与资源研究所副所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'zhouch@igsnrr.ac.cn', NULL);
INSERT INTO `expert` VALUES (146, '王会军', NULL, 1964, '男', NULL, '中国科学院大气物理研究所', '研究员', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (147, '袁东亮', NULL, 1966, '男', NULL, '中国科学院海洋研究所', '研究员', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0532-82898510', 'dyuan@qdio.ac.cn', NULL);
INSERT INTO `expert` VALUES (148, '王沛芳', NULL, 1973, '女', NULL, '河海大学', '教授', '河海大学环境学院副院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'pfwang2005@hhu.edu.cn', NULL);
INSERT INTO `expert` VALUES (149, '刘庆', NULL, 1964, '男', '汉', '重庆大学', '教授', '重庆大学校党委常委、副校长。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '023－65111295', 'qingliu@cqu.edu.cn', NULL);
INSERT INTO `expert` VALUES (150, '缪协兴', NULL, 1959, '男', NULL, '中国矿业大学', '教授', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (151, '孟庆波', NULL, 1964, '男', NULL, '中国科学院物理研究所', '研究员', '物理研究所清洁能源实验室主任，中科院清洁能源前沿研究重点实验室主任，新能源材料与器件北京市重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-82649242', 'qbmeng@aphy.iphy.ac.cn', NULL);
INSERT INTO `expert` VALUES (152, '杜修力', NULL, 1962, '男', '汉', '北京工业大学', '教授', '北京工业大学副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (153, '陶然', NULL, 1964, '男', NULL, '北京理工大学', '教授', '分数域信号与系统北京市重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-68914257', 'rantao@bit.edu.cn', NULL);
INSERT INTO `expert` VALUES (154, '黄如', NULL, 1969, '女', '回', '北京大学', '教授', '北京大学信息科学技术学院院长，微纳电子研究院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62752549 ', 'huangr@ime.pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (155, '蒋亚东', NULL, 1964, '男', NULL, '电子科技大学', '教授', '电子科技大学光电信息学院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '028-83202616', 'Jiangyd@uestc.edu.cn', NULL);
INSERT INTO `expert` VALUES (156, '谭民', NULL, 1962, '男', NULL, '中国科学院自动化研究所', '研究员', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-82544794', 'min.tan@ia.ac.cn', NULL);
INSERT INTO `expert` VALUES (157, '李垣', NULL, 1961, '男', NULL, '上海交通大学', '教授', '同济大学经济与管理学院发展与改革战略委员会主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-52307150', 'llliyuan@sjtu.edu.cn', NULL);
INSERT INTO `expert` VALUES (158, '房静远', NULL, 1961, '男', NULL, '上海交通大学', '主任医师', '上海交通大学医学院教授和博导、附属仁济医院消化科主任医师和学科核心小组组长、上海市消化疾病研究所所长、上海市重点学科（消化优势）学科带头人。上海交通大学医学院教授委员会委员。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'jingyuanfang@yahoo.com', NULL);
INSERT INTO `expert` VALUES (159, '吴开春', NULL, 1961, '男', '汉', '中国人民解放军第四军医大学', '教授', '第四军医大学第一附属医院消化内科主任、西京消化病医院常务副院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'kaicwu@fmmu.edu.cn', NULL);
INSERT INTO `expert` VALUES (160, '李萍', NULL, 1960, '女', NULL, '中国药科大学', '教授', '天然药物活性组分与功能国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '025-83271379', 'liping2004@126.com', NULL);
INSERT INTO `expert` VALUES (161, '程涛', NULL, NULL, '男', '汉', '中国医学科学院', '教授', '血液学研究所血液病医院常务副所院长、学术带头人', NULL, NULL, NULL, NULL, NULL, '硕士', NULL, NULL, NULL, '022-23909156', 'chengtao@ihcams.ac.cn', NULL);
INSERT INTO `expert` VALUES (162, '贾金锋', NULL, 1966, '男', NULL, '上海交通大学', '教授', '上海交通大学物理与天文学院副院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-54743165', 'jfjia@sjtu.edu.cn', NULL);
INSERT INTO `expert` VALUES (163, '朱熹平', NULL, 1963, '男', NULL, '中山大学', '教授', '中山大学党委常委、副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '020-84112553', 'stszxp@mail.sysu.edu.cn', NULL);
INSERT INTO `expert` VALUES (164, '韩占文', NULL, 1965, '男', NULL, '中国科学院云南天文台', '研究员', '中科院云南天文台台长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0871-63920139', 'zhanwenhan@ynao.ac.cn', NULL);
INSERT INTO `expert` VALUES (165, '吕才典', NULL, 1966, '男', NULL, '中国科学院高能物理研究所', '研究员', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010--88233161', 'lucd@ihep.ac.cn', NULL);
INSERT INTO `expert` VALUES (166, '俞书宏', NULL, 1967, '男', NULL, '中国科学技术大学', '教授', '合肥微尺度物质科学国家实验室纳米材料与化学研究部执行主任、中国科技大学化学与材料科学学院 副院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '551-63603040', 'shyu@ustc.edu.cn', NULL);
INSERT INTO `expert` VALUES (167, '陈鹏', NULL, 1979, '男', NULL, '北京大学', '教授', '化学生物学系主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62755773', 'pengchen@pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (168, '江云宝', NULL, 1963, '男', NULL, '厦门大学', '教授', '厦门大学化学化工学院院长 ', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0592-2188372', 'ybjiang@xmu.edu.cn ', NULL);
INSERT INTO `expert` VALUES (169, '何静', NULL, NULL, '女', NULL, '北京化工大学', '教授', '北京化工大学化工资源有效利用国家重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '64425280', 'jinghe@263.net.cn', NULL);
INSERT INTO `expert` VALUES (170, '范青华', NULL, 1966, '男', NULL, '中国科学院化学研究所', '研究员', '中国科学院化学所副所长，党委副书记兼纪委书记', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62554472', 'fanqh@iccas.ac.cn', NULL);
INSERT INTO `expert` VALUES (171, '许瑞明', NULL, NULL, '男', NULL, '中国科学院生物物理研究所', '研究员', '现任蛋白质科学国家实验室(拟筹建) 主任，生物大分子国家重点实验室主任，中国科学院生物物理研究所副所长。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-64888797', 'rmxu@ibp.ac.cn ', NULL);
INSERT INTO `expert` VALUES (172, '金力', NULL, 1963, '男', NULL, '复旦大学', '教授', '复旦大学党委委员、常委，副校长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-51630607', 'lijin.fudan@gmail.com', NULL);
INSERT INTO `expert` VALUES (173, '周俭民', NULL, NULL, '男', NULL, '中国科学院遗传与发育生物学研究所', '研究员', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-64806330', 'jmzhou@genetics.ac.cn', NULL);
INSERT INTO `expert` VALUES (174, '邓宏魁', NULL, 1963, '男', NULL, '北京大学', '教授', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62756474', 'hongkui_deng@pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (175, '黄建平', NULL, 1962, '男', NULL, '兰州大学', '教授', '教育部半干旱气候变化重点实验室主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0931-8914282', 'hjp@lzu.edu.cn', NULL);
INSERT INTO `expert` VALUES (176, '吴丰昌', NULL, 1964, '男', NULL, '中国环境科学研究院', '研究员', '中国环境科学研究院环境基准与风险评估国家重点实验室主任、博士生导师、研究员', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-84915312', 'wufengchang@vip.skleg.cn', NULL);
INSERT INTO `expert` VALUES (177, '黄润秋', NULL, 1963, '男', '汉', '成都理工大学', '教授', '环境保护部副部长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '84078108', NULL, NULL);
INSERT INTO `expert` VALUES (178, '王如竹', NULL, 1964, '男', '汉', '上海交通大学', '教授', '上海交通大学动力与能源工程学院副院长，兼制冷与低温工程研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'rzwang@sjtu.edu.cn', NULL);
INSERT INTO `expert` VALUES (179, '马於光', NULL, 1963, '男', '汉', '华南理工大学', '教授', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '22237036', 'ygma@scut.edu.cn', NULL);
INSERT INTO `expert` VALUES (180, '刘宏', NULL, 1966, '男', '汉', '哈尔滨工业大学', '教授', '哈尔滨工业大学校长助理，机电学院院长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0451-86402442', 'hong.liu@hit.edu.cn', NULL);
INSERT INTO `expert` VALUES (181, '傅正义', NULL, 1963, '男', '汉', '武汉理工大学', '教授', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '027-87662983', 'zyfu@whut.edu.cn', NULL);
INSERT INTO `expert` VALUES (182, '沈波', NULL, 1963, '男', NULL, '北京大学', '教授', '北京大学物理学院副院长、宽禁带半导体研究中心副主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62767809', 'bshen@pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (183, '陈健', NULL, 1963, '男', NULL, '南京大学', '教授', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '025-83593717', 'chenj63@nju.edu.cn', NULL);
INSERT INTO `expert` VALUES (184, '胡事民', NULL, 1968, '男', NULL, '清华大学', '教授', NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62782052', 'shimin@tsinghua.edu.cn', NULL);
INSERT INTO `expert` VALUES (185, '陆卫', NULL, 1962, '男', NULL, '中国科学院上海技术物理研究所', '研究员', '中国科学院上海技术物理研究所所长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'luwei@mail.sitp.a.cn', NULL);
INSERT INTO `expert` VALUES (186, '魏一鸣', NULL, 1968, '男', '汉', '北京理工大学', '教授', '管理与经济学院院长、能源与环境政策研究中心主任', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'wei@bit.edu.cn', NULL);
INSERT INTO `expert` VALUES (187, '葛均波', NULL, 1962, NULL, '汉', '复旦大学', NULL, '中华医学会心血管病分会候任主任委员，美国心血管造影和介入学会理事会理事，美国心脏病学会国际顾问', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '13901977506', 'ge.junbo@zs-hospital.sh.cn', NULL);
INSERT INTO `expert` VALUES (188, '李亚平', NULL, NULL, NULL, NULL, '中国科学院上海药物研究所', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-20231000-1515', 'ypli@simm.ac.cn', NULL);
INSERT INTO `expert` VALUES (189, '邓兴旺', NULL, 1962, NULL, NULL, '北京大学', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '62759987', 'deng@pku.edu.cn', NULL);
INSERT INTO `expert` VALUES (190, '聂祚仁', NULL, 1963, NULL, '汉', '北京工业大学', NULL, '国家863新材料技术领域主题组专家，国家自然科学基金委专家评审组专家；《Int. J. LCA》（德国）中国区编委和全球LCA中心联盟中方委员、《Progress in Natural Science - Materials International》、《中国有色金属学报》和《稀有金属》中英文版等编委，稀贵金属国家重点实验室学术委员会主任，中国材料研究学会常务理事、环境材料分会主任委员。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-67391536', 'zrnie@bjut.edu.cn ', NULL);
INSERT INTO `expert` VALUES (191, '高自友', NULL, 1963, NULL, NULL, '北京交通大学', NULL, '中国交通运输系统工程学会常务理事、副理事长；中国管理现代化研究会常务理事；中国系统工程学会常务理事；国际学术期刊《Journal of Transportation Safety and Security》副主编；《Transportmetrica》、《The Open transportation Journal》、《The Open Civil Engineering Journal》、及《International Journal of Systems, Control and Communications 》编委；《交通运输系统工程与信息》副主编/常务编委；《系统工程理论与实践》常务编委；国家自然科学基金委管理科学部学科评审组专家；北京市第三届学位委员会委员；俄罗斯自然科学院外籍院士', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'zygao@bjtu.edu.cn', NULL);
INSERT INTO `expert` VALUES (192, '杨光红', NULL, 1963, NULL, NULL, '东北大学', NULL, 'IEEE 控制系统学会会议编委、《International Journal of Control，Automation and Systems》国际杂志编委、《International Journal of Systems Science》国际杂志编委、IEEE 高级会员、《控制与决策》杂志副主编、《控制工程》杂志编委、《IEEE Harbin Section Control Systems Society Chapter》主席、《CCDC》（中国控制与决策会议）程序委员会主席、总主席', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '024-83681939', 'yangguanghong@ise.neu.edu.cn', NULL);
INSERT INTO `expert` VALUES (193, '赵宇亮', NULL, 1963, NULL, '汉', '国家纳米科学中心', NULL, '苏州大学客座教授', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-88233191', 'zhaoyuliang@ihep.ac.cn', NULL);
INSERT INTO `expert` VALUES (194, '韩旭', NULL, 1968, NULL, '汉', '湖南大学', NULL, '(1) 国际计算方法杂志编委；\n(2) 计算机辅助工程杂志编委\n(3) 国家安全重大基础研究项目总体组组长\n(4) 湖南省力学学会第七届常务理事；\n(5) 中国力学学会计算力学专业委员会委员；国际计算力学学会会员；\n(6) 中国兵工学会应用力学第六届专业委员会委员；\n(7) 中国机械学会高级会员；\n(8) 中国机械工程学会机械设计分会第六届委员会委员；\n(9) 第六届教育部科学技术委员会国防科技学部委员；\n(10)中国汽车人才研究会理事；\n(11)学术杂志《机械工程学报》、《International Journal of Solid and Structures》、《International Journal for Numerical Methods in Engineering》、《Journal of Sound and Vibration》《Computer Methods in Applied Mechanics and Engineering》、《Composites Science and Technology》、《Inverse Problems in Engineering and Science》、《Smart Materials and Structures》等的评审。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0731-88823993', 'hanxu@hnu.edu.cn', NULL);
INSERT INTO `expert` VALUES (195, '曾和平', NULL, 1966, NULL, NULL, '华东师范大学', NULL, '美国光学学会会士 OSA Fellow；\n加拿大Laval大学Adjunct Professor；\n上海理工大学兼职教授；\n上海交通大学兼职教授；\nEuropean Physical Journal D编委；\n13与14届国家自然科学基金数理学部评审专家组成员。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-62232108 ', 'hpzeng@phy.ecnu.edu.cn ', NULL);
INSERT INTO `expert` VALUES (196, '朱敏', NULL, 1962, NULL, '汉', '华南理工大学', NULL, '兼任第四届全国工程硕士专业学位教育指导委员会委员、教育部高等学校教学指导委员会金属材料与冶金工程分委员会委员、中国金属学会材料科学分会副理事长、中国机械工程学会理化检验分会副主任委员等学术职务。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '87112830', 'memzhu@scut.edu.cn', NULL);
INSERT INTO `expert` VALUES (197, '于吉红', NULL, 1967, NULL, '汉', '吉林大学', NULL, '英国皇家化学学会期刊Chem. Sci.副主编，国际分子筛协会理事、英国皇家化学会会士、中国化学会理事', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'jihong@jlu.edu.cn', NULL);
INSERT INTO `expert` VALUES (198, '李景虹', NULL, 1967, NULL, NULL, '清华大学', NULL, 'Editorial Advisory Board, ACS Sensors (ACS journal)\nRegional Editor, Associate Editor, Current Analytical Chemistry (Bentham Science)\nEditorial Board, Advanced Electrochemistry (American Scientific Publishers, USA)\nAdvisory Board, RSC Advances (Royal Society of Chemistry)\nAssociate Editor, Journal of Physics and Chemistry of Solids (Elsevier)\n《分析化学》、《电化学》、《化学传感器》、《化学学报》等期刊编委', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62795290', 'jhli@mail.tsinghua.edu.cn', NULL);
INSERT INTO `expert` VALUES (199, '龚启勇', NULL, 1963, NULL, '汉', '四川大学', NULL, '作为主编出版住院医师培训参考书《临床医学影像学》（人民卫生出版社）和全国高等学校临床医学专业长学制（7年和8年）国家统编教材《医学影像学》（人民卫生出版社,第三版）.\n同时担任全国高等学校五年制本科临床医学专业国家统编教材《医学影像学》副主编（人民卫生出版社,第七版），以及国家卫计委住院医师规范化培训规划教材《医学影像学》副主编（人民卫生出版社）。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '18980601593', 'qiyonggong@hmrrc.org.cn', NULL);
INSERT INTO `expert` VALUES (200, '元英进', NULL, 1963, NULL, '汉', '天津大学', NULL, '《Frontiers of Chemical Science and Engineering》副主编  \n《Biofuels, Bioproducts and Biorefining -Biofpr》编委 \n《Chemical Engineering and Processing》编委 \n IChemE Fellow\n《化工学报》、《过程工程学报》、《食品与生物技术学报》编委  \n材料化学工程国家重点实验室学术委员会委员\n精细化工国家重点实验室学术委员会委员\n生物反应器工程国家重点实验室学术委员会委员 ', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '022-27402503', 'yjyuan@tju.edu.cn', NULL);
INSERT INTO `expert` VALUES (201, '王占山', NULL, 1963, NULL, NULL, '同济大学', NULL, '中国光学学会光学薄膜专业委员会委员\n中国宇航学会光电技术专业委员会常委\n中国物理学会同步辐射专业委员会常委\n中国科学院高能物理研究所北京正负电子对撞机国家实验室学术委员会同步辐射专业委员会委员\n高温高密度等离子体物理国家重点实验室学术委员会委员\n国家同步辐射实验室用户专家委员会委员\n上海市激光学会理事，光学薄膜专业委员会副主任\n航天科工集团8358研究所客座研究员\n中国科学技术大学兼职教授\n《强激光与粒子束》编委\n《光学 精密工程》编委\n《红外与激光工程》编委', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-65984652', 'wangzs@tongji.edu.cn', NULL);
INSERT INTO `expert` VALUES (202, '廖桂生', NULL, 1963, NULL, '汉', '西安电子科技大学', NULL, '教育部 国家中长期科技发展规划重大专项“高分辨对地观测系统”专家组成员、《系统工程与电子技术》、《电波科学学报》、《数据采集与处理》编委、中国电子学会遥感遥测遥控分会委员、陕西省电子学会理事、信号与信息处理专业委员会副主任等。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '029－88201030', 'liaogs@xidian.edu.cn', NULL);
INSERT INTO `expert` VALUES (203, '严建华', NULL, 1962, NULL, '汉', '浙江大学', NULL, 'zhjia ', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0571-88981100', 'yanjh@zju.edu.cn', NULL);
INSERT INTO `expert` VALUES (204, '苏宏业', NULL, 1969, NULL, '汉', '浙江大学', NULL, '国际标准化委员会ISO TC184/SC5 WG5/SG APC-O 召集人，中国自动化学会理事会常务理事，中国仪器仪表学会理事会常务理事，中国仪器仪表学会MES分会常务副理事长、秘书长，浙江省自动化学会理事长', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0571-87951075', 'hysu@iipc.zju.edu.cn', NULL);
INSERT INTO `expert` VALUES (205, '陈宝梁', NULL, 1973, NULL, '汉', '浙江大学', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0571-88982587', 'blchen@zju.edu.cn', NULL);
INSERT INTO `expert` VALUES (206, '姚雪彪', NULL, NULL, NULL, '汉', '中国科学技术大学', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0551-63607141', 'yaoxb@ustc.edu.cn', NULL);
INSERT INTO `expert` VALUES (207, '陆夕云', NULL, 1963, NULL, '汉', '中国科学技术大学', NULL, '中国力学学会常务理事;国家自然科学基金委员会数理学部专家咨询委员会委员;教育部高等学校力学专业教学指导委员会副主任委员;', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0551-63603223', 'xlu@ustc.edu.cn', NULL);
INSERT INTO `expert` VALUES (208, '潘永信', NULL, 1964, NULL, '汉', '中国科学院地质与地球物理研究所', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-82998406', 'yxpan@mail.iggcas.ac.cn', NULL);
INSERT INTO `expert` VALUES (209, '周琪', NULL, 1970, NULL, '汉', '中国科学院动物研究所', NULL, '中国科学院动物研究所副所长，计划生育生殖生物学国家重点实验室主任，研究员，博导。国际转基因协会终身荣誉会员；国际干细胞组织（ISCF）中国代表', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-64807306', 'zhouqi@ioz.ac.cn', NULL);
INSERT INTO `expert` VALUES (210, '李新荣', NULL, 1966, NULL, '汉', '中国科学院寒区旱区环境与工程研究所', NULL, '中国地理学会自然地理专业委员会副主任、中国地理学会沙漠分会副理事长、中国生态学会常务理事、中国生态学会长期生态学专业委员会委员、全国防沙治沙标准化技术委员会委员、全国防沙治沙暨沙产业学会理事、中国植物学会植物生态学专业委员会委员、中国草地资源管理委员会常务理事和甘肃省生态学会副理事长。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '0931-8277921', 'lxinrong@lzb.ac.cn', NULL);
INSERT INTO `expert` VALUES (211, '秦伯强', NULL, 1963, NULL, '汉', '中国科学院南京地理与湖泊研究所', NULL, '“湖泊科学”编辑委员会副主编\n江苏省海洋湖沼学会理事长\n江苏省气象学会常务理事\n中国海洋湖沼学会水文气象专业委员会常务理事\n中国生态学会湿地专业委员会理事\n中国科学院水问题研究中心常务理事\n美国地学科学联合会 （American Geophysical Union） 会员\n中国地理学会长江分会副主任委员', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '025-86882192', 'qinbq@niglas.ac.cn', NULL);
INSERT INTO `expert` VALUES (212, '俞飚', NULL, 1967, NULL, '汉', '中国科学院上海有机化学研究所', NULL, '2002年－2005年  中国海洋大学 兼职教授\nOcean University of China, Joint Professor\n2004年－至今  中国科学技术大学 兼职博导\nUniversity of Science and Technology of China, Joint Professor\n2009年－至今  华东理工大学 特聘讲座教授\nEast China University of Science and Technology, Honorary Professor\n2010年－至今  上海高校E-化学生物学研究院 特聘研究员\nE-Institutes of Shanghai Municipal Education Commission, Joint Professor\n2013年－至今  上海科技大学 教授\nShanghaiTech University, Joint Professor\n2004-current  National Representative, International Carbohydrate Organization\n2009-current  Steering Committee Member, Asian Communications of Glycobiology and Glycotechnology\n2011  Vice president, International Heterocyclic Chemistry Society\n2005-current  Carbohydrate Research, Editorial Board Member\n2010-current  Journal of Asian Natural Products Research, Editorial Board Member\n2010-current  Natural Products and Bioprospecting, Editorial Board Member\n2011-current  Asian Journal of Organic Chemistry, Editorial Board Member\n2012-current  Chinese Chemical Letters, Editorial Board Member\n2012-current  Acta Chimica Sinica, Editorial Board Member\n2013-current  Organic Chemistry Frontiers, Editorial Board Member\n2014-current  Advances in Carbohydrate Chemistry and Biochemistry, Board of Advisors ', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '021-54925131', 'byu@mail.sioc.ac.cn', NULL);
INSERT INTO `expert` VALUES (213, '吕金虎', NULL, 1974, NULL, '汉', '中国科学院数学与系统科学研究院', NULL, 'IEEE神经系统与应用技术委员会主席。\nIEEE非线性电路与系统技术委员会秘书。\nIEEE智能电网技术委员会委员。\nIFAC大规模复杂系统技术委员会委员。\n中国工业与应用数学学会副秘书长。\n中国工业与应用数学学会复杂网络与系统控制专委会副主任兼秘书长。\n中国自动化学会青年工作者委员会副主任。\n中国自动化学会控制理论专业委员会委员。\nIEEE计算智能学会社会媒体分委员会委员。中国电子学会云计算专家委员会委员。\n中国通讯学会云计算专家委员会委员。\nDCDIS-A的Associate Editor, Recent Patents on Engineering的Editorial Advisory Board成员。 ', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62651447', 'jhlu@iss.ac.cn', NULL);
INSERT INTO `expert` VALUES (214, '冯夏庭', NULL, 1964, NULL, NULL, '中国科学院武汉岩石土力学研究所', NULL, '国际岩石力学学会副主席、国际岩石力学学会岩石工程设计方法委员会主席、《International Journal of Rock Mechanics and Mining Sciences》和《Geomechanics and Tunneling》编委、《International Journal of Analytic and Numerical Methods in Geomechanics》顾问编委、《岩石力学与工程学报》主编、《岩土力学》和《岩土工程学报》等7个学报编委、中国岩石力学与工程学会副理事长、湖北省岩石力学学会副理事长、湖北省力学学会副理事长、美国等10个国家联合资助的大型国际合作研究计划－DECOVALEX指导委员会成员、国防科工委高放废物地质地质处置专家组成员、国家自然科学基金委员会数理学部专家评审组成员。冯教授多次担当多个国际学术会议的主席、副主席和学术委员会或顾问委员会委员，曾任中国科学院武汉岩土力学研究所所长、中国科学院岩土力学重点实验室主任、国际岩石力学学会中国国家小组主席、南非金山大学Senior Research officer、法国里尔科技大学访问教授、英国帝国理工访问学者、日本资源环境综合研究所客座研究员、日本ITIT特别研究员、国家自然科学基金委员会工程与材料学部专家评审组成员（2002-2005）等', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'xtfeng@whrsm.ac.cn', NULL);
INSERT INTO `expert` VALUES (215, '曾大军', NULL, NULL, NULL, '汉', '中国科学院自动化研究所', NULL, '2013年起任国际顶级的人工智能和智能系统领域的SCI杂志《IEEE Intelligent Systems》主编。2014年当选IEEE智能交通学会主席', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, '010-62611816', 'dajun.zeng@ia.ac.cn ', NULL);
INSERT INTO `expert` VALUES (216, '李付广', NULL, 1966, NULL, '汉', '中国农业科学院棉花研究所', NULL, '中国农学会理事、中国棉花学会副理事长、中国农业生物技术学会理事、第四届中国青年科技工作者协会理事。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, 'lifug@cricaas. com. cn', NULL);
INSERT INTO `expert` VALUES (217, '曹务春', NULL, 1963, NULL, NULL, '中国人民解放军军事医学科学院', NULL, '国务院学位委员会学科评议预防医学组召集人、国家突发公共卫生事件专家咨询委员会委员、国家处置生物恐怖袭击事件专家咨询组专家、国家病原微生物卫生应急实验室网络专家委员会副主任委员、中国卫生检疫专家委员会专家；中华预防医学会常务理事、中华预防医学会卫生应急专业委员会副主任委员、流行病学专业委员会常务委员、生物安全与防护装备专业委员会顾问；中国卫生信息学会卫生地理信息专业委员会副主任委员，中国卫生信息学会公共卫生专业委员会常务委员；军队处置突发事件专家组成员；全军医学科学技术委员会常务委员、全军防生物危害医学专业委员会主任委员、全军生物安全专家委员会主任、全军“三防”医学救援专家咨询委员会委员；北京反恐工作协调小组专家组成员；Military Medical Research执行主编，《中国公共卫生杂志》副主编，《中华流行病学杂志》副主编，还任12个专业杂志的编委或常务编委。', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `expert` VALUES (218, '宋尔卫', NULL, 1970, NULL, '汉', '中山大学', NULL, '2010-　副主任委员(候任主任委员)，广东省抗癌协会乳腺癌专业委员会\n\n2012-　副主编，《岭南现代临床外科》第五届编辑委员会\n\n2012-　主任委员，广东省医学会乳腺病学分会\n\n2013-　副主任委员，中国抗癌协会乳腺癌专业委员会', NULL, NULL, NULL, NULL, NULL, '博士', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for field
-- ----------------------------
DROP TABLE IF EXISTS `field`;
CREATE TABLE `field`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of field
-- ----------------------------
INSERT INTO `field` VALUES (100, '新一代信息技术产业', 1, NULL);
INSERT INTO `field` VALUES (101, '下一代信息网络产业', 2, 100);
INSERT INTO `field` VALUES (102, '电子核心产业', 2, 100);
INSERT INTO `field` VALUES (103, '新兴软件和新型信息技术服务', 2, 100);
INSERT INTO `field` VALUES (104, '互联网与云计算、大数据服务', 2, 100);
INSERT INTO `field` VALUES (105, '人工智能', 2, 100);
INSERT INTO `field` VALUES (200, '高端装备制造产业', 1, NULL);
INSERT INTO `field` VALUES (201, '智能制造装备产业', 2, 200);
INSERT INTO `field` VALUES (202, '航空装备产业', 2, 200);
INSERT INTO `field` VALUES (203, '卫星及应用产业', 2, 200);
INSERT INTO `field` VALUES (204, '轨道交通装备产业', 2, 200);
INSERT INTO `field` VALUES (205, '海洋工程装备产业 ', 2, 200);
INSERT INTO `field` VALUES (300, '新材料产业', 1, NULL);
INSERT INTO `field` VALUES (301, '先进钢铁材料', 2, 300);
INSERT INTO `field` VALUES (302, '先进有色金属材料', 2, 300);
INSERT INTO `field` VALUES (303, '先进石化化工新材料', 2, 300);
INSERT INTO `field` VALUES (304, '先进无机非金属材料', 2, 300);
INSERT INTO `field` VALUES (305, '高性能纤维及制品和复合材料', 2, 300);
INSERT INTO `field` VALUES (306, '前沿新材料', 2, 300);
INSERT INTO `field` VALUES (307, '新材料相关服务', 2, 300);
INSERT INTO `field` VALUES (400, '生物产业', 1, NULL);
INSERT INTO `field` VALUES (401, '生物医药产业', 2, 400);
INSERT INTO `field` VALUES (402, '生物医学工程产业', 2, 400);
INSERT INTO `field` VALUES (403, '生物农业及相关产业', 2, 400);
INSERT INTO `field` VALUES (404, '生物质能产业', 2, 400);
INSERT INTO `field` VALUES (405, '其他生物业', 2, 400);
INSERT INTO `field` VALUES (500, '新能源汽车产业', 1, NULL);
INSERT INTO `field` VALUES (501, '新能源汽车整车制造', 2, 500);
INSERT INTO `field` VALUES (502, '新能源汽车装置、配件制造', 2, 500);
INSERT INTO `field` VALUES (503, '新能源汽车相关设施制造', 2, 500);
INSERT INTO `field` VALUES (504, '新能源汽车相关服务', 2, 500);
INSERT INTO `field` VALUES (600, '新能源产业', 1, 600);
INSERT INTO `field` VALUES (601, '核电产业', 2, 600);
INSERT INTO `field` VALUES (602, '风能产业', 2, 600);
INSERT INTO `field` VALUES (603, '太阳能产业', 2, 600);
INSERT INTO `field` VALUES (604, '生物质能及其他新能源产业', 2, 600);
INSERT INTO `field` VALUES (605, '智能电网产业', 2, 600);
INSERT INTO `field` VALUES (700, '节能环保产业', 1, NULL);
INSERT INTO `field` VALUES (701, '高效节能产业', 2, 700);
INSERT INTO `field` VALUES (702, '先进环保产业', 2, 700);
INSERT INTO `field` VALUES (703, '资源循环利用产业', 2, 700);
INSERT INTO `field` VALUES (800, '数字创意产业', 1, NULL);
INSERT INTO `field` VALUES (801, '数字创意技术设备制造', 2, 800);
INSERT INTO `field` VALUES (802, '数字文化创意活动', 2, 800);
INSERT INTO `field` VALUES (803, '设计服务', 2, 800);
INSERT INTO `field` VALUES (804, '数字创意与融合服务', 2, 800);
INSERT INTO `field` VALUES (900, '相关服务业', 1, NULL);
INSERT INTO `field` VALUES (901, '新技术与创新创业服务', 2, 900);
INSERT INTO `field` VALUES (902, '其他相关服务', 2, 900);

-- ----------------------------
-- Table structure for index_score
-- ----------------------------
DROP TABLE IF EXISTS `index_score`;
CREATE TABLE `index_score`  (
  `project_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `expert_id` int(11) NOT NULL,
  `index_id` int(11) NOT NULL,
  `score` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`project_id`, `investor_id`, `expert_id`, `index_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for invest
-- ----------------------------
DROP TABLE IF EXISTS `invest`;
CREATE TABLE `invest`  (
  `project_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `invest_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`project_id`, `investor_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for invest_score
-- ----------------------------
DROP TABLE IF EXISTS `invest_score`;
CREATE TABLE `invest_score`  (
  `project_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `expert_id` int(11) NOT NULL,
  `score` double(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`project_id`, `investor_id`, `expert_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for investor
-- ----------------------------
DROP TABLE IF EXISTS `investor`;
CREATE TABLE `investor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_business` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registered_capital` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `legal_representative` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `establishment_date` date NULL DEFAULT NULL,
  `employee_number` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `investment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `begin_date` date NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leader` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fields` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tech_stage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `industry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `industry_stage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for register_application
-- ----------------------------
DROP TABLE IF EXISTS `register_application`;
CREATE TABLE `register_application`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `application_time` datetime(0) NULL DEFAULT NULL,
  `approval_time` datetime(0) NULL DEFAULT NULL,
  `approval_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` enum('UNDEFINED','GUEST','EXPERT','INVESTOR','ADMIN') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'UNDEFINED',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('zzyadmin', '1234', '赵正阳', 'ADMIN');

SET FOREIGN_KEY_CHECKS = 1;
