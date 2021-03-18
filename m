Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A465340485
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 12:24:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 87947383706
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 07:23:59 -0400 (EDT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 86B3E383690
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 07:23:49 -0400 (EDT)
Received: from SPMA-02.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 2A14D35E8B_533844B
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 11:23:48 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-02.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id B947F33A02_533843F
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 11:23:47 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (130.149.6.143) by
 ex-03.tubit.win.tu-berlin.de (130.149.6.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Thu, 18 Mar 2021 12:23:47 +0100
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0792.010;
 Thu, 18 Mar 2021 12:23:47 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc error at building graph and setting sample rate
Thread-Index: AQHXG+QaYh0cMdV5fUCtbn1DRBl+vKqJmko5
Date: Thu, 18 Mar 2021 11:23:47 +0000
Message-ID: <aefaa146fef24a4694d98132d439863b@campus.tu-berlin.de>
References: <e29bc7e556334d1f9b5af4128ab9a9cf@campus.tu-berlin.de>
In-Reply-To: <e29bc7e556334d1f9b5af4128ab9a9cf@campus.tu-berlin.de>
Accept-Language: zh-CN, de-DE, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=dkim-tub; bh=OSaI38vXLePuHqKODgJ/TCqPMSU6aQ3A3Wh1APdc3Jc=; b=Q+fnkq+hlZH3PcnCGyY6r2Roh2J49qnpQbnN9T6dO5fe8MW1U0X47yLUGcjIXC5Ga4nD7nrQINkJ8TnzJAS1M8HNfY2TE/YXfx2X7hefLck536zkVDu1aUz65NZxdpGPr52SZJlqpQdlIKqC1sMZ667a5Sq5eXpijHr8ic18m2Y=
Message-ID-Hash: HIZ3MAHJHBJODYJT6IVYGTYDUVMDC5YB
X-Message-ID-Hash: HIZ3MAHJHBJODYJT6IVYGTYDUVMDC5YB
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?eucgb2312_cn?q?=B4=F0=B8=B4=3A_rfnoc_error_at_building_graph_and_setting_sample_rate?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HIZ3MAHJHBJODYJT6IVYGTYDUVMDC5YB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6815816820181211672=="

--===============6815816820181211672==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_aefaa146fef24a4694d98132d439863bcampustuberlinde_"

--_000_aefaa146fef24a4694d98132d439863bcampustuberlinde_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

QnR3LCBpcyBpdCBwb3NzaWJsZSB0byBzZXQgdXAgcnhfcmF0ZSBhbmQgdHhfcmF0ZSBzZXBhcmF0
ZWx5IGFzIHdpdGggdWhkIHdlIGhhdmUgdXNycC0+c2V0X3J4X3JhdGUoKSBhbmQgdXNycC0+c2V0
X3R4X3JhdGUoKT8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCreivP7Iyzog
Q2hhbmcsIEthaXhpbg0Kt6LLzcqxvOQ6IDIwMjHE6jPUwjE4yNUgMTE6NDc6MzcNCsrVvP7Iyzog
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCtb3zOI6IHJmbm9jIGVycm9yIGF0IGJ1aWxkaW5n
IGdyYXBoIGFuZCBzZXR0aW5nIHNhbXBsZSByYXRlDQoNCg0KRGVhciBtYWRhbSBhbmQgc2lyIGZy
b20gRXR0dXMgdGVhbSwNCg0KDQpJIGFtIHVzaW5nIFgzMTAgd2l0aCAyIENCWDEyMCBhbmQgVUhE
IG1haW4gYnJhbmNoIGZvciByZm5vYyB3aXRoIGZwZ2EgaW1hZ2UgdXNycF94MzEwX2ZwZ2FfWEcu
Yml0LiBNeSBnb2FsIGlzIHRvIGJ1aWxkIGEgbG9vcGJhY2sgZnJvbSB0eCBwb3J0IHRvIHJ4IHBv
cnQsIGJ1dCBJIGhhdmUgc29tZSBwcm9ibGVtIHRvIGJ1aWxkIGEgZ3JhcGguDQoNCg0KRm9yIGV4
YW1wbGUgdG8gc2VuZCBmcm9tIFJGLUEgVHgvUnggcG9ydCB0byBSRi1BIFJ4MiBwb3J0LCBJIHVz
ZWQgcGFyYW1ldGVyDQoNCiAgICAtLXR4LWJsb2NraWQ9JzAvUmFkaW8jMCcgLS10eC1jaGFuPTAg
LS1yeC1ibG9ja2lkPScwL1JhZGlvIzEnIC0tcngtY2hhbj0wIg0KDQoNCkkgdHJpZWQgdG8gY29u
bmVjdDoNCg0KICAgIHR4X3N0cmVhbSA9PT4gMC9EVUMjMDowID09PiAwL1JhZGlvIzA6MA0KDQog
ICAgMC9SYWRpbyMwOjEgPT0+IDAvRERDIzA6MSA9PT4gcnhfc3RyZWFtDQoNClRoZSAwL1NFUCBp
cyBub3QgYSBibG9jayBzbyBJIHVzZSBzdHJlYW1lciBvbiBpdHMgcG9zaXRpb24gaW4gY2hhaW4N
Cg0KQnV0IEkgZ290IGFuIGVycm9yOg0KICAgIFtFUlJPUl0gW1JGTk9DOjpHUkFQSDo6REVUQUlM
XSBOb2RlIDAvUmFkaW8jMGNhbm5vdCBoYW5kbGUgaXRzIGN1cnJlbnQgdG9wb2xvZ3khICgxaW5w
dXRzLCAxIG91dHB1dHMpDQogICAgRXJyb3I6IFJ1bnRpbWVFcnJvcjogR3JhcGggdG9wb2xvZ3kg
aXMgbm90IHZhbGlkIQ0KDQoNCkkgc2VlIHRoZSBkZWZhdWx0IHBhcmFtZXRlcnMNCg0KICAgIC0t
dHgtYmxvY2tpZD0nMC9SYWRpbyMwJyAtLXR4LWNoYW49MCAtLXJ4LWJsb2NraWQ9JzAvUmFkaW8j
MScgLS1yeC1jaGFuPTAiDQoNCg0KaW4gcmZub2NfcmFkaW9fbG9vcGJhY2sgc2VlbXMgdG8gYnVp
bGQgYSBjaGFpbiBsaWtlIHRoaXM6DQogICAgMC9SYWRpbyMxOjA9PT4wL0REQyMxOjA9PT4wL1NF
UCMyOjANCiAgICAwL1NFUCMwOjA9PT4wL0RVQyMwOjA9PT4wL1JhZGlvIzA6MA0KICAgIDAvRERD
IzE6MD09PjAvRFVDIzA6MA0KDQpJIGRvbid0IHVuZGVyc3RhbmQgd2h5IGFyZSAgMC9EREMjMTow
IGFuZCAwL0RVQyMwOjAgY29ubmVjdGVkLg0KDQpBbHNvIEkgZ2V0IGFuIGVycm9yIGF0IHNldHRp
bmcgcmF0ZToNCiAgICBbV0FSTklOR10gWzAvUmFkaW8jMV0gUmVxdWVzdGluZyBpbnZhbGlkIHNh
bXBsaW5nIHJhdGUgZnJvbSBkZXZpY2U6IDEwIE1Iei4gQWN0dWFsIHJhdGUgaXM6IDIwMCBNSHou
DQoNCg0KYnkgdXNpbmc6DQoNCiAgICAgdWhkOjpyZm5vYzo6cmFkaW9fY29udHJvbDo6c3B0ciBy
YWRpb19jdHJsID0gZ3JhcGgtPmdldF9ibG9jazx1aGQ6OnJmbm9jOjpyYWRpb19jb250cm9sPihy
YWRpb19jdHJsX2lkKQ0KDQogICAgIHJhZGlvX2N0cmwtPnNldF9yYXRlKHJ4X3JhdGUpDQoNCg0K
Q291bGQgeW91IHBsZWFzZSBnaXZlIG1lIHNvbWUgYWR2aWNlPw0KDQoNClRoYW5rcyBpbiBhZHZh
bmNlDQoNCg0KS2FzaW0NCg==

--_000_aefaa146fef24a4694d98132d439863bcampustuberlinde_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Btw, is it possible to set up rx_rate and tx_rate separately as with uhd=
 we have usrp-&gt;set_rx_rate() and usrp-&gt;set_tx_rate()?<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Chang, =
Kaixin<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2021=C4=EA3=D4=C218=C8=D5 11:47:37<br>
<b>=CA=D5=BC=FE=C8=CB:</b> usrp-users@lists.ettus.com<br>
<b>=D6=F7=CC=E2:</b> rfnoc error at building graph and setting sample rate<=
/font>
<div>&nbsp;</div>
</div>
<div>
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
</div>
</body>
</html>

--_000_aefaa146fef24a4694d98132d439863bcampustuberlinde_--

--===============6815816820181211672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6815816820181211672==--
