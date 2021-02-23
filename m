Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDDA322CDF
	for <lists+usrp-users@lfdr.de>; Tue, 23 Feb 2021 15:53:23 +0100 (CET)
Received: from [::1] (port=42138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lEZ3w-0002pN-0C; Tue, 23 Feb 2021 09:53:20 -0500
Received: from mail.hhi.fraunhofer.de ([193.174.67.45]:60910)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <julian.daube@hhi.fraunhofer.de>)
 id 1lEZ3r-0002k3-Sm
 for usrp-users@lists.ettus.com; Tue, 23 Feb 2021 09:53:16 -0500
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DBD047C177
 for <usrp-users@lists.ettus.com>; Tue, 23 Feb 2021 15:52:28 +0100 (CET)
X-IMSS-DKIM-Authentication-Result: mail.hhi.fraunhofer.de; sigcount=0
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CF8D37C176
 for <usrp-users@lists.ettus.com>; Tue, 23 Feb 2021 15:52:28 +0100 (CET)
Received: from mx.fe.hhi.de (unknown [172.16.0.103])
 by mail.hhi.fraunhofer.de (Postfix) with ESMTPS
 for <usrp-users@lists.ettus.com>; Tue, 23 Feb 2021 15:52:28 +0100 (CET)
Received: from mxsrv5.fe.hhi.de (172.16.0.103) by mxsrv5.fe.hhi.de
 (172.16.0.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Tue, 23 Feb
 2021 15:52:32 +0100
Received: from mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9]) by
 mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9%6]) with mapi id 15.01.2106.003; 
 Tue, 23 Feb 2021 15:52:32 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Interface AXI4-Lite to UHD 4.0 RFNoC Shell CtrlPort
Thread-Index: AQHXCfNz8KY0RC0UAUWnX0FZQyY4sw==
Date: Tue, 23 Feb 2021 14:52:32 +0000
Message-ID: <c1dbae1c7f4d42baa74dbf70030937cc@hhi.fraunhofer.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: [USRP-users] Interface AXI4-Lite to UHD 4.0 RFNoC Shell CtrlPort
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Daube, Julian via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Daube, Julian" <julian.daube@hhi.fraunhofer.de>
Content-Type: multipart/mixed; boundary="===============7491142239450281492=="
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

--===============7491142239450281492==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_c1dbae1c7f4d42baa74dbf70030937cchhifraunhoferde_"

--_000_c1dbae1c7f4d42baa74dbf70030937cchhifraunhoferde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I was searching for a way to interface the control interface of a Simulink =
HDL Coder IP Core to the RFNoC Shell.


Normally i would expose all control registers over an AXI4-Lite interface. =
I took a look at the rfnoc_core_addsub, since it uses Xilinx HLS, but that =
example does not expose control registers at all, thereby avoiding this pro=
blem.

I guess the question is, how i would i tackle this connection from the Ctrl=
Port of the NoC Shell to AXI4-Lite?
A nudge in the right direction would be highly appreciated!

Regards,

Julian Daube

PS: I would like to integrated said core into the UHD 4.0 framework and bui=
ld images for the X310, if this of relevance. Since it will be a FIR Filter=
 similar to the axi_filter block, i would like to avoid using a parallel co=
nfiguration bus.


--_000_c1dbae1c7f4d42baa74dbf70030937cchhifraunhoferde_
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
<p>Hi, <br>
<br>
I was searching for a way to interface the control interface of a Simulink =
HDL Coder IP Core to the RFNoC Shell.
<br>
</p>
<p><br>
</p>
<p>Normally i would expose all control registers over an AXI4-Lite interfac=
e. I took a look at the rfnoc_core_addsub, since it uses Xilinx HLS, but th=
at example does not expose control registers at all, thereby avoiding this =
problem.
<br>
<br>
I guess the question is, how i would i tackle this connection from the Ctrl=
Port of the NoC Shell to AXI4-Lite?
<br>
A nudge in the right direction would be highly appreciated! <br>
<br>
Regards,<br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p><span id=3D"ms-rterangepaste-start"></span></p>
<p class=3D"MsoNormal" style=3D"line-height:11.25pt; background:white"><spa=
n style=3D"" lang=3D"DE">Julian Daube<br>
<br>
PS: I would like to integrated said core into the UHD 4.0 framework and bui=
ld images for the X310, if this of relevance. Since it will be a FIR Filter=
 similar to the axi_filter block, i would like to avoid using a parallel co=
nfiguration bus.</span><br>
</p>
<br>
<p></p>
</div>
</div>
</div>
</body>
</html>

--_000_c1dbae1c7f4d42baa74dbf70030937cchhifraunhoferde_--



--===============7491142239450281492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7491142239450281492==--


