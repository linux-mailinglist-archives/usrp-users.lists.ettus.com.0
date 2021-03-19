Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CF03419DE
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 11:24:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 507493837BE
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 06:24:44 -0400 (EDT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id B05B3383856
	for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 06:24:34 -0400 (EDT)
Received: from SPMA-02.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 4E8D1368EC_547BE1B
	for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 10:24:33 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-02.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id F11F1368A5_547BE0F
	for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 10:24:32 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (130.149.6.143) by
 ex-01.tubit.win.tu-berlin.de (130.149.6.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Fri, 19 Mar 2021 11:24:32 +0100
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0792.010;
 Fri, 19 Mar 2021 11:24:32 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoch how to build graph just to transmit and receive by using
 Tx/Rx and Rx2 port on the same daughterboard
Thread-Index: AQHXHKk9hRpU+CjeDk6zUu+80KtuBw==
Date: Fri, 19 Mar 2021 10:24:32 +0000
Message-ID: <09c0f397017c4a9b9603c568105f391a@campus.tu-berlin.de>
Accept-Language: en-GB, zh-CN, de-DE, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:content-type:mime-version; s=dkim-tub; bh=ToqCEBSt3jBWV+lLmFxzslww9OIawLWByEopDHvp140=; b=WHjHmGI6GWvGxaqjWCf/7DIVQwEToZJUDv3VcXIVZP+5uzyML/FGc+Bp0g9oL7KAv1CXkX9rx82TgXfiMXj5o0RAEoCKe1lKuOHRNM33h9OnbtXmlwkjtYjJmid3zJ9VIAoGv/Fq8LUTucZTbRSHAEV9jVFakXtBPcbZfsvM0PE=
Message-ID-Hash: DA4MOP33JASWI4T5F4YCR5ZIUYCJ4VJ6
X-Message-ID-Hash: DA4MOP33JASWI4T5F4YCR5ZIUYCJ4VJ6
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoch how to build graph just to transmit and receive by using Tx/Rx and Rx2 port on the same daughterboard
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DA4MOP33JASWI4T5F4YCR5ZIUYCJ4VJ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1306791902466268994=="

--===============1306791902466268994==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_09c0f397017c4a9b9603c568105f391acampustuberlinde_"

--_000_09c0f397017c4a9b9603c568105f391acampustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,


I have problem building rfnoc graph to use Tx/Rx and Rx2 ports on one singl=
e daughter board.

If I connect

0/DUC#0:0=3D=3D>0/Radio#0:0
0/Radio#0:1=3D=3D>0/DDC#0:1
and connect

tx_stream to 0/DUC#0:0 and 0/DDC#0:1 to rx_stream

I get an error

    [ERROR] [RFNOC::GRAPH::DETAIL] Node 0/Radio#0cannot handle its current =
topology! (1inputs, 1 outputs)
    Error: RuntimeError: Graph topology is not valid!

although the static connection of rfnoc block on my device is like
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
|   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
|   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
|   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
|   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
|   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
|   |   * 0/SEP#2:0=3D=3D>0/DUC#1:0
|   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
|   |   * 0/Radio#1:0=3D=3D>0/DDC#1:0
|   |   * 0/DDC#1:0=3D=3D>0/SEP#2:0
|   |   * 0/Radio#1:1=3D=3D>0/DDC#1:1
|   |   * 0/DDC#1:1=3D=3D>0/SEP#3:0
|   |   * 0/SEP#4:0=3D=3D>0/Replay#0:0
|   |   * 0/Replay#0:0=3D=3D>0/SEP#4:0
|   |   * 0/SEP#5:0=3D=3D>0/Replay#0:1
|   |   * 0/Replay#0:1=3D=3D>0/SEP#5:0
|     ________________________________

so I suggest the path
0/DUC#0:0=3D=3D>0/Radio#0:0
0/Radio#0:1=3D=3D>0/DDC#0:1
should be connectable?

thanks in advance

Kasim


--_000_09c0f397017c4a9b9603c568105f391acampustuberlinde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p>Dear all,</p>
<p><br>
</p>
<p>I have problem building rfnoc graph to use Tx/Rx and Rx2 ports on one si=
ngle daughter board.
<br>
</p>
<p>If I connect</p>
<p></p>
<div>0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
0/Radio#0:1=3D=3D&gt;0/DDC#0:1</div>
and connect <br>
<p></p>
<p>tx_stream to 0/DUC#0:0 and 0/DDC#0:1 to rx_stream</p>
<p>I get an error</p>
<div>
<div>&nbsp;&nbsp;&nbsp; [ERROR] [RFNOC::GRAPH::DETAIL] Node 0/Radio#0cannot=
 handle its current topology! (1inputs, 1 outputs)<br>
&nbsp;&nbsp;&nbsp; Error: RuntimeError: Graph topology is not valid!</div>
<div><br>
</div>
<div>although the static connection of rfnoc block on my device is like</di=
v>
<div>
<div>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Static connections=
 on this device:<br>
|&nbsp;&nbsp; |&nbsp; &nbsp;<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#4:0=3D=3D&gt;0/Replay#0:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#0:1=3D=3D&gt;0/SEP#5:0<br>
|&nbsp;&nbsp;&nbsp;&nbsp; ________________________________</div>
<br>
</div>
<div>so I suggest the path <br>
</div>
<div>
<div>0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
0/Radio#0:1=3D=3D&gt;0/DDC#0:1</div>
should be connectable?</div>
<div><br>
</div>
<div>thanks in advance</div>
<div><br>
</div>
<div>Kasim<br>
</div>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_09c0f397017c4a9b9603c568105f391acampustuberlinde_--

--===============1306791902466268994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1306791902466268994==--
