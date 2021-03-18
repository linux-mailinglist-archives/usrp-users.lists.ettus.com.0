Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1785E3403C8
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 11:48:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BBCD3838C9
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 06:48:41 -0400 (EDT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id D082A3832D4
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 06:47:39 -0400 (EDT)
Received: from SPMA-01.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 491CA7E0753_532FCAB
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 10:47:38 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-01.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id E767E7E4150_532FC9F
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 10:47:37 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (172.26.26.143) by
 ex-05.tubit.win.tu-berlin.de (172.26.26.145) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Thu, 18 Mar 2021 11:47:37 +0100
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0792.010;
 Thu, 18 Mar 2021 11:47:37 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc error at building graph and setting sample rate
Thread-Index: AQHXG+QaYh0cMdV5fUCtbn1DRBl+vA==
Date: Thu, 18 Mar 2021 10:47:37 +0000
Message-ID: <e29bc7e556334d1f9b5af4128ab9a9cf@campus.tu-berlin.de>
Accept-Language: zh-CN, de-DE, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:content-type:mime-version; s=dkim-tub; bh=EuaqLyfhAiskaM4HnQ0tstu2kETja0eoNRRcgNUaCH0=; b=hFGEz4ZyRFcVEzTNhnIn7+uHHecNpiDWoyIEv+wEZnNDuzXPNL0uBCi4UlcXkJHQCO3YXJQcuIC0pYe2XyDSHW7o5NPKOday743blcZFhWSJL2bpYdsT/yqv/78DoesTb+dp6+BILk+yKgIWTQ6hyDru5yrp3llhDphhRt+FX9Q=
Message-ID-Hash: LMSZ4VJLJR6B6SI3VZXGJFRUDBONXH5K
X-Message-ID-Hash: LMSZ4VJLJR6B6SI3VZXGJFRUDBONXH5K
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc error at building graph and setting sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LMSZ4VJLJR6B6SI3VZXGJFRUDBONXH5K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2178375308240257474=="

--===============2178375308240257474==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_e29bc7e556334d1f9b5af4128ab9a9cfcampustuberlinde_"

--_000_e29bc7e556334d1f9b5af4128ab9a9cfcampustuberlinde_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

RGVhciBtYWRhbSBhbmQgc2lyIGZyb20gRXR0dXMgdGVhbSwNCg0KDQpJIGFtIHVzaW5nIFgzMTAg
d2l0aCAyIENCWDEyMCBhbmQgVUhEIG1haW4gYnJhbmNoIGZvciByZm5vYyB3aXRoIGZwZ2EgaW1h
Z2UgdXNycF94MzEwX2ZwZ2FfWEcuYml0LiBNeSBnb2FsIGlzIHRvIGJ1aWxkIGEgbG9vcGJhY2sg
ZnJvbSB0eCBwb3J0IHRvIHJ4IHBvcnQsIGJ1dCBJIGhhdmUgc29tZSBwcm9ibGVtIHRvIGJ1aWxk
IGEgZ3JhcGguDQoNCg0KRm9yIGV4YW1wbGUgdG8gc2VuZCBmcm9tIFJGLUEgVHgvUnggcG9ydCB0
byBSRi1BIFJ4MiBwb3J0LCBJIHVzZWQgcGFyYW1ldGVyDQoNCiAgICAtLXR4LWJsb2NraWQ9JzAv
UmFkaW8jMCcgLS10eC1jaGFuPTAgLS1yeC1ibG9ja2lkPScwL1JhZGlvIzEnIC0tcngtY2hhbj0w
Ig0KDQoNCkkgdHJpZWQgdG8gY29ubmVjdDoNCg0KICAgIHR4X3N0cmVhbSA9PT4gMC9EVUMjMDow
ID09PiAwL1JhZGlvIzA6MA0KDQogICAgMC9SYWRpbyMwOjEgPT0+IDAvRERDIzA6MSA9PT4gcnhf
c3RyZWFtDQoNClRoZSAwL1NFUCBpcyBub3QgYSBibG9jayBzbyBJIHVzZSBzdHJlYW1lciBvbiBp
dHMgcG9zaXRpb24gaW4gY2hhaW4NCg0KQnV0IEkgZ290IGFuIGVycm9yOg0KICAgIFtFUlJPUl0g
W1JGTk9DOjpHUkFQSDo6REVUQUlMXSBOb2RlIDAvUmFkaW8jMGNhbm5vdCBoYW5kbGUgaXRzIGN1
cnJlbnQgdG9wb2xvZ3khICgxaW5wdXRzLCAxIG91dHB1dHMpDQogICAgRXJyb3I6IFJ1bnRpbWVF
cnJvcjogR3JhcGggdG9wb2xvZ3kgaXMgbm90IHZhbGlkIQ0KDQoNCkkgc2VlIHRoZSBkZWZhdWx0
IHBhcmFtZXRlcnMNCg0KICAgIC0tdHgtYmxvY2tpZD0nMC9SYWRpbyMwJyAtLXR4LWNoYW49MCAt
LXJ4LWJsb2NraWQ9JzAvUmFkaW8jMScgLS1yeC1jaGFuPTAiDQoNCg0KaW4gcmZub2NfcmFkaW9f
bG9vcGJhY2sgc2VlbXMgdG8gYnVpbGQgYSBjaGFpbiBsaWtlIHRoaXM6DQogICAgMC9SYWRpbyMx
OjA9PT4wL0REQyMxOjA9PT4wL1NFUCMyOjANCiAgICAwL1NFUCMwOjA9PT4wL0RVQyMwOjA9PT4w
L1JhZGlvIzA6MA0KICAgIDAvRERDIzE6MD09PjAvRFVDIzA6MA0KDQpJIGRvbid0IHVuZGVyc3Rh
bmQgd2h5IGFyZSAgMC9EREMjMTowIGFuZCAwL0RVQyMwOjAgY29ubmVjdGVkLg0KDQpBbHNvIEkg
Z2V0IGFuIGVycm9yIGF0IHNldHRpbmcgcmF0ZToNCiAgICBbV0FSTklOR10gWzAvUmFkaW8jMV0g
UmVxdWVzdGluZyBpbnZhbGlkIHNhbXBsaW5nIHJhdGUgZnJvbSBkZXZpY2U6IDEwIE1Iei4gQWN0
dWFsIHJhdGUgaXM6IDIwMCBNSHouDQoNCg0KYnkgdXNpbmc6DQoNCiAgICAgdWhkOjpyZm5vYzo6
cmFkaW9fY29udHJvbDo6c3B0ciByYWRpb19jdHJsID0gZ3JhcGgtPmdldF9ibG9jazx1aGQ6OnJm
bm9jOjpyYWRpb19jb250cm9sPihyYWRpb19jdHJsX2lkKQ0KDQogICAgIHJhZGlvX2N0cmwtPnNl
dF9yYXRlKHJ4X3JhdGUpDQoNCg0KQ291bGQgeW91IHBsZWFzZSBnaXZlIG1lIHNvbWUgYWR2aWNl
Pw0KDQoNClRoYW5rcyBpbiBhZHZhbmNlDQoNCg0KS2FzaW0NCg==

--_000_e29bc7e556334d1f9b5af4128ab9a9cfcampustuberlinde_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Dear madam and sir from Ettus team,</p>
<p><br>
</p>
<p>I am using X310 with 2 CBX120 and UHD main branch for rfnoc with<code> f=
pga image usrp_x310_fpga_XG.bit</code>. My goal is to build a loopback from=
 tx port to rx port, but I have some problem to build a graph.</p>
<p><br>
</p>
<p>For example to send from RF-A Tx/Rx port to RF-A Rx2 port, I used parame=
ter</p>
<div>&nbsp;&nbsp;&nbsp; --tx-blockid=3D'0/Radio#0' --tx-chan=3D0 --rx-block=
id=3D'0/Radio#1' --rx-chan=3D0&quot;</div>
<div><br>
</div>
<p></p>
<p><span style=3D"color: rgb(0, 0, 0);"></span>I tried to connect:<br>
</p>
<p>&nbsp;&nbsp;&nbsp; tx_stream =3D=3D&gt; 0/DUC#0:0 =3D=3D&gt; 0/Radio#0:0=
</p>
<p>&nbsp;&nbsp;&nbsp; <span>0/</span>Radio#0:1 =3D=3D&gt;&nbsp;<span>0/</sp=
an>DDC#0:1 =3D=3D&gt; rx_stream</p>
<p></p>
<div>The 0/SEP is not a block so I use streamer on its position in chain</d=
iv>
<div><br>
</div>
<div>But I got an error:<br>
</div>
<div>&nbsp;&nbsp;&nbsp; [ERROR] [RFNOC::GRAPH::DETAIL] Node 0/Radio#0cannot=
 handle its current topology! (1inputs, 1 outputs)<br>
<div>&nbsp;&nbsp;&nbsp; Error: RuntimeError: Graph topology is not valid!</=
div>
</div>
<br>
<p></p>
<p>I see the default parameters <br>
</p>
<p></p>
<div>&nbsp;&nbsp;&nbsp; --tx-blockid=3D'0/Radio#0' --tx-chan=3D0 --rx-block=
id=3D'0/Radio#1' --rx-chan=3D0&quot;</div>
<br>
<p></p>
in rfnoc_radio_loopback seems to build a chain like this:
<div>&nbsp;&nbsp;&nbsp; 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<span>=3D=3D&gt;0/SEP=
#2:0</span><br>
&nbsp;&nbsp;&nbsp; <span>0/SEP#0:0=3D=3D&gt;</span>0/DUC#0:0=3D=3D&gt;0/Rad=
io#0:0<br>
&nbsp;&nbsp;&nbsp; 0/DDC#1:0=3D=3D&gt;0/DUC#0:0</div>
<div><br>
</div>
<div>I don't understand why are&nbsp; <span>0/DDC#1:0 and 0/DUC#0:0 connect=
ed.</span></div>
<div><span><br>
</span></div>
<div><span>Also I get an error at setting rate:</span></div>
<div><span>&nbsp;&nbsp;&nbsp; <span>[WARNING] [0/Radio#1] Requesting invali=
d sampling rate from device: 10 MHz. Actual rate is: 200 MHz.</span></span>=
<br>
</div>
<p></p>
<p><br>
</p>
<p>by using:<br>
</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp; uhd::rfnoc::radio_control::sptr radio_ctrl =3D =
graph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(radio_ctrl_id)</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp; radio_ctrl-&gt;set_rate(rx_rate)</p>
<p><br>
</p>
<p>Could you please give me some advice?</p>
<p><br>
</p>
<p>Thanks in advance</p>
<p><br>
</p>
<p>Kasim<br>
</p>
</div>
</body>
</html>

--_000_e29bc7e556334d1f9b5af4128ab9a9cfcampustuberlinde_--

--===============2178375308240257474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2178375308240257474==--
