Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB9D34066C
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 14:08:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 297F5383CA0
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 09:08:02 -0400 (EDT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F51F383CD3
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 09:06:58 -0400 (EDT)
Received: from SPMA-02.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 9084B361F7_535070B
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 13:06:56 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-02.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id 3F03436180_535070F
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 13:06:56 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (130.149.6.143) by
 ex-02.tubit.win.tu-berlin.de (130.149.6.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Thu, 18 Mar 2021 14:06:56 +0100
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0792.010;
 Thu, 18 Mar 2021 14:06:56 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: 1x2 mimo, leakage of signal from tx/rx port to rx2 port on
 single daughter board
Thread-Index: AQHXG/eSE5PwQX2JnEeJEdLFOFNfCQ==
Date: Thu, 18 Mar 2021 13:06:55 +0000
Message-ID: <9980baf4b1ed408faf4cf3825b3d14fa@campus.tu-berlin.de>
Accept-Language: zh-CN, de-DE, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:content-type:mime-version; s=dkim-tub; bh=Ykg8MYHr8WcGU9+EbWLZKlbu2Jd2dlAIgyvnq/rFN5Q=; b=ZVsGoXD+SHMG+UF+U8EnfM1Q7USPpmPAu/Mq3s9ac3lLwIz4iYGLrEv10Ml0Fv0znQX6T6Q0U31LukvVTtcODi9hCDY/E5kEyqQVZARYV4j89Esl9P8KlAYIQNd9dKwdDnJBF5EGX5MB0EPlkfwTuuqS6ty8DPdaNt2Q8OpiBPQ=
Message-ID-Hash: 2F3Q27Z255Z5L7TRARKO3GMZGX4DBKX2
X-Message-ID-Hash: 2F3Q27Z255Z5L7TRARKO3GMZGX4DBKX2
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 1x2 mimo, leakage of signal from tx/rx port to rx2 port on single daughter board
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2F3Q27Z255Z5L7TRARKO3GMZGX4DBKX2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1415109204033129470=="

--===============1415109204033129470==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_9980baf4b1ed408faf4cf3825b3d14facampustuberlinde_"

--_000_9980baf4b1ed408faf4cf3825b3d14facampustuberlinde_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

RGVhciBtYWRhbSBhbmQgc2lyIGZyb20gRXR0dXMgdGVhbSwNCg0KDQpJIGFtIHRyeWluZyAxeDIg
bWltbyB3aXRoIFgzMTAgYW5kIDIgQ0JYMTIwIGJvYXJkcyBieSB1c2luZyBVSEQtbWFzdGVyIGJy
YW5jaC4gTmFtZWx5IEkgc2VuZCBmcm9tIFJGLUEgVHgvUnggdG8gUkYtQSBSeDIgYXMgcngwIGFu
ZCBSRi1CIFJ4MiBhcyByeDEuDQoNCldoYXQgSSBvYnNlcnZlIGlzIHRoYXQgdGhlIHJ4MCBzaWdu
YWwncyBwb3dlciBpcyBtdWNoIGxhcmdlciB0aGFuIHJ4MSBzaWduYWwuIEkgcmVmZXIgdG8gdGhl
IHNjaGVtYSBhbmQgZm91bmQgb3V0IHRoYXQgdGhlIDIgc3dpdGNoIGJlZm9yZSAyIGFudGVubmFz
IFR4L1J4IGFuZCBSeDIgbWF5IGNhdXNlIDQwIGRCIGxlYWthZ2UuIEkgYW0gd29uZGVyaW5nIGFt
IEkgcmlnaHQ/IEkgZml4IGdhaW5zIGFzDQoNCiAgICB0eF9nYWluPTEuNSwgcnhfYWRjX2dhaW49
Ni4wLCByeF9wZ2FfZ2Fpbj0zMS41DQoNCg0KYW5kIHRyaWVkIDIgZXhwZXJpbWVuczoNCg0KICAx
LiBSRi1BIFR4L1J4IKH6IDQwIGRCIGF0dGVudWF0aW9uIKH6IHBvd2VyIHNwbGl0dGVyIHRvIFJG
LUEgUngyIGFuZCBSRi1CIFJ4Mg0KDQogIDIuIFJGLUEgVHgvUnggofogNjAgZEIgYXR0ZW51YXRp
b24gofogcG93ZXIgc3BsaXR0ZXIgdG8gUkYtQSBSeDIgYW5kIFJGLUIgUngyDQoNClRoZSBwb3dl
ciBvZiByeCBzaWduYWxzIGluIGRCbSBhcmU6DQoNCg0KDQoNCg0KICAgICAgICByeDANCiAgICAg
ICAgcngxDQo0MGRCDQogICAgICAgIDI4Ljg4DQogICAgICAgIDE2LjY1DQoNCjYwZEINCiAgICAg
ICAgMjcuOTcNCiAgICAgICAgMy40MQ0KDQoNCg0KDQoNCg0KDQoNCg0KSSBkb24ndCB1bmRlcnN0
YW5kIHdoeSB3aGVuIHRoZSBleHRlcm5hbCBhdHRlbnVhdGlvbiBpcyA2MCBkQiwgcngxIGlzIHNv
IG11Y2ggaW5mbHVlbmNlZC4NCg0KQ291bGQgeW91IGdpdmUgbWUgc29tZSBhZHZpY2UgcGxlYXNl
Pw0KDQpUaGFuayB5b3UgaW4gYWR2YW5jZQ0KDQpLYXNpbQ0K

--_000_9980baf4b1ed408faf4cf3825b3d14facampustuberlinde_
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
<p>I am trying 1x2 mimo with X310 and 2 CBX120 boards by using UHD-master b=
ranch. Namely I send from RF-A Tx/Rx to RF-A Rx2 as rx0 and RF-B Rx2 as rx1=
.</p>
<p>What I observe is that the rx0 signal's power is much larger than rx1 si=
gnal. I refer to the schema and found out that the 2 switch before 2 antenn=
as Tx/Rx and Rx2 may cause 40 dB leakage. I am wondering am I right? I fix =
gains as
<br>
</p>
<p>&nbsp;&nbsp;&nbsp; <span>tx_gain=3D1.5, rx_adc_gain=3D6.0, rx_pga_gain=
=3D31.5</span></p>
<p><span><br>
</span></p>
<p><span>and tried 2 experimens:<br>
</span></p>
<p><span></span></p>
<div>
<pre class=3D"western" style=3D"text-align: left"><font color=3D"#000000"><=
font style=3D"font-size: 10pt" size=3D"2"><span lang=3D"en-US">  1. RF-A Tx=
/Rx =A1=FA 40 dB attenuation =A1=FA power splitter to RF-A Rx2 and </span><=
/font></font><font color=3D"#000000"><font style=3D"font-size: 10pt" size=
=3D"2"><span lang=3D"en-US"><span>RF-B Rx2<br><span><div><pre class=3D"west=
ern" style=3D"text-align: left"><font color=3D"#000000"><font style=3D"font=
-size: 10pt" size=3D"2"><span lang=3D"en-US">  2. RF-A Tx/Rx =A1=FA 60 dB a=
ttenuation =A1=FA power splitter to RF-A Rx2 and </span></font></font><font=
 color=3D"#000000"><font style=3D"font-size: 10pt" size=3D"2"><span lang=3D=
"en-US"><span>RF-B Rx2</span></span></font></font></pre>The power of rx sig=
nals in dBm are:=0A=
<div><table style=3D"table-layout: fixed;" cellspacing=3D"0" border=3D"0"><=
colgroup width=3D"108"></colgroup><colgroup width=3D"86" span=3D"2"></colgr=
oup><tbody><tr><td style=3D"width: 184px;" valign=3D"bottom" height=3D"17" =
align=3D"left"><br></td><td style=3D"width: 100px;" valign=3D"bottom" align=
=3D"left"><br></td><td style=3D"width: 100px;" valign=3D"bottom" align=3D"l=
eft"><br></td></tr><tr><td valign=3D"bottom" height=3D"17" align=3D"left"><=
table role=3D"table" class=3D"ms-rteTable-default" style=3D"border-collapse=
:collapse; border: 1px solid rgb(198, 198, 198);" cellspacing=3D"0"><tbody>=
<tr><td class=3D"ms-rteTable-default" style=3D"border-collapse: collapse; b=
order: 1px solid rgb(198, 198, 198); width: 120px;"><br></td><td class=3D"m=
s-rteTable-default" style=3D"border-collapse: collapse; border: 1px solid r=
gb(198, 198, 198); width: 120px;"><span>rx0</span><br></td><td class=3D"ms-=
rteTable-default" style=3D"border-collapse: collapse; border: 1px solid rgb=
(198, 198, 198); width: 120px;"><span>rx1</span></td></tr><tr><td class=3D"=
ms-rteTable-default" style=3D"border-collapse:collapse; border: 1px solid r=
gb(198, 198, 198);">40dB<br></td><td class=3D"ms-rteTable-default" style=3D=
"border-collapse:collapse; border: 1px solid rgb(198, 198, 198);">28.88<br>=
</td><td class=3D"ms-rteTable-default" style=3D"border-collapse:collapse; b=
order: 1px solid rgb(198, 198, 198);">16.65<br></td></tr><tr><td class=3D"m=
s-rteTable-default" style=3D"border-collapse:collapse; border: 1px solid rg=
b(198, 198, 198);">60dB<br></td><td class=3D"ms-rteTable-default" style=3D"=
border-collapse:collapse; border: 1px solid rgb(198, 198, 198);">27.97<br><=
/td><td class=3D"ms-rteTable-default" style=3D"border-collapse:collapse; bo=
rder: 1px solid rgb(198, 198, 198);">3.41<br></td></tr></tbody></table><br>=
</td><td valign=3D"bottom" align=3D"right"><br></td><td valign=3D"bottom" a=
lign=3D"right"><br></td></tr><tr><td valign=3D"bottom" height=3D"17" align=
=3D"left"><br></td><td valign=3D"bottom" align=3D"right"><br></td><td valig=
n=3D"bottom" align=3D"right"><br></td></tr></tbody></table>I don't understa=
nd why when the external attenuation is 60 dB, rx1 is so much influenced.</=
div><div><br></div><div>Could you give me some advice please?</div><div><br=
></div><div>Thank you in advance</div><div><br></div><div>Kasim=0A=
=0A=
=0A=
</div></div></span></span></span></font></font></pre>
</div>
<p></p>
</div>
</body>
</html>

--_000_9980baf4b1ed408faf4cf3825b3d14facampustuberlinde_--

--===============1415109204033129470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1415109204033129470==--
