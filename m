Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5489C0A5E
	for <lists+usrp-users@lfdr.de>; Fri, 27 Sep 2019 19:33:16 +0200 (CEST)
Received: from [::1] (port=54252 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDu7E-0008HP-RW; Fri, 27 Sep 2019 13:33:12 -0400
Received: from mailservice.tudelft.nl ([130.161.131.5]:48136)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1iDu7A-0008Bx-Uf
 for usrp-users@lists.ettus.com; Fri, 27 Sep 2019 13:33:09 -0400
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 19CA2400CA
 for <usrp-users@lists.ettus.com>; Fri, 27 Sep 2019 19:32:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.195
X-Spam-Level: 
X-Spam-Status: No, score=-0.195 tagged_above=-99 required=5
 tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
 RDNS_NONE=0.793, SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.69])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id imMG2y6bsvu2 for <usrp-users@lists.ettus.com>;
 Fri, 27 Sep 2019 19:32:21 +0200 (CEST)
Received: from SRV219.tudelft.net (srv219.tudelft.net [131.180.6.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.tudelft.nl (Postfix) with ESMTPS id 5F7DD400C5
 for <usrp-users@lists.ettus.com>; Fri, 27 Sep 2019 19:32:21 +0200 (CEST)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV219.tudelft.net
 (131.180.6.19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.1713.5; Fri, 27
 Sep 2019 19:32:15 +0200
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.1713.009; Fri, 27 Sep 2019 19:32:15 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: One sample - 5 ns delay between the two RF signals/ X310
Thread-Index: AQHVdJ3O+aDrcDyjbEK3uBO/v/73aac/x0yI
Date: Fri, 27 Sep 2019 17:32:15 +0000
Message-ID: <8e4c35c4670641f1aa546146cda04961@tudelft.nl>
References: <f8f84407bde942e199e079c598b33d34@tudelft.nl>
In-Reply-To: <f8f84407bde942e199e079c598b33d34@tudelft.nl>
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
Content-Type: multipart/mixed; boundary="===============0353412985927319629=="
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

--===============0353412985927319629==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8e4c35c4670641f1aa546146cda04961tudelftnl_"

--_000_8e4c35c4670641f1aa546146cda04961tudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

fabian,


I have tested your solution, but the get_time_last_pps always gives me the =
expect value.



Daniel, On a different point, the issue might be related to timing, here ar=
e some examples of  timing related to the DACs. The compilation is successf=
ul but the margin is very low, in the 10 ps order.




Startpoint                     Endpoint                       Slack(ns)
---------------------------------------------------------------------------=
-
gen_db1/gen_pins[2].oddr/C     DB1_DAC_D2_N                   0.016
gen_db1/gen_pins[2].oddr/C     DB1_DAC_D2_P                   0.016
gen_db1/gen_pins[7].oddr/C     DB1_DAC_D7_N                   0.021
gen_db1/gen_pins[7].oddr/C     DB1_DAC_D7_P                   0.021
gen_db1/gen_pins[3].oddr/C     DB1_DAC_D3_N                   0.024
gen_db1/gen_pins[3].oddr/C     DB1_DAC_D3_P                   0.024



gen_db0/gen_pins[2].oddr/C     DB0_DAC_D2_N                   0.066
gen_db0/gen_pins[2].oddr/C     DB0_DAC_D2_P                   0.066
gen_db0/gen_pins[0].oddr/C     DB0_DAC_D0_N                   0.071
gen_db0/gen_pins[0].oddr/C     DB0_DAC_D0_P                   0.071
gen_db0/oddr_frame/C           DB0_DAC_FRAME_N                0.075
gen_db0/oddr_frame/C           DB0_DAC_FRAME_P                0.075
gen_db0/gen_pins[3].oddr/C     DB0_DAC_D3_N                   0.080
gen_db0/gen_pins[3].oddr/C     DB0_DAC_D3_P                   0.080
gen_db0/gen_pins[1].oddr/C     DB0_DAC_D1_N                   0.085
gen_db0/gen_pins[1].oddr/C     DB0_DAC_D1_P                   0.085



Best Regards

Cherif

--_000_8e4c35c4670641f1aa546146cda04961tudelftnl_
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
<p>fabian,</p>
<p><br>
</p>
<p>I have tested your solution, but the <font size=3D"2"><span style=3D"fon=
t-size:10pt;">get_time_last_pps</span></font> always gives me the expect va=
lue.</p>
<p><br>
</p>
<p><br>
</p>
<p><font size=3D"2">Daniel</font>, On a different point, the issue might be=
 related to timing, here are some examples of&nbsp; timing related to the D=
ACs. The compilation is successful but the margin is very low, in the 10 ps=
 order.
<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p></p>
<div>Startpoint&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Endpoint&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Slack(ns)&nbsp;&nbsp;&n=
bsp; &nbsp;<br>
---------------------------------------------------------------------------=
-<br>
gen_db1/gen_pins[2].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB1_DAC_D2_N&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.016&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db1/gen_pins[2].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB1_DAC_D2_P&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.016&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db1/gen_pins[7].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB1_DAC_D7_N&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.021&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db1/gen_pins[7].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB1_DAC_D7_P&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.021&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db1/gen_pins[3].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB1_DAC_D3_N&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.024&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db1/gen_pins[3].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB1_DAC_D3_P&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.024&nbsp;&nbsp;&nbsp;&nbsp; <br>
</div>
<p></p>
<p><br>
</p>
<p><br>
</p>
<p></p>
<div>gen_db0/gen_pins[2].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB0_DAC_D2_N&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; 0.066&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;<br>
gen_db0/gen_pins[2].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB0_DAC_D2_P&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.066&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db0/gen_pins[0].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB0_DAC_D0_N&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.071&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db0/gen_pins[0].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB0_DAC_D0_P&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.071&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db0/oddr_frame/C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; DB0_DAC_FRAME_N&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.075&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; &nbsp;<br>
gen_db0/oddr_frame/C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; DB0_DAC_FRAME_P&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.075&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; &nbsp;<br>
gen_db0/gen_pins[3].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB0_DAC_D3_N&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.080&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db0/gen_pins[3].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB0_DAC_D3_P&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.080&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db0/gen_pins[1].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB0_DAC_D1_N&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.085&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;<br>
gen_db0/gen_pins[1].oddr/C&nbsp;&nbsp;&nbsp;&nbsp; DB0_DAC_D1_P&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 0.085&nbsp; <br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
Best Regards
<p></p>
<p>Cherif<br>
</p>
</div>
</body>
</html>

--_000_8e4c35c4670641f1aa546146cda04961tudelftnl_--


--===============0353412985927319629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0353412985927319629==--

