;***************************************************************************************************
;Located in text.asm, put in under SECTION "Text 3"
;Move_Deleter
_MoveDeleterGreetingText::
	text "Mom says I'm so"
	line "forgetful that it"
	cont "is contagious."
	
	para "Want me to make a"
	line "#mon forget a"
	cont "move?"
	done

_MoveDeleterSaidYesText::
	text "Which #mon"
	line "should forget a"
	cont "move?"
	prompt

_MoveDeleterWhichMoveText::
	text "Which move should"
	line "it forget, then?"
	done

_MoveDeleterConfirmText::
	text "Make it forget"
	line "@"
	TX_RAM wcf4b
	text "?"
	prompt

_MoveDeleterForgotText::
	text "@"
	TX_RAM wcf4b
	text " was"
	line "forgotten!"
	prompt

_MoveDeleterByeText::
	text "Come visit me"
	line "again!"
	done

_MoveDeleterOneMoveText::
	text "That #mon"
	line "has one move."
	cont "Pick another?"
	done

;***************************************************************************************************
;Move_Relearner
_MoveRelearnerGreetingText::
	text "I tutor children,"
	line "but I also tutor"
	cont "#MON."
	
	para "I teach them to"
	line "remember moves"
	cont "they forgot."

	para "¥1000 per lesson."
	line "How about it?"
	done

_MoveRelearnerSaidYesText::
	text "Which #MON"
	line "should I tutor?"
	prompt

_MoveRelearnerNotEnoughMoneyText::
	text "Hmmm..."

	para "You don't have"
	line "enough money!"
	done

_MoveRelearnerWhichMoveText::
	text "Which move should"
	line "it learn?"
	done

_MoveRelearnerByeText::
	text "If any of your"
	line "#MON need to"
	cont "remember a move,"
	cont "come visit me!"
	done

_MoveRelearnerNoMovesText::
	text "This #MON"
	line "hasn't forgotten"
	cont "any moves."
	done

;***************************************************************************************************
;Move_Tutor
