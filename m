Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CBE12FCB1
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 19:42:32 +0100 (CET)
Received: from [::1] (port=46400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inRtz-0000xp-Su; Fri, 03 Jan 2020 13:42:27 -0500
Received: from mailservice.tudelft.nl ([130.161.131.5]:47261)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1inRtw-0000qy-QN
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 13:42:24 -0500
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 153F4CC00D2;
 Fri,  3 Jan 2020 19:41:41 +0100 (CET)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: 0.805
X-Spam-Level: 
X-Spam-Status: No, score=0.805 tagged_above=-99 required=5
 tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
 HTTPS_HTTP_MISMATCH=1, RDNS_NONE=0.793, SPF_HELO_NONE=0.001]
 autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.74])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nIWzouiivvtK; Fri,  3 Jan 2020 19:41:40 +0100 (CET)
Received: from SRV222.tudelft.net (mailboxcluster.tudelft.net [131.180.6.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx3.tudelft.nl (Postfix) with ESMTPS id F1959CC00CB;
 Fri,  3 Jan 2020 19:41:39 +0100 (CET)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV222.tudelft.net
 (131.180.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.1847.3; Fri, 3 Jan
 2020 19:41:33 +0100
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.1847.005; Fri, 3 Jan 2020 19:41:33 +0100
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
Thread-Index: AQHVwmMnM9EHeQoE/EePlkVli2rZS6fZRFTJ
Date: Fri, 3 Jan 2020 18:41:33 +0000
Message-ID: <64c3e7d188ca4d6c86cb70334f813570@tudelft.nl>
References: <3f128547beb4452c88c27a70038afe5d@tudelft.nl>,
 <CAEXYVK5k_9JsOfdD3fOd8yp+5rqMFPhCwyCKXiO6uAz980PjGA@mail.gmail.com>
In-Reply-To: <CAEXYVK5k_9JsOfdD3fOd8yp+5rqMFPhCwyCKXiO6uAz980PjGA@mail.gmail.com>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6610566654620570141=="
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

--===============6610566654620570141==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_64c3e7d188ca4d6c86cb70334f813570tudelftnl_"

--_000_64c3e7d188ca4d6c86cb70334f813570tudelftnl_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have this version UHD 3.15.0.git-84-g164d76dc

but the lines are there whenever you use the  ./uhd_image_builder.py script=
s.

Best Regards
Cherif



________________________________
From: Brian Padalino <bpadalino@gmail.com>
Sent: Friday, January 3, 2020 7:25:00 PM
To: Cherif Diouf
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Building RFNoC image with default blocks fails, [=
DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers

On Fri, Jan 3, 2020 at 1:14 PM Cherif Diouf via USRP-users <usrp-users@list=
s.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

Hi Jerrid,



Some hints, for info,  I am working with the X310 device, but you can take =
the big picture.


I previously met  such issues, those were related to signal re-definitions.


The file *rfnoc_ce_auto_inst_x310.v* at lines 19/20 is re-defining the ce_c=
lk/ce_rst signals by assigning to them  radio_clk/radio_rst signals. The is=
sue here is that ce_clk is a clock of its own and is already defined in the=
 top block file *x300.v* at lines 259 and 290. My filepath is rfnoc/src/uhd=
-fpga/usrp3/top/x300/.

In the 3.15.0.0 code on github I don't see what you're talking about:

  https://github.com/EttusResearch/fpga/blob/fde2a94eb7231af859653db8caaf77=
7ae2b66199/usrp3/top/x300/rfnoc_ce_auto_inst_x300.v<https://urldefense.proo=
fpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch_fpga_blob_fde2a94e=
b7231af859653db8caaf777ae2b66199_usrp3_top_x300_rfnoc-5Fce-5Fauto-5Finst-5F=
x300.v&d=3DDwMFaQ&c=3DXYzUhXBD2cD-CornpT4QE19xOJBbRy-TBPLK0X9U2o8&r=3DxIsHd=
XnCRYoK3O7I17CLaka29UJ1VwI3mC9u8FAc7Ss&m=3Duyt3D3vrCo1sD1ffyQEPYhBW4X1kPu-y=
dtQoXIbEFIA&s=3DoWOA1dV-heZzHDmVnnGT9vrXUo3FwHl3BxJ3Eq3s6q0&e=3D>

Looking at the history of the file, it looked like that might have been rem=
oved way back in 2016 in commit c98bc14fe0ea2c27a5629a24d47915eb7e0b6700.

Jerrid - do you have those lines that Cherif is describing?

Brian

--_000_64c3e7d188ca4d6c86cb70334f813570tudelftnl_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div>I have this version UHD 3.15.0.git-84-g164d76dc</div>
<div><br>
</div>
<div>but the lines are there whenever you use the <span>&nbsp;./uhd_image_b=
uilder.py</span> scripts.</div>
<div><br>
</div>
<div>Best Regards</div>
<div>Cherif<br>
<br>
</div>
<br>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Brian Padalino &lt;bp=
adalino@gmail.com&gt;<br>
<b>Sent:</b> Friday, January 3, 2020 7:25:00 PM<br>
<b>To:</b> Cherif Diouf<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Building RFNoC image with default blocks f=
ails, [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Fri, Jan 3, 2020 at 1:14 PM Cherif Diouf via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br>
</div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_7756866543538010861divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<div id=3D"gmail-m_7756866543538010861divtagdefaultwrapper" dir=3D"ltr" sty=
le=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-se=
rif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,Noto=
ColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbo=
ls">
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
</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>In the 3.15.0.0 code on github I don't see what you're talking about:<=
/div>
<div><br>
</div>
<div>&nbsp;&nbsp;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__github.com_EttusResearch_fpga_blob_fde2a94eb7231af859653db8caaf777a=
e2b66199_usrp3_top_x300_rfnoc-5Fce-5Fauto-5Finst-5Fx300.v&amp;d=3DDwMFaQ&am=
p;c=3DXYzUhXBD2cD-CornpT4QE19xOJBbRy-TBPLK0X9U2o8&amp;r=3DxIsHdXnCRYoK3O7I1=
7CLaka29UJ1VwI3mC9u8FAc7Ss&amp;m=3Duyt3D3vrCo1sD1ffyQEPYhBW4X1kPu-ydtQoXIbE=
FIA&amp;s=3DoWOA1dV-heZzHDmVnnGT9vrXUo3FwHl3BxJ3Eq3s6q0&amp;e=3D">https://g=
ithub.com/EttusResearch/fpga/blob/fde2a94eb7231af859653db8caaf777ae2b66199/=
usrp3/top/x300/rfnoc_ce_auto_inst_x300.v</a></div>
<div><br>
</div>
<div>Looking at the history of the file, it looked like that might have bee=
n removed way back in 2016 in commit&nbsp;c98bc14fe0ea2c27a5629a24d47915eb7=
e0b6700.</div>
<div>&nbsp;<br>
</div>
<div>Jerrid - do you have those lines that Cherif is describing?</div>
<div><br>
</div>
<div>Brian</div>
</div>
</div>
</div>
</body>
</html>

--_000_64c3e7d188ca4d6c86cb70334f813570tudelftnl_--


--===============6610566654620570141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6610566654620570141==--

