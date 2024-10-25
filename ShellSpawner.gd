func _input(event):
	if Input.is_key_pressed(KEY_Q):
		var shellStr = ">"
		for shell in sequenceArray:
			if(shell == "live"): shellStr += "1"
			else: shellStr += "0"
		dialogue.ShowText_ForDuration(shellStr, 3)
	if Input.is_key_pressed(KEY_CTRL) and Input.is_key_pressed(KEY_0):
		roundManager.barrelSawedOff = true
		roundManager.currentShotgunDamage = 2
		var shellStr = ">下一发威力加倍"	
		dialogue.ShowText_ForDuration(shellStr, 3)
	if Input.is_key_pressed(KEY_CTRL) and Input.is_key_pressed(KEY_1):
		roundManager.health_player += 1
		var shellStr = ">玩家加1血"
		dialogue.ShowText_ForDuration(shellStr, 3)
	if Input.is_key_pressed(KEY_CTRL) and Input.is_key_pressed(KEY_2):
		roundManager.health_opponent -= 1
		var shellStr = ">恶魔扣1血"
		dialogue.ShowText_ForDuration(shellStr, 3)
	if Input.is_key_pressed(KEY_CTRL) and Input.is_key_pressed(KEY_3):
		sequenceArray[0] = "live"	
		var shellStr = ">下一发实弹"
		dialogue.ShowText_ForDuration(shellStr, 3)
	if Input.is_key_pressed(KEY_CTRL) and Input.is_key_pressed(KEY_4):
		sequenceArray[0] = "blank"
		var shellStr = ">下一发空包弹"
		dialogue.ShowText_ForDuration(shellStr, 3)
