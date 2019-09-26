Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2126BF9F4
	for <lists+usrp-users@lfdr.de>; Thu, 26 Sep 2019 21:19:32 +0200 (CEST)
Received: from [::1] (port=53288 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDZIW-0000ZQ-Td; Thu, 26 Sep 2019 15:19:28 -0400
Received: from mailservice.tudelft.nl ([130.161.131.5]:40677)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1iDZIT-0000Tu-9F
 for usrp-users@lists.ettus.com; Thu, 26 Sep 2019 15:19:25 -0400
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 589C4CC00D4
 for <usrp-users@lists.ettus.com>; Thu, 26 Sep 2019 21:18:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.195
X-Spam-Level: 
X-Spam-Status: No, score=-0.195 tagged_above=-99 required=5
 tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
 RDNS_NONE=0.793, SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.74])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id iW0JnpFvOgIM for <usrp-users@lists.ettus.com>;
 Thu, 26 Sep 2019 21:18:43 +0200 (CEST)
Received: from SRV217.tudelft.net (srv217.tudelft.net [131.180.6.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx3.tudelft.nl (Postfix) with ESMTPS id BDD68CC00C9
 for <usrp-users@lists.ettus.com>; Thu, 26 Sep 2019 21:18:43 +0200 (CEST)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV217.tudelft.net
 (131.180.6.17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.1713.5; Thu, 26
 Sep 2019 21:18:36 +0200
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.1713.009; Thu, 26 Sep 2019 21:18:36 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: One sample - 5 ns delay between the two RF signals/ X310
Thread-Index: AQHVdJ3O+aDrcDyjbEK3uBO/v/73aQ==
Date: Thu, 26 Sep 2019 19:18:36 +0000
Message-ID: <f8f84407bde942e199e079c598b33d34@tudelft.nl>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF
 signals/ X310
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
Content-Type: multipart/mixed; boundary="===============0472520904077837995=="
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

--===============0472520904077837995==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f8f84407bde942e199e079c598b33d34tudelftnl_"

--_000_f8f84407bde942e199e079c598b33d34tudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Fabian,
thanks for the suggestion I will try the solution

Daniel, I am using the CDA-2990 device from national instruments


Marcus, Some feedbacks,

     - what daughtercards are you using in your X310?

+=3D=3D> the UBX 10-6000 MHz Rx/Tx (160 MHz)

     - what do you mean by "hardware block" -- RFNoC?   Is this a custom
block?

+ =3D=3D> Yes custom CE
     - Are you doing this with Gnu Radio or just UHD?

+=3D=3D> I am using both  (Python)

     - What version of UHD are you running?

+=3D=3D> UHD 3.15.0.git-84-g164d76


Best Regards

Cherif





--_000_f8f84407bde942e199e079c598b33d34tudelftnl_
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
<font size=3D"2">Fabian,</font></div>
<div dir=3D"ltr" style=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family=
: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color =
Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Sym=
bol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<font size=3D"2">thanks for the suggestion I will try the solution</font></=
div>
<div dir=3D"ltr" style=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family=
: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color =
Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Sym=
bol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<font size=3D"2"><br>
</font></div>
<div dir=3D"ltr" style=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family=
: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color =
Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Sym=
bol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<font size=3D"2">Daniel, I am using the CDA-2990 device from national instr=
uments</font><br>
<p><font size=3D"2"><span style=3D"font-size:10pt;"><br>
</span></font></p>
<p><font size=3D"2"><font size=3D"2"><span style=3D"font-size:10pt;">Marcus=
</span></font>, Some feedbacks<span style=3D"font-size:10pt;">,
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp; - what daughtercards are you using in your X310?</=
span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;">&#43;=3D=3D&gt; the UBX=
 10-6000 MHz Rx/Tx (160 MHz)<br>
</span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;">&nbsp;&nbsp;&nbsp;&nbsp=
; - what do you mean by &quot;hardware block&quot; -- RFNoC?&nbsp;&nbsp; Is=
 this a custom
<br>
block? <br>
</span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;">&#43; =3D=3D&gt; Yes cu=
stom CE<br>
&nbsp;&nbsp;&nbsp;&nbsp; - Are you doing this with Gnu Radio or just UHD?</=
span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;">&#43;=3D=3D&gt; I am us=
ing both&nbsp; (Python)<br>
</span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;">&nbsp;&nbsp;&nbsp;&nbsp=
; - What version of UHD are you running?</span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;">&#43;<font size=3D"2"><=
span style=3D"font-size:10pt;"><font size=3D"2">=3D=3D&gt; UHD 3.15.0.git-8=
4-g164d76</font></span></font></span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;"><font size=3D"2"><span =
style=3D"font-size:10pt;"><font size=3D"2"><br>
</font></span></font></span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;"><font size=3D"2"><span =
style=3D"font-size:10pt;"><font size=3D"2">Best Regards</font></span></font=
></span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;"><font size=3D"2"><span =
style=3D"font-size:10pt;"><font size=3D"2">Cherif<br>
</font></span></font></span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;"></span></font></p>
<div><font size=3D"2"><u></u><br>
<br>
</font></div>
<font size=3D"2"><br>
</font>
<p></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;"></span></font><br>
</p>
</div>
</div>
</body>
</html>

--_000_f8f84407bde942e199e079c598b33d34tudelftnl_--


--===============0472520904077837995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0472520904077837995==--

