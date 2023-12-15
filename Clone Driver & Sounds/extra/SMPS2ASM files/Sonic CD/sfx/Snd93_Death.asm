Death_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Death_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM2, Death_FM2,	$F4, $00

; FM2 Data
Death_FM2:
	smpsSetvoice        $00
	dc.b	nB3, $07, smpsNoAttack, nAb3

Death_Loop00:
	dc.b	$01
	smpsFMAlterVol      $01
	smpsLoop            $00, $2F, Death_Loop00
	smpsStop

Death_Voices:
;	Voice $00
;	$30
;	$30, $30, $30, $30, 	$9E, $D8, $DC, $DC, 	$0E, $0A, $04, $05
;	$08, $08, $08, $08, 	$BF, $BF, $BF, $BF, 	$14, $3C, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $03, $03, $03, $02
	smpsVcAttackRate    $1C, $1C, $18, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $0A, $0E
	smpsVcDecayRate2    $08, $08, $08, $08
	smpsVcDecayLevel    $0B, $0B, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $14, $3C, $14

