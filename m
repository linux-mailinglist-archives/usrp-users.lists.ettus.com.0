Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2080A30C87F
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 18:54:07 +0100 (CET)
Received: from [::1] (port=49318 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6zsM-0001gs-1u; Tue, 02 Feb 2021 12:54:06 -0500
Received: from p-impout005aa.msg.pkvw.co.charter.net ([47.43.26.136]:35617
 helo=p-impout005.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1l6zsH-0001Z6-Ae
 for usrp-users@lists.ettus.com; Tue, 02 Feb 2021 12:54:01 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id 6zrbli7CSbGHJ6zrclVDWf; Tue, 02 Feb 2021 17:53:20 +0000
X-Authority-Analysis: v=2.3 cv=A5oSwJeG c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=Jp7JS-XeckIA:10 a=etiEgX_XAAAA:8 a=H71bEZ-wH2c9sU5widsA:9 a=QEXdDO2ut3YA:10
 a=-9mhMHmBwZnwXGGSq7QA:9 a=qSEYX5wgvnAk5m1f:21 a=_W_S_7VecoQA:10
 a=MLbIUA-Bjd6y1alW9qBG:22
Message-Id: <d8853f6d78b7e4609b6485cc4867a749296a8898@webmail>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Tue, 02 Feb 2021 17:53:19 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfPol9PrieOAa8bahCRAUE2s8ADdPck4IE17O67o8t/zUi2OP6Bf8ExoZCmU70iPsKDhTPNrs2J3s2RUnIXuEuOWMuLS359sXfrLx9xJLtErTuccQfISP
 YvlR2//ZiVlXmswo2fSIf1mNwBNAPc7GV0R+T0HrJ/2UowEBQH782hhEQnZFNZBSiik1z5YciNDU5ME1RZtDnBvW6YaMbij7AGc=
Subject: Re: [USRP-users] Error Testing UHD Build on E310 with uhd_usrp_probe
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
Content-Type: multipart/mixed; boundary="===============2055833537165546895=="
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

--===============2055833537165546895==
Content-Type: multipart/alternative;
 boundary="=_bc7a7a3a928ab81bb012a1449c6e7c24"

--=_bc7a7a3a928ab81bb012a1449c6e7c24
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Here is the output, Marcus:=0Aroot@ni-e31x-3199693:~/newinstall# file=0A=
/home/root/newinstall/usr/bin/uhd_usrp_probe/home/root/newinstall/usr/bi=
n/uhd_usrp_probe:=0AELF 32-bit LSB executable, ARM, EABI5 version 1 (SYS=
V), dynamically=0Alinked, interpreter /lib/ld-linux-armhf.so.3, for GNU/=
Linux 2.6.32,=0ABuildID[sha1]=3D5c924895fbe10218be809ba29f88d7993fb117d7=
, with=0Adebug_info, not stripped=0Aroot@ni-e31x-3199693:~/newinstall# w=
hich=0Auhd_usrp_probe/home/root/newinstall/usr/bin/uhd_usrp_probe=0AAppr=
eciate the help.=0ADennis=0A=0A=09--------------------------------------=
---From: "Marcus D. Leech via=0AUSRP-users" =0ATo: usrp-users@lists.ettu=
s.com=0ACc: =0ASent: Monday February 1 2021 4:06:23PM=0ASubject: Re: [US=
RP-users] Error Testing UHD Build on E310 with=0Auhd_usrp_probe=0A=0A On=
 02/01/2021 04:01 PM, Dennis Trask via USRP-users wrote:=0A=0A=09I am at=
tempting to set up a development environment to write software=0Afor the=
 E310 by cross-compiling on Ubuntu 18.04. I am using the=0Ainstructions=
 here: =0A[1]https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_=
-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source=0A[2] =0A=0A=09I=
 have followed all the instructions to build UHD and am now in the=0Asec=
tion "Mount and test the UHD build". When I run uhd_usrp_probe on=0Athe=
 E310, I get the following ouput: =0A=0A=09root@ni-e31x-3199693:~/newins=
tall# uhd_usrp_probe  =0A=0A=09-sh: /home/root/newinstall/usr/bin/uhd_us=
rp_probe: No such file or=0Adirectory =0A=0A=09   If you do:=0A=0A file=
 /home/root/newinstall/usr/bin/uhd_usrp_probe=0A=0A What do you get?=0A=
=0A If you do:=0A=0A which uhd_usrp_probe=0A=0A What do you get?=0A=0A=
=09I'm not sure where to look for the source of this issue. Has anyone=
=0Aelse seen this or have an idea of what to look for? =0A=0A=09Thanks,=
 =0A=0A=09Dennis =0A=0A _______________________________________________=
=0A USRP-users mailing list=0A "mailto:USRP-users@lists.ettus.com">USRP-=
users@lists.ettus.com=0A "http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com">=0A[3] target=3D=0A "_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com=0A=0A=0A=0ALinks:=0A------=
=0A[1]=0Ahttps://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Bu=
ilding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source=0A[2]=0Ahttps://kb.e=
ttus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GN=
U_Radio_/_gr-ettus_from_Source=0A[3] http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com=0A

--=_bc7a7a3a928ab81bb012a1449c6e7c24
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div>Here is the output, Marcus:</div><div><br></div><div>ro=
ot@ni-e31x-3199693:~/newinstall# file /home/root/newinstall/usr/bin/uhd_=
usrp_probe</div><div>/home/root/newinstall/usr/bin/uhd_usrp_probe: ELF 3=
2-bit LSB executable, ARM, EABI5 version 1 (SYSV), dynamically linked, i=
nterpreter /lib/ld-linux-armhf.so.3, for GNU/Linux 2.6.32, BuildID[sha1]=
=3D5c924895fbe10218be809ba29f88d7993fb117d7, with debug_info, not stripp=
ed</div><div><br></div><div>root@ni-e31x-3199693:~/newinstall# which uhd=
_usrp_probe</div><div>/home/root/newinstall/usr/bin/uhd_usrp_probe</div>=
<div><br></div>Appreciate the help.<div><br></div><div>Dennis</div><div>=
<br><div class=3D"reply-new-signature"></div><p>------------------------=
-----------------</p>From: "Marcus D. Leech via USRP-users" <usrp-users@=
lists.ettus.com><br>To: usrp-users@lists.ettus.com<br>Cc: <br>Sent: Mond=
ay February 1 2021 4:06:23PM<br>Subject: Re: [USRP-users] Error Testing=
 UHD Build on E310 with uhd_usrp_probe<br><br>=0A<div class=3D"moz-cite-=
prefix">On 02/01/2021 04:01 PM, Dennis Trask=0Avia USRP-users wrote:<br>=
</div>=0A<blockquote>=0A<p><span style=3D"font-family:Calibri, sans-seri=
f;color:#000000;">I am=0Aattempting to set up a development environment=
 to write software=0Afor the E310 by cross-compiling on Ubuntu 18.04. I=
 am using the=0Ainstructions here:&nbsp;<a href=3D"https://kb.ettus.com/=
Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/=
_gr-ettus_from_Source"></a><a href=3D"https://kb.ettus.com/Software_Deve=
lopment_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_fro=
m_Source">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_B=
uilding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a></span></p>=0A<p=
><span style=3D"font-family:Calibri, sans-serif;color:#000000;">&nbsp;</=
span></p>=0A<p><span style=3D"font-family:Calibri, sans-serif;color:#000=
000;">I have=0Afollowed all the instructions to build UHD and am now in=
 the=0Asection&nbsp;"Mount and test the UHD build". When I run=0Auhd_usr=
p_probe on the E310, I get the following ouput:</span></p>=0A<p><span st=
yle=3D"font-family:Calibri, sans-serif;color:#000000;">&nbsp;</span></p>=
=0A<p class=3D"MsoNormal"><span style=3D"font-family:Calibri, sans-serif=
;color:#000000;">root@ni-e31x-3199693:~/newinstall#=0Auhd_usrp_probe&nbs=
p;</span></p>=0A<p class=3D"MsoNormal"><span style=3D"font-family:Calibr=
i, sans-serif;color:#000000;">-sh:=0A/home/root/newinstall/usr/bin/uhd_u=
srp_probe: No such file or=0Adirectory</span></p>=0A<p class=3D"MsoNorma=
l"><span style=3D"font-family:Calibri, sans-serif;color:#000000;">&nbsp;=
</span></p>=0A<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,=
 sans-serif;color:#000000;">&nbsp;</span></p>=0A</blockquote>=0AIf you d=
o:<br><br>=0Afile /home/root/newinstall/usr/bin/uhd_usrp_probe<br><br>=
=0AWhat do you get?<br><br>=0AIf you do:<br><br>=0Awhich uhd_usrp_probe<=
br><br>=0AWhat do you get?<br><br><br><blockquote>=0A<p><span style=3D"f=
ont-family:Calibri, sans-serif;color:#000000;">I'm not=0Asure where to l=
ook for the source of this issue. Has anyone else=0Aseen this or have an=
 idea of what to look for?</span></p>=0A<p><span style=3D"font-family:Ca=
libri, sans-serif;color:#000000;">&nbsp;</span></p>=0A<p><span style=3D"=
font-family:Calibri, sans-serif;color:#000000;">Thanks,</span></p>=0A<p>=
<span style=3D"font-family:Calibri, sans-serif;color:#000000;">Dennis</s=
pan></p>=0A<br><br>=0A_______________________________________________<br=
>=0AUSRP-users mailing list<br><a class=3D"moz-txt-link-abbreviated" hre=
f=3D""></a>=0A"mailto:USRP-users@lists.ettus.com"&gt;USRP-users@lists.et=
tus.com<br><a class=3D"moz-txt-link-freetext" href=3D""></a>=0A"http://l=
ists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"&gt;<a href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">=
</a>=0Atarget=3D<br>=0A"_blank"&gt;http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com<br></blockquote>=0A<br></usrp-users@lists.=
ettus.com></div></body></html>

--=_bc7a7a3a928ab81bb012a1449c6e7c24--



--===============2055833537165546895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2055833537165546895==--


