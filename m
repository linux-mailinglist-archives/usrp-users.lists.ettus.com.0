Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5C330C999
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 19:26:01 +0100 (CET)
Received: from [::1] (port=49546 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l70ND-00041l-Px; Tue, 02 Feb 2021 13:25:59 -0500
Received: from p-impout002aa.msg.pkvw.co.charter.net ([47.43.26.133]:44450
 helo=p-impout002.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1l70N9-0003pD-Kg
 for usrp-users@lists.ettus.com; Tue, 02 Feb 2021 13:25:55 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id 70MUlS2W8FRqF70MUlT1rn; Tue, 02 Feb 2021 18:25:14 +0000
X-Authority-Analysis: v=2.3 cv=cZSsUULM c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=Jp7JS-XeckIA:10 a=ayC55rCoAAAA:8 a=etiEgX_XAAAA:8 a=aFltLNpH3nM-BLnLF9YA:9
 a=QEXdDO2ut3YA:10 a=pGLkceISAAAA:8 a=SvKZNMY8GiUL3UST2zkA:9
 a=OSCzxePNnae9ob6xQ8NeqTRz0K8=:19 a=YdCxj_87p5LzDVER:21 a=_W_S_7VecoQA:10
 a=B_RyunTPg8udlmYm5Cu2:22 a=MLbIUA-Bjd6y1alW9qBG:22
Message-Id: <a99d7140dccb15b597e2af4c46b0af47e689c970@webmail>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Tue, 02 Feb 2021 18:25:14 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfA627nfpC1cKlZjOfAQ597IHgrBPuGxa6r3j7qbcl3g92X24uDP6RGJpUf5unOMw55pUcOgqztvMfIhQ+4VHP2x/Blb0mJqwL0AuQlIhSgAjFnPfKpUL
 qws70FXaGfeTpBFlecQGPBjbP53S7WgUQa/z5KvOCbhH0j8AoNAIiXK/8gauJo+LWHEn48aBoHYy2EKnQxVWk/qkSAA543DCuLs=
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
Content-Type: multipart/mixed; boundary="===============4626678303289730065=="
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

--===============4626678303289730065==
Content-Type: multipart/alternative;
 boundary="=_c199b838c25e7b6acab7cd82af85e332"

--=_c199b838c25e7b6acab7cd82af85e332
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Actually, it is not there. I did a find on the entire root file system=
=0Aand that file does not exist on the E310 device. =0A=0A=09-----------=
------------------------------From: "Marcus D. Leech" =0A=0ATo: dtrask1@=
tampabay.rr.com=0ACc: "usrp-users@lists.ettus.com"=0ASent: Tuesday Febru=
ary 2 2021 1:14:12PM=0ASubject: Re: [USRP-users] Error Testing UHD Build=
 on E310 with=0Auhd_usrp_probe=0A=0A On 02/02/2021 12:53 PM, dtrask1@tam=
pabay.rr.com wrote:=0A  Here is the output, Marcus: =0A root@ni-e31x-319=
9693:~/newinstall# file=0A/home/root/newinstall/usr/bin/uhd_usrp_probe=
=0A/home/root/newinstall/usr/bin/uhd_usrp_probe: ELF 32-bit LSB=0Aexecut=
able, ARM, EABI5 version 1 (SYSV), dynamically linked,=0Ainterpreter /li=
b/ld-linux-armhf.so.3, for GNU/Linux 2.6.32,=0ABuildID[sha1]=3D5c924895f=
be10218be809ba29f88d7993fb117d7, with=0Adebug_info, not stripped =0A roo=
t@ni-e31x-3199693:~/newinstall# which uhd_usrp_probe=0A/home/root/newins=
tall/usr/bin/uhd_usrp_probe =0A Appreciate the help. =0A Dennis =0A=0A H=
mm, see if:=0A=0A /lib/ld-linux-armhf.so.3=0A=0A Is actually there and e=
xecutable=0A=0A=09----------------------------------------- From: "Marcu=
s D. Leech via=0AUSRP-users"=0A To: usrp-users@lists.ettus.com=0A Cc:=0A=
 Sent: Monday February 1 2021 4:06:23PM=0A Subject: Re: [USRP-users] Err=
or Testing UHD Build on E310 with=0Auhd_usrp_probe=0A=0AOn 02/01/2021 04=
:01 PM, Dennis Trask via USRP-users wrote:=0A=0A=09I am attempting to se=
t up a development environment to write software=0Afor the E310 by cross=
-compiling on Ubuntu 18.04. I am using the=0Ainstructions here: =0A[1]ht=
tps://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNo=
C_UHD_/_GNU_Radio_/_gr-ettus_from_Source=0A[2] =0A=0A=09I have followed=
 all the instructions to build UHD and am now in the=0Asection "Mount an=
d test the UHD build". When I run uhd_usrp_probe on=0Athe E310, I get th=
e following ouput: =0A=0A=09root@ni-e31x-3199693:~/newinstall# uhd_usrp_=
probe  =0A=0A=09-sh: /home/root/newinstall/usr/bin/uhd_usrp_probe: No su=
ch file or=0Adirectory =0A=0A=09   If you do:=0A=0A file /home/root/newi=
nstall/usr/bin/uhd_usrp_probe=0A=0A What do you get?=0A=0A If you do:=0A=
=0A which uhd_usrp_probe=0A=0A What do you get?=0A=0A=09I'm not sure whe=
re to look for the source of this issue. Has anyone=0Aelse seen this or=
 have an idea of what to look for? =0A=0A=09Thanks, =0A=0A=09Dennis =0A=
=0A _______________________________________________=0A USRP-users mailin=
g list=0A"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com=
=0A "=0A[3]http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com"=0A[4]> target=3D=0A "_blank">=0A[5]http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com=0A[6]=0A=0A=0A=0ALinks:=0A------=0A=
[1]=0Ahttps://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Build=
ing_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source=0A[2]=0Ahttps://kb.ettu=
s.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_R=
adio_/_gr-ettus_from_Source=0A[3] http://lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com=0A[4] http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com=0A[5] http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com=0A[6] http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com=0A

--=_c199b838c25e7b6acab7cd82af85e332
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Actually, it is not there. I did a find on the entire root f=
ile system and that file does not exist on the E310 device.&nbsp;<br><br=
><div class=3D"reply-new-signature"></div><p>---------------------------=
--------------</p>From: "Marcus D. Leech" <patchvonbraun@gmail.com><br>T=
o: dtrask1@tampabay.rr.com<br>Cc: "usrp-users@lists.ettus.com"<br>Sent:=
 Tuesday February 2 2021 1:14:12PM<br>Subject: Re: [USRP-users] Error Te=
sting UHD Build on E310 with uhd_usrp_probe<br><br>=0A<div class=3D"moz-=
cite-prefix">On 02/02/2021 12:53 PM, <a class=3D"moz-txt-link-abbreviate=
d">dtrask1@tampabay.rr.com</a>=0Awrote:<br></div>=0A<blockquote>=0A<div>=
Here is the output, Marcus:</div>=0A<div><br></div>=0A<div>root@ni-e31x-=
3199693:~/newinstall# file=0A/home/root/newinstall/usr/bin/uhd_usrp_prob=
e</div>=0A<div>/home/root/newinstall/usr/bin/uhd_usrp_probe: ELF 32-bit=
 LSB=0Aexecutable, ARM, EABI5 version 1 (SYSV), dynamically linked,=0Ain=
terpreter /lib/ld-linux-armhf.so.3, for GNU/Linux 2.6.32,=0ABuildID[sha1=
]=3D5c924895fbe10218be809ba29f88d7993fb117d7, with=0Adebug_info, not str=
ipped</div>=0A<div><br></div>=0A<div>root@ni-e31x-3199693:~/newinstall#=
 which uhd_usrp_probe</div>=0A<div>/home/root/newinstall/usr/bin/uhd_usr=
p_probe</div>=0A<div><br></div>=0AAppreciate the help.=0A<div><br></div>=
=0A<div>Dennis</div>=0A<div><br></div>=0A</blockquote>=0A<br>=0AHmm, see=
 if:<br><br>=0A/lib/ld-linux-armhf.so.3<br><br><br>=0AIs actually there=
 and executable<br><br><br><blockquote>=0A<div>=0A<p>-------------------=
----------------------</p>=0AFrom: "Marcus D. Leech via USRP-users"<br>=
=0ATo: <a class=3D"moz-txt-link-abbreviated">usrp-users@lists.ettus.com<=
/a><br>=0A=0ACc:<br>=0ASent: Monday February 1 2021 4:06:23PM<br>=0ASubj=
ect: Re: [USRP-users] Error Testing UHD Build on E310 with=0Auhd_usrp_pr=
obe<br><br><div class=3D"moz-cite-prefix">On 02/01/2021 04:01 PM, Dennis=
 Trask=0Avia USRP-users wrote:<br></div>=0A<blockquote>=0A<p><span style=
=3D"font-family:Calibri, sans-serif;color:#000000;">I=0Aam attempting to=
 set up a development environment to write software=0Afor the E310 by cr=
oss-compiling on Ubuntu 18.04. I am using the=0Ainstructions here:&nbsp;=
<a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_=
Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source"></a><a href=3D"ht=
tps://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNo=
C_UHD_/_GNU_Radio_/_gr-ettus_from_Source">https://kb.ettus.com/Software_=
Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus=
_from_Source</a></span></p>=0A<p><span style=3D"font-family:Calibri, san=
s-serif;color:#000000;">&nbsp;</span></p>=0A<p><span style=3D"font-famil=
y:Calibri, sans-serif;color:#000000;">I=0Ahave followed all the instruct=
ions to build UHD and am now in the=0Asection&nbsp;"Mount and test the U=
HD build". When I run=0Auhd_usrp_probe on the E310, I get the following=
 ouput:</span></p>=0A<p><span style=3D"font-family:Calibri, sans-serif;c=
olor:#000000;">&nbsp;</span></p>=0A<p class=3D"MsoNormal"><span style=3D=
"font-family:Calibri, sans-serif;color:#000000;">root@ni-e31x-3199693:~/=
newinstall#=0Auhd_usrp_probe&nbsp;</span></p>=0A<p class=3D"MsoNormal"><=
span style=3D"font-family:Calibri, sans-serif;color:#000000;">-sh:=0A/ho=
me/root/newinstall/usr/bin/uhd_usrp_probe: No such file or=0Adirectory</=
span></p>=0A<p class=3D"MsoNormal"><span style=3D"font-family:Calibri, s=
ans-serif;color:#000000;">&nbsp;</span></p>=0A<p class=3D"MsoNormal"><sp=
an style=3D"font-family:Calibri, sans-serif;color:#000000;">&nbsp;</span=
></p>=0A</blockquote>=0AIf you do:<br><br>=0Afile /home/root/newinstall/=
usr/bin/uhd_usrp_probe<br><br>=0AWhat do you get?<br><br>=0AIf you do:<b=
r><br>=0Awhich uhd_usrp_probe<br><br>=0AWhat do you get?<br><br><br><blo=
ckquote>=0A<p><span style=3D"font-family:Calibri, sans-serif;color:#0000=
00;">I'm=0Anot sure where to look for the source of this issue. Has anyo=
ne=0Aelse seen this or have an idea of what to look for?</span></p>=0A<p=
><span style=3D"font-family:Calibri, sans-serif;color:#000000;">&nbsp;</=
span></p>=0A<p><span style=3D"font-family:Calibri, sans-serif;color:#000=
000;">Thanks,</span></p>=0A<p><span style=3D"font-family:Calibri, sans-s=
erif;color:#000000;">Dennis</span></p>=0A<br><br>=0A____________________=
___________________________<br>=0AUSRP-users mailing list<br><a class=3D=
"moz-txt-link-rfc2396E">"mailto:USRP-users@lists.ettus.com"</a>&gt;<a cl=
ass=3D"moz-txt-link-abbreviated">USRP-users@lists.ettus.com</a><br><a cl=
ass=3D"moz-txt-link-rfc2396E" href=3D"http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com">=0A"</a><a href=3D"http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com"</a>&gt;=0Atarget=3D<br>=0A"=
_blank"&gt;<a class=3D"moz-txt-link-freetext" href=3D"http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com"></a><a href=3D"http://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://list=
s.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br></blockqu=
ote>=0A<br></div>=0A</blockquote>=0A<br></patchvonbraun@gmail.com></body=
></html>

--=_c199b838c25e7b6acab7cd82af85e332--



--===============4626678303289730065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4626678303289730065==--


