#Requires AutoHotkey v2.0
#SingleInstance Force

; ----------------------------------------------------------------
; 1. CapsLock 双重功能映射
; 短按 Esc, 长按/组合 Ctrl
; ----------------------------------------------------------------

*CapsLock::
{
    ; 按下 CapsLock 时，立即发送左 Ctrl 的按下状态
    Send "{LControl DownR}"
    return
}

*CapsLock Up::
{
    ; 释放 CapsLock 时，立即释放左 Ctrl
    Send "{LControl Up}"
    
    ; A_PriorKey 用于记录上一个按下的按键
    ; 如果上一个按键是 CapsLock 本身，说明期间没有按下其他组合键
    ; A_TimeSincePriorHotkey 记录从按下到释放的时间（毫秒）
    if (A_PriorKey = "CapsLock") {
        if (A_TimeSincePriorHotkey < 250) {
            ; 为了防止干扰，先确保 Ctrl 已完全释放，再发送 Esc
            Send "{Esc}"
        }
    }
    return
}

; ----------------------------------------------------------------
; 2. Ctrl + F1~F10 映射到 小键盘 1~0
; ----------------------------------------------------------------

^F1::Send "{Numpad1}"
^F2::Send "{Numpad2}"
^F3::Send "{Numpad3}"
^F4::Send "{Numpad4}"
^F5::Send "{Numpad5}"
^F6::Send "{Numpad6}"
^F7::Send "{Numpad7}"
^F8::Send "{Numpad8}"
^F9::Send "{Numpad9}"
^F10::Send "{Numpad0}"