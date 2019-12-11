Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1597011B7F5
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 17:11:45 +0100 (CET)
Received: from [::1] (port=56240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1if4aS-0006fV-Ic; Wed, 11 Dec 2019 11:11:40 -0500
Received: from mail.dynamicware.de ([62.116.178.137]:59302)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <erik.heinz@supracon.com>)
 id 1if4aO-0006YK-MR
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 11:11:36 -0500
Received: from localhost (localhost [127.0.0.1])
 by mail.dynamicware.de (Postfix) with ESMTP id 24715B6607B;
 Wed, 11 Dec 2019 17:10:55 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail.dynamicware.de
Received: from mail.dynamicware.de ([127.0.0.1])
 by localhost (mail.dynamicware.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id wa5bT06EPIYW; Wed, 11 Dec 2019 17:10:54 +0100 (CET)
Received: from exchange.SupraconAG.local (unknown [109.73.25.41])
 (Authenticated sender: info@supracon.com)
 by mail.dynamicware.de (Postfix) with ESMTPSA id 9A86EB65D2D;
 Wed, 11 Dec 2019 17:10:54 +0100 (CET)
Received: from exchange.SupraconAG.local (10.3.1.132) by
 exchange.SupraconAG.local (10.3.1.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.464.5; 
 Wed, 11 Dec 2019 17:10:54 +0100
Received: from exchange.SupraconAG.local ([fe80::7144:35e7:733f:abd4]) by
 exchange.SupraconAG.local ([fe80::7144:35e7:733f:abd4%6]) with mapi id
 15.02.0464.005; Wed, 11 Dec 2019 17:10:54 +0100
To: Sylvain Munaut <246tnt@gmail.com>
Thread-Topic: [USRP-users] B210: LO and noise issues
Thread-Index: AQHVsAX4Fpod12ig7kekyAKIgcDw76e0oLGAgAB5Opw=
Date: Wed, 11 Dec 2019 16:10:53 +0000
Message-ID: <f5a3a68aa9584fd493c303c499a79e9e@supracon.com>
References: <77a16772b0384a0994c0d4e7b7e7f0ee@supracon.com>,
 <CAHL+j08EZ7kCjE_Mw9N_U8uO18YBBLE03Vnn38mi1_a0PcogyQ@mail.gmail.com>
In-Reply-To: <CAHL+j08EZ7kCjE_Mw9N_U8uO18YBBLE03Vnn38mi1_a0PcogyQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.1.24]
MIME-Version: 1.0
Subject: Re: [USRP-users] B210: LO and noise issues
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Erik Heinz via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Erik Heinz <erik.heinz@supracon.com>
Cc: USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4708131905331995239=="
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

--===============4708131905331995239==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_f5a3a68aa9584fd493c303c499a79e9esupraconcom_"

--_000_f5a3a68aa9584fd493c303c499a79e9esupraconcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the suggestion.


I have tried this and it turns out, the noise is mostly phase noise. Simply=
 by subtracting the phase of the second channel from the first, I can reduc=
e the noise already by about 20 dB.

May be, more reduction is possible by some sophisticated mathematics.


Best regards,

Erik

________________________________
Von: Sylvain Munaut <246tnt@gmail.com>
Gesendet: Mittwoch, 11. Dezember 2019 10:52:51
An: Erik Heinz
Cc: USRP-users
Betreff: Re: [USRP-users] B210: LO and noise issues

Hi,

> I wonder if there is an operation mode where TX and RX use the SAME LO, o=
r some trick to achieve this. Probably not?

The AD9361 itself allows for external LO injection ( RX_EXT_LO_IN ,
TX_EXT_LO_IN ), but that's not broken out in anyway on a B2xx.
You'd need serious rework skill to get to them. They are on the edge
of the BGA, so it's doable ...

> The difference between using one LO for TX and RX and using two separate =
synthesizers, even if they are phase-synchronous and set to the same freque=
ncy, is that two synthesizers have independent 1/f noise introduced by the =
PLL. If using one LO, and feeding TX back to RX, this noise is canceled by =
the mixing and does not show up in the base band signal.

How about using a direct cross connect from the second TX channel
(transmitting a DC tone) to the second RX channel. Wouldn't that allow
you to cancel out the noise mathematically ?

Cheers,

    Sylvain




--_000_f5a3a68aa9584fd493c303c499a79e9esupraconcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>Thanks for the suggestion. <br>
</p>
<p><br>
</p>
<p>I have tried this and it turns out, the noise is mostly phase noise. Sim=
ply by subtracting the phase of the second channel from the first, I can re=
duce the noise already by about 20 dB.</p>
<p>May be, more reduction is possible by some sophisticated mathematics.</p=
>
<p><br>
</p>
<p>Best regards,</p>
<p>Erik<br>
</p>
<div id=3D"x_Signature"></div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>Von:</b> Sylvain Munaut &lt;2=
46tnt@gmail.com&gt;<br>
<b>Gesendet:</b> Mittwoch, 11. Dezember 2019 10:52:51<br>
<b>An:</b> Erik Heinz<br>
<b>Cc:</b> USRP-users<br>
<b>Betreff:</b> Re: [USRP-users] B210: LO and noise issues</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi,<br>
<br>
&gt; I wonder if there is an operation mode where TX and RX use the SAME LO=
, or some trick to achieve this. Probably not?<br>
<br>
The AD9361 itself allows for external LO injection ( RX_EXT_LO_IN ,<br>
TX_EXT_LO_IN ), but that's not broken out in anyway on a B2xx.<br>
You'd need serious rework skill to get to them. They are on the edge<br>
of the BGA, so it's doable ...<br>
<br>
&gt; The difference between using one LO for TX and RX and using two separa=
te synthesizers, even if they are phase-synchronous and set to the same fre=
quency, is that two synthesizers have independent 1/f noise introduced by t=
he PLL. If using one LO, and feeding
 TX back to RX, this noise is canceled by the mixing and does not show up i=
n the base band signal.<br>
<br>
How about using a direct cross connect from the second TX channel<br>
(transmitting a DC tone) to the second RX channel. Wouldn't that allow<br>
you to cancel out the noise mathematically ?<br>
<br>
Cheers,<br>
<br>
&nbsp;&nbsp;&nbsp; Sylvain<br>
<br>
<br>
<br>
</div>
</span></font>
</body>
</html>

--_000_f5a3a68aa9584fd493c303c499a79e9esupraconcom_--


--===============4708131905331995239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4708131905331995239==--

