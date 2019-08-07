Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E6284E60
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2019 16:15:56 +0200 (CEST)
Received: from [::1] (port=41394 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvMjK-0007uD-DH; Wed, 07 Aug 2019 10:15:54 -0400
Received: from mailservice.tudelft.nl ([130.161.131.5]:39905)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1hvMjG-0007q1-QN
 for usrp-users@lists.ettus.com; Wed, 07 Aug 2019 10:15:50 -0400
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 97DD540223
 for <usrp-users@lists.ettus.com>; Wed,  7 Aug 2019 16:15:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.195
X-Spam-Level: 
X-Spam-Status: No, score=-0.195 tagged_above=-99 required=5
 tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
 RDNS_NONE=0.793, SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.69])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id vBFAaMhIDpId for <usrp-users@lists.ettus.com>;
 Wed,  7 Aug 2019 16:15:08 +0200 (CEST)
Received: from SRV222.tudelft.net (srv222.tudelft.net [131.180.6.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.tudelft.nl (Postfix) with ESMTPS id E6FDD40156
 for <usrp-users@lists.ettus.com>; Wed,  7 Aug 2019 16:15:08 +0200 (CEST)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV222.tudelft.net
 (131.180.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.1713.5; Wed, 7 Aug
 2019 16:15:07 +0200
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.1713.004; Wed, 7 Aug 2019 16:15:07 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Delayed samples receiving, X310
Thread-Index: AQHVTSh1S9KabrXLBkW1ecNKC7Kshw==
Date: Wed, 7 Aug 2019 14:15:07 +0000
Message-ID: <f56fe40286ab4abc884a7249c7b0f42b@tudelft.nl>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: [USRP-users] Delayed samples receiving, X310
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
Content-Type: multipart/mixed; boundary="===============2243960480518473679=="
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

--===============2243960480518473679==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f56fe40286ab4abc884a7249c7b0f42btudelftnl_"

--_000_f56fe40286ab4abc884a7249c7b0f42btudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello guys,

I have developed a custom RFNoC CE connected to one radio core of the X310.
The core will act as receiver and provide samples to my CE for further proc=
essing (Antennas-> RX frontend + noc_radio_core -> custom CE).
However, I would like the radio core to start sampling and providing data o=
nly after a deterministic and fixed duration t0 consistent with the 5ns tim=
e counter and likely synchronized to an external PPS used as time reference=
.

From python, I know I can use the "set_time_next_pps" call to initialize th=
e USRP X310 time. But how to tell the radio core to stay in a idle state un=
til the time keeper matches my duration t0?
Can it be done by  software? Or the only option is to use CHDR packets and =
VITA timing?

Best Regards
Cherif


--_000_f56fe40286ab4abc884a7249c7b0f42btudelftnl_
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
<div class=3D"_rp_U4 ms-font-weight-regular ms-font-color-neutralDark rpHig=
hlightAllClass rpHighlightBodyClass" id=3D"Item.MessageUniqueBody" style=3D=
"font-family:&quot;wf_segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Sego=
e WP&quot;,Tahoma,Arial,sans-serif,serif,&quot;EmojiFont&quot;">
<div>
<div dir=3D"ltr">
<div id=3D"divtagdefaultwrapper"><font style=3D"font-family:Calibri,Helveti=
ca,sans-serif,serif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Calibri,Helve=
tica,sans-serif" color=3D"black"><span id=3D"divtagdefaultwrapper" style=3D=
"font-size:12pt">
<div><font color=3D"black">
<div>
<div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt">Hello guys,</span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt">&nbsp;</span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt"><span lang=3D"en-GB">I have developed a custom RFNoC CE=
 connected to one radio core of the X310.
<br>
</span></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt"><span lang=3D"en-GB">The core will act as receiver and =
provide samples to my CE for further processing (Antennas-&gt;
 RX frontend &#43; noc_radio_core -&gt; custom CE).<br>
</span></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt"><span lang=3D"en-GB">However, I would like the radio co=
re to start sampling and providing data&nbsp;<font style=3D"font-family:Cal=
ibri,Helvetica,sans-serif,serif,&quot;EmojiFont&quot;" size=3D"3" face=3D"C=
alibri,Helvetica,sans-serif" color=3D"black"><span id=3D"divtagdefaultwrapp=
er" style=3D"font-size:12pt"><font color=3D"black"><font style=3D"font-fami=
ly:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calib=
ri,sans-serif"><span style=3D"font-size:11pt"><span lang=3D"en-GB">only
</span></span></font></font></span></font>after a deterministic and fixed d=
uration t0 consistent with the 5ns time counter and likely synchronized to =
an external PPS used as time reference.</span></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt"><span lang=3D"en-GB"><br>
</span></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt"><span lang=3D"en-GB">From python, I know I can use the =
&quot;set_time_next_pps&quot; call to initialize the USRP X310 time.
 But how to tell the radio core to stay in a idle state until the time keep=
er matches my duration t0?</span></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt"><span lang=3D"en-GB">Can it be done by&nbsp; software? =
Or the only option is to use CHDR packets and VITA timing?</span></span></f=
ont></div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt"><span lang=3D"en-GB">&nbsp;</span></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt"><span lang=3D"en-GB">Best Regards</span></span></font><=
/div>
<div style=3D"margin:0"><font style=3D"font-family:Calibri,sans-serif,serif=
,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=
=3D"font-size:11pt"><span lang=3D"en-GB">Cherif</span></span></font></div>
</div>
</div>
</font></div>
</span></font></div>
</div>
</div>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_f56fe40286ab4abc884a7249c7b0f42btudelftnl_--


--===============2243960480518473679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2243960480518473679==--

