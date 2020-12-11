Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2108F2D802A
	for <lists+usrp-users@lfdr.de>; Fri, 11 Dec 2020 21:48:54 +0100 (CET)
Received: from [::1] (port=55452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knpLR-0005Ti-61; Fri, 11 Dec 2020 15:48:53 -0500
Received: from unifiededge.gtri.gatech.edu ([130.207.205.170]:58770)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1knpLN-0005Jf-4p
 for usrp-users@lists.ettus.com; Fri, 11 Dec 2020 15:48:49 -0500
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
 c=simple/simple; t=1607719688; h=from:subject:to:date:message-id;
 bh=O3yGUn12qN9tT4h8jJ+P91d+djgy+ljSqBy3bP6WMFQ=;
 b=eSH+oIuPKc9sNpY02/g/+vW39ZdpOZQU4bdx7DtRrM8btBVxqkG84bR7/QkyIDI9YuKsfOUnm02
 kNSMn4eMzyKq9oRnhqM9VKX5UGImvwpgA2c7zDT5fiDbvgXBZNNCNHbfFhsonRgf9KtyYd0mUBPSf
 rjvQmxiUj78nT9lCVmfHqzSui88qvmkr9XMMRgXP74TI3J5c69BSawj2pwT6lGHNJEzzdmEdZtAG2
 inrZC6FhzPbCXwdq41OzBfY4Jw8Bh9mbWKFP0g4th2rdLL5+XPwU0q/NFCYG87i1gonxgdqe85Buq
 0rkhYUvSgc1NiC+AGB0Z5oZ2XSt6O3fCqSbw==
Received: from tybee.core.gtri.org (10.41.1.49) by exedge07.gtri.dmz
 (10.41.104.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.721.2; Fri, 11 Dec 2020
 15:48:08 -0500
Received: from ocracoke.core.gtri.org (10.41.22.71) by tybee.core.gtri.org
 (10.41.1.49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2106.2; Fri, 11
 Dec 2020 15:48:08 -0500
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2106.003; Fri, 11 Dec 2020 15:48:08 -0500
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC passing metadata on the dataplane
Thread-Index: AQHWz/5y9sxuekizpkOdUF+q+HvBN6nyXaCp
Date: Fri, 11 Dec 2020 20:48:07 +0000
Message-ID: <72b3782485534f1c843149b5b70ef955@gtri.gatech.edu>
References: <0de28dac284d443f97212f5559446f66@gtri.gatech.edu>
In-Reply-To: <0de28dac284d443f97212f5559446f66@gtri.gatech.edu>
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
Content-Type: multipart/mixed; boundary="===============8366113810694650546=="
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

--===============8366113810694650546==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_72b3782485534f1c843149b5b70ef955gtrigatechedu_"

--_000_72b3782485534f1c843149b5b70ef955gtrigatechedu_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I meant rfnoc_create_verilog.py


https://github.com/EttusResearch/uhd/blob/master/host/utils/rfnoc_blocktool=
/rfnoc_create_verilog.py


jeff

________________________________
From: Hodges, Jeff
Sent: Friday, December 11, 2020 3:44:41 PM
To: usrp-users@lists.ettus.com
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




--_000_72b3782485534f1c843149b5b70ef955gtrigatechedu_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>I meant rfnoc_create_verilog.py<br>
</p>
<p><br>
</p>
<p><a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/utils/r=
fnoc_blocktool/rfnoc_create_verilog.py" class=3D"OWAAutoLink" id=3D"LPlnk88=
9110" previewremoved=3D"true">https://github.com/EttusResearch/uhd/blob/mas=
ter/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py</a></p>
<p><br>
</p>
<p>jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Hodges, Jeff<br>
<b>Sent:</b> Friday, December 11, 2020 3:44:41 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> RFNoC passing metadata on the dataplane</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
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
</body>
</html>

--_000_72b3782485534f1c843149b5b70ef955gtrigatechedu_--


--===============8366113810694650546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8366113810694650546==--

