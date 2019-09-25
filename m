Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFBFBDAC8
	for <lists+usrp-users@lfdr.de>; Wed, 25 Sep 2019 11:17:04 +0200 (CEST)
Received: from [::1] (port=48358 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iD3Py-0005uj-2W; Wed, 25 Sep 2019 05:17:02 -0400
Received: from mailservice.tudelft.nl ([130.161.131.5]:45161)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1iD3Pu-0005qW-8D
 for usrp-users@lists.ettus.com; Wed, 25 Sep 2019 05:16:58 -0400
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 56D4D6400F6
 for <usrp-users@lists.ettus.com>; Wed, 25 Sep 2019 11:16:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.195
X-Spam-Level: 
X-Spam-Status: No, score=-0.195 tagged_above=-99 required=5
 tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
 RDNS_NONE=0.793, SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.73])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Cfv8fAb3CnqC for <usrp-users@lists.ettus.com>;
 Wed, 25 Sep 2019 11:16:16 +0200 (CEST)
Received: from SRV216.tudelft.net (srv216.tudelft.net [131.180.6.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx2.tudelft.nl (Postfix) with ESMTPS id 95E0C6400CB
 for <usrp-users@lists.ettus.com>; Wed, 25 Sep 2019 11:16:16 +0200 (CEST)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV216.tudelft.net
 (131.180.6.16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.1713.5; Wed, 25
 Sep 2019 11:16:10 +0200
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.1713.009; Wed, 25 Sep 2019 11:16:10 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: One sample - 5 ns delay between the two RF  signals/ X310
Thread-Index: AQHVc4B0BE33/cfd8kOr2qQq6etTOg==
Date: Wed, 25 Sep 2019 09:16:10 +0000
Message-ID: <4f9463d7bc9747498b2f2bda40f7b2ec@tudelft.nl>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: [USRP-users] One sample - 5 ns delay between the two RF signals/
 X310
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
Content-Type: multipart/mixed; boundary="===============4550979249991097688=="
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

--===============4550979249991097688==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4f9463d7bc9747498b2f2bda40f7b2ectudelftnl_"

--_000_4f9463d7bc9747498b2f2bda40f7b2ectudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am working with the X310 USRP. I have two identical custom blocks feeding=
 the RF frontends.

flowchart
-----------------
HW Block1 -> RF0-TX1 |---<
HW Block2 -> RF1-TX1 |---<

The system is synchronized to an external PPS reference. The sampling rate =
is 200 MSps and the signal bandwidth is 160 MHz for both channels.
The two HW blocks start  transmitting at the exactly same time. Time resolu=
tion is 5ns.

In most cases the two outgoing RF signals present a 1ns time offset. Which =
can be understood as a phase offset.

But From time to time there is a 6ns delay between the channels. I assume t=
his 6ns comprises the 1ns delay due to phase offset + 5 ns delay due to mis=
alignment of outgoing samples.

What could be the origin of this one sample misalignement? Is it a way to f=
ix it? Or working close to the limits of the device should such behavior be=
 expected?

Thanks in advance


Best Regards
Cherif


--_000_4f9463d7bc9747498b2f2bda40f7b2ectudelftnl_
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
<p></p>
<div class=3D"x_WordSection1" style=3D"font-family: Helvetica, serif, &quot=
;EmojiFont&quot;; font-size: 12px; font-style: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px;">
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
Hello,</div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
&nbsp;</div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">I am working with the X310 USRP. I have two=
 identical custom blocks feeding the RF frontends.
<br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB"><br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">flowchart</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">-----------------<br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">HW Block1 -&gt; RF0-TX1 |---&lt;</span></di=
v>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB"><span class=3D"" lang=3D"EN-GB"><span class=
=3D"" lang=3D"EN-GB">HW</span> Block2 -&gt; RF1-TX1</span> |---&lt;<br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB"><br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">The system is synchronized to an external P=
PS reference.
<span class=3D"" lang=3D"EN-GB">The sampling rate is 200 MSps and the signa=
l bandwidth is 160 MHz for both channels.</span><br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">The two HW blocks start&nbsp; transmitting =
at the <span class=3D"" lang=3D"EN-GB">
<span class=3D"" lang=3D"EN-GB">exactly</span></span> same time. Time resol=
ution is 5ns.</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">&nbsp;</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">In most cases the two outgoing RF signals p=
resent a 1ns time offset. Which can be understood as a phase offset.<br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB"><br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">But From time to time there is a 6ns delay =
between the channels. I assume this 6ns comprises the 1ns delay due to phas=
e offset &#43; 5 ns delay due to misalignment of outgoing samples.</span></=
div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB"><br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">What could be the origin of this one sample=
 misalignement? Is it a way to fix it? Or working close to the limits of th=
e device should such behavior be expected?</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB"><br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">Thanks in advance<span class=3D"" lang=3D"E=
N-GB"></span><br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB"><br>
</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">&nbsp;</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">Best Regards</span></div>
<div class=3D"" style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-fa=
mily: Calibri, sans-serif, serif, &quot;EmojiFont&quot;;">
<span class=3D"" lang=3D"EN-GB">Cherif</span></div>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_4f9463d7bc9747498b2f2bda40f7b2ectudelftnl_--


--===============4550979249991097688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4550979249991097688==--

