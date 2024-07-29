Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F08693F3ED
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 13:24:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAFFE385202
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 07:24:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722252291; bh=lOHJifOLg81INas/sVfWM3xE5GgQ2QFtO1jYZAdgkRM=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=zIXSrwCzg+nKMvfnT0bDQCuzWw7JEJbw4s5mNLF5tpqqbmxqm3J/nc3RAYr3mMt0P
	 DXtehr11w3x8XAXgr5eKCBx+5tFZx8pgwumjhSY+7m8AsIuFnK4fc+SGIuhsxEGx8s
	 1hn667NW4LkWRJ9l/nnMSaylgh7oGA0AFx8hg/oyWv/XJF7cIiEUJtldCgIbKxuXTa
	 zrVsyR0CRrN97riZaoZit7fU+8u5/HalkyVKkcTGWvIfEwPTyRxiKP5DaWzO8+aSEL
	 99D6zaw7d/Wf1gAs5OtBTh7ENMD8/6HV5MCBBqwiZBmpRsqeIqb0VXcgZJc97CnH83
	 z/9Zb0bX67PFA==
Received: from sfmail01.tubitak.gov.tr (sfmail01.tubitak.gov.tr [193.140.80.192])
	by mm2.emwd.com (Postfix) with ESMTPS id A33A0385006
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 07:24:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=tubitak.gov.tr header.i=@tubitak.gov.tr header.b="gDBcX0wl";
	dkim-atps=neutral
X-ASG-Debug-ID: 1722252264-0f24755d03338040001-5wTQH4
Received: from mta02.tubitak.gov.tr (mta02.tubitak.gov.tr [193.140.13.216]) by sfmail01.tubitak.gov.tr with ESMTP id Ah4xlmpHekIdu6LQ (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO) for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 14:24:25 +0300 (EAT)
X-Barracuda-Envelope-From: emre.yildiz@tubitak.gov.tr
X-Barracuda-Effective-Source-IP: mta02.tubitak.gov.tr[193.140.13.216]
X-Barracuda-Apparent-Source-IP: 193.140.13.216
Received: from localhost (localhost [127.0.0.1])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id B9E8D21A6D7
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 14:24:24 +0300 (+03)
Received: from mta02.tubitak.gov.tr ([127.0.0.1])
 by localhost (mta02.tubitak.gov.tr [127.0.0.1]) (amavis, port 10032)
 with ESMTP id 0SrRk7Slg_mR for <usrp-users@lists.ettus.com>;
 Mon, 29 Jul 2024 14:24:24 +0300 (+03)
Received: from localhost (localhost [127.0.0.1])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id 87F7021A6E0
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 14:24:24 +0300 (+03)
DKIM-Filter: OpenDKIM Filter v2.10.3 mta02.tubitak.gov.tr 87F7021A6E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tubitak.gov.tr;
	s=3CB53094-0179-11EB-B19A-889BD1D29365; t=1722252264;
	bh=fXbumBaQ33lTXl6a1ff2JwaAMsuy5QqfcV2KUtXQ+LY=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=gDBcX0wlOHEElqgLcTQ31lxVSn2E7t7sqKDbMPJNhQqB2bXaheik5O4oYUDaQku/H
	 qOEhON0IWx8zi6fOs/sGohR4ZQ9xZA3tEYOxKPyKl8E8aW78nyt4Q9AyYPSAzDmRHm
	 yWNa7I7b5hGO1SinjKD6dCGS7/DgBKP5PYLaSGdcYZMaQjn6g8fzEvXm2fwq+dASuX
	 LWgVwH5AW/nppmfzphdBh7fNkHh8mDY0AUd6N8zavaL+2RRbDXj/JNOKs+exU6wYPF
	 cTfeboVaijajfHaDzY2qBDXyuZqQRrN4h58W6FBKG/OnedMGzQKMFDzsZc0KMIIjmS
	 BdhUa6usC/TNQ==
X-Virus-Scanned: amavis at mta02.tubitak.gov.tr
Received: from mta02.tubitak.gov.tr ([127.0.0.1])
 by localhost (mta02.tubitak.gov.tr [127.0.0.1]) (amavis, port 10026)
 with ESMTP id cTe3t3JvDZ5D for <usrp-users@lists.ettus.com>;
 Mon, 29 Jul 2024 14:24:24 +0300 (+03)
Received: from mail03.tubitak.gov.tr (mail03.tubitak.gov.tr [10.250.10.121])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id 64F2B21A6D7
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 14:24:24 +0300 (+03)
Date: Mon, 29 Jul 2024 14:24:24 +0300 (TRT)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1939152270.19945078.1722252264366.JavaMail.zimbra@tubitak.gov.tr>
MIME-Version: 1.0
X-ASG-Orig-Subj: E320 UHD Connection Fault
Thread-Index: ASgeL974GsXhJIAi89LOgL8ZVtIuSA==
Thread-Topic: E320 UHD Connection Fault
X-Barracuda-Connect: mta02.tubitak.gov.tr[193.140.13.216]
X-Barracuda-Start-Time: 1722252265
X-Barracuda-Encrypted: TLS_AES_256_GCM_SHA384
X-Barracuda-URL: https://193.140.80.192:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at tubitak.gov.tr
X-Barracuda-Scan-Msg-Size: 11782
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0559 1.0000 -1.6628
X-Barracuda-Spam-Score: -1.66
X-Barracuda-Spam-Status: No, SCORE=-1.66 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.128284
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Message-ID-Hash: 7IXQBC2GCTJ2R3A3HEXZICTANN65EFJE
X-Message-ID-Hash: 7IXQBC2GCTJ2R3A3HEXZICTANN65EFJE
X-MailFrom: emre.yildiz@tubitak.gov.tr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 UHD Connection Fault
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7IXQBC2GCTJ2R3A3HEXZICTANN65EFJE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Emre_YILDIZ_=28B=C4=B0LGEM_=C4=B0LTAREN=29_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: Emre YILDIZ =?utf-8?Q?=28B=C4=B0LGEM_=C4=B0LTAREN=29?= <emre.yildiz@tubitak.gov.tr>
Content-Type: multipart/mixed; boundary="===============8823426309101015725=="

--===============8823426309101015725==
Content-Type: multipart/alternative;
	boundary="=_c6aef2e5-baef-4db2-9dd6-9c1433a52c83"

--=_c6aef2e5-baef-4db2-9dd6-9c1433a52c83
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Dear usrp users and Ettus Research support team, 

Last week I asked question here about when I run the following command I got the error message given below: 

command : uhd_usrp_probe --args "addr= [ callto:192.168.10.2 | 192.168.10.2 ] " 
Error message: RuntimeError: rpc::timeout: Timeout of 2000ms while calling RPC function 'set_device_id' 

even I change the args like that : mgmt_addr= [ callto:192.168.10.2 | 192.168.10.2 ] ,type=e3xx,product=e320,serial=33CB10C,claimed=False,addr= [ callto:192.168.10.2 | 192.168.10.2 ] 
I still got the same error message. 

Then I connected the device via serial port to use its own linux as root mode . I run uhd_config info --version and its returned me UHD version 3.15. 
Also I use uhd_siggen command on e320's linux and its generated signal successfully. 

Do I have to use UHD 3.15 for E320 device or Is there anything wrong about my application. Please note that I am using UHD 4.6 on my computer and I want use that usrp from gnuradio however, I cant use it because of the error. 


--=_c6aef2e5-baef-4db2-9dd6-9c1433a52c83
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: arial, helvetica, sans-serif; font-s=
ize: 12pt; color: #000000"><div>Dear usrp users and Ettus Research support =
team,<br><br>Last week I asked question here about when I run the following=
 command I got the error message given below:<br><br></div><!--StartFragmen=
t--><div><span style=3D"color: #000000; font-family: arial, helvetica, sans=
-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: #fdfdfd; text-decoration-thickness: initial; text-decorat=
ion-style: initial; text-decoration-color: initial; display: inline !import=
ant; float: none;" data-mce-style=3D"color: #000000; font-family: arial, he=
lvetica, sans-serif; font-size: 16px; font-style: normal; font-variant-liga=
tures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: n=
one; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-sp=
ace: normal; background-color: #fdfdfd; text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial; display: i=
nline !important; float: none;"><strong>command</strong>:&nbsp; uhd_usrp_pr=
obe --args "addr=3D</span><span class=3D"Object" role=3D"link" id=3D"OBJ_PR=
EFIX_DWT299_com_zimbra_phone" style=3D"color: #336699; text-decoration: non=
e; cursor: pointer; font-family: arial, helvetica, sans-serif; font-size: 1=
6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #f=
dfdfd;" data-mce-style=3D"color: #336699; text-decoration: none; cursor: po=
inter; font-family: arial, helvetica, sans-serif; font-size: 16px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-tex=
t-stroke-width: 0px; white-space: normal; background-color: #fdfdfd;"><a hr=
ef=3D"callto:192.168.10.2" onclick=3D"window.top.Com_Zimbra_Phone.unsetOnbe=
foreunload()" style=3D"color: #336699; text-decoration: none; cursor: point=
er;" data-mce-href=3D"callto:192.168.10.2" data-mce-style=3D"color: #336699=
; text-decoration: none; cursor: pointer;">192.168.10.2</a></span><span sty=
le=3D"color: #000000; font-family: arial, helvetica, sans-serif; font-size:=
 16px; font-style: normal; font-variant-ligatures: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align=
: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: =
#fdfdfd; text-decoration-thickness: initial; text-decoration-style: initial=
; text-decoration-color: initial; display: inline !important; float: none;"=
 data-mce-style=3D"color: #000000; font-family: arial, helvetica, sans-seri=
f; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backg=
round-color: #fdfdfd; text-decoration-thickness: initial; text-decoration-s=
tyle: initial; text-decoration-color: initial; display: inline !important; =
float: none;">"<br></span></div><!--EndFragment--><div style=3D"clear: both=
;" data-mce-style=3D"clear: both;"><strong>Error message:</strong>&nbsp; <!=
--StartFragment--><span style=3D"color: #000000; font-family: arial, helvet=
ica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 normal; background-color: #fdfdfd; text-decoration-thickness: initial; tex=
t-decoration-style: initial; text-decoration-color: initial; display: inlin=
e !important; float: none;" data-mce-style=3D"color: #000000; font-family: =
arial, helvetica, sans-serif; font-size: 16px; font-style: normal; font-var=
iant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 white-space: normal; background-color: #fdfdfd; text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;">RuntimeError: rpc::timeout: Timeou=
t of 2000ms while calling RPC function 'set_device_id'&nbsp;</span><!--EndF=
ragment--><div style=3D"clear: both;" data-mce-style=3D"clear: both;"><br><=
/div></div><div style=3D"clear: both;" data-mce-style=3D"clear: both;"><spa=
n style=3D"color: #000000; font-family: arial, helvetica, sans-serif; font-=
size: 16px; font-style: normal; font-variant-ligatures: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-co=
lor: #fdfdfd; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;" data-mce-style=3D"color: #000000; font-family: arial, helvetica, sans=
-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: #fdfdfd; text-decoration-thickness: initial; text-decorat=
ion-style: initial; text-decoration-color: initial; display: inline !import=
ant; float: none;"><span style=3D"color: #000000; font-family: arial, helve=
tica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatur=
es: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space=
: normal; background-color: #fdfdfd; text-decoration-thickness: initial; te=
xt-decoration-style: initial; text-decoration-color: initial; display: inli=
ne !important; float: none;" data-mce-style=3D"color: #000000; font-family:=
 arial, helvetica, sans-serif; font-size: 16px; font-style: normal; font-va=
riant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; white-space: normal; background-color: #fdfdfd; text-decoration-thickness=
: initial; text-decoration-style: initial; text-decoration-color: initial; =
display: inline !important; float: none;">even I <strong>change the args</s=
trong> like that : <!--StartFragment--><em>mgmt_addr=3D<span class=3D"Objec=
t" role=3D"link" id=3D"OBJ_PREFIX_DWT300_com_zimbra_phone" style=3D"color: =
rgb(51, 102, 153); text-decoration: none; cursor: pointer; font-family: ari=
al, helvetica, sans-serif; font-size: 16px; font-variant-ligatures: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2=
; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; b=
ackground-color: rgb(253, 253, 253);" data-mce-style=3D"color: #336699; tex=
t-decoration: none; cursor: pointer; font-family: arial, helvetica, sans-se=
rif; font-size: 16px; font-variant-ligatures: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; background-color: #fdfd=
fd;"><a href=3D"callto:192.168.10.2" onclick=3D"window.top.Com_Zimbra_Phone=
.unsetOnbeforeunload()" style=3D"color: #336699; text-decoration: none; cur=
sor: pointer;" data-mce-href=3D"callto:192.168.10.2" data-mce-style=3D"colo=
r: #336699; text-decoration: none; cursor: pointer;">192.168.10.2</a></span=
>,type=3De3xx,product=3De320,serial=3D33CB10C,claimed=3DFalse,addr=3D<span =
class=3D"Object-hover" role=3D"link" id=3D"OBJ_PREFIX_DWT301_com_zimbra_pho=
ne" style=3D"color: rgb(51, 102, 153); text-decoration: underline; font-fam=
ily: arial, helvetica, sans-serif; font-size: 16px; font-variant-ligatures:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: n=
ormal; background-color: rgb(253, 253, 253);" data-mce-style=3D"color: #336=
699; text-decoration: underline; font-family: arial, helvetica, sans-serif;=
 font-size: 16px; font-variant-ligatures: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; =
text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webk=
it-text-stroke-width: 0px; white-space: normal; background-color: #fdfdfd;"=
><a href=3D"callto:192.168.10.2" onclick=3D"window.top.Com_Zimbra_Phone.uns=
etOnbeforeunload()" style=3D"color: #336699; text-decoration: none; cursor:=
 pointer;" data-mce-href=3D"callto:192.168.10.2" data-mce-style=3D"color: #=
336699; text-decoration: none; cursor: pointer;">192.168.10.2</a></span></e=
m><!--EndFragment--></span></span><div style=3D"clear: both;" data-mce-styl=
e=3D"clear: both;"><span style=3D"background-color: rgb(253, 253, 253);">I =
still got the same error message.&nbsp;</span><br></div></div><div><br>Then=
 I connected the device via <strong>serial port</strong> to use its <strong=
>own linux as root mode</strong>. I run<strong> uhd_config info --version</=
strong> and its returned me <strong>UHD version 3.15.</strong></div><div>Al=
so I use<strong> uhd_siggen&nbsp;</strong>command on e320's linux and its g=
enerated signal successfully.&nbsp;</div><div><br data-mce-bogus=3D"1"></di=
v><div>Do I have to use UHD 3.15 for E320 device or Is there anything wrong=
 about my application. Please note that I am using UHD 4.6 on my computer a=
nd I want use that usrp from gnuradio however, I cant use it because of the=
 error.&nbsp;<br><br></div></div></body></html>
--=_c6aef2e5-baef-4db2-9dd6-9c1433a52c83--

--===============8823426309101015725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8823426309101015725==--
