--客户端发送指令，服务端会响应这条指令的放在这边定义，每个模块
local cmdList = {
	{cmd_id = 1001, method = 'Game.login', comment = '登陆'},
	{cmd_id = 1002, method = 'Game.logout', comment = '退出登陆'},
	{cmd_id = 1003, method = 'Game.create_role', comment = '创建角色'},
	{cmd_id = 1004, method = 'Player.load_user_info', comment = '导入用户信息'},
	{cmd_id = 1005, method = 'Game.gm_request', comment = 'gm指令'},
	{cmd_id = 1006, method = 'Game.ping', comment = 'ping指令'},
	{cmd_id = 1007, method = 'Player.set_guide_step', comment = '设置引导步骤'},
	{cmd_id = 1008, method = 'Player.get_guide_step_list', comment = '获取引导步骤列表', init_request = true},
	
	{cmd_id = 2001, method = 'Item.load_backpack_data', comment = '获取道具的消息', init_request = true},
	{cmd_id = 2002, method = 'Item.use_item', comment = '使用道具'},
	{cmd_id = 2003, method = 'Item.sell_item', comment = '出售道具'},
	{cmd_id = 2004, method = 'Item.equip_equipment', comment = '装备穿戴跟替换'},
	{cmd_id = 2005, method = 'Item.mix_rune', comment = '合成符文'},

	{cmd_id = 3001, method = 'Battle.manual_work', comment = '佣兵手动上阵'},
	{cmd_id = 3002, method = 'Battle.start_battle', comment = '开始战斗'},
	{cmd_id = 3003, method = 'Battle.next_action', comment = '下次行动'},
	{cmd_id = 3004, method = 'Battle.match_battle', comment = '匹配战斗'},
	{cmd_id = 3005, method = 'Battle.use_hero_skill', comment = '使用英雄技能'},
	{cmd_id = 3006, method = 'Battle.exit_battle', comment = '退出战斗'},
	{cmd_id = 3007, method = 'Battle.replay_battle', comment = '战斗回放'},
	{cmd_id = 3008, method = 'Battle.gm_win_battle', comment = '战斗胜利'},	
	{cmd_id = 3009, method = 'Battle.battle_ready', comment = '加载完毕'},		

	{cmd_id = 4001, method = 'Formation.select_profession', comment = '确定职业选择'},
	{cmd_id = 4002, method = 'Formation.finish_formation', comment = '确定选择的阵容'},
	{cmd_id = 4003, method = 'Formation.preview_formation', comment = '预览阵型', init_request = true},
	{cmd_id = 4004, method = 'Formation.fight_state', comment = '阵容编辑界面,点击出战'},
	{cmd_id = 4005, method = 'Formation.edit_name', comment = '修改阵型名称'},
	{cmd_id = 4006, method = 'Formation.change_professsion', comment = '变更职业'},
	{cmd_id = 4007, method = 'Formation.delete_formation', comment = '删除阵容'},
	{cmd_id = 4008, method = 'Formation.get_monster_list', comment = '获取未上阵佣兵列表'},

	{cmd_id = 4101, method = 'DefendFormation.finish_formation', comment = '防守阵容_确定选择的阵容'},
	{cmd_id = 4102, method = 'DefendFormation.preview_land_formation', comment = '防守阵容_某据点阵容信息'},
	{cmd_id = 4103, method = 'DefendFormation.preview_player_land_formation', comment = '防守阵容_指定玩家某据点阵容信息'},


	-- 英雄系统
	{cmd_id = 5001, method = 'Heroes.get_hero_list', comment = '获取英雄列表', init_request = true},
	{cmd_id = 5002, method = 'Heroes.unlock_skill', comment = '解锁技能'},
	{cmd_id = 5003, method = 'Heroes.upgrade_skill', comment = '升级技能'},
	{cmd_id = 5004, method = 'Heroes.forge_equipment', comment = '锻造装备'},
	{cmd_id = 5005, method = 'Heroes.wear_equipment', comment = '穿戴/替换装备'},
	{cmd_id = 5006, method = 'Heroes.unwear_equipment', comment = '卸下装备'},

	-- 佣兵系统
	{cmd_id = 6001, method = 'Monster.get_monster_list', comment = '获取佣兵列表', init_request = true},
	{cmd_id = 6002, method = 'Monster.employ_monster', comment = '雇佣佣兵'},
	{cmd_id = 6003, method = 'Monster.upgrade_monster', comment = '升级佣兵'},
	-- {cmd_id = 6004, method = 'Monster.merge_rune', comment = '合成符文'},
	{cmd_id = 6005, method = 'Monster.dress_rune', comment = '装备符文'},
	{cmd_id = 6006, method = 'Monster.undress_rune', comment = '卸下符文'},
	{cmd_id = 6007, method = 'Monster.get_monster_comment_list', comment = '获取佣兵评论列表'},
	{cmd_id = 6008, method = 'Monster.comment_monster', comment = '评论佣兵'},
	{cmd_id = 6009, method = 'Monster.click_comment', comment = '点赞评论'},

	{cmd_id = 7001, method = 'SkyLadder.cmd_user_data', comment = '获取角色的天梯属性', init_request = true},
	{cmd_id = 7002, method = 'SkyLadder.cmd_match_action', comment = '请求匹配（包括取消匹配，认输，战斗）'},	
	{cmd_id = 7003, method = 'SkyLadder.cmd_rank_list', comment = '获取排行'},

	{cmd_id = 8001, method = 'GoldMatch.cmd_user_data', comment = '获取角色的联赛属性'},
	{cmd_id = 8002, method = 'GoldMatch.cmd_match_action', comment = '请求匹配（包括取消匹配，战斗）'},	
	{cmd_id = 8003, method = 'GoldMatch.cmd_select_data', comment = '选择数据'},
	--邮件系统
	{cmd_id = 9001, method = 'Mail.load_mail_list', comment = '获取邮件列表', init_request = true},
	{cmd_id = 9002, method = 'Mail.delete_mail', comment = '删除邮件'},	
	{cmd_id = 9003, method = 'Mail.pickup_mail', comment = '读取邮件'},
	{cmd_id = 9004, method = 'Mail.pickup_prize', comment = '领取奖励'},
	--占卜系统
	{cmd_id = 9101, method = 'DrawCard.draw_card', comment = '占卜'},
	{cmd_id = 9102, method = 'DrawCard.get_unlock_card_list', comment = '获取解锁的佣兵卡组', init_request = true},

	
	--商店系统
	{cmd_id = 10001, method = 'Shop.store_goods_list', comment = '获取商店商品列表', init_request = true},	
	-- {cmd_id = 10001, method = 'Shop.store_goods_list', comment = '获取商店商品列表'},	
	{cmd_id = 10002, method = 'Shop.buy_store_goods', comment = '购买商品'},
	{cmd_id = 10003, method = 'Shop.update_store_goods', comment = '更新商品'},

	--日常任务与成就
	{cmd_id = 11001, method = 'Task.cmd_get_task', comment = '获取角色任务成就数据', init_request = true},
	{cmd_id = 11002, method = 'Task.cmd_get_prize', comment = '领取活跃度或成就宝箱或任务奖励'},	

	--好友系统
	{cmd_id = 12001, method = 'Friend.load_apply_list', comment = '加载申请列表'},	
	{cmd_id = 12002, method = 'Friend.apply_friend', comment = '发出申请'},
	{cmd_id = 12003, method = 'Friend.handle_friend_apply', comment = '同意/拒绝申请'},

	{cmd_id = 12004, method = 'Friend.search_for_friend', comment = '搜索添加好友'},	
	{cmd_id = 12005, method = 'Friend.load_friends_list', comment = '加载好友列表（更新在线，离线信息）'},
	{cmd_id = 12006, method = 'Friend.del_friend', comment = '删除好友'},

	{cmd_id = 12007, method = 'Friend.give_coin', comment = '赠送金币'},	
	{cmd_id = 12008, method = 'Friend.pick_up_coin', comment = '领取金币'},

	{cmd_id = 12009, method = 'Friend.load_chat_list', comment = '加载聊天信息列表'},	
	{cmd_id = 12010, method = 'Friend.send_chat_info', comment = '发送聊天信息'},

	{cmd_id = 12011, method = 'Friend.load_recommend_friends', comment = '加载推荐玩家列表(10个)'},
	{cmd_id = 12012, method = 'Friend.apply_fight', comment = '决斗申请'},
	{cmd_id = 12013, method = 'Friend.handle_apply_fight', comment = '处理决斗申请'},
	{cmd_id = 12014, method = 'Friend.load_char_info', comment = '加载个人信息'},
	{cmd_id = 12015, method = 'Friend.read_chat_info', comment = '读取聊天消息'},

	--聊天系统
	{cmd_id = 13001, method = 'WorldChat.send_world_chat', comment = '发送世界聊天信息'},
	{cmd_id = 13002, method = 'WorldChat.load_player_info', comment = '查询玩家信息'},


	--副本系统
	{cmd_id = 14001, method = 'InstanceZones.load_map_info', comment = '加载地图信息'},
	{cmd_id = 14002, method = 'InstanceZones.open_map_block', comment = '打开网格'},
	{cmd_id = 14003, method = 'InstanceZones.start_battle', comment = '攻打据点或者主城'},
	{cmd_id = 14004, method = 'InstanceZones.goto_map', comment = '跳转地图'},
	{cmd_id = 14005, method = 'InstanceZones.trigger_event', comment = '触发事件'},
	{cmd_id = 14006, method = 'InstanceZones.receive_treasure', comment = '领取宝藏'},
	{cmd_id = 14007, method = 'InstanceZones.place_treasure', comment = '放置宝藏'},
	{cmd_id = 14008, method = 'InstanceZones.match_inbreak', comment = '匹配入侵'},
	{cmd_id = 14009, method = 'InstanceZones.cancel_inbreak', comment = '取消入侵'},
	{cmd_id = 14010, method = 'InstanceZones.load_inbreak_map_info', comment = '加载入侵地图信息'},
	{cmd_id = 14011, method = 'InstanceZones.inbreak_leave_word', comment = '入侵成功后留言'},
	{cmd_id = 14012, method = 'InstanceZones.find_treasure', comment = '打开宝藏'},
	{cmd_id = 14013, method = 'InstanceZones.exit_inbreak', comment = '退出入侵'},
	{cmd_id = 14014, method = 'InstanceZones.update_map_info', comment = '更新地图信息'},

	-- 个人信息设置
	{cmd_id = 15001, method = 'PlayerSetting.modify_head_pic', comment = '修改头像'},
	{cmd_id = 15002, method = 'PlayerSetting.modify_nickname', comment = '修改昵称'},
	{cmd_id = 15003, method = 'PlayerSetting.load_player_info', comment = '加载人物信息'},
	{cmd_id = 15004, method = 'PlayerSetting.change_sound_information', comment = '音乐/音效开关'},
	{cmd_id = 15005, method = 'PlayerSetting.change_push_information', comment = '推送开关'},
	{cmd_id = 15006, method = 'PlayerSetting.load_unlock_heads', comment = '加载解锁头像列表'},
	
	--关卡系统
	{cmd_id = 16001, method = 'Map.load_map_info', comment = '获取关卡数据'},
	{cmd_id = 16002, method = 'Map.start_battle', comment = '挑战关卡'},
	{cmd_id = 16003, method = 'Map.load_map_record', comment = '获取关卡排行记录'},
};
--服务端直接推送给客户端的指令放在这边定义
local notifyList = {
	{cmd_id = 100001, method = 'Player.update_info', comment = '更新玩家基本属性'},
	{cmd_id = 100002, method = 'Game.notify_restart_server', comment = '服务器重启通知'},

	{cmd_id = 200001, method = 'Item.sync_item_data', comment = '同步道具的数据'},
	{cmd_id = 300001, method = 'Formation.sync_monster_list', comment = '同步未上阵佣兵信息'},
	{cmd_id = 500001, method = 'Heroes.sync_hero', comment = '同步英雄信息'},
	{cmd_id = 600001, method = 'Monster.sync_monster', comment = '同步佣兵信息'},
	{cmd_id = 600002, method = 'Monster.sync_monster_comment', comment = '同步评论信息'},
	{cmd_id = 400001, method = 'Battle.notify_start', comment = '通知匹配成功'},
	{cmd_id = 400002, method = 'Battle.notify_manual_work', comment = '通知上阵成功'},
	{cmd_id = 400003, method = 'Battle.notify_next_action', comment = '通知下一回合行动'},
	{cmd_id = 400004, method = 'Battle.notify_use_hero_skill', comment = '通知使用英雄技能'},
	{cmd_id = 400005, method = 'Battle.notify_battle_info', comment = '通知战斗初始数据'},	
	{cmd_id = 400006, method = 'Battle.notify_battle_state', comment = '通知战场状态'},	
	{cmd_id = 400007, method = 'Battle.notify_battle_start', comment = '通知战斗开始'},	

	{cmd_id = 700001, method = 'SkyLadder.notify_match', comment = '通知天梯匹配到玩家'},
	{cmd_id = 700002, method = 'SkyLadder.notify_user_data', comment = '通知天梯角色数据'},
	{cmd_id = 700003, method = 'SkyLadder.notify_surrender', comment = '通知对方认输'},
	{cmd_id = 700004, method = 'SkyLadder.notify_open_close', comment = '天梯开启和关闭通知'},

	{cmd_id = 800001, method = 'GoldMatch.notify_match', comment = '通知联赛匹配到玩家'},
	{cmd_id = 800002, method = 'GoldMatch.notify_user_data', comment = '通知联赛角色数据'},
	{cmd_id = 800003, method = 'GoldMatch.notify_select_data', comment = '通知联赛选择'},
	
	{cmd_id = 900001, method = 'Mail.add_mail', comment = '通知新增邮件'},


	{cmd_id = 1100001, method = 'Task.notify_point_info', comment = '角色活跃度或成就数据通知'},
	{cmd_id = 1100002, method = 'Task.notify_task_info', comment = '角色任务成就数据通知'},

	-- 好友系统
	{cmd_id = 1200001, method = 'Friend.sync_chat_info', comment = '同步聊天信息'},
	{cmd_id = 1200002, method = 'Friend.sync_add_friend_apply', comment = '同步添加好友申请'},
	{cmd_id = 1200003, method = 'Friend.sync_fight_inform', comment = '同步申请战斗通知'},
	{cmd_id = 1200004, method = 'Friend.sync_handle_fight_inform', comment = '同步是否同意决斗消息'},
	{cmd_id = 1200005, method = 'Friend.sync_add_friend', comment = '同步添加好友信息通知'},
	{cmd_id = 1200006, method = 'Friend.sync_update_char_info', comment = '同步个人信息通知'},
	{cmd_id = 1200007, method = 'Friend.sync_update_friend', comment = '同步更新好友信息通知'},
	{cmd_id = 1200008, method = 'Friend.sync_del_friend', comment = '同步删除好友信息通知'},
	{cmd_id = 1200009, method = 'Friend.sync_update_friend_list', comment = '同步更新所有好友信息通知'},
	-- 聊天系统
	{cmd_id = 1300001, method = 'WorldChat.sync_world_chat', comment = '同步世界聊天信息'},
	{cmd_id = 1300002, method = 'WorldChat.sync_system_message', comment = '同步系统消息'},

	--副本系统
	{cmd_id = 1400001, method = 'InstanceZones.notify_occupy_result', comment = '通知占领结果'},
	{cmd_id = 1400002, method = 'InstanceZones.notify_event', comment = '通知事件'},
	{cmd_id = 1400003, method = 'InstanceZones.notify_inbreak_result', comment = '通知入侵结果'},
	{cmd_id = 1400004, method = 'InstanceZones.notify_inbreak_info', comment = '通知入侵信息'},
	{cmd_id = 1400005, method = 'InstanceZones.notify_inbreak_time_out', comment = '通知入侵时间到了，需要重新入侵'},
	{cmd_id = 1400006, method = 'InstanceZones.notify_match_time_out', comment = '通知匹配超时'},
	{cmd_id = 1400007, method = 'InstanceZones.notify_inbreak_progress', comment = '通知入侵进度，入侵者收到的消息'},
	{cmd_id = 1400008, method = 'InstanceZones.notify_occupy_maincity', comment = '是否攻打过主城'},

	--个人信息设置
	{cmd_id = 1500001, method = 'PlayerSetting.sync_player_info', comment = '同步个人信息'},
	{cmd_id = 1500002, method = 'PlayerSetting.sync_unlock_heads', comment = '同步解锁头像列表'},
	{cmd_id = 1500003, method = 'PlayerSetting.sync_unlock_frames', comment = '同步解锁边框列表'},
	{cmd_id = 1500004, method = 'PlayerSetting.sync_push_msg', comment = '同步推送消息'},

	--关卡系统
	{cmd_id = 1600001, method = 'Map.notify_map_info', comment = '推送关卡数据'},
	{cmd_id = 1600002, method = 'Map.notify_map_record', comment = '推送关卡排行记录'},


	{cmd_id = 1700002, method = 'DrawCard.notify_unlock_card', comment = '通知占卜解锁卡组'},
	
};


-- 禁止修改
local message_map = {
	cmdList = cmdList,
	notifyList = notifyList,
};


--添加指令ID检测
local list = {};
for _,value in ipairs(cmdList) do
	assert(list[value.cmd_id] == nil, '指令ID重复' .. value.cmd_id);
	list[value.cmd_id] = true;
end

for _,value in ipairs(notifyList) do
	assert(list[value.cmd_id] == nil, '指令ID重复' .. value.cmd_id);
	list[value.cmd_id] = true;
end

return message_map;





