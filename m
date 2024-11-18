Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5802B9D0A18
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2024 08:19:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6E50385B80
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2024 02:19:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731914364; bh=Sn5Hz7oxz2acpRNX5PWqDbNf/PJKXUevwvzPbqlJVrg=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=vpdNNvgv9ugbVBHevVitGIkCZH6sK/PEp4HqbgVjtdnUPgs2Ilnqf0N4/BrkTdvdS
	 uwXUxuEIRIpcCfEDMKgs2z6GynVT0jR7TIuct8D/sZ6BAyWBZznQSaO2jPLauVzfDe
	 kT9450zh/cUeVPD9R6LGINv9pAu2H6B5zTTRLp/D24kO6QmhPkPaT9338ERqDbtLAj
	 GYZQsK3QxQOSRb6bes6gpsAwKsBGyQpzY44PBN5C0lK0K2q/srJUM5d7/i/7VmgkYW
	 Rfg6iJQBHCWVkACAsUhAoKjYbLQTm9X9fbNDlwYOwiE6MlAM8Tpo9J5/8323g99vpD
	 sDoKgzU1sYNHg==
Received: from sfmail01.tubitak.gov.tr (sfmail01.tubitak.gov.tr [193.140.80.192])
	by mm2.emwd.com (Postfix) with ESMTPS id D8BDC385ACF
	for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2024 02:19:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=tubitak.gov.tr header.i=@tubitak.gov.tr header.b="ElIMFSC4";
	dkim-atps=neutral
X-ASG-Debug-ID: 1731914342-0f24751a881e112b0001-5wTQH4
Received: from mta02.tubitak.gov.tr (mta02.tubitak.gov.tr [193.140.13.216]) by sfmail01.tubitak.gov.tr with ESMTP id 4wfuGeJ9xnpBGtM1 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO) for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2024 10:19:02 +0300 (EAT)
X-Barracuda-Envelope-From: hamdusena.bilgi@tubitak.gov.tr
X-Barracuda-Effective-Source-IP: mta02.tubitak.gov.tr[193.140.13.216]
X-Barracuda-Apparent-Source-IP: 193.140.13.216
Received: from localhost (localhost [127.0.0.1])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id 235BC21A6F9
	for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2024 10:19:02 +0300 (+03)
Received: from mta02.tubitak.gov.tr ([127.0.0.1])
 by localhost (mta02.tubitak.gov.tr [127.0.0.1]) (amavis, port 10032)
 with ESMTP id mahAzhj-XDyv for <usrp-users@lists.ettus.com>;
 Mon, 18 Nov 2024 10:19:02 +0300 (+03)
Received: from localhost (localhost [127.0.0.1])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id E685421A6DA
	for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2024 10:19:01 +0300 (+03)
DKIM-Filter: OpenDKIM Filter v2.10.3 mta02.tubitak.gov.tr E685421A6DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tubitak.gov.tr;
	s=3CB53094-0179-11EB-B19A-889BD1D29365; t=1731914341;
	bh=mRaGtwoPtsu1XQegpsL0Exd54jYpagqJBDGlncr47MU=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=ElIMFSC4PGYZKnTNxjp79gbPeq2oyubzvqyI8P3vNQVGpjq/hR5zFHXMuHmE196rJ
	 6o2FROoXn4hIWiq05FnJ8bp1DsDKux5Kago7dBybgRpx9HSHJL4tnQzF3KnkGVlABD
	 9uWR2F9i0MQNMr45gPRXDPR4stE3ax0zHLUDi+KuEhbFh3Xj2u3sLNDqsHhyHG16Yx
	 VoT0ZYpzknpHfEOrh5Z8Jo1cO+c2Da00p2cBQiC5fJn6DouACHEKmYai26siLWxdcD
	 +KBgr54nNL9hYBbyUmCJ/5EH281fTSwmIcgVs+BKIsKCh+L57uSXxMsSXUpjEWVww5
	 qPDTZRz0hC26g==
X-Virus-Scanned: amavis at mta02.tubitak.gov.tr
Received: from mta02.tubitak.gov.tr ([127.0.0.1])
 by localhost (mta02.tubitak.gov.tr [127.0.0.1]) (amavis, port 10026)
 with ESMTP id y4NMj_UixLco for <usrp-users@lists.ettus.com>;
 Mon, 18 Nov 2024 10:19:01 +0300 (+03)
Received: from mail03.tubitak.gov.tr (mail03.tubitak.gov.tr [10.250.10.121])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id BCDC921A6F9
	for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2024 10:19:01 +0300 (+03)
Date: Mon, 18 Nov 2024 10:19:01 +0300 (TRT)
To: usrp-users@lists.ettus.com
Message-ID: <1874812005.12389586.1731914341699.JavaMail.zimbra@tubitak.gov.tr>
MIME-Version: 1.0
X-ASG-Orig-Subj: Runtime error
Thread-Index: WFrmbsYOirDr/NbxmR2ZeEYms9zllQ==
Thread-Topic: Runtime error
X-Barracuda-Connect: mta02.tubitak.gov.tr[193.140.13.216]
X-Barracuda-Start-Time: 1731914342
X-Barracuda-Encrypted: TLS_AES_256_GCM_SHA384
X-Barracuda-URL: https://193.140.80.192:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at tubitak.gov.tr
X-Barracuda-Scan-Msg-Size: 13597
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: SPAM GLOBAL 1.0000 1.0000 4.3430
X-Barracuda-Spam-Score: 4.34
X-Barracuda-Spam-Status: No, SCORE=4.34 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.133356
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Message-ID-Hash: XYJUCZL7LJI6AZUAY42BGATCNJ7HRB2G
X-Message-ID-Hash: XYJUCZL7LJI6AZUAY42BGATCNJ7HRB2G
X-MailFrom: hamdusena.bilgi@tubitak.gov.tr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Runtime error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XYJUCZL7LJI6AZUAY42BGATCNJ7HRB2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?b?SGFtZMO8c2VuYSBCxLBMR8SwIChCxLBMR0VNKSB2aWEgVVNSUC11c2Vycw==?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?B?SGFtZMO8c2VuYSBCxLBMR8SwIChCxLBMR0VNKQ==?= <hamdusena.bilgi@tubitak.gov.tr>
Content-Type: multipart/mixed; boundary="===============8918949066815796995=="

--===============8918949066815796995==
Content-Type: multipart/alternative;
	boundary="=_7eb3a4da-a08b-456d-b519-f28460c1c578"

--=_7eb3a4da-a08b-456d-b519-f28460c1c578
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello dear usrp users, 

After a succesfull uhd_usrp_probe when trying to run the Ettus E320 on Gnu Radio I get the following error message: 



QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root' 

Qt GUI: Could not restore geometry: restoreGeometry(self, Union[QByteArray, bytes, bytearray]): argument 1 has unexpected type 'NoneType' 

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.0-release 

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=e3xx,product=e320,serial=33CB10C,name=ni-e320-33CB10C,fpga=1G,claimed=False,addr=192.168.10.2 

Traceback (most recent call last): 

File "/home/user/calismalar/uhd_deneme.py", line 190, in <module> 

main() 

File "/home/user/calismalar/uhd_deneme.py", line 168, in main 

tb = top_block_cls() 

File "/home/user/calismalar/uhd_deneme.py", line 85, in __init__ 

self.uhd_usrp_source_0 = uhd.usrp_source( 

RuntimeError: rpc::timeout: Timeout of 2000ms while calling RPC function 'get_num_xbars' 







I updated GNU Radio from 3.8 to 3.10. The versions on the device are: 




gnuradio-config-info -v 

3.10.7.0 

---------------------------------------- 

uhd_config_info --version 

UHD 4.7.0.0-0-ga5ed1872 

---------------------------------------- 

uhd_find_devices 

[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.7.0.0-0-ga5ed1872 

-------------------------------------------------- 

-- UHD Device 0 

-------------------------------------------------- 

Device Address: 

serial: 33CB10C 

addr: 192.168.10.2 

claimed: False 

fpga: 1G 

mgmt_addr: 192.168.10.2 

name: ni-e320-33CB10C 

product: e320 

type: e3xx 

---------------------------------------- 

python3 --version 

Python 3.8.10 

---------------------------------------- 

g++ --version 

g++ (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0 










While GNU Radio is running, it detects the UHD version as UHD_3.15.0.0-release . What could be the reason for this, and how can I resolve it? 

--=_7eb3a4da-a08b-456d-b519-f28460c1c578
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: arial, helvetica, sans-serif; font-s=
ize: 12pt; color: #000000"><style type=3D"text/css" scoped=3D"">
=09=09@page { size: 21cm 29.7cm; margin: 2cm }
=09=09p { margin-bottom: 0.25cm; line-height: 115%; background: transparent=
 }
=09</style><style type=3D"text/css" scoped=3D"">
=09=09@page { size: 21cm 29.7cm; margin: 2cm }
=09=09p { margin-bottom: 0.25cm; line-height: 115%; background: transparent=
 }
=09</style><div><span style=3D"color: #000000; font-family: aptos, aptos_em=
beddedfont, aptos_msfontservice, calibri, helvetica, sans-serif; font-size:=
 16px; font-style: normal; font-variant-ligatures: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align=
: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: =
#fdfdfd; text-decoration-thickness: initial; text-decoration-style: initial=
; text-decoration-color: initial; display: inline !important; float: none;"=
 data-mce-style=3D"color: #000000; font-family: aptos, aptos_embeddedfont, =
aptos_msfontservice, calibri, helvetica, sans-serif; font-size: 16px; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: normal; background-color: #fdfdfd; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial; display: inline !important; float: none;">Hello dear =
usrp users,</span></div><div style=3D"clear: both;" data-mce-style=3D"clear=
: both;"><br data-mce-bogus=3D"1"></div><div style=3D"clear: both;" data-mc=
e-style=3D"clear: both;">After a succesfull uhd_usrp_probe when trying to r=
un the Ettus E320 on Gnu Radio I get the following error message:</div><div=
 style=3D"clear: both;" data-mce-style=3D"clear: both;"><br data-mce-bogus=
=3D"1"></div><div style=3D"clear: both;" data-mce-style=3D"clear: both;"><p=
 style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margin: 0px; l=
ine-height: 100%;">QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '=
/tmp/runtime-root'</p><p style=3D"margin: 0px; line-height: 100%;" data-mce=
-style=3D"margin: 0px; line-height: 100%;">Qt GUI: Could not restore geomet=
ry: restoreGeometry(self, Union[QByteArray, bytes, bytearray]): argument 1 =
has unexpected type 'NoneType'</p><p style=3D"margin: 0px; line-height: 100=
%;" data-mce-style=3D"margin: 0px; line-height: 100%;">[INFO] [UHD] linux; =
GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.0-release</p><p style=3D"ma=
rgin: 0px; line-height: 100%;" data-mce-style=3D"margin: 0px; line-height: =
100%;">[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_a=
ddr=3D192.168.10.2,type=3De3xx,product=3De320,serial=3D33CB10C,name=3Dni-e3=
20-33CB10C,fpga=3D1G,claimed=3DFalse,addr=3D192.168.10.2</p><p style=3D"mar=
gin: 0px; line-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 1=
00%;">Traceback (most recent call last):</p><p style=3D"margin: 0px; line-h=
eight: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;">File "/hom=
e/user/calismalar/uhd_deneme.py", line 190, in &lt;module&gt;</p><p style=
=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margin: 0px; line-he=
ight: 100%;">main()</p><p style=3D"margin: 0px; line-height: 100%;" data-mc=
e-style=3D"margin: 0px; line-height: 100%;">File "/home/user/calismalar/uhd=
_deneme.py", line 168, in main</p><p style=3D"margin: 0px; line-height: 100=
%;" data-mce-style=3D"margin: 0px; line-height: 100%;">tb =3D top_block_cls=
()</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margin=
: 0px; line-height: 100%;">File "/home/user/calismalar/uhd_deneme.py", line=
 85, in __init__</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-s=
tyle=3D"margin: 0px; line-height: 100%;">self.uhd_usrp_source_0 =3D uhd.usr=
p_source(</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D=
"margin: 0px; line-height: 100%;">RuntimeError: rpc::timeout: Timeout of 20=
00ms while calling RPC function 'get_num_xbars'</p><p style=3D"margin: 0px;=
 line-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;"><br=
></p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margin:=
 0px; line-height: 100%;"><br></p><p style=3D"margin: 0px; line-height: 100=
%;" data-mce-style=3D"margin: 0px; line-height: 100%;">I updated GNU Radio =
from 3.8 to 3.10. The versions on the device are:</p><p style=3D"margin: 0p=
x; line-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;"><=
br></p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margi=
n: 0px; line-height: 100%;">gnuradio-config-info -v</p><p style=3D"margin: =
0px; line-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;"=
>3.10.7.0</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D=
"margin: 0px; line-height: 100%;">----------------------------------------<=
/p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margin: 0=
px; line-height: 100%;">uhd_config_info --version</p><p style=3D"margin: 0p=
x; line-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;">U=
HD 4.7.0.0-0-ga5ed1872</p><p style=3D"margin: 0px; line-height: 100%;" data=
-mce-style=3D"margin: 0px; line-height: 100%;"><span style=3D"color: #00000=
0; font-family: arial, helvetica, sans-serif; font-size: 16px; font-style: =
normal; font-variant-ligatures: normal; font-variant-caps: normal; font-wei=
ght: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inden=
t: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; white-space: normal; background-color: #ffffff; text-decor=
ation-thickness: initial; text-decoration-style: initial; text-decoration-c=
olor: initial; display: inline !important; float: none;" data-mce-style=3D"=
color: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: nor=
mal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: star=
t; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; white-space: normal; background-color: #fffff=
f; text-decoration-thickness: initial; text-decoration-style: initial; text=
-decoration-color: initial; display: inline !important; float: none;">-----=
-----------------------------------</span></p><p style=3D"margin: 0px; line=
-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;">uhd_find=
_devices</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"=
margin: 0px; line-height: 100%;">[INFO] [UHD] linux; GNU C++ version 9.4.0;=
 Boost_107100; UHD_4.7.0.0-0-ga5ed1872</p><p style=3D"margin: 0px; line-hei=
ght: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;">------------=
--------------------------------------</p><p style=3D"margin: 0px; line-hei=
ght: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;">-- UHD Devic=
e 0</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margi=
n: 0px; line-height: 100%;">-----------------------------------------------=
---</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margi=
n: 0px; line-height: 100%;">Device Address:</p><p style=3D"margin: 0px; lin=
e-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;">serial:=
 33CB10C</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"=
margin: 0px; line-height: 100%;">addr: 192.168.10.2</p><p style=3D"margin: =
0px; line-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;"=
>claimed: False</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-st=
yle=3D"margin: 0px; line-height: 100%;">fpga: 1G</p><p style=3D"margin: 0px=
; line-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;">mg=
mt_addr: 192.168.10.2</p><p style=3D"margin: 0px; line-height: 100%;" data-=
mce-style=3D"margin: 0px; line-height: 100%;">name: ni-e320-33CB10C</p><p s=
tyle=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margin: 0px; lin=
e-height: 100%;">product: e320</p><p style=3D"margin: 0px; line-height: 100=
%;" data-mce-style=3D"margin: 0px; line-height: 100%;">type: e3xx</p><p sty=
le=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margin: 0px; line-=
height: 100%;"><span style=3D"color: #000000; font-family: arial, helvetica=
, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wi=
dows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: no=
rmal; background-color: #ffffff; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial; display: inline !=
important; float: none;" data-mce-style=3D"color: #000000; font-family: ari=
al, helvetica, sans-serif; font-size: 16px; font-style: normal; font-varian=
t-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-sp=
acing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transf=
orm: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; wh=
ite-space: normal; background-color: #ffffff; text-decoration-thickness: in=
itial; text-decoration-style: initial; text-decoration-color: initial; disp=
lay: inline !important; float: none;">-------------------------------------=
---</span></p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=
=3D"margin: 0px; line-height: 100%;">python3 --version</p><p style=3D"margi=
n: 0px; line-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 100=
%;">Python 3.8.10</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-=
style=3D"margin: 0px; line-height: 100%;"><span style=3D"color: #000000; fo=
nt-family: arial, helvetica, sans-serif; font-size: 16px; font-style: norma=
l; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; white-space: normal; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial; display: inline !important; float: none;" data-mce-style=3D"color=
: #000000; font-family: arial, helvetica, sans-serif; font-size: 16px; font=
-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; te=
xt-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; te=
xt-decoration-thickness: initial; text-decoration-style: initial; text-deco=
ration-color: initial; display: inline !important; float: none;">----------=
------------------------------</span></p><p style=3D"margin: 0px; line-heig=
ht: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;">g++ --version=
</p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margin: =
0px; line-height: 100%;">g++ (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0</p><p st=
yle=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margin: 0px; line=
-height: 100%;"><br></p><p style=3D"margin: 0px; line-height: 100%;" data-m=
ce-style=3D"margin: 0px; line-height: 100%;"><br></p><p style=3D"margin: 0p=
x; line-height: 100%;" data-mce-style=3D"margin: 0px; line-height: 100%;"><=
br></p><p style=3D"margin: 0px; line-height: 100%;" data-mce-style=3D"margi=
n: 0px; line-height: 100%;">While GNU Radio is running, it detects the UHD =
version as <code>UHD_3.15.0.0-release</code>. What could be the reason for =
this, and how can I resolve it?</p></div></div></body></html>
--=_7eb3a4da-a08b-456d-b519-f28460c1c578--

--===============8918949066815796995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8918949066815796995==--
