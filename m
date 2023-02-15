Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C12C6981BF
	for <lists+usrp-users@lfdr.de>; Wed, 15 Feb 2023 18:17:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E916E3845F5
	for <lists+usrp-users@lfdr.de>; Wed, 15 Feb 2023 12:17:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676481469; bh=gxumhXRmlJQ//ZRINGTMaWf4rIUsy5I1Glvw5p3aI08=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CnmJT1j08qSnjcYT1T+Gv7Ngat+xY5x4wxkla/AkX+9tfi+Cd9O+vRNxAbpzrmZg1
	 XFjsBv1d8vEPptaiNTn/TDRon2B42eeFkSRfUUI2Jf+hT7iJK1i3WeLhjpHNOt6MX0
	 JL7guaJffVvWGXVWdpXmJH5zu7zTpIZrMfSZy6CRFm2c4HnBO6DR6i10DqoC1aKoO3
	 hFuOIPG4t/IMUd3wBCHIhQhaNfZ4zIVxmV9jAoNRAxqpNVX0kgToSlOqcKTN9q08mL
	 xqg/tuKL4LFfLFA0NSAg+Bwd9yVOgzPZsvzP7G+aSsTHv61e2scODt9E7mCek/u+1I
	 1r0bF4j+vkRTg==
Received: from mail-oa1-f97.google.com (mail-oa1-f97.google.com [209.85.160.97])
	by mm2.emwd.com (Postfix) with ESMTPS id C2802383E4B
	for <usrp-users@lists.ettus.com>; Wed, 15 Feb 2023 12:17:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gotenna.com header.i=@gotenna.com header.b="DsHMG6VA";
	dkim-atps=neutral
Received: by mail-oa1-f97.google.com with SMTP id 586e51a60fabf-16a7f5b6882so23703427fac.10
        for <usrp-users@lists.ettus.com>; Wed, 15 Feb 2023 09:17:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3oVxtddd5TngoVIUbftfr4RJ6MVhUkpUISaqI3DxdYQ=;
        b=WMpSkL3IrZsOQ56dw+EKXlm9Z9SKSvjWC+XHieyI518P8kxwZpMNCEjs6S3GhKmI62
         4/EIXgFHe0N6aNCef+LQ5GworaIU0XG2biNlt6oPdunA2HipNV5kNafc38argKCcNqkn
         kcMpxlRAgAKcy8PEJtaE0MbtGdij/0GFQ5nnccx4MvgCPys+tpPwGCuS32p41NCsAw+c
         kh2sqGc1+QzD2DlIqNp6ST+S7AUVaXDlzx5z6r2chdEDlWoyILAD86grmagkOOg6DWKd
         SkzhC2Mdj1Ur+XBcq7zIT86hUDa/YdVJs90APmDXWsPyDN6yY2GRQiroKV2zso6cOOBP
         X1aA==
X-Gm-Message-State: AO0yUKX3KeeRjfmmOkNdTe4vqfTMMPnURJ/EjqO27q2TrZSv/9G2tlcG
	U6A6qnhvYCeXZt0dx0d7q0va1ZmSQF6HXOaxa8cM/YqkByAGkenPM2Y=
X-Google-Smtp-Source: AK7set+xf/wEMRewv1cOPrEHUWqNwDHMxUNoRbvdzDUUK08PrO4HnJt8TaFHy6Q+QHbX1xuaZsBvOg6UWmNa
X-Received: by 2002:a05:6871:1c5:b0:16a:c358:939b with SMTP id q5-20020a05687101c500b0016ac358939bmr1551365oad.43.1676481421983;
        Wed, 15 Feb 2023 09:17:01 -0800 (PST)
Received: from us1.smtp.exclaimer.net (us1.smtp.exclaimer.net. [191.237.4.149])
        by smtp-relay.gmail.com with ESMTPS id b42-20020a056870472a00b0016326411c09sm467109oaq.24.2023.02.15.09.17.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Feb 2023 09:17:01 -0800 (PST)
X-Relaying-Domain: gotenna.com
Received: from mail-pg1-f197.google.com (209.85.215.197) by
	 us1.smtp.exclaimer.net (191.237.4.149) with Exclaimer Signature Manager
	 ESMTP Proxy us1.smtp.exclaimer.net (tlsversion=TLS12,
	 tlscipher=TLS_ECDHE_WITH_AES256_SHA1); Wed, 15 Feb 2023 17:17:01 +0000
X-ExclaimerHostedSignatures-MessageProcessed: true
X-ExclaimerProxyLatency: 5436538
X-ExclaimerImprintLatency: 1186429
X-ExclaimerImprintAction: b5dd8a60e19b42139ec8d2eab075acb0
Received: by mail-pg1-f197.google.com with SMTP id c9-20020a63da09000000b004fb1a5a46e9so7514572pgh.20
        for <usrp-users@lists.ettus.com>; Wed, 15 Feb 2023 09:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gotenna.com; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3oVxtddd5TngoVIUbftfr4RJ6MVhUkpUISaqI3DxdYQ=;
        b=DsHMG6VAN2cXu2w3Ky3CaDGtDtp4RYZlrloQKKxnr+e7FfH0aEEPnlYk8Fqn8AfT3h
         z8ko4s8Z5UuTZtfCPQtMSoiLUCuCu99pmqGIJCMOEsbdZ4cbveFsznwzAUKGUgCX42WI
         7J3EF32JK/Vn5fMuds8j0hnOCdpRMfZJ4Ss9w4Jo25QwteBhzSlUbRIRf7B39Bn6zJ+X
         g4MSJh0goY21cW9ksIr19AYUUuPwlSzkwy4fO0rSoMfhQo0NmbP0+7xF4RSYhqeM8t7y
         260oKMFs6hrHEML5yRnlJmxuZWceWtLW7eAkIqbC23+DLO8AqTgsX0nW+gSq0xqD5Wfi
         wL5w==
X-Received: by 2002:a17:90b:38cf:b0:22b:fa02:2a12 with SMTP id nn15-20020a17090b38cf00b0022bfa022a12mr14381pjb.25.1676481420279;
        Wed, 15 Feb 2023 09:17:00 -0800 (PST)
X-Received: by 2002:a17:90b:38cf:b0:22b:fa02:2a12 with SMTP id
 nn15-20020a17090b38cf00b0022bfa022a12mr14377pjb.25.1676481419943; Wed, 15 Feb
 2023 09:16:59 -0800 (PST)
MIME-Version: 1.0
From: Maxim Belotserkovsky <maxim@gotenna.com>
Date: Wed, 15 Feb 2023 11:16:49 -0600
Message-ID: <CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: OF3XPPV77YSQM7L7LYQNSFGKKR4T6QBI
X-Message-ID-Hash: OF3XPPV77YSQM7L7LYQNSFGKKR4T6QBI
X-MailFrom: maxim@gotenna.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Questions about USRP SDR devices
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OF3XPPV77YSQM7L7LYQNSFGKKR4T6QBI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0967635813593400923=="

--===============0967635813593400923==
Content-Type: multipart/alternative; boundary="000000000000823dc905f4c03f79"

--000000000000823dc905f4c03f79
Content-Type: text/plain; charset="UTF-8"

Can anyone please comment on the following:


   -

   1) Can 2 ( or more ) instances of B-series (or other Ettus) SDRs be
   supported by a SINGLE GR flowgraph (e.g. one for TX chain, another for
   RX)? Can 2 independent devices hooked up to 2 USB ports talk to 2
   instances of the UHD driver on the same machine (under Windows/Linux)?
   -


   -

   2)Is UHD able to be run on an Android device and control a USRP SDR
   (using USB OTG, for example)? If not, are there other ways to have an
   Android app control the USRP SDR in real time?
   -


   -

   3) Custom B200 firmware: if I program the FPGA over USB (using Xilinx HW
   manager), will the image persist if I turn off power to device (I.e.
   disconnect USB)? In other words, is there a FLASH or some other
   persistent storage on-board to hold on to user-defined FPGA firmware after
   power-down?


Thanks!

--

--000000000000823dc905f4c03f79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can anyone please comment on the following:<div><br></div>=
<div><ul class=3D"gmail-BulletListStyle1 gmail-SCXW76715474 gmail-BCX0" rol=
e=3D"list" style=3D"margin:0px;padding:0px;overflow:visible;font-family:ver=
dana;color:rgb(0,0,0);font-size:14.6667px"><li role=3D"listitem" class=3D"g=
mail-OutlineElement gmail-Ltr gmail-SCXW76715474 gmail-BCX0" style=3D"margi=
n:0px 0px 0px 24px;padding:0px;overflow:visible;clear:both;direction:ltr;di=
splay:block;font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-s=
erif;vertical-align:baseline"><p class=3D"gmail-Paragraph gmail-SCXW7671547=
4 gmail-BCX0" lang=3D"EN-US" style=3D"margin:0px;padding:0px;white-space:pr=
e-wrap;vertical-align:baseline;font-kerning:none;background-color:transpare=
nt;color:windowtext"><span lang=3D"EN-US" class=3D"gmail-TextRun gmail-SCXW=
76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;font-size:11pt;line-he=
ight:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_MSFontServic=
e,sans-serif;font-variant-ligatures:none"><span class=3D"gmail-NormalTextRu=
n gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px">1) Can 2 =
</span><span class=3D"gmail-NormalTextRun gmail-ContextualSpellingAndGramma=
rErrorV2Themed gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0=
px;background-repeat:repeat-x;background-position:0% 100%;border-bottom:1px=
 solid transparent">( or</span><span class=3D"gmail-NormalTextRun gmail-SCX=
W76715474 gmail-BCX0" style=3D"margin:0px;padding:0px"> </span><span class=
=3D"gmail-NormalTextRun gmail-ContextualSpellingAndGrammarErrorV2Themed gma=
il-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;background-repe=
at:repeat-x;background-position:0% 100%;border-bottom:1px solid transparent=
">more )</span><span class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-=
BCX0" style=3D"margin:0px;padding:0px"> instances of B-series (or other Ett=
us) SDRs be supported by a SINGLE GR flowgraph (</span><span class=3D"gmail=
-NormalTextRun gmail-ContextualSpellingAndGrammarErrorV2Themed gmail-SCXW76=
715474 gmail-BCX0" style=3D"margin:0px;padding:0px;background-repeat:repeat=
-x;background-position:0% 100%;border-bottom:1px solid transparent">e.g.</s=
pan><span class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=
=3D"margin:0px;padding:0px"> one for TX chain, another for RX)? C</span><sp=
an class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"mar=
gin:0px;padding:0px">an 2 independent devices hooked up to 2 USB ports talk=
 to 2 instances of the UHD driver on the same machine (under Windows/Linux)=
?</span></span><span class=3D"gmail-EOP gmail-SCXW76715474 gmail-BCX0" styl=
e=3D"margin:0px;padding:0px;font-size:11pt;line-height:19.425px;font-family=
:Calibri,Calibri_EmbeddedFont,Calibri_MSFontService,sans-serif">=C2=A0</spa=
n></p></li><li role=3D"listitem" class=3D"gmail-OutlineElement gmail-Ltr gm=
ail-SCXW76715474 gmail-BCX0" style=3D"margin:0px 0px 0px 24px;padding:0px;o=
verflow:visible;clear:both;direction:ltr;display:block;font-size:11pt;font-=
family:Calibri,Calibri_MSFontService,sans-serif;vertical-align:baseline"><p=
 class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0" lang=3D"EN-US" sty=
le=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:baseline;f=
ont-kerning:none;background-color:transparent;color:windowtext"><span lang=
=3D"EN-US" class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BCX0" style=3D"m=
argin:0px;padding:0px;font-size:11pt;line-height:19.425px;font-family:Calib=
ri,Calibri_EmbeddedFont,Calibri_MSFontService,sans-serif;font-variant-ligat=
ures:none"><span class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0=
" style=3D"margin:0px;padding:0px"><br></span></span></p></li><li role=3D"l=
istitem" class=3D"gmail-OutlineElement gmail-Ltr gmail-SCXW76715474 gmail-B=
CX0" style=3D"margin:0px 0px 0px 24px;padding:0px;overflow:visible;clear:bo=
th;direction:ltr;display:block;font-size:11pt;font-family:Calibri,Calibri_M=
SFontService,sans-serif;vertical-align:baseline"><p class=3D"gmail-Paragrap=
h gmail-SCXW76715474 gmail-BCX0" lang=3D"EN-US" style=3D"margin:0px;padding=
:0px;white-space:pre-wrap;vertical-align:baseline;font-kerning:none;backgro=
und-color:transparent;color:windowtext"><span lang=3D"EN-US" class=3D"gmail=
-TextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;fon=
t-size:11pt;line-height:19.425px;font-family:Calibri,Calibri_EmbeddedFont,C=
alibri_MSFontService,sans-serif;font-variant-ligatures:none"><span class=3D=
"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;pad=
ding:0px">2)Is UHD able to be run on an Android device and control a USRP S=
DR  (using USB OTG, for example)? If not, are there other ways to </span><s=
pan class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"ma=
rgin:0px;padding:0px">have an </span></span><span lang=3D"EN-US" class=3D"g=
mail-TextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px=
;font-size:11pt;line-height:19.425px;font-family:Calibri,Calibri_EmbeddedFo=
nt,Calibri_MSFontService,sans-serif;font-variant-ligatures:none"><span clas=
s=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px=
;padding:0px">Android</span><span class=3D"gmail-NormalTextRun gmail-SCXW76=
715474 gmail-BCX0" style=3D"margin:0px;padding:0px"> app control the USRP S=
DR in real time?</span></span><span class=3D"gmail-EOP gmail-SCXW76715474 g=
mail-BCX0" style=3D"margin:0px;padding:0px;font-size:11pt;line-height:19.42=
5px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_MSFontService,sans-ser=
if">=C2=A0</span></p></li><li role=3D"listitem" class=3D"gmail-OutlineEleme=
nt gmail-Ltr gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px 0px 0px 24p=
x;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;font-=
size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;vertical-ali=
gn:baseline"><p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0" lan=
g=3D"EN-US" style=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-a=
lign:baseline;font-kerning:none;background-color:transparent;color:windowte=
xt"><span lang=3D"EN-US" class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BC=
X0" style=3D"background-color:transparent;color:windowtext;font-size:11pt;m=
argin:0px;padding:0px;line-height:19.425px;font-family:Calibri,Calibri_Embe=
ddedFont,Calibri_MSFontService,sans-serif;font-variant-ligatures:none"><spa=
n class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"marg=
in:0px;padding:0px"><br></span></span></p></li><li role=3D"listitem" class=
=3D"gmail-OutlineElement gmail-Ltr gmail-SCXW76715474 gmail-BCX0" style=3D"=
margin:0px 0px 0px 24px;padding:0px;overflow:visible;clear:both;direction:l=
tr;display:block;font-size:11pt;font-family:Calibri,Calibri_MSFontService,s=
ans-serif;vertical-align:baseline"><p class=3D"gmail-Paragraph gmail-SCXW76=
715474 gmail-BCX0" lang=3D"EN-US" style=3D"margin:0px;padding:0px;white-spa=
ce:pre-wrap;vertical-align:baseline;font-kerning:none;background-color:tran=
sparent;color:windowtext"><span lang=3D"EN-US" class=3D"gmail-TextRun gmail=
-SCXW76715474 gmail-BCX0" style=3D"background-color:transparent;color:windo=
wtext;font-size:11pt;margin:0px;padding:0px;line-height:19.425px;font-famil=
y:Calibri,Calibri_EmbeddedFont,Calibri_MSFontService,sans-serif;font-varian=
t-ligatures:none"><span class=3D"gmail-NormalTextRun gmail-SCXW76715474 gma=
il-BCX0" style=3D"margin:0px;padding:0px">3) Custom B200 firmware: if I pro=
gram the FPGA over USB (using Xilinx HW manager), will the image persist if=
 I </span><span class=3D"gmail-NormalTextRun gmail-SpellingErrorV2Themed gm=
ail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;background-rep=
eat:repeat-x;background-position:0% 100%;border-bottom:1px solid transparen=
t">turn</span><span class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-B=
CX0" style=3D"margin:0px;padding:0px"> off power to </span><span class=3D"g=
mail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;paddi=
ng:0px">device (</span><span class=3D"gmail-NormalTextRun gmail-ContextualS=
pellingAndGrammarErrorV2Themed gmail-SCXW76715474 gmail-BCX0" style=3D"marg=
in:0px;padding:0px;background-repeat:repeat-x;background-position:0% 100%;b=
order-bottom:1px solid transparent">I.e.</span><span class=3D"gmail-NormalT=
extRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px"> dis=
connect USB)? In other words, is there </span><span class=3D"gmail-NormalTe=
xtRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px">a FLA=
SH or some other persistent storage on-board to hold on to user-defined FPG=
A firmware after power-down?</span></span><span class=3D"gmail-EOP gmail-SC=
XW76715474 gmail-BCX0" style=3D"background-color:transparent;color:windowte=
xt;font-size:11pt;margin:0px;padding:0px;line-height:19.425px;font-family:C=
alibri,Calibri_EmbeddedFont,Calibri_MSFontService,sans-serif">=C2=A0</span>=
<br></p></li></ul><div><font color=3D"#000000" face=3D"Calibri, Calibri_Emb=
eddedFont, Calibri_MSFontService, sans-serif"><span style=3D"font-size:14.6=
667px;white-space:pre-wrap"><br></span></font></div><div><font color=3D"#00=
0000" face=3D"Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-se=
rif"><span style=3D"font-size:14.6667px;white-space:pre-wrap">Thanks!</span=
></font></div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr" style=3D"font-size:=
1px;direction:ltr"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" =
style=3D"width:100%;font-size:1px"><tbody><tr style=3D"font-size:0"><td ali=
gn=3D"left" style=3D"vertical-align:top"><table cellpadding=3D"0" cellspaci=
ng=3D"0" border=3D"0" style=3D"width:0;font-size:0"><tbody><tr style=3D"fon=
t-size:0"><td align=3D"left"><br></td></tr></tbody></table></td></tr><tr st=
yle=3D"font-size:0"><td align=3D"left" style=3D"vertical-align:top"><table =
cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;line-=
height:normal"><tbody><tr style=3D"font-size:0"><td align=3D"left" style=3D=
"padding:1px 0 0;vertical-align:top"><br></td></tr></tbody></table></td></t=
r></tbody></table></div></div></div></div>

--000000000000823dc905f4c03f79--

--===============0967635813593400923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0967635813593400923==--
