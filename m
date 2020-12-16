Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2992DB9FC
	for <lists+usrp-users@lfdr.de>; Wed, 16 Dec 2020 05:19:30 +0100 (CET)
Received: from [::1] (port=45582 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kpOHf-00011I-2X; Tue, 15 Dec 2020 23:19:27 -0500
Received: from unifiededge.gtri.gatech.edu ([130.207.205.170]:22225)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1kpOHb-0000rS-2K
 for usrp-users@lists.ettus.com; Tue, 15 Dec 2020 23:19:23 -0500
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
 c=simple/simple; t=1608092322; h=from:subject:to:date:message-id;
 bh=Fr0zkeWwa29zQj95Ug4/xs17uwxJfa0Vy1W8PGAtdH8=;
 b=JsASB1G0672UiwitHk8/UktbeiEZPZ/KoBvJziYUQXm84esBRAbr5qh5UnU2zGhsSrvgDHa+YwY
 Sy9zqGVz+LI2f8+flvBEb7XkPxv1u2AR+hGyT7e4Xy+gyhF+PabaBSPlpmMJ48ng/BhjqvRTed9B+
 BmK46h4xV9juwNF/r4pXlOFeHfzvMVTSqUxV00FEzGvZndckNTzi+g7/hCv8jT2S2TojH8U1Fjxcj
 P1sa+xbjxCmzjcVNQZA7we/BUkoXweu4e+sA5QUmR1au/TgqNgMbYagzLksaQaWz7a4QmNz5nF7fZ
 3IAXZ2N7amogyJG68WKUQDVJIoomgAcl8NZg==
Received: from hatteras.core.gtri.org (10.41.22.72) by exedge06.gtri.dmz
 (10.41.104.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.721.2; Tue, 15 Dec 2020
 23:18:42 -0500
Received: from ocracoke.core.gtri.org (2610:148:610:2916::71) by
 hatteras.core.gtri.org (2610:148:610:2916::72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2106.2; Tue, 15 Dec 2020 23:18:39 -0500
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2106.003; Tue, 15 Dec 2020 23:18:39 -0500
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] RFNoC passing metadata on the dataplane
Thread-Index: AQHWz/5y9sxuekizpkOdUF+q+HvBN6nyXaCpgABkx4CABmASHw==
Date: Wed, 16 Dec 2020 04:18:39 +0000
Message-ID: <95cdc0110e3446408a8916ac27624629@gtri.gatech.edu>
References: <0de28dac284d443f97212f5559446f66@gtri.gatech.edu>
 <72b3782485534f1c843149b5b70ef955@gtri.gatech.edu>,
 <CAL7q81uuY5BK8RGHk0M_Wgo_9gheOzWJ1t=RstwWFAn=zBbS_A@mail.gmail.com>
In-Reply-To: <CAL7q81uuY5BK8RGHk0M_Wgo_9gheOzWJ1t=RstwWFAn=zBbS_A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: Re: [USRP-users] RFNoC passing metadata on the dataplane
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
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============8306649534980138990=="
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

--===============8306649534980138990==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_95cdc0110e3446408a8916ac27624629gtrigatechedu_"

--_000_95cdc0110e3446408a8916ac27624629gtrigatechedu_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thanks, Jonathan, that is very helpful. Two questions using SIMPLE_MODE=3D0=
 and AXI wrapper:

1.       Is  there a document describing the CHDR header for 3.15? Looking =
at the  code, there are significant differences between the header format i=
n  3.15 and what=92s in the 4.0 spec. I think I understand it from the code=
, but if there=92s a doc with more detail or explanation, that would be use=
ful.
2.       Is there a maximum payload size for a CHDR data packet

Jeff


________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Friday, December 11, 2020 4:47:57 PM
To: Hodges, Jeff
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] RFNoC passing metadata on the dataplane

Hi Jeff,

RFNoC3 / UHD 3.15 does not support metadata. That is a new feature in RFNoC=
4 / UHD 4.0, so option 2 is not possible.

If you want to send out metadata in RFNoC3, I would suggest prepending it t=
o packets you send to AXI wrapper. You can still use SIMPLE_MODE as long as=
 you are producing a packet for every packet consumed. The different input/=
output packet lengths do not matter as AXI wrapper internally calculates th=
e output packet length and updates the header automatically.

Jonathon

On Fri, Dec 11, 2020 at 3:48 PM Hodges, Jeff via USRP-users <usrp-users@lis=
ts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

I meant rfnoc_create_verilog.py


https://github.com/EttusResearch/uhd/blob/master/host/utils/rfnoc_blocktool=
/rfnoc_create_verilog.py


jeff

________________________________
From: Hodges, Jeff
Sent: Friday, December 11, 2020 3:44:41 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: RFNoC passing metadata on the dataplane


I'd like to pass metadata over the dataplane using the available space in t=
he CHDR header.  However, I cannot find an easy way to do this using UHD3.1=
5.


I've identified two possible approaches but I'm not sure either will work:
(1) Set AXI_Wrapper (Simple_Mode =3D0) to require user provided CHDR header=
. It's unclear how to provide the header, and if this can be modified quick=
ly.

(2) Expose the AXI-Stream CHDR interface the way UHD4.0 does it:

In UHD4.0 the verilog_image_builder.py includes the options to expose HDL i=
nterface:

o Definition: Which HDL interface to expose
o Options: =93AXI-Stream CHDR=94 (axis_chdr), =93AXI-Stream Payload Context=
=94 (axis_pyld_ctxt), or =93AXI-Stream Data=94 (axis_data)

If Option (2) is the recommended, can I just copy the code from verilog_ima=
ge_builder.py TEMPLATE such as below, or were other changes made to make it=
 incompatible with 3.15?

 %if config['data']['fpga_iface'] =3D=3D "axis_pyld_ctxt":
assign axis_data_clk =3D ${config['data']['clk_domain']}_clk;
assign axis_data_rst =3D ${config['data']['clk_domain']}_rst;
 <%include file=3D"/modules/axis_pyld_ctxt_modules_template.mako"/>



Thanks,

Jeff




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_95cdc0110e3446408a8916ac27624629gtrigatechedu_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div>Thanks, Jonathan, that is very helpful. Two questions using SIMPLE_MOD=
E=3D0 and AXI wrapper:<br>
&nbsp;<br>
1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Is&nbsp; there a document describing=
 the CHDR header for 3.15? Looking at the&nbsp; code, there are significant=
 differences between the header format in&nbsp; 3.15 and what=92s in the 4.=
0 spec. I think I understand it from the code, but if there=92s a doc with =
more detail
 or explanation, that would be useful. <br>
2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Is there a maximum payload size for =
a CHDR data packet&nbsp;&nbsp;</div>
<div><br>
</div>
<div>Jeff<br>
</div>
<br>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jonathon Pendlum &lt;=
jonathon.pendlum@ettus.com&gt;<br>
<b>Sent:</b> Friday, December 11, 2020 4:47:57 PM<br>
<b>To:</b> Hodges, Jeff<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] RFNoC passing metadata on the dataplane</f=
ont>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jeff,
<div><br>
</div>
<div>RFNoC3 / UHD 3.15 does not support metadata. That is a new feature in =
RFNoC4 / UHD 4.0, so option 2 is not possible.</div>
<div><br>
</div>
<div>If you want to send out metadata in RFNoC3, I would suggest prepending=
 it to packets you send to AXI wrapper. You can still use SIMPLE_MODE as lo=
ng as you are producing a packet for every packet consumed. The different i=
nput/output packet lengths do not
 matter as AXI wrapper internally calculates the output packet length and u=
pdates the header automatically.</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11, 2020 at 3:48 PM Hodge=
s, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-3086681405321088638gmail-m_2884275641335174869divtagdef=
aultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,H=
elvetica,sans-serif" dir=3D"ltr">
<p>I meant rfnoc_create_verilog.py<br>
</p>
<p><br>
</p>
<p><a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/utils/r=
fnoc_blocktool/rfnoc_create_verilog.py" id=3D"gmail-m_-3086681405321088638g=
mail-m_2884275641335174869LPlnk889110" target=3D"_blank">https://github.com=
/EttusResearch/uhd/blob/master/host/utils/rfnoc_blocktool/rfnoc_create_veri=
log.py</a></p>
<p><br>
</p>
<p>jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-3086681405321088638gmail-m_2884275641335174869divRplyFw=
dMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#00000=
0"><b>From:</b> Hodges, Jeff<br>
<b>Sent:</b> Friday, December 11, 2020 3:44:41 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> RFNoC passing metadata on the dataplane</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"gmail-m_-3086681405321088638gmail-m_2884275641335174869divtagdef=
aultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,H=
elvetica,sans-serif" dir=3D"ltr">
<p>I'd like to pass metadata over the dataplane using the available space i=
n the CHDR header.&nbsp; However, I cannot find an easy way to do this usin=
g UHD3.15.</p>
<p><br>
</p>
<p>I've identified two possible approaches but I'm not sure either will wor=
k:<br>
(1) Set AXI_Wrapper (Simple_Mode =3D0) to require user provided CHDR header=
. It's unclear how to provide the header, and if this can be modified quick=
ly.</p>
<p>(2) Expose the AXI-Stream CHDR interface the way UHD4.0 does it:<br>
</p>
<p>In UHD4.0 the verilog_image_builder.py includes the options to expose HD=
L interface:</p>
<p></p>
<div>o Definition: Which HDL interface to expose<br>
o Options: =93AXI-Stream CHDR=94 (axis_chdr), =93AXI-Stream Payload Context=
=94 (axis_pyld_ctxt), or =93AXI-Stream Data=94 (axis_data)</div>
<div><br>
</div>
<div>If Option (2) is the recommended, can I just copy the code from verilo=
g_image_builder.py TEMPLATE such as below, or were other changes made to ma=
ke it incompatible with 3.15?</div>
<div><br>
</div>
<div>
<div>&nbsp;%if config['data']['fpga_iface'] =3D=3D &quot;axis_pyld_ctxt&quo=
t;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
</div>
<div>assign axis_data_clk =3D ${config['data']['clk_domain']}_clk;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
</div>
<div>assign axis_data_rst =3D ${config['data']['clk_domain']}_rst;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
&nbsp;&lt;%include file=3D&quot;/modules/axis_pyld_ctxt_modules_template.ma=
ko&quot;/&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Thanks,</div>
<div><br>
</div>
<div>Jeff<br>
</div>
<div><br>
</div>
<div><br>
</div>
<br>
<p></p>
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
</body>
</html>

--_000_95cdc0110e3446408a8916ac27624629gtrigatechedu_--


--===============8306649534980138990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8306649534980138990==--

