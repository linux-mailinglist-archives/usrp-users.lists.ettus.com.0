Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E66D3820F6
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2019 17:59:01 +0200 (CEST)
Received: from [::1] (port=46266 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hufNz-0007Un-Uw; Mon, 05 Aug 2019 11:58:59 -0400
Received: from mailservice.tudelft.nl ([130.161.131.5]:50721)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1hufNw-0007JK-Jf
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 11:58:56 -0400
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 3A87E640092
 for <usrp-users@lists.ettus.com>; Mon,  5 Aug 2019 17:58:15 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.195
X-Spam-Level: 
X-Spam-Status: No, score=-0.195 tagged_above=-99 required=5
 tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
 RDNS_NONE=0.793, SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.73])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hZy4T_inRKPo for <usrp-users@lists.ettus.com>;
 Mon,  5 Aug 2019 17:58:14 +0200 (CEST)
Received: from SRV219.tudelft.net (srv219.tudelft.net [131.180.6.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx2.tudelft.nl (Postfix) with ESMTPS id 90EA864008D
 for <usrp-users@lists.ettus.com>; Mon,  5 Aug 2019 17:58:14 +0200 (CEST)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV219.tudelft.net
 (131.180.6.19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.1713.5; Mon, 5 Aug
 2019 17:58:07 +0200
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.1713.004; Mon, 5 Aug 2019 17:58:07 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
Thread-Index: AQHVS6aS1TCFrhuJn0SBC9u4weX6oQ==
Date: Mon, 5 Aug 2019 15:58:07 +0000
Message-ID: <9c8f200ed81542cea52e138e82c74002@tudelft.nl>
References: <9f5dbd7ab00f4be59f6ed8ad0de7da59@tudelft.nl>
In-Reply-To: <9f5dbd7ab00f4be59f6ed8ad0de7da59@tudelft.nl>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
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
Content-Type: multipart/mixed; boundary="===============5251560068608379339=="
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

--===============5251560068608379339==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9c8f200ed81542cea52e138e82c74002tudelftnl_"

--_000_9c8f200ed81542cea52e138e82c74002tudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable




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

--_000_9c8f200ed81542cea52e138e82c74002tudelftnl_
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
<p><br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div>
<div style=3D"">
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
Hello guys,</p>
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
&nbsp;</p>
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
<span lang=3D"EN-GB">I am working with the X310 USRP. I have developed cust=
omed RFNoC CEs running at ce_clk which is no more 200 MHz but rather 214 MH=
z.
<br>
</span></p>
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
<span lang=3D"EN-GB">So my blocks are providing samples to the RF frontends=
 at 214 MSps. Is that right?</span></p>
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
<span lang=3D"EN-GB">Then how the operation can be consistent when the samp=
ling rate of the RF frontends is still at 200MSps.</span></p>
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
<span lang=3D"EN-GB"><br>
</span></p>
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
<span lang=3D"EN-GB">Is it possible to synchronize both the 214 MHz and the=
 200 MHz clocks to the same 10 MHz external reference, or to&nbsp; use the =
200 MHz reference clock as my HW blocks main clock?</span></p>
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
<span lang=3D"EN-GB"><br>
</span></p>
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
<span lang=3D"EN-GB">&nbsp;</span></p>
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
<span lang=3D"EN-GB">Best Regards</span></p>
<p style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: &quot;C=
alibri&quot;, sans-serif;">
<span lang=3D"EN-GB">Cherif</span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_9c8f200ed81542cea52e138e82c74002tudelftnl_--


--===============5251560068608379339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5251560068608379339==--

