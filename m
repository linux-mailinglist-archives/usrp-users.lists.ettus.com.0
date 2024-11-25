Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6AB9D87CB
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 15:23:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08991385D1B
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 09:23:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732544586; bh=Bc6np50Wlvy3Uwq6ryO9YqvhkPc/aH3oq8RS/HRQY3s=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=AzfpMiKWC4BU1Dy6gAJXDLQ3mJHM53ekdZHQEWTXEuXjadejedOrK2pgTydQoDr7+
	 /fnxOt6wPtHPMOuh3zTx3opUMCljPZurZImZjbM32ppu2nzvPjzTLwMqJHwbyau3TU
	 NFwDjwXnkp9XJJFU9cT+KRr7pShcre5mFSkNwTsE1pF3slcH+E3BaB3NkCVj0kszGg
	 NtpylxZY6vzX1zsIAHMfWZj562AQp8R4S7ifnbHPE4PBatcc3FO3zmH0YUeARu1nFy
	 uNuft+IqgULIEI0ZcE3sVGshiXXIKRb5xlCk+A7vn6vq1nsK0Gpb7HKCVFOqoxJ+mI
	 RVKdUf7QDErkw==
Received: from sfmail01.tubitak.gov.tr (sfmail01.tubitak.gov.tr [193.140.80.192])
	by mm2.emwd.com (Postfix) with ESMTPS id 55A09385BE0
	for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 09:22:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=tubitak.gov.tr header.i=@tubitak.gov.tr header.b="ahtzD1f9";
	dkim-atps=neutral
X-ASG-Debug-ID: 1732544536-0f247576eead380001-5wTQH4
Received: from mta02.tubitak.gov.tr (mta02.tubitak.gov.tr [193.140.13.216]) by sfmail01.tubitak.gov.tr with ESMTP id fQ9GE5gQgEovCmOb (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO) for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 17:22:16 +0300 (EAT)
X-Barracuda-Envelope-From: hamdusena.bilgi@tubitak.gov.tr
X-Barracuda-Effective-Source-IP: mta02.tubitak.gov.tr[193.140.13.216]
X-Barracuda-Apparent-Source-IP: 193.140.13.216
Received: from localhost (localhost [127.0.0.1])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id 9E52921A6E9
	for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 17:12:26 +0300 (+03)
Received: from mta02.tubitak.gov.tr ([127.0.0.1])
 by localhost (mta02.tubitak.gov.tr [127.0.0.1]) (amavis, port 10032)
 with ESMTP id TKr0O_ACaWXw for <usrp-users@lists.ettus.com>;
 Mon, 25 Nov 2024 17:12:26 +0300 (+03)
Received: from localhost (localhost [127.0.0.1])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id 6F18B21A6EA
	for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 17:12:26 +0300 (+03)
DKIM-Filter: OpenDKIM Filter v2.10.3 mta02.tubitak.gov.tr 6F18B21A6EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tubitak.gov.tr;
	s=3CB53094-0179-11EB-B19A-889BD1D29365; t=1732543946;
	bh=xhsLv9J8lSLOFiLF/ULwh0e1gX4dgl8zZOv6zQktt8w=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=ahtzD1f9yUm+SPEFq3XyZPZmu/ZyXRe6PKe3XYQRBnTzjR3V6sRlMg+YZKrPvvU2B
	 it1/RwA8UjxVvvaR+isiDjJyReTHVx+D6bM/v3Ge034pGDwWmWxjaDMfYHY/GrokVu
	 9+4bB9PrnNC41KYOLxuXClwhtVFs4AyNfTFWzr4HlBlF/4rO7t/WrGb2V5ii0VkucJ
	 pJDymq9y9nLBFJ7+foyccr2l/SRHKkFIFKmX9VsLaCYsg7RXmOidNQFqNyBoC4sTJI
	 I3rQ+88FZcqOJzPbvTY96hzTTkDufIIQoPGA7ksHIQjkxM9L3IslQnkFo54wp9A2pR
	 kPrIb6SnA43rw==
X-Virus-Scanned: amavis at mta02.tubitak.gov.tr
Received: from mta02.tubitak.gov.tr ([127.0.0.1])
 by localhost (mta02.tubitak.gov.tr [127.0.0.1]) (amavis, port 10026)
 with ESMTP id bxniSfvh0hhx for <usrp-users@lists.ettus.com>;
 Mon, 25 Nov 2024 17:12:26 +0300 (+03)
Received: from mail03.tubitak.gov.tr (mail03.tubitak.gov.tr [10.250.10.121])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id 453D721A6E9
	for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 17:12:26 +0300 (+03)
Date: Mon, 25 Nov 2024 17:12:26 +0300 (TRT)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <848678402.19165407.1732543946189.JavaMail.zimbra@tubitak.gov.tr>
MIME-Version: 1.0
X-ASG-Orig-Subj: Module Not Found Error
Thread-Index: uCVjmSifBf3fgdYgqvaZ0CaPjYLTYA==
Thread-Topic: Module Not Found Error
X-Barracuda-Connect: mta02.tubitak.gov.tr[193.140.13.216]
X-Barracuda-Start-Time: 1732544536
X-Barracuda-Encrypted: TLS_AES_256_GCM_SHA384
X-Barracuda-URL: https://193.140.80.192:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at tubitak.gov.tr
X-Barracuda-Scan-Msg-Size: 39876
X-Barracuda-Bayes: SPAM GLOBAL 0.9768 1.0000 4.0754
X-Barracuda-Spam-Score: 4.08
X-Barracuda-Spam-Status: No, SCORE=4.08 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.133680
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Message-ID-Hash: FS4IEBXHTMTEMBLMMHHLKFQS3QP5OD27
X-Message-ID-Hash: FS4IEBXHTMTEMBLMMHHLKFQS3QP5OD27
X-MailFrom: hamdusena.bilgi@tubitak.gov.tr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Module Not Found Error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FS4IEBXHTMTEMBLMMHHLKFQS3QP5OD27/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?b?SGFtZMO8c2VuYSBCxLBMR8SwIChCxLBMR0VNKSB2aWEgVVNSUC11c2Vycw==?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?B?SGFtZMO8c2VuYSBCxLBMR8SwIChCxLBMR0VNKQ==?= <hamdusena.bilgi@tubitak.gov.tr>
Content-Type: multipart/mixed; boundary="===============2019671726929304760=="

--===============2019671726929304760==
Content-Type: multipart/alternative;
	boundary="=_aca3fe60-0aea-4e94-a5b2-7a221ca8aeef"

--=_aca3fe60-0aea-4e94-a5b2-7a221ca8aeef
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


Hello dear usrp users, 

I want to write code using the UHD Python APIs, but I get an error when I try to run import uhd. UHD works properly in GNU Radio, but when I try to work with Python 3.8 from the terminal or in VSCode, I encounter the following error. How can I resolve this issue? 

export PYTHONPATH=/usr/local/lib/python3/dist-packages/:$PYTHONPATH 

python3.8 
Python 3.8.10 
[GCC 9.4.0] on linux 
Type "help", "copyright", "credits" or "license" for more information. 
>>> import uhd 
Traceback (most recent call last): 
File "<stdin>", line 1, in <module> 
ModuleNotFoundError: No module named 'uhd' 



The versions on the device are: 
gnuradio-config-info --v 
v3.8.5.0-6-g57bd109d 
----------------------------------- 


uhd_config_info --version 

UHD 4.7.0.0-0-ga5ed1872 

------------------------------------------ 




uhd_find_devices 

[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.7.0.0-0-ga5ed1872 

-------------------------------------------------- 

-- UHD Device 0 

-------------------------------------------------- 

Device Address: 

serial: 33CB10C 

addr: [ callto:192.168.10.2 | 192.168.10.2 ] 

claimed: False 

fpga: 1G 

mgmt_addr: [ callto:192.168.10.2 | 192.168.10.2 ] 

name: ni-e320-33CB10C 

product: e320 

type: e3xx 

---------------------------------------- 







python3 --version 

Python 3.8.10 

---------------------------------------- 

g++ --version 

g++ (Ubuntu 9.4.0-1ubuntu1~ [ callto:20.04.2) 9.4.0 | 20.04.2) 9.4.0 ] 

--=_aca3fe60-0aea-4e94-a5b2-7a221ca8aeef
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: arial, helvetica, sans-serif; font-s=
ize: 12pt; color: #000000"><div><div>&nbsp;</div><div><br data-mce-bogus=3D=
"1"></div><div><span style=3D"color: #000000; font-family: aptos, aptos_emb=
eddedfont, aptos_msfontservice, calibri, helvetica, sans-serif; font-size: =
16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #=
fdfdfd; text-decoration-thickness: initial; text-decoration-style: initial;=
 text-decoration-color: initial; display: inline !important; float: none;" =
data-mce-style=3D"color: #000000; font-family: aptos, aptos_embeddedfont, a=
ptos_msfontservice, calibri, helvetica, sans-serif; font-size: 16px; font-s=
tyle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text=
-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; white-space: normal; background-color: #fdfdfd; text=
-decoration-thickness: initial; text-decoration-style: initial; text-decora=
tion-color: initial; display: inline !important; float: none;">Hello dear u=
srp users,</span><div style=3D"clear: both;" data-mce-style=3D"clear: both;=
"><br></div><div style=3D"clear: both;" data-mce-style=3D"clear: both;">I w=
ant to write code using the UHD Python APIs, but I get an error when I try =
to run import uhd. UHD works properly in GNU Radio, but when I try to work =
with Python 3.8 from the terminal or in VSCode, I encounter the following e=
rror. How can I resolve this issue?<br data-mce-bogus=3D"1"></div><div styl=
e=3D"clear: both;" data-mce-style=3D"clear: both;"><br data-mce-bogus=3D"1"=
></div><div style=3D"clear: both;" data-mce-style=3D"clear: both;"><strong =
style=3D"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero)=
; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-re=
set-base-border-zero); font-size: 16px; vertical-align: var(--artdeco-reset=
-base-vertical-align-baseline); background-color: #ffffff; outline: var(--a=
rtdeco-reset-base-outline-zero); font-weight: var(--artdeco-reset-typograph=
y-font-weight-bold); font-family: -apple-system, system-ui, BlinkMacSystemF=
ont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira Sans', Ubuntu, Oxygen, 'Ox=
ygen Sans', Cantarell, 'Droid Sans', 'Apple Color Emoji', 'Segoe UI Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Grande', Helvetica, Arial, sa=
ns-serif; color: rgba(0, 0, 0, 0.9); font-style: normal; font-variant-ligat=
ures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial;" data-mce-style=3D"box-sizing: inherit; margin: var(--ar=
tdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-ze=
ro); border: var(--artdeco-reset-base-border-zero); font-size: 16px; vertic=
al-align: var(--artdeco-reset-base-vertical-align-baseline); background-col=
or: #ffffff; outline: var(--artdeco-reset-base-outline-zero); font-weight: =
var(--artdeco-reset-typography-font-weight-bold); font-family: -apple-syste=
m, system-ui, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fi=
ra Sans', Ubuntu, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Co=
lor Emoji', 'Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida =
Grande', Helvetica, Arial, sans-serif; color: rgba(0, 0, 0, 0.9); font-styl=
e: normal; font-variant-ligatures: normal; font-variant-caps: normal; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; white-space: normal; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial;">export PYTHONPATH=3D/usr/l=
ocal/lib/python3/dist-packages/:$PYTHONPATH</strong></div><div style=3D"cle=
ar: both;" data-mce-style=3D"clear: both;"><br data-mce-bogus=3D"1"></div><=
/div><div>python3.8</div><div>Python 3.8.10&nbsp;</div><div>[GCC 9.4.0] on =
linux</div><div>Type "help", "copyright", "credits" or "license" for more i=
nformation.</div><div>&gt;&gt;&gt; import uhd&nbsp;</div><div>Traceback (mo=
st recent call last):</div><div>&nbsp; File "&lt;stdin&gt;", line 1, in &lt=
;module&gt;</div><div>ModuleNotFoundError: No module named 'uhd'</div></div=
><div><br></div><div><br data-mce-bogus=3D"1"></div><div><br data-mce-bogus=
=3D"1"></div><div>The versions on the device are:<br data-mce-bogus=3D"1"><=
/div><div><div data-mce-style=3D"clear: both;" style=3D"color: rgb(0, 0, 0)=
; font-family: arial, helvetica, sans-serif; font-size: 16px; font-style: n=
ormal; font-variant-ligatures: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); =
text-decoration-thickness: initial; text-decoration-style: initial; text-de=
coration-color: initial; clear: both;">&nbsp;</div><div data-mce-style=3D"c=
lear: both;" style=3D"color: rgb(0, 0, 0); font-family: arial, helvetica, s=
ans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; widow=
s: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: norma=
l; background-color: rgb(255, 255, 255); text-decoration-thickness: initial=
; text-decoration-style: initial; text-decoration-color: initial; clear: bo=
th;"><div data-mce-style=3D"clear: both;" style=3D"clear: both;">&nbsp;gnur=
adio-config-info --v</div><div data-mce-style=3D"clear: both;" style=3D"cle=
ar: both;">v3.8.5.0-6-g57bd109d</div><div data-mce-style=3D"clear: both;" s=
tyle=3D"clear: both;">-----------------------------------</div><div data-mc=
e-style=3D"clear: both;" style=3D"clear: both;"><p style=3D"margin: 0px; li=
ne-height: 16px; background: rgb(253, 253, 253); color: rgb(0, 0, 0); font-=
family: arial, helvetica, sans-serif; font-size: 16px; font-style: normal; =
font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; white-space: normal; text-decoration-thickness: initial; text-deco=
ration-style: initial; text-decoration-color: initial;" data-mce-style=3D"m=
argin: 0px; line-height: 16px; background: #fdfdfd; color: #000000; font-fa=
mily: arial, helvetica, sans-serif; font-size: 16px; font-style: normal; fo=
nt-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; white-space: normal; text-decoration-thickness: initial; text-decora=
tion-style: initial; text-decoration-color: initial;">uhd_config_info --ver=
sion</p><p style=3D"margin: 0px; line-height: 16px; background: rgb(253, 25=
3, 253); color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; fo=
nt-size: 16px; font-style: normal; font-variant-ligatures: normal; font-var=
iant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; te=
xt-align: start; text-indent: 0px; text-transform: none; widows: 2; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decor=
ation-thickness: initial; text-decoration-style: initial; text-decoration-c=
olor: initial;" data-mce-style=3D"margin: 0px; line-height: 16px; backgroun=
d: #fdfdfd; color: #000000; font-family: arial, helvetica, sans-serif; font=
-size: 16px; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decorat=
ion-thickness: initial; text-decoration-style: initial; text-decoration-col=
or: initial;">UHD 4.7.0.0-0-ga5ed1872</p><p style=3D"margin: 0px; line-heig=
ht: 16px; background: rgb(253, 253, 253); color: rgb(0, 0, 0); font-family:=
 arial, helvetica, sans-serif; font-size: 16px; font-style: normal; font-va=
riant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; white-space: normal; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial;" data-mce-style=3D"margin: =
0px; line-height: 16px; background: #fdfdfd; color: #000000; font-family: a=
rial, helvetica, sans-serif; font-size: 16px; font-style: normal; font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-=
spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tran=
sform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
white-space: normal; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial;">----------------------------=
--------------</p><p style=3D"margin: 0px; line-height: 16px; background: r=
gb(253, 253, 253); color: rgb(0, 0, 0); font-family: arial, helvetica, sans=
-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
text-decoration-thickness: initial; text-decoration-style: initial; text-de=
coration-color: initial;" data-mce-style=3D"margin: 0px; line-height: 16px;=
 background: #fdfdfd; color: #000000; font-family: arial, helvetica, sans-s=
erif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; te=
xt-decoration-thickness: initial; text-decoration-style: initial; text-deco=
ration-color: initial;"><br data-mce-bogus=3D"1"></p><p style=3D"margin: 0p=
x; line-height: 16px; background: rgb(253, 253, 253); color: rgb(0, 0, 0); =
font-family: arial, helvetica, sans-serif; font-size: 16px; font-style: nor=
mal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; white-space: normal; text-decoration-thickness: initial; text=
-decoration-style: initial; text-decoration-color: initial;" data-mce-style=
=3D"margin: 0px; line-height: 16px; background: #fdfdfd; color: #000000; fo=
nt-family: arial, helvetica, sans-serif; font-size: 16px; font-style: norma=
l; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; white-space: normal; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial;">uhd_find_devices=
</p><p style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 2=
53); color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-s=
ize: 16px; font-style: normal; font-variant-ligatures: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-a=
lign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoratio=
n-thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;" data-mce-style=3D"margin: 0px; line-height: 16px; background: #=
fdfdfd; color: #000000; font-family: arial, helvetica, sans-serif; font-siz=
e: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-c=
aps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-ali=
gn: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color: =
initial;">[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.7.=
0.0-0-ga5ed1872</p><p style=3D"margin: 0px; line-height: 16px; background: =
rgb(253, 253, 253); color: rgb(0, 0, 0); font-family: arial, helvetica, san=
s-serif; font-size: 16px; font-style: normal; font-variant-ligatures: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;=
 text-decoration-thickness: initial; text-decoration-style: initial; text-d=
ecoration-color: initial;" data-mce-style=3D"margin: 0px; line-height: 16px=
; background: #fdfdfd; color: #000000; font-family: arial, helvetica, sans-=
serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2=
; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; t=
ext-decoration-thickness: initial; text-decoration-style: initial; text-dec=
oration-color: initial;">--------------------------------------------------=
</p><p style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 2=
53); color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-s=
ize: 16px; font-style: normal; font-variant-ligatures: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-a=
lign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoratio=
n-thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;" data-mce-style=3D"margin: 0px; line-height: 16px; background: #=
fdfdfd; color: #000000; font-family: arial, helvetica, sans-serif; font-siz=
e: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-c=
aps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-ali=
gn: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color: =
initial;">-- UHD Device 0</p><p style=3D"margin: 0px; line-height: 16px; ba=
ckground: rgb(253, 253, 253); color: rgb(0, 0, 0); font-family: arial, helv=
etica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatu=
res: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spac=
e: normal; text-decoration-thickness: initial; text-decoration-style: initi=
al; text-decoration-color: initial;" data-mce-style=3D"margin: 0px; line-he=
ight: 16px; background: #fdfdfd; color: #000000; font-family: arial, helvet=
ica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 normal; text-decoration-thickness: initial; text-decoration-style: initial=
; text-decoration-color: initial;">----------------------------------------=
----------</p><p style=3D"margin: 0px; line-height: 16px; background: rgb(2=
53, 253, 253); color: rgb(0, 0, 0); font-family: arial, helvetica, sans-ser=
if; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text=
-decoration-thickness: initial; text-decoration-style: initial; text-decora=
tion-color: initial;" data-mce-style=3D"margin: 0px; line-height: 16px; bac=
kground: #fdfdfd; color: #000000; font-family: arial, helvetica, sans-serif=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial;">Device Address:</p><p style=3D"margin: 0px; line-height=
: 16px; background: rgb(253, 253, 253); color: rgb(0, 0, 0); font-family: a=
rial, helvetica, sans-serif; font-size: 16px; font-style: normal; font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-=
spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tran=
sform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
white-space: normal; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial;" data-mce-style=3D"margin: 0p=
x; line-height: 16px; background: #fdfdfd; color: #000000; font-family: ari=
al, helvetica, sans-serif; font-size: 16px; font-style: normal; font-varian=
t-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-sp=
acing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transf=
orm: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; wh=
ite-space: normal; text-decoration-thickness: initial; text-decoration-styl=
e: initial; text-decoration-color: initial;">serial: 33CB10C</p><p style=3D=
"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); color: rgb=
(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 16px; font=
-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; te=
xt-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: in=
itial; text-decoration-style: initial; text-decoration-color: initial;" dat=
a-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; color: =
#000000; font-family: arial, helvetica, sans-serif; font-size: 16px; font-s=
tyle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text=
-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; white-space: normal; text-decoration-thickness: init=
ial; text-decoration-style: initial; text-decoration-color: initial;">addr:=
<span>&nbsp;</span><span class=3D"Object" role=3D"link" id=3D"OBJ_PREFIX_DW=
T106_com_zimbra_phone" style=3D"color: #55516f; text-decoration: none; curs=
or: pointer;" data-mce-style=3D"color: #55516f; text-decoration: none; curs=
or: pointer;"><a href=3D"callto:192.168.10.2" onclick=3D"window.top.Com_Zim=
bra_Phone.unsetOnbeforeunload()" style=3D"color: #55516f; text-decoration: =
none; cursor: pointer;" data-mce-href=3D"callto:192.168.10.2" data-mce-styl=
e=3D"color: #55516f; text-decoration: none; cursor: pointer;">192.168.10.2<=
/a></span></p><p style=3D"margin: 0px; line-height: 16px; background: rgb(2=
53, 253, 253); color: rgb(0, 0, 0); font-family: arial, helvetica, sans-ser=
if; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text=
-decoration-thickness: initial; text-decoration-style: initial; text-decora=
tion-color: initial;" data-mce-style=3D"margin: 0px; line-height: 16px; bac=
kground: #fdfdfd; color: #000000; font-family: arial, helvetica, sans-serif=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial;">claimed: False</p><p style=3D"margin: 0px; line-height:=
 16px; background: rgb(253, 253, 253); color: rgb(0, 0, 0); font-family: ar=
ial, helvetica, sans-serif; font-size: 16px; font-style: normal; font-varia=
nt-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-s=
pacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-trans=
form: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; w=
hite-space: normal; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial;" data-mce-style=3D"margin: 0px=
; line-height: 16px; background: #fdfdfd; color: #000000; font-family: aria=
l, helvetica, sans-serif; font-size: 16px; font-style: normal; font-variant=
-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whi=
te-space: normal; text-decoration-thickness: initial; text-decoration-style=
: initial; text-decoration-color: initial;">fpga: 1G</p><p style=3D"margin:=
 0px; line-height: 16px; background: rgb(253, 253, 253); color: rgb(0, 0, 0=
); font-family: arial, helvetica, sans-serif; font-size: 16px; font-style: =
normal; font-variant-ligatures: normal; font-variant-caps: normal; font-wei=
ght: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inden=
t: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; white-space: normal; text-decoration-thickness: initial; t=
ext-decoration-style: initial; text-decoration-color: initial;" data-mce-st=
yle=3D"margin: 0px; line-height: 16px; background: #fdfdfd; color: #000000;=
 font-family: arial, helvetica, sans-serif; font-size: 16px; font-style: no=
rmal; font-variant-ligatures: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent:=
 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; white-space: normal; text-decoration-thickness: initial; tex=
t-decoration-style: initial; text-decoration-color: initial;">mgmt_addr:<sp=
an>&nbsp;</span><span class=3D"Object" role=3D"link" id=3D"OBJ_PREFIX_DWT10=
7_com_zimbra_phone" style=3D"color: #55516f; text-decoration: none; cursor:=
 pointer;" data-mce-style=3D"color: #55516f; text-decoration: none; cursor:=
 pointer;"><a href=3D"callto:192.168.10.2" onclick=3D"window.top.Com_Zimbra=
_Phone.unsetOnbeforeunload()" style=3D"color: #55516f; text-decoration: non=
e; cursor: pointer;" data-mce-href=3D"callto:192.168.10.2" data-mce-style=
=3D"color: #55516f; text-decoration: none; cursor: pointer;">192.168.10.2</=
a></span></p><p style=3D"margin: 0px; line-height: 16px; background: rgb(25=
3, 253, 253); color: rgb(0, 0, 0); font-family: arial, helvetica, sans-seri=
f; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-=
decoration-thickness: initial; text-decoration-style: initial; text-decorat=
ion-color: initial;" data-mce-style=3D"margin: 0px; line-height: 16px; back=
ground: #fdfdfd; color: #000000; font-family: arial, helvetica, sans-serif;=
 font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-de=
coration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;">name: ni-e320-33CB10C</p><p style=3D"margin: 0px; line-h=
eight: 16px; background: rgb(253, 253, 253); color: rgb(0, 0, 0); font-fami=
ly: arial, helvetica, sans-serif; font-size: 16px; font-style: normal; font=
-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; white-space: normal; text-decoration-thickness: initial; text-decorati=
on-style: initial; text-decoration-color: initial;" data-mce-style=3D"margi=
n: 0px; line-height: 16px; background: #fdfdfd; color: #000000; font-family=
: arial, helvetica, sans-serif; font-size: 16px; font-style: normal; font-v=
ariant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lett=
er-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-t=
ransform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; white-space: normal; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">product: e320</p><p style=
=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); color: =
rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 16px; f=
ont-style: normal; font-variant-ligatures: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial;" =
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; colo=
r: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px; fon=
t-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: i=
nitial; text-decoration-style: initial; text-decoration-color: initial;">ty=
pe: e3xx</p><p style=3D"margin: 0px; line-height: 16px; background: rgb(253=
, 253, 253); color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial;" data-mce-style=3D"margin: 0px; line-height: 16px; backg=
round: #fdfdfd; color: #000000; font-family: arial, helvetica, sans-serif; =
font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-v=
ariant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; =
text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-dec=
oration-thickness: initial; text-decoration-style: initial; text-decoration=
-color: initial;"><span style=3D"color: #000000; font-family: arial, helvet=
ica, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; let=
ter-spacing: normal; text-indent: 0px; text-transform: none; word-spacing: =
0px; white-space: normal; background-color: #ffffff; float: none; display: =
inline !important;" data-mce-style=3D"color: #000000; font-family: arial, h=
elvetica, sans-serif; font-size: 16px; font-style: normal; font-weight: 400=
; letter-spacing: normal; text-indent: 0px; text-transform: none; word-spac=
ing: 0px; white-space: normal; background-color: #ffffff; float: none; disp=
lay: inline !important;">----------------------------------------</span></p=
><p style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253)=
; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-ca=
ps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-alig=
n: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-t=
hickness: initial; text-decoration-style: initial; text-decoration-color: i=
nitial;" data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdf=
dfd; color: #000000; font-family: arial, helvetica, sans-serif; font-size: =
16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial;"><span style=3D"color: #000000; font-family: arial, helvetica, sans-s=
erif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing=
: normal; text-indent: 0px; text-transform: none; word-spacing: 0px; white-=
space: normal; background-color: #ffffff; float: none; display: inline !imp=
ortant;" data-mce-style=3D"color: #000000; font-family: arial, helvetica, s=
ans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-sp=
acing: normal; text-indent: 0px; text-transform: none; word-spacing: 0px; w=
hite-space: normal; background-color: #ffffff; float: none; display: inline=
 !important;"><br data-mce-bogus=3D"1"></span></p><p style=3D"margin: 0px; =
line-height: 16px; background: rgb(253, 253, 253); color: rgb(0, 0, 0); fon=
t-family: arial, helvetica, sans-serif; font-size: 16px; font-style: normal=
; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px=
; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-w=
idth: 0px; white-space: normal; text-decoration-thickness: initial; text-de=
coration-style: initial; text-decoration-color: initial;" data-mce-style=3D=
"margin: 0px; line-height: 16px; background: #fdfdfd; color: #000000; font-=
family: arial, helvetica, sans-serif; font-size: 16px; font-style: normal; =
font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; white-space: normal; text-decoration-thickness: initial; text-deco=
ration-style: initial; text-decoration-color: initial;"><span style=3D"colo=
r: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px; fon=
t-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px=
; text-transform: none; word-spacing: 0px; white-space: normal; background-=
color: #ffffff; float: none; display: inline !important;" data-mce-style=3D=
"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px=
; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent=
: 0px; text-transform: none; word-spacing: 0px; white-space: normal; backgr=
ound-color: #ffffff; float: none; display: inline !important;"><br data-mce=
-bogus=3D"1"></span></p><p style=3D"margin: 0px; line-height: 16px; backgro=
und: rgb(253, 253, 253); color: rgb(0, 0, 0); font-family: arial, helvetica=
, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wi=
dows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: no=
rmal; text-decoration-thickness: initial; text-decoration-style: initial; t=
ext-decoration-color: initial;" data-mce-style=3D"margin: 0px; line-height:=
 16px; background: #fdfdfd; color: #000000; font-family: arial, helvetica, =
sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wido=
ws: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: norm=
al; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial;">python3 --version</p><p style=3D"margin: 0px;=
 line-height: 16px; background: rgb(253, 253, 253); color: rgb(0, 0, 0); fo=
nt-family: arial, helvetica, sans-serif; font-size: 16px; font-style: norma=
l; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; white-space: normal; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial;" data-mce-style=
=3D"margin: 0px; line-height: 16px; background: #fdfdfd; color: #000000; fo=
nt-family: arial, helvetica, sans-serif; font-size: 16px; font-style: norma=
l; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; white-space: normal; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial;">Python 3.8.10</p=
><p style=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253)=
; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-ca=
ps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-alig=
n: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-t=
hickness: initial; text-decoration-style: initial; text-decoration-color: i=
nitial;" data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdf=
dfd; color: #000000; font-family: arial, helvetica, sans-serif; font-size: =
16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial;"><span style=3D"color: #000000; font-family: arial, helvetica, sans-s=
erif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing=
: normal; text-indent: 0px; text-transform: none; word-spacing: 0px; white-=
space: normal; background-color: #ffffff; float: none; display: inline !imp=
ortant;" data-mce-style=3D"color: #000000; font-family: arial, helvetica, s=
ans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-sp=
acing: normal; text-indent: 0px; text-transform: none; word-spacing: 0px; w=
hite-space: normal; background-color: #ffffff; float: none; display: inline=
 !important;">----------------------------------------</span></p><p style=
=3D"margin: 0px; line-height: 16px; background: rgb(253, 253, 253); color: =
rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 16px; f=
ont-style: normal; font-variant-ligatures: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial;" =
data-mce-style=3D"margin: 0px; line-height: 16px; background: #fdfdfd; colo=
r: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px; fon=
t-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: i=
nitial; text-decoration-style: initial; text-decoration-color: initial;">g+=
+ --version</p><p style=3D"margin: 0px; line-height: 16px; background: rgb(=
253, 253, 253); color: rgb(0, 0, 0); font-family: arial, helvetica, sans-se=
rif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial;" data-mce-style=3D"margin: 0px; line-height: 16px; ba=
ckground: #fdfdfd; color: #000000; font-family: arial, helvetica, sans-seri=
f; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-=
decoration-thickness: initial; text-decoration-style: initial; text-decorat=
ion-color: initial;">g++ (Ubuntu 9.4.0-1ubuntu1~<span class=3D"Object" role=
=3D"link" id=3D"OBJ_PREFIX_DWT108_com_zimbra_phone" style=3D"color: #55516f=
; text-decoration: none; cursor: pointer;" data-mce-style=3D"color: #55516f=
; text-decoration: none; cursor: pointer;"><a href=3D"callto:20.04.2) 9.4.0=
" onclick=3D"window.top.Com_Zimbra_Phone.unsetOnbeforeunload()" style=3D"co=
lor: #55516f; text-decoration: none; cursor: pointer;" data-mce-href=3D"cal=
lto:20.04.2) 9.4.0" data-mce-style=3D"color: #55516f; text-decoration: none=
; cursor: pointer;">20.04.2) 9.4.0</a></span></p></div></div></div></div></=
body></html>
--=_aca3fe60-0aea-4e94-a5b2-7a221ca8aeef--

--===============2019671726929304760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2019671726929304760==--
