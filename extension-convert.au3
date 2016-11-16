#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseUpx=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

$newExtension = "dcm"

if $CmdLine[0] > 0 Then
	$ch = msgbox(36, "Convert", "Would you like to convert " & $CmdLine[0] & " files?")
	if $ch = 6 Then
		for $i = 1 to $CmdLine[0]
			if StringRight($CmdLine[$i], 3) <> $newExtension Then
				FileMove($CmdLine[$i], $CmdLine[$i] & "." & $newExtension)
			EndIf
		Next
	EndIf
Else
	msgbox(16, "Error", "Drag files onto this program to convert them to ." & $newExtension)
EndIf
Exit