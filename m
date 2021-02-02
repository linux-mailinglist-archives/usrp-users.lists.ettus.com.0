Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF02130CDDB
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 22:21:47 +0100 (CET)
Received: from [::1] (port=50716 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l737J-0004HF-4d; Tue, 02 Feb 2021 16:21:45 -0500
Received: from p-impout009aa.msg.pkvw.co.charter.net ([47.43.26.140]:38733
 helo=p-impout009.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1l737E-0003yL-1H
 for usrp-users@lists.ettus.com; Tue, 02 Feb 2021 16:21:40 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id 736YlrOtEgxBo736Ylz4xW; Tue, 02 Feb 2021 21:20:59 +0000
X-Authority-Analysis: v=2.3 cv=eddDgIMH c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=bpm26yrvxXUA:10 a=etiEgX_XAAAA:8 a=ayC55rCoAAAA:8 a=uORZ869ar7nJb_jMKm4A:9
 a=QEXdDO2ut3YA:10 a=pGLkceISAAAA:8 a=Gut1CNn68MLDmUXr_DIA:9
 a=OSCzxePNnae9ob6xQ8NeqTRz0K8=:19 a=-sNTUPEDM9WgjyuA:21 a=_W_S_7VecoQA:10
 a=MLbIUA-Bjd6y1alW9qBG:22 a=B_RyunTPg8udlmYm5Cu2:22
Message-Id: <66920e5dda43f3e1e31ba45f5973ed611931c3d4@webmail>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [204.115.183.4]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Tue, 02 Feb 2021 21:20:58 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfJr+GH6a25pmS84/+Q/fBMA7l1GfdUD0qgjBVVCZf4YbGA5C/YFkfRKCZwK0weSmD2u9Bup74maXyBntt+zbd7KPCGzutC3Mr93ukNDtYnoJNUbodvCt
 7i6oa5LkbCGPQ/beVKZ5aQnd7kcNebb55Ag16qyRyxCxvwYm7HK8jtdbrgKkR6d+7jggsiojNmTVZwsGaYJi09bj81LPDO7NxjQ=
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
Content-Type: multipart/mixed; boundary="===============4071703950871551260=="
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

--===============4071703950871551260==
Content-Type: multipart/alternative;
 boundary="=_46174b28f76cafc60f4f1d7afc90fcdc"

--=_46174b28f76cafc60f4f1d7afc90fcdc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

From the root directory of the radio, I did: find . -name "ld-linux*"=0A=
That command produced no results, either. =0AIf I am following the instr=
uctions at=0Ahttps://kb.ettus.com/Software_Development_on_the_E3xx_USRP_=
-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source,=0Ashould I expe=
ct to find this library under=0A/home/root/newinstall/usr/lib? Or should=
 it be on the image installed=0Aon the SD card under /lib?=0AI have foll=
owed the above instructions to the letter, except for one=0Achange. Afte=
r I cloned gr-ettus, I made sure to checkout the maint-3.7=0Abranch, to=
 match the gnuradio version. However, I don't believe this=0Ashould have=
 any affect on the UHD cross-compile, should it?=0A=0A=09---------------=
--------------------------From: "Marcus D. Leech" =0A=0ATo: dtrask1@tamp=
abay.rr.com=0ACc: "usrp-users@lists.ettus.com"=0ASent: Tuesday February=
 2 2021 1:36:52PM=0ASubject: Re: [USRP-users] Error Testing UHD Build on=
 E310 with=0Auhd_usrp_probe=0A=0A On 02/02/2021 01:25 PM, dtrask1@tampab=
ay.rr.com wrote:=0A  Actually, it is not there. I did a find on the enti=
re root file=0Asystem and that file does not exist on the E310 device.=
 =0A=0A So, do a find on "ld-linux*"=0A=0A Either the compile built for=
 the wrong architecture, or your=0Afilesystem is missing the correct dyn=
amic linker--although if that's=0Athe=0A case, most things on your syste=
m wouldn't work.=0A=0A=09----------------------------------------- From:=
 "Marcus D. Leech"=0A To: dtrask1@tampabay.rr.com=0A Cc: "usrp-users@lis=
ts.ettus.com"=0A Sent: Tuesday February 2 2021 1:14:12PM=0A Subject: Re:=
 [USRP-users] Error Testing UHD Build on E310 with=0Auhd_usrp_probe=0A=
=0AOn 02/02/2021 12:53 PM, dtrask1@tampabay.rr.com wrote:=0A  Here is th=
e output, Marcus: =0A root@ni-e31x-3199693:~/newinstall# file=0A/home/ro=
ot/newinstall/usr/bin/uhd_usrp_probe=0A/home/root/newinstall/usr/bin/uhd=
_usrp_probe: ELF 32-bit LSB=0Aexecutable, ARM, EABI5 version 1 (SYSV), d=
ynamically linked,=0Ainterpreter /lib/ld-linux-armhf.so.3, for GNU/Linux=
 2.6.32,=0ABuildID[sha1]=3D5c924895fbe10218be809ba29f88d7993fb117d7, wit=
h=0Adebug_info, not stripped =0A root@ni-e31x-3199693:~/newinstall# whic=
h uhd_usrp_probe=0A/home/root/newinstall/usr/bin/uhd_usrp_probe =0A Appr=
eciate the help. =0A Dennis =0A=0A Hmm, see if:=0A=0A /lib/ld-linux-armh=
f.so.3=0A=0A Is actually there and executable=0A=0A=09------------------=
----------------------- From: "Marcus D. Leech via=0AUSRP-users"=0A To:=
 usrp-users@lists.ettus.com=0A Cc:=0A Sent: Monday February 1 2021 4:06:=
23PM=0A Subject: Re: [USRP-users] Error Testing UHD Build on E310 with=
=0Auhd_usrp_probe=0A=0AOn 02/01/2021 04:01 PM, Dennis Trask via USRP-use=
rs wrote:=0A=0A=09I am attempting to set up a development environment to=
 write software=0Afor the E310 by cross-compiling on Ubuntu 18.04. I am=
 using the=0Ainstructions here: =0A[1]https://kb.ettus.com/Software_Deve=
lopment_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_fro=
m_Source=0A[2] =0A=0A=09I have followed all the instructions to build UH=
D and am now in the=0Asection "Mount and test the UHD build". When I run=
 uhd_usrp_probe on=0Athe E310, I get the following ouput: =0A=0A=09root@=
ni-e31x-3199693:~/newinstall# uhd_usrp_probe  =0A=0A=09-sh: /home/root/n=
ewinstall/usr/bin/uhd_usrp_probe: No such file or=0Adirectory =0A=0A=09=
   If you do:=0A=0A file /home/root/newinstall/usr/bin/uhd_usrp_probe=0A=
=0A What do you get?=0A=0A If you do:=0A=0A which uhd_usrp_probe=0A=0A W=
hat do you get?=0A=0A=09I'm not sure where to look for the source of thi=
s issue. Has anyone=0Aelse seen this or have an idea of what to look for=
? =0A=0A=09Thanks, =0A=0A=09Dennis =0A=0A ______________________________=
_________________=0A USRP-users mailing list=0A"mailto:USRP-users@lists.=
ettus.com">USRP-users@lists.ettus.com=0A " [3]=0A[4]http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com"=0A[5]> target=3D=0A "_bl=
ank">=0A[6]http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com=0A[7]=0A=0A=0A=0ALinks:=0A------=0A[1]=0Ahttps://kb.ettus.com/Soft=
ware_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-=
ettus_from_Source=0A[2]=0Ahttps://kb.ettus.com/Software_Development_on_t=
he_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source=0A[=
3] http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=0A=
[4] http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
=0A[5] http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m=0A[6] http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om=0A[7] http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com=0A

--=_46174b28f76cafc60f4f1d7afc90fcdc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div>From the root directory of the radio, I did: find . -na=
me "ld-linux*"</div><div><br></div>That command produced no results, eit=
her.&nbsp;<div><br></div><div>If I am following the instructions at&nbsp=
;https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_R=
FNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source, should I expect to find thi=
s library under /home/root/newinstall/usr/lib? Or should it be on the im=
age installed on the SD card under /lib?<div><br></div><div>I have follo=
wed the above instructions to the letter, except for one change. After I=
 cloned gr-ettus, I made sure to checkout the maint-3.7 branch, to match=
 the gnuradio version. However, I don't believe this should have any aff=
ect on the UHD cross-compile, should it?</div><div><br></div><div><br><b=
r><div class=3D"reply-new-signature"></div><p>--------------------------=
---------------</p>From: "Marcus D. Leech" <patchvonbraun@gmail.com><br>=
To: dtrask1@tampabay.rr.com<br>Cc: "usrp-users@lists.ettus.com"<br>Sent:=
 Tuesday February 2 2021 1:36:52PM<br>Subject: Re: [USRP-users] Error Te=
sting UHD Build on E310 with uhd_usrp_probe<br><br>=0A<div class=3D"moz-=
cite-prefix">On 02/02/2021 01:25 PM, <a class=3D"moz-txt-link-abbreviate=
d">dtrask1@tampabay.rr.com</a>=0Awrote:<br></div>=0A<blockquote>=0AActua=
lly, it is not there. I did a find on the entire root file=0Asystem and=
 that file does not exist on the E310 device.&nbsp;<br><br></blockquote>=
=0ASo, do a find on "ld-linux*"<br><br>=0AEither the compile built for t=
he wrong architecture, or your=0Afilesystem is missing the correct dynam=
ic linker--although if=0Athat's the<br>=0A&nbsp; case, most things on yo=
ur system wouldn't work.<br><br><br><blockquote>=0A<p>------------------=
-----------------------</p>=0AFrom: "Marcus D. Leech"<br>=0ATo: <a class=
=3D"moz-txt-link-abbreviated">dtrask1@tampabay.rr.com</a><br>=0ACc: <a c=
lass=3D"moz-txt-link-rfc2396E">"usrp-users@lists.ettus.com"</a><br>=0A=
=0ASent: Tuesday February 2 2021 1:14:12PM<br>=0ASubject: Re: [USRP-user=
s] Error Testing UHD Build on E310 with=0Auhd_usrp_probe<br><br><div cla=
ss=3D"moz-cite-prefix">On 02/02/2021 12:53 PM,=0A<a class=3D"moz-txt-lin=
k-abbreviated">dtrask1@tampabay.rr.com</a>=0Awrote:<br></div>=0A<blockqu=
ote>=0A<div>Here is the output, Marcus:</div>=0A<div><br></div>=0A<div>r=
oot@ni-e31x-3199693:~/newinstall# file=0A/home/root/newinstall/usr/bin/u=
hd_usrp_probe</div>=0A<div>/home/root/newinstall/usr/bin/uhd_usrp_probe:=
 ELF 32-bit LSB=0Aexecutable, ARM, EABI5 version 1 (SYSV), dynamically l=
inked,=0Ainterpreter /lib/ld-linux-armhf.so.3, for GNU/Linux 2.6.32,=0AB=
uildID[sha1]=3D5c924895fbe10218be809ba29f88d7993fb117d7, with=0Adebug_in=
fo, not stripped</div>=0A<div><br></div>=0A<div>root@ni-e31x-3199693:~/n=
ewinstall# which uhd_usrp_probe</div>=0A<div>/home/root/newinstall/usr/b=
in/uhd_usrp_probe</div>=0A<div><br></div>=0AAppreciate the help.=0A<div>=
<br></div>=0A<div>Dennis</div>=0A<div><br></div>=0A</blockquote>=0A<br>=
=0AHmm, see if:<br><br>=0A/lib/ld-linux-armhf.so.3<br><br><br>=0AIs actu=
ally there and executable<br><br><br><blockquote>=0A<div>=0A<p>---------=
--------------------------------</p>=0AFrom: "Marcus D. Leech via USRP-u=
sers"<br>=0ATo: <a class=3D"moz-txt-link-abbreviated">usrp-users@lists.e=
ttus.com</a><br>=0ACc:<br>=0ASent: Monday February 1 2021 4:06:23PM<br>=
=0ASubject: Re: [USRP-users] Error Testing UHD Build on E310 with=0Auhd_=
usrp_probe<br><br><div class=3D"moz-cite-prefix">On 02/01/2021 04:01 PM,=
 Dennis Trask=0Avia USRP-users wrote:<br></div>=0A<blockquote>=0A<p><spa=
n style=3D"font-family:Calibri, sans-serif;color:#000000;">I=0Aam attemp=
ting to set up a development environment to write software=0Afor the E31=
0 by cross-compiling on Ubuntu 18.04. I am using the=0Ainstructions here=
:&nbsp;<a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_=
USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source"></a><a hre=
f=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Buildi=
ng_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source">https://kb.ettus.com/So=
ftware_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_g=
r-ettus_from_Source</a></span></p>=0A<p><span style=3D"font-family:Calib=
ri, sans-serif;color:#000000;">&nbsp;</span></p>=0A<p><span style=3D"fon=
t-family:Calibri, sans-serif;color:#000000;">I=0Ahave followed all the i=
nstructions to build UHD and am now in the=0Asection&nbsp;"Mount and tes=
t the UHD build". When I run=0Auhd_usrp_probe on the E310, I get the fol=
lowing ouput:</span></p>=0A<p><span style=3D"font-family:Calibri, sans-s=
erif;color:#000000;">&nbsp;</span></p>=0A<p class=3D"MsoNormal"><span st=
yle=3D"font-family:Calibri, sans-serif;color:#000000;">root@ni-e31x-3199=
693:~/newinstall#=0Auhd_usrp_probe&nbsp;</span></p>=0A<p class=3D"MsoNor=
mal"><span style=3D"font-family:Calibri, sans-serif;color:#000000;">-sh:=
=0A/home/root/newinstall/usr/bin/uhd_usrp_probe: No such file or=0Adirec=
tory</span></p>=0A<p class=3D"MsoNormal"><span style=3D"font-family:Cali=
bri, sans-serif;color:#000000;">&nbsp;</span></p>=0A<p class=3D"MsoNorma=
l"><span style=3D"font-family:Calibri, sans-serif;color:#000000;">&nbsp;=
</span></p>=0A</blockquote>=0AIf you do:<br><br>=0Afile /home/root/newin=
stall/usr/bin/uhd_usrp_probe<br><br>=0AWhat do you get?<br><br>=0AIf you=
 do:<br><br>=0Awhich uhd_usrp_probe<br><br>=0AWhat do you get?<br><br><b=
r><blockquote>=0A<p><span style=3D"font-family:Calibri, sans-serif;color=
:#000000;">I'm=0Anot sure where to look for the source of this issue. Ha=
s anyone=0Aelse seen this or have an idea of what to look for?</span></p=
>=0A<p><span style=3D"font-family:Calibri, sans-serif;color:#000000;">&n=
bsp;</span></p>=0A<p><span style=3D"font-family:Calibri, sans-serif;colo=
r:#000000;">Thanks,</span></p>=0A<p><span style=3D"font-family:Calibri,=
 sans-serif;color:#000000;">Dennis</span></p>=0A<br><br>=0A_____________=
__________________________________<br>=0AUSRP-users mailing list<br><a c=
lass=3D"moz-txt-link-rfc2396E">"mailto:USRP-users@lists.ettus.com"</a>&g=
t;<a class=3D"moz-txt-link-abbreviated">USRP-users@lists.ettus.com</a><b=
r><a class=3D"moz-txt-link-rfc2396E" href=3D"http://lists.ettus.com/mail=
man/listinfo/usrp-users_lists.ettus.com">=0A"</a><a href=3D"http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"></a><a href=3D"h=
ttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"</a>&gt;=
=0Atarget=3D<br>=0A"_blank"&gt;<a href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com"></a><a href=3D"http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br></blockquote>=0A<br><=
/div>=0A</blockquote>=0A<br></blockquote>=0A<br></patchvonbraun@gmail.co=
m></div></div></body></html>

--=_46174b28f76cafc60f4f1d7afc90fcdc--



--===============4071703950871551260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4071703950871551260==--


