Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 406BC12FC24
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 19:14:36 +0100 (CET)
Received: from [::1] (port=40864 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inRSn-0007N8-B0; Fri, 03 Jan 2020 13:14:21 -0500
Received: from mailservice.tudelft.nl ([130.161.131.5]:56267)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1inRSk-0007J0-5M
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 13:14:18 -0500
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 1A9EB240094
 for <usrp-users@lists.ettus.com>; Fri,  3 Jan 2020 19:13:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: 0.804
X-Spam-Level: 
X-Spam-Status: No, score=0.804 tagged_above=-99 required=5
 tests=[BASW_FROM=0.01, HTML_MESSAGE=0.001, RDNS_NONE=0.793]
 autolearn=no
Received: from mailservice.tudelft.nl ([130.161.131.71])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id IuEtieBH7S8S for <usrp-users@lists.ettus.com>;
 Fri,  3 Jan 2020 19:13:32 +0100 (CET)
Received: from SRV216.tudelft.net (srv216.tudelft.net [131.180.6.16])
 (using TLSv1.2 with cipher AES256-SHA256 (256/256 bits))
 (No client certificate requested)
 by mx4.tudelft.nl (Postfix) with ESMTPS id 754E7240073
 for <usrp-users@lists.ettus.com>; Fri,  3 Jan 2020 19:13:32 +0100 (CET)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV216.tudelft.net
 (131.180.6.16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.1847.3; Fri, 3 Jan
 2020 19:13:26 +0100
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.1847.005; Fri, 3 Jan 2020 19:13:26 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Building RFNoC image with default blocks fails, [DRC  MDRV-1]
 Multiple Driver Nets: Net has multiple drivers
Thread-Index: AQHVwlra9CTB62PybE24wu1nMdz1NQ==
Date: Fri, 3 Jan 2020 18:13:26 +0000
Message-ID: <3f128547beb4452c88c27a70038afe5d@tudelft.nl>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC  MDRV-1] Multiple Driver Nets: Net has multiple drivers
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
From: Cherif Diouf via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Content-Type: multipart/mixed; boundary="===============4348132563479536558=="
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

--===============4348132563479536558==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3f128547beb4452c88c27a70038afe5dtudelftnl_"

--_000_3f128547beb4452c88c27a70038afe5dtudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Jerrid,



Some hints, for info,  I am working with the X310 device, but you can take =
the big picture.


I previously met  such issues, those were related to signal re-definitions.


The file *rfnoc_ce_auto_inst_x310.v* at lines 19/20 is re-defining the ce_c=
lk/ce_rst signals by assigning to them  radio_clk/radio_rst signals. The is=
sue here is that ce_clk is a clock of its own and is already defined in the=
 top block file *x300.v* at lines 259 and 290. My filepath is rfnoc/src/uhd=
-fpga/usrp3/top/x300/.


Vivado 2017.4 would just let this pass but when I moved to Vivado 2018.4 th=
e build would each time fail, popping Net having multiple drivers errors.


Changing the ce_clk/ce_rst signals names in the *rfnoc_ce_auto_inst_x310.v*=
 and modifying this instantiation file accordingly will make the build work=
. The solution is ok If you are using a different custom  instantiation fil=
e,.


However, I am not sure that in your case it will help, because your *rfnoc_=
ce_auto_inst_x310.v* file is re-created at each build command. So likely an=
ything you update in the file will be dumped at the next build.




Best Regards

Cherif



--_000_3f128547beb4452c88c27a70038afe5dtudelftnl_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&q=
uot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p>Hi Jerrid,</p>
<p><br>
</p>
<p><br>
</p>
<p><span><span>Some hints, for info, &nbsp;</span>I am working with the X31=
0 device, but you can take the big picture.</span><br>
</p>
<p><br>
</p>
<p>I previously met&nbsp; such issues, those were related to signal re-defi=
nitions.</p>
<p><br>
</p>
<p>The file *rfnoc_ce_auto_inst_x310.v* at lines 19/20 is re-defining the c=
e_clk/ce_rst signals by assigning to them&nbsp; radio_clk/radio_rst signals=
. The issue here is that ce_clk is a clock of its own and is already define=
d in the top block file *x300.v* at lines
 259 and 290. My filepath is <span>rfnoc/src/uhd-fpga/usrp3/top/x300/</span=
>.<br>
</p>
<p><br>
</p>
<p>Vivado 2017.4 would just let this pass but when I moved to Vivado 2018.4=
 the build would each time fail, popping Net having multiple drivers errors=
.&nbsp;<br>
</p>
<p><br>
</p>
<p>Changing the ce_clk/ce_rst signals names in the <span>*rfnoc_ce_auto_ins=
t_x310.v*</span> and modifying this instantiation file accordingly will mak=
e the build work. The solution is ok
<span>If you are using a different custom&nbsp; instantiation file,.</span>=
 <br>
</p>
<p><br>
</p>
<p>However, I am not sure that in your case it will help, because your <spa=
n>*rfnoc_ce_auto_inst_x310.v*</span> file is re-created at each build comma=
nd. So likely anything you update in the file will be dumped at the next bu=
ild.&nbsp;</p>
</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cal=
ibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
<br>
</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cal=
ibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
<br>
<p><br>
</p>
<p>Best Regards</p>
<p>Cherif<br>
</p>
<p><br>
</p>
<p><br>
</p>
</div>
</div>
</body>
</html>

--_000_3f128547beb4452c88c27a70038afe5dtudelftnl_--


--===============4348132563479536558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4348132563479536558==--

