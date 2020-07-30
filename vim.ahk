
; Auto-execute section (Execute rest of script)
Vim := new VimAhk()
Return

#Include %A_LineFile%\..\lib\vim_ahk.ahk

; Alt-vim keys
;; Move cursor once
<!h:: Send {Left}
<!l:: Send {Right}
<!k:: Send {Up}
<!j:: Send {Down}

;; Move cursor by word (lr) / 5 lines (ud)
^<!h:: Send ^{Left}
^<!l:: Send ^{Right}
^<!k:: Send {Up}{Up}{Up}{Up}{Up}
^<!j:: Send {Down}{Down}{Down}{Down}{Down}

;; Move cursor once -- while highlighting
+<!h:: Send +{Left}
+<!l:: Send +{Right}
+<!k:: Send +{Up}
+<!j:: Send +{Down}

;; Move cursor by word (lr) / 5 lines (ud) -- while highlighting
^+<!h:: Send ^+{Left}
^+<!l:: Send ^+{Right}
^+<!k:: Send ^+{Up}
^+<!j:: Send ^+{Down}

;; Move cursor to beginning/end of line/page
<!6:: Send {Home}	; same key as ^
<!4:: Send {End}    ; same key as $
<!g:: Send ^{End}			
<!+g:: Send ^{Home}

;; Move cursor to beginning/end of line/page -- while highlighting
<!+6:: Send +{Home}
<!+4:: Send +{End}

AppsKey::RCtrl


