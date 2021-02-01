Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B1830B1D6
	for <lists+usrp-users@lfdr.de>; Mon,  1 Feb 2021 22:02:48 +0100 (CET)
Received: from [::1] (port=38364 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6gLN-0007Xb-1R; Mon, 01 Feb 2021 16:02:45 -0500
Received: from p-impout006aa.msg.pkvw.co.charter.net ([47.43.26.137]:37209
 helo=p-impout006.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1l6gLI-0007QY-NE
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 16:02:40 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id 6gKdlG6LEFiZV6gKdlHuUg; Mon, 01 Feb 2021 21:01:59 +0000
X-Authority-Analysis: v=2.3 cv=XINOtjpE c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=bpm26yrvxXUA:10 a=etiEgX_XAAAA:8 a=9jyNItP6TKRWr8llQ5MA:9 a=QEXdDO2ut3YA:10
 a=gma0OZqR69CIVHokX4IA:9 a=paHEeFEPHaj80ZHJ:21 a=_W_S_7VecoQA:10
 a=MLbIUA-Bjd6y1alW9qBG:22
Message-Id: <8f457819e23ef15e1ee1e60b4ebd9104d2271e62@webmail>
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [204.115.183.4]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Mon, 01 Feb 2021 21:01:59 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfKRDe4h3vd41wf5xgiGvPDT+tOaX7GrZsm8s0iBN4vTQBbgn5z1oWmEsFlmwPBgVI3E1VDWsb5qMs6dpfvpaIChkVuF3rhJ6SzdkYlz9jBWINKne+ztx
 3enJw4U7jF7l8xiqgZKyS7AShUUfyScfprn6+YI1N8e95ugzHYOZTp6ooEHdwpxGQJ3W7ikmZvnjFA==
Subject: [USRP-users] Error Testing UHD Build on E310 with uhd_usrp_probe
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
From: Dennis Trask via USRP-users <usrp-users@lists.ettus.com>
Reply-To: dtrask1@tampabay.rr.com
Content-Type: multipart/mixed; boundary="===============9130491984304230132=="
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

--===============9130491984304230132==
Content-Type: multipart/alternative;
 boundary="=_c08316d07cd5463821980668a2f1c79b"

--=_c08316d07cd5463821980668a2f1c79b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=0A=0A=09I am attempting to set up a development environment to write so=
ftware=0Afor the E310 by cross-compiling on Ubuntu 18.04. I am using the=
=0Ainstructions here:=0Ahttps://kb.ettus.com/Software_Development_on_the=
_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source=0A[1]=
 =0A=0A=09I have followed all the instructions to build UHD and am now i=
n the=0Asection "Mount and test the UHD build". When I run uhd_usrp_prob=
e on=0Athe E310, I get the following ouput: =0A=0A=09root@ni-e31x-319969=
3:~/newinstall# uhd_usrp_probe  =0A=0A=09-sh: /home/root/newinstall/usr/=
bin/uhd_usrp_probe: No such file or=0Adirectory =0A=0A=09I'm not sure wh=
ere to look for the source of this issue. Has anyone=0Aelse seen this or=
 have an idea of what to look for? =0A=0A=09Thanks, =0A=0A=09Dennis=0A=
=0ALinks:=0A------=0A[1]=0Ahttps://kb.ettus.com/Software_Development_on_=
the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source=0A

--=_c08316d07cd5463821980668a2f1c79b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif=
;color:black">I am attempting=0Ato set up a development environment to w=
rite software for the E310 by=0Across-compiling on Ubuntu 18.04. I am us=
ing the instructions here:&nbsp;<a href=3D"https://kb.ettus.com/Software=
_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettu=
s_from_Source" id=3D"LPlnk336136">https://kb.ettus.com/Software_Developm=
ent_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_So=
urce</a><o:p></o:p></span></p>=0A=0A<p><span style=3D"font-family:&quot;=
Calibri&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>=0A=0A=
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black=
">I have followed=0Aall the instructions to build UHD and am now in the=
 section&nbsp;"Mount=0Aand test the UHD build". When I run uhd_usrp_prob=
e on the E310, I get the=0Afollowing ouput:<o:p></o:p></span></p>=0A=0A<=
p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"=
><o:p>&nbsp;</o:p></span></p>=0A=0A<p class=3D"MsoNormal"><span style=3D=
"font-family:&quot;Calibri&quot;,sans-serif;color:black">root@ni-e31x-31=
99693:~/newinstall#=0Auhd_usrp_probe&nbsp;<o:p></o:p></span></p>=0A=0A<p=
 class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans=
-serif;color:black">-sh:=0A/home/root/newinstall/usr/bin/uhd_usrp_probe:=
 No such file or directory<o:p></o:p></span></p>=0A=0A<p class=3D"MsoNor=
mal"><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:bla=
ck"><o:p>&nbsp;</o:p></span></p>=0A=0A<p class=3D"MsoNormal"><span style=
=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p>&nbsp;<=
/o:p></span></p>=0A=0A<p><span style=3D"font-family:&quot;Calibri&quot;,=
sans-serif;color:black">I'm not sure=0Awhere to look for the source of t=
his issue. Has anyone else seen this or have=0Aan idea of what to look f=
or?<o:p></o:p></span></p>=0A=0A<p><span style=3D"font-family:&quot;Calib=
ri&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>=0A=0A<p><s=
pan style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">Tha=
nks,<o:p></o:p></span></p>=0A=0A<p><span style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif;color:black">Dennis<o:p></o:p></span></p></body></h=
tml>

--=_c08316d07cd5463821980668a2f1c79b--



--===============9130491984304230132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9130491984304230132==--


