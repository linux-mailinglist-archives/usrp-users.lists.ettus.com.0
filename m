Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4009347987
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 14:24:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BC78380B27
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 09:24:44 -0400 (EDT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C59438388C
	for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 09:23:31 -0400 (EDT)
Received: from SPMA-01.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 8A2867E08C8_5B3D51B
	for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 13:23:29 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-01.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id 353E788F441_5B3D51F
	for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 13:23:29 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (130.149.6.143) by
 ex-06.tubit.win.tu-berlin.de (130.149.6.150) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Wed, 24 Mar 2021 14:23:28 +0100
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0792.010;
 Wed, 24 Mar 2021 14:23:28 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc channel mapping
Thread-Index: AQHXIKozIMWjFR5Wgkasd5ZN1+LnlqqTIFet
Date: Wed, 24 Mar 2021 13:23:28 +0000
Message-ID: <af6f93d0dcac446dbc7c78092485ef81@campus.tu-berlin.de>
References: <b09bdc4deff04896a3fe314aa6923414@campus.tu-berlin.de>
In-Reply-To: <b09bdc4deff04896a3fe314aa6923414@campus.tu-berlin.de>
Accept-Language: en-GB, zh-CN, de-DE, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=dkim-tub; bh=Yp/W201lixWT3a92iisFqf0IWAem02QizaYKLgCDhlQ=; b=TokdcAQoxzovlw4wFFqusW7aMljq8yOpsESMYlcQVW3hJdN0RDPvuOuc37896T0uaOp4O+cOrzm5iV1cjBG1D+TL9ac+rF6E0HNz5vNtTFWWCp6NPoJTHVSu6r5HL7JSaMl0zq7RCznZTU3HlQZRbIiHuiWpJMmG1VPvRsgaKeI=
Message-ID-Hash: FC7POKEZQE53EOD6PEFPP5KEYF6VRCGG
X-Message-ID-Hash: FC7POKEZQE53EOD6PEFPP5KEYF6VRCGG
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc channel mapping
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FC7POKEZQE53EOD6PEFPP5KEYF6VRCGG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1719010204350086037=="

--===============1719010204350086037==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_af6f93d0dcac446dbc7c78092485ef81campustuberlinde_"

--_000_af6f93d0dcac446dbc7c78092485ef81campustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I found multi_usrp_rfnoc.cpp but no hpp, is this still in progress?

________________________________
From: Chang, Kaixin <k.chang@campus.tu-berlin.de>
Sent: 24 March 2021 14:07:10
To: usrp-users@lists.ettus.com
Subject: [USRP-users] rfnoc channel mapping


Dear Ettus Team,


I have a question about the channel mapping with rfnoc api.


With multi_usrp class I can set several subdev like:

    set_rx_subdev_spec("A:0 B:0", 0);
    set_rx_subdev_spec("A:0", 1);
then I have channel 0 (A:0 of motherboard 0), channel 1 (B:0 of mb 0) and c=
hannel 2 (A:0 of mb1). Then I can use usrp->set_rate(rate, channel) to set =
different channel rate. And I can set for the streamer:
    stream_args.channels  =3D {0, 1, 2}

However with rfnoc api, if I want to use set_rate(rate, channel), I have to=
 create an object:

    uhd::rfnoc::radio_control::sptr rx_radio_ctrl =3D graph->get_block<uhd:=
:rfnoc::radio_control>("0/Radio#0:0");
which is marked by this block id "0/Radio#0:0". I wonder if I have several =
motherboards and daughterboards with different block to use, if their corre=
sponding Radio blocks are different like: "0/Radio#0:0", "0/Radio#1:0", "0/=
Radio#2:0", then shall I do the same as above with multi_usrp to set channe=
l and then set freq, rate, etc with only one radio_ctrl object. Or I have t=
o create for each daughterboard frontend, for example A:0 of motherboard 2 =
a radio_ctrl object with only one channel? How do I set the tx streamer's c=
hannel then?

Sincerely

Kasim

--_000_af6f93d0dcac446dbc7c78092485ef81campustuberlinde_
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
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>I found <span>multi_usrp_rfnoc</span>.cpp but no hpp, is this still in p=
rogress?<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Chang, Kaixin &lt;k.c=
hang@campus.tu-berlin.de&gt;<br>
<b>Sent:</b> 24 March 2021 14:07:10<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] rfnoc channel mapping</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Dear Ettus Team,</p>
<p><br>
</p>
<p>I have a question about the channel mapping with rfnoc api. <br>
</p>
<p><br>
</p>
<p>With multi_usrp class I can set several subdev like:<br>
</p>
<p></p>
<div>
<div>&nbsp;&nbsp;&nbsp; set_rx_subdev_spec(<span class=3D"stringliteral">&q=
uot;A:0 B:0&quot;</span>, 0);</div>
&nbsp;&nbsp;&nbsp; set_rx_subdev_spec(<span class=3D"stringliteral">&quot;A=
:0&quot;</span>, 1);</div>
then I have <span>channel 0 (A:0 of motherboard 0), channel 1 (B:0 of mb 0)=
 and channel 2 (A:0 of mb1)</span>. Then I can use usrp-&gt;set_rate(rate, =
channel) to set different channel rate. And I can set for the streamer:
<div>&nbsp;&nbsp;&nbsp; stream_args.channels&nbsp; =3D {0, 1, 2}<br>
</div>
<div><br>
</div>
<div>However with rfnoc api, if I want to use <span>set_rate(rate, channel)=
</span>, I have to create an object:<span><br>
</span>
<p><span></span><span></span></p>
<div>&nbsp;&nbsp;&nbsp; uhd::rfnoc::radio_control::sptr rx_radio_ctrl =3D g=
raph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(&quot;0/Radio#0:0&quot;=
);</div>
which is marked by this block id <span>&quot;0/Radio#0:0&quot;</span>. I wo=
nder if I have several motherboards and daughterboards with different block=
 to use, if their corresponding Radio blocks are different like:
<span>&quot;0/Radio#0:0&quot;</span>, <span>&quot;0/Radio#1:0&quot;</span>,=
 <span>&quot;0/Radio#2:0&quot;</span>, then shall I do the same as above wi=
th multi_usrp to set channel and then set freq, rate, etc with only one rad=
io_ctrl object. Or I have to create for each daughterboard frontend,
 for example A:0 of motherboard 2 a radio_ctrl object with only one channel=
? How do I set the tx streamer's channel then?</div>
<div><br>
</div>
<div>Sincerely</div>
<div><br>
</div>
<div>Kasim<br>
</div>
<p></p>
</div>
</div>
</body>
</html>

--_000_af6f93d0dcac446dbc7c78092485ef81campustuberlinde_--

--===============1719010204350086037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1719010204350086037==--
