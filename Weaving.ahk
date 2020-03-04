;	Скриптик на автоматические лайт атаки

;	TESO Keybinds (циферки в скобках поменять на что забиндены скилы в TESO)
Ability1		:="1"
Ability2		:="2"
Ability3		:="3"
Ability4		:="4"
Ability5		:="5"
Ability6		:="6"

;	Вспомогательные функции
LightAttack:
	if GetKeyState("RButton", "P")=0
		{
		Click Left
		Random, rand, 1, 10
		Sleep, 50+rand
		Click Left
		Random, rand, 1, 10
		Sleep, 50+rand
		}
	return

#IfWinActive, ahk_class EsoClientWndClass			;Elder Scrolls (Кнопки будут работать только в игре)

;	Скилы панели умений (1-5 поменять на кнопки при нажатии которых будут включаться автоматические скилы с лайт атаками)
1::
	Gosub, LightAttack
	Send %Ability1%
	return
2::
	Gosub, LightAttack
	Send %Ability2%
	return
3::
	Gosub, LightAttack
	Send %Ability3%
	return
4::
	Gosub, LightAttack
	Send %Ability4%
	return
5::
	Gosub, LightAttack
	Send %Ability5%
	return
6::
	Gosub, LightAttack
	Send %Ability6%
	return

;	Автоматическая спам аббилка при удержании кнопки мыши XButton1
XButton1::
	{
	loop
		{
		if GetKeyState("XButton1", "P")=0
			break
		Send %Ability1%	;Использование первого слота
		Random, rand, 1, 20
		Sleep, 350+rand
		if GetKeyState("XButton1", "P")=0
			break
		Gosub, LightAttack
		}
	return
	}