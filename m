Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5F73419BB
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 11:17:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C93A383719
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 06:17:31 -0400 (EDT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id B8AF338184A
	for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 06:16:25 -0400 (EDT)
Received: from SPMA-01.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 2E2457E07EC_5479F8B
	for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 10:16:24 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-01.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id 9CDCE7E470D_5479F7F
	for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 10:16:23 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (172.26.26.143) by
 ex-04.tubit.win.tu-berlin.de (172.26.26.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Fri, 19 Mar 2021 11:16:23 +0100
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0792.010;
 Fri, 19 Mar 2021 11:16:23 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc error at building graph and setting sample rate
Thread-Index: AQHXG+QaYh0cMdV5fUCtbn1DRBl+vKqJmko5gAF/VR0=
Date: Fri, 19 Mar 2021 10:16:23 +0000
Message-ID: <c92abad63ec64dc4a3777fa2a918c2f4@campus.tu-berlin.de>
References: <e29bc7e556334d1f9b5af4128ab9a9cf@campus.tu-berlin.de>,<aefaa146fef24a4694d98132d439863b@campus.tu-berlin.de>
In-Reply-To: <aefaa146fef24a4694d98132d439863b@campus.tu-berlin.de>
Accept-Language: en-GB, zh-CN, de-DE, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=dkim-tub; bh=kVxfDi5eBwR9HG/Fmq0hMtdS/SsDyxCNIgVWFdy3V8s=; b=lqDRhreAI3G5qFk5fSNiTetJ09YKRThx8pYWfBfZl9yCOhC9lLC9EcQQldVJ8BCmIJB+zBh5tjH/im5wecECuUkETR6jtha1NNGh5D9KMyb5LJbeDh91BeeKABaBkJC1vFmYIek9xpcGZNETurgVUaKrUf6fHxgUXKRCG/3oJzA=
Message-ID-Hash: AHPRXPAXGWLLLY2VIO73E6X7A7ILRNR6
X-Message-ID-Hash: AHPRXPAXGWLLLY2VIO73E6X7A7ILRNR6
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc error at building graph and setting sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHPRXPAXGWLLLY2VIO73E6X7A7ILRNR6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8048460424264187750=="

--===============8048460424264187750==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_c92abad63ec64dc4a3777fa2a918c2f4campustuberlinde_"

--_000_c92abad63ec64dc4a3777fa2a918c2f4campustuberlinde_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

d2hlbiBJIHVzZSByYWRpb19jdHJsLT5zZXRfcmF0ZSgpIG9mIHJmbm9jIGMrKyBhcGksIEkgZ2V0
IHRoZSBlcnJvciwNCg0KDQpTZXR0aW5nIFJYIFJhdGU6IDEwLjAwMDAwMCBNc3BzLi4uDQpBY3R1
YWwgUlggUmF0ZTogMjAwLjAwMDAwMCBNc3BzLi4uDQpbV0FSTklOR10gWzAvUmFkaW8jMV0gUmVx
dWVzdGluZyBpbnZhbGlkIHNhbXBsaW5nIHJhdGUgZnJvbSBkZXZpY2U6IDEwIE1Iei4gQWN0dWFs
IHJhdGUgaXM6IDIwMCBNSHouDQoNCg0KSSB1c2UgWDMxMCB3aXRoIDIgQ0JYMTIwIGRhdWdodGVy
Ym9hcmRzIGFuZCBJIGNhbiBzZXQgdGhlIHJ4IHJhdGUgdG8gMTBNSHogd2hlbiBJIHVzZSB1aGQg
NC4wIG11bHRpdXNycCBjbGFzcyBzZXRfcnhfcmF0ZSgpDQoNCg0KQ291bGQgeW91IGdpdmUgbWUg
c29tZSBtb3JlIGFkdmljZSBwbGVhc2U/DQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KRnJvbTogQ2hhbmcsIEthaXhpbg0KU2VudDogMTggTWFyY2ggMjAyMSAxMjoyMzo0
Nw0KVG86IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQpTdWJqZWN0OiC08Li0OiByZm5vYyBl
cnJvciBhdCBidWlsZGluZyBncmFwaCBhbmQgc2V0dGluZyBzYW1wbGUgcmF0ZQ0KDQoNCkJ0dywg
aXMgaXQgcG9zc2libGUgdG8gc2V0IHVwIHJ4X3JhdGUgYW5kIHR4X3JhdGUgc2VwYXJhdGVseSBh
cyB3aXRoIHVoZCB3ZSBoYXZlIHVzcnAtPnNldF9yeF9yYXRlKCkgYW5kIHVzcnAtPnNldF90eF9y
YXRlKCk/DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQq3orz+yMs6IENoYW5n
LCBLYWl4aW4NCreiy83KsbzkOiAyMDIxxOoz1MIxOMjVIDExOjQ3OjM3DQrK1bz+yMs6IHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tDQrW98ziOiByZm5vYyBlcnJvciBhdCBidWlsZGluZyBncmFw
aCBhbmQgc2V0dGluZyBzYW1wbGUgcmF0ZQ0KDQoNCkRlYXIgbWFkYW0gYW5kIHNpciBmcm9tIEV0
dHVzIHRlYW0sDQoNCg0KSSBhbSB1c2luZyBYMzEwIHdpdGggMiBDQlgxMjAgYW5kIFVIRCBtYWlu
IGJyYW5jaCBmb3IgcmZub2Mgd2l0aCBmcGdhIGltYWdlIHVzcnBfeDMxMF9mcGdhX1hHLmJpdC4g
TXkgZ29hbCBpcyB0byBidWlsZCBhIGxvb3BiYWNrIGZyb20gdHggcG9ydCB0byByeCBwb3J0LCBi
dXQgSSBoYXZlIHNvbWUgcHJvYmxlbSB0byBidWlsZCBhIGdyYXBoLg0KDQoNCkZvciBleGFtcGxl
IHRvIHNlbmQgZnJvbSBSRi1BIFR4L1J4IHBvcnQgdG8gUkYtQSBSeDIgcG9ydCwgSSB1c2VkIHBh
cmFtZXRlcg0KDQogICAgLS10eC1ibG9ja2lkPScwL1JhZGlvIzAnIC0tdHgtY2hhbj0wIC0tcngt
YmxvY2tpZD0nMC9SYWRpbyMxJyAtLXJ4LWNoYW49MCINCg0KDQpJIHRyaWVkIHRvIGNvbm5lY3Q6
DQoNCiAgICB0eF9zdHJlYW0gPT0+IDAvRFVDIzA6MCA9PT4gMC9SYWRpbyMwOjANCg0KICAgIDAv
UmFkaW8jMDoxID09PiAwL0REQyMwOjEgPT0+IHJ4X3N0cmVhbQ0KDQpUaGUgMC9TRVAgaXMgbm90
IGEgYmxvY2sgc28gSSB1c2Ugc3RyZWFtZXIgb24gaXRzIHBvc2l0aW9uIGluIGNoYWluDQoNCkJ1
dCBJIGdvdCBhbiBlcnJvcjoNCiAgICBbRVJST1JdIFtSRk5PQzo6R1JBUEg6OkRFVEFJTF0gTm9k
ZSAwL1JhZGlvIzBjYW5ub3QgaGFuZGxlIGl0cyBjdXJyZW50IHRvcG9sb2d5ISAoMWlucHV0cywg
MSBvdXRwdXRzKQ0KICAgIEVycm9yOiBSdW50aW1lRXJyb3I6IEdyYXBoIHRvcG9sb2d5IGlzIG5v
dCB2YWxpZCENCg0KDQpJIHNlZSB0aGUgZGVmYXVsdCBwYXJhbWV0ZXJzDQoNCiAgICAtLXR4LWJs
b2NraWQ9JzAvUmFkaW8jMCcgLS10eC1jaGFuPTAgLS1yeC1ibG9ja2lkPScwL1JhZGlvIzEnIC0t
cngtY2hhbj0wIg0KDQoNCmluIHJmbm9jX3JhZGlvX2xvb3BiYWNrIHNlZW1zIHRvIGJ1aWxkIGEg
Y2hhaW4gbGlrZSB0aGlzOg0KICAgIDAvUmFkaW8jMTowPT0+MC9EREMjMTowPT0+MC9TRVAjMjow
DQogICAgMC9TRVAjMDowPT0+MC9EVUMjMDowPT0+MC9SYWRpbyMwOjANCiAgICAwL0REQyMxOjA9
PT4wL0RVQyMwOjANCg0KSSBkb24ndCB1bmRlcnN0YW5kIHdoeSBhcmUgIDAvRERDIzE6MCBhbmQg
MC9EVUMjMDowIGNvbm5lY3RlZC4NCg0KQWxzbyBJIGdldCBhbiBlcnJvciBhdCBzZXR0aW5nIHJh
dGU6DQogICAgW1dBUk5JTkddIFswL1JhZGlvIzFdIFJlcXVlc3RpbmcgaW52YWxpZCBzYW1wbGlu
ZyByYXRlIGZyb20gZGV2aWNlOiAxMCBNSHouIEFjdHVhbCByYXRlIGlzOiAyMDAgTUh6Lg0KDQoN
CmJ5IHVzaW5nOg0KDQogICAgIHVoZDo6cmZub2M6OnJhZGlvX2NvbnRyb2w6OnNwdHIgcmFkaW9f
Y3RybCA9IGdyYXBoLT5nZXRfYmxvY2s8dWhkOjpyZm5vYzo6cmFkaW9fY29udHJvbD4ocmFkaW9f
Y3RybF9pZCkNCg0KICAgICByYWRpb19jdHJsLT5zZXRfcmF0ZShyeF9yYXRlKQ0KDQoNCkNvdWxk
IHlvdSBwbGVhc2UgZ2l2ZSBtZSBzb21lIGFkdmljZT8NCg0KDQpUaGFua3MgaW4gYWR2YW5jZQ0K
DQoNCkthc2ltDQo=

--_000_c92abad63ec64dc4a3777fa2a918c2f4campustuberlinde_
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
<p></p>
<div>
<p>when I use radio_ctrl-&gt;set_rate() of rfnoc c&#43;&#43; api, I get the=
 error,</p>
<br>
<p>Setting RX Rate: 10.000000 Msps...<br>
Actual RX Rate: 200.000000 Msps...<br>
[WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 10 MHz.=
 Actual rate is: 200 MHz.</p>
<p style=3D"margin-bottom: 0in"><br>
</p>
<p>I use X310 with 2 CBX120 daughterboards and I can set the rx rate to 10M=
Hz when I use uhd 4.0 multiusrp class set_rx_rate()</p>
<p><br>
</p>
<p>Could you give me some more advice please?<br>
</p>
<p style=3D"margin-bottom: 0in; line-height: 100%"><br>
</p>
</div>
<br>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Chang, Kaixin<br>
<b>Sent:</b> 18 March 2021 12:23:47<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> =B4=F0=B8=B4: rfnoc error at building graph and setting sam=
ple rate</font>
<div>&nbsp;</div>
</div>
<div><style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;=
margin-bottom:0;} --></style>
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
</div>
</body>
</html>

--_000_c92abad63ec64dc4a3777fa2a918c2f4campustuberlinde_--

--===============8048460424264187750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8048460424264187750==--
