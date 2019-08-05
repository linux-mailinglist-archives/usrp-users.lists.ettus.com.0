Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51424825D4
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2019 22:03:54 +0200 (CEST)
Received: from [::1] (port=54084 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hujCx-0005TO-QF; Mon, 05 Aug 2019 16:03:51 -0400
Received: from mailservice.tudelft.nl ([130.161.131.5]:60994)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1hujCu-0005LU-8D
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 16:03:48 -0400
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 3B748CC00C8;
 Mon,  5 Aug 2019 22:03:07 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.195
X-Spam-Level: 
X-Spam-Status: No, score=-0.195 tagged_above=-99 required=5
 tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
 RDNS_NONE=0.793, SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.74])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rh7Ynd3MV1QM; Mon,  5 Aug 2019 22:03:06 +0200 (CEST)
Received: from SRV216.tudelft.net (srv216.tudelft.net [131.180.6.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx3.tudelft.nl (Postfix) with ESMTPS id 32C53CC00A5;
 Mon,  5 Aug 2019 22:03:06 +0200 (CEST)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV216.tudelft.net
 (131.180.6.16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.1713.5; Mon, 5 Aug
 2019 22:02:59 +0200
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.1713.004; Mon, 5 Aug 2019 22:02:59 +0200
To: Nick Foster <bistromath@gmail.com>
Thread-Topic: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
Thread-Index: AQHVS6aS1TCFrhuJn0SBC9u4weX6oabsnjuAgABHIfM=
Date: Mon, 5 Aug 2019 20:02:59 +0000
Message-ID: <6f515697ddcd41718d14e5f8eea799c7@tudelft.nl>
References: <9f5dbd7ab00f4be59f6ed8ad0de7da59@tudelft.nl>
 <9c8f200ed81542cea52e138e82c74002@tudelft.nl>,
 <CA+JMMq8nDYpcTAyabu63jvG=_NwqD6oqsMBddRyTrJj9cgOGeQ@mail.gmail.com>
In-Reply-To: <CA+JMMq8nDYpcTAyabu63jvG=_NwqD6oqsMBddRyTrJj9cgOGeQ@mail.gmail.com>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Cherif Diouf via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4423851093891770590=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4423851093891770590==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6f515697ddcd41718d14e5f8eea799c7tudelftnl_"

--_000_6f515697ddcd41718d14e5f8eea799c7tudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Nick,


That's fine as explanation.  I however need a HW clock synchronized to the =
10 MHz external reference. I am using some local counters to run timely ope=
rations. If not using the 200 MHz clock Is it possible to synchronize the 2=
14 MHz clock to the 10 MHz external reference.


Best Regards

Cherif


________________________________
From: Nick Foster <bistromath@gmail.com>
Sent: Monday, August 5, 2019 6:33:37 PM
To: Cherif Diouf
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310

The radio TX frontend backpressures upstream blocks. You don't have to worr=
y about providing samples at the frontend rate. There is no reason to use a=
 200MHz clock in your block.

Remember: if the frontend is operating at 200Msps, then the samples your bl=
ock is producing must assume a 200Msps sample rate. It doesn't matter at al=
l that the clock driving your block is 214MHz -- that only means that the l=
ogic is operating a bit faster.

Nick

On Mon, Aug 5, 2019 at 8:58 AM Cherif Diouf via USRP-users <usrp-users@list=
s.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:



________________________________

Hello guys,



I am working with the X310 USRP. I have developed customed RFNoC CEs runnin=
g at ce_clk which is no more 200 MHz but rather 214 MHz.

So my blocks are providing samples to the RF frontends at 214 MSps. Is that=
 right?

Then how the operation can be consistent when the sampling rate of the RF f=
rontends is still at 200MSps.


Is it possible to synchronize both the 214 MHz and the 200 MHz clocks to th=
e same 10 MHz external reference, or to  use the 200 MHz reference clock as=
 my HW blocks main clock?




Best Regards

Cherif

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_6f515697ddcd41718d14e5f8eea799c7tudelftnl_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p>Thanks Nick,</p>
<p><br>
</p>
That's fine as explanation.&nbsp; I however need a HW clock synchronized to=
 the 10 MHz external reference. I am using some local counters to run timel=
y operations. If not using the 200 MHz clock Is it possible to synchronize =
the 214 MHz clock to the 10 MHz external
 reference.
<p><span><br>
</span></p>
<p><span>Best Regards</span></p>
<p><span>Cherif<br>
</span></p>
<p><span></span><br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Nick Foster &lt;bis=
tromath@gmail.com&gt;<br>
<b>Sent:</b> Monday, August 5, 2019 6:33:37 PM<br>
<b>To:</b> Cherif Diouf<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP =
X310</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>The radio TX frontend backpressures upstream blocks. You don't have to=
 worry about providing samples at the frontend rate. There is no reason to =
use a 200MHz clock in your block.</div>
<div><br>
</div>
<div>Remember: if the frontend is operating at 200Msps, then the samples yo=
ur block is producing must assume a 200Msps sample rate. It doesn't matter =
at all that the clock driving your block is 214MHz -- that only means that =
the logic is operating a bit faster.</div>
<div><br>
</div>
<div>Nick<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 5, 2019 at 8:58 AM Cherif=
 Diouf via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-6936411464282814038divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetic=
a, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols;">
<p><br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div>
<div>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
Hello guys,</p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
&nbsp;</p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">I am working with the X310 USRP. I have developed cust=
omed RFNoC CEs running at ce_clk which is no more 200 MHz but rather 214 MH=
z.
<br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">So my blocks are providing samples to the RF frontends=
 at 214 MSps. Is that right?</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">Then how the operation can be consistent when the samp=
ling rate of the RF frontends is still at 200MSps.</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB"><br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">Is it possible to synchronize both the 214 MHz and the=
 200 MHz clocks to the same 10 MHz external reference, or to&nbsp; use the =
200 MHz reference clock as my HW blocks main clock?</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB"><br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">&nbsp;</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">Best Regards</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">Cherif</span></p>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_6f515697ddcd41718d14e5f8eea799c7tudelftnl_--


--===============4423851093891770590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4423851093891770590==--

