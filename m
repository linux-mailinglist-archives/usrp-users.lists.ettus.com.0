Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C485B3244D6
	for <lists+usrp-users@lfdr.de>; Wed, 24 Feb 2021 21:01:59 +0100 (CET)
Received: from [::1] (port=54246 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lF0M8-0000AX-Fo; Wed, 24 Feb 2021 15:01:56 -0500
Received: from p-impout009aa.msg.pkvw.co.charter.net ([47.43.26.140]:34563
 helo=p-impout009.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1lF0M3-00005n-Pp
 for usrp-users@lists.ettus.com; Wed, 24 Feb 2021 15:01:51 -0500
Received: from localhost ([54.243.7.172]) by cmsmtp with ESMTP
 id F0LNlDXoDwLsaF0LOlm8p9; Wed, 24 Feb 2021 20:01:10 +0000
X-Authority-Analysis: v=2.3 cv=Tb7oSiYh c=1 sm=1 tr=0
 a=ZhHbwgLlxfPm5G22ibXkng==:117 a=ZhHbwgLlxfPm5G22ibXkng==:17
 a=Jp7JS-XeckIA:10 a=kMekCo5aZDoA:10 a=etiEgX_XAAAA:8 a=ayC55rCoAAAA:8
 a=Ud-fGmwBAAAA:8 a=ENWqgt1Fbn3Jo_H3XKUA:9 a=QEXdDO2ut3YA:10
 a=-zTzBmL3bBcASNGgq3QA:9 a=pPY0JGEabxnXPtr4:21 a=_W_S_7VecoQA:10
 a=MLbIUA-Bjd6y1alW9qBG:22 a=B_RyunTPg8udlmYm5Cu2:22 a=H0_BfbLtyfsadj6IJfz3:22
Message-Id: <daca5b5cc1d1f77450a32208d04e64940442704d@webmail>
To: "'Mike'" <mikerd1@verizon.net>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Wed, 24 Feb 2021 20:01:09 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfFY8U1Nt9hU6pnuT3tr4sbsvGWorzV6hlrexjaZwfErX1YDyorTypiaxORwRSB8Xm60Dv5q4FP3kUiqObzZ+zdt15gLdcPGCJXMEaVBIeWWQRdAgiMDV
 5DsC4VpoIPeHrKEsdT+QRq2joeFkrbwEjxWbEZs8lo6w+nEgFIx+EW78iTXF1w4smsdB9RBBruzp0OljYhlFSqFKnLc26/9Q0yA=
Subject: Re: [USRP-users] gr-ettus Cross-Compile "Target
 'gnuradio::runtime_swig' not found."
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
Content-Type: multipart/mixed; boundary="===============0514024463854035434=="
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

--===============0514024463854035434==
Content-Type: multipart/alternative;
 boundary="=_91c2f7922dbf02a4888a88dca303b34a"

--=_91c2f7922dbf02a4888a88dca303b34a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Mike=0AThis was very VERY helpful! Thank you for the guidance!=0ADennis=
=0A=0A=09-----------------------------------------From: "Mike via USRP-u=
sers" =0ATo: usrp-users@lists.ettus.com=0ACc: =0ASent: Friday February 1=
9 2021 5:55:34PM=0ASubject: Re: [USRP-users] gr-ettus Cross-Compile "Tar=
get=0A'gnuradio::runtime_swig' not found."=0A=0A This is good informatio=
n and helped me out with my cross-compiler=0Aissues.=0A=0A So, for poste=
rity, my setup is as follows:=0A=0A 1. Ubuntu 18.04LTS=0A=0A 2. UHD4.0 (=
gitbranch UHD-4.0)=0A=0A 3. GNU Radio (gitbranch maint-3.8)=0A=0A 4. gr-=
ettus (gitbranch maint-3.8-uhd4.0)=0A=0A These were installed on the hos=
t using pybombs with the recipe=0Amodified=0A for the branches listed pr=
eviously.=0A=0A Next, I downloaded the SDK with "uhd_images_downloader -=
t e310 -t=0Asdk"=0A and installed into a new cross compile directory (~/=
prefix/gr38/oe)=0A=0A Next, I added python-six and added the following P=
YTHONPATH line in=0Athe=0A script that sources the cross-compiling envir=
onment variables:=0A=0A export=0A PYTHONPATH=3D/home/mike/prefix/gr38/oe=
/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/python3.7/site-pack=
ages/:$PYTHONPATH=0A Note: this is in addition to what was previously in=
structed which=0Awas:=0A=0A export=0A PYTHONPATH=3D/home/mike/prefix/gr3=
8/oe/sysroots/x86_64-oesdk-linux/usr/lib/python2.7/site-packages/=0A=0A=
 Bottom line is to inspect the output of gnuradio cmake to ensure that=
=0A all python related items are found properly=0A=0A For cross compilin=
g I used the following cmake directives for each=0Aitem=0A=0A 1. UHD4.0=
 - cmake=0A -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_cro=
ss.cmake=0A -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON -DENABLE_GP=
SD=3DON ..=0A=0A Note: I tried this with setting -DRUNTIME_PYTHON_EXECUT=
ABLE=3Dpython2=0Abut=0A it did not compile=0A=0A 2. GNU Radio - cmake -W=
no-dev -DPYTHON_EXECUTABLE=3D/usr/bin/python2=0A -DCMAKE_TOOLCHAIN_FILE=
=3D~/prefix/gr38/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake=0A -DE=
NABLE_INTERNAL_VOLK=3DOFF -DENABLE_GR_WXGUI=3DOFF=0A-DENABLE_GR_VOCODER=
=3DOFF=0A -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=
=3DOFF=0A -DCMAKE_ASM_COMPILER_ARG1:STRING=3D"-mcpu=3Dcortex-a9"=0A -DCM=
AKE_INSTALL_PREFIX=3D/usr ../=0A=0A Big point here is -DPYTHON_EXECUTABL=
E=3D/usr/bin/python2=0A=0A 3. gr-ettus - cmake=0A -DCMAKE_TOOLCHAIN_FILE=
=3D~/prefix/gr38/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake=0A -DC=
MAKE_INSTALL_PREFIX=3D/usr -DENABLE_QT=3DOFF -DENABLE_DOXYGEN=3DOFF ..=
=0A=0A Linus seems to be a moving target so what works one day may not w=
ork=0Athe=0A next. That's why I try to document what configuration worke=
d for me.=0A=0A Hope this helps,=0A=0A Mike=0A=0A On 2/19/21 11:17 AM, M=
arcus M=C3=BCller via USRP-users wrote:=0A > Glad you solved it! Still,=
 should work with Python3 =E2=80=93 GNU Radio=0A3.8 (and later) is Pytho=
n=0A > 3 compatible (with 3.8 being the only release line of GNU Radio t=
o=0Asupport both Py2 and Py3).=0A >=0A > However, you're right, your CMa=
ke detects and chooses Python 2.7=0A(it can use either), and=0A > if you=
 then try to link against Python 3.x, it would indeed fail.=0A >=0A > Be=
st regards,=0A >=0A > Marcus=0A >=0A > DISCLAIMER: Any attached Code is=
 provided As Is. It has not been=0Atested or validated as a product, for=
 use in a deployed application or=0Asystem, or for use in hazardous envi=
ronments. You assume all risks for=0Ause of the Code. Use of the Code is=
 subject to terms of the licenses=0Ato the UHD or RFNoC code with which=
 the Code is used. Standard=0Alicenses to UHD and RFNoC can be found at=
=0Ahttps://www.ettus.com/sdr-software/licenses/.=0A /> >=0A > NI will on=
ly perform services based on its understanding and=0Acondition that the=
 goods or services (i) are not for the use in the=0Aproduction or develo=
pment of any item produced, purchased, or ordered=0Aby any entity with a=
 footnote 1 designation in the license requirement=0Acolumn of Supplemen=
t No. 4 to Part 744, U.S. Export Administration=0ARegulations and (ii) s=
uch a company is not a party to the transaction.=0AIf our understanding=
 is incorrect, please notify us immediately=0Abecause a specific authori=
zation may be required from the U.S.=0ACommerce Department before the tr=
ansaction may proceed further.=0A >=0A > On 19.02.21 17:05, dtrask1@tamp=
abay.rr.com wrote:=0A >> Marcus=0A >>=0A >> I resolved the issue. Appare=
ntly, I needed to cross-compile=0AGnuRadio with python2=0A >> instead of=
 python3.=0A >>=0A >> Dennis=0A >>=0A >> -------------------------------=
----------=0A >>=0A >> From: dtrask1@tampabay.rr.com=0A >> To: "Marcus M=
=C3=BCller"=0A >> Cc: "usrp-users@lists.ettus.com"=0A >> Sent: Friday Fe=
bruary 19 2021 9:26:25AM=0A >> Subject: Re: [USRP-users] gr-ettus Cross-=
Compile "Target=0A'gnuradio::runtime_swig' not=0A >> found."=0A >>=0A >>=
 Hi Marcus. Here is the info. I think this is the correct version,=0Abut=
 let me know what=0A >> you think.=0A >>=0A >> labuser@EttusDevel4:~/rfn=
oc/src/gr-ettus/build-arm$ which cmake=0A >> /home/labuser/rfnoc/oe/sysr=
oots/x86_64-oesdk-linux/usr/bin/cmake=0A >> labuser@EttusDevel4:~/rfnoc/=
src/gr-ettus/build-arm$ cmake=0A--version=0A >> cmake version 3.15.3=0A=
 >>=0A >> CMake suite maintained and supported by Kitware=0A(kitware.com=
/cmake).=0A >>=0A >>=0A >> -----------------------------------------=0A=
 >>=0A >> From: "Marcus M=C3=BCller via USRP-users"=0A >> To: usrp-users=
@lists.ettus.com=0A >> Cc:=0A >> Sent: Friday February 19 2021 9:12:18AM=
=0A >> Subject: Re: [USRP-users] gr-ettus Cross-Compile "Target=0A'gnura=
dio::runtime_swig' not=0A >> found."=0A >>=0A >> Hi Dennis,=0A >>=0A >>=
 that's probably not the case here but I've seen similar with=0Ainstalla=
tions where older=0A >> CMake with newer CMake libraries were present (o=
r vice versa).=0AWhat does `cmake=0A >> --version` say?=0A >> Don't have=
 an E310 SDK at hand to check myself, but when you run=0A`which cmake`,=
 is that=0A >> the cmake you want to run, or is there a different one th=
at's in=0A >> /home/labuser/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin=
 ?=0A >>=0A >> Best regards,=0A >> Marcus=0A >>=0A >>=0A >>=0A >> ______=
_________________________________________=0A >> USRP-users mailing list=
=0A >> USRP-users@lists.ettus.com=0A >> http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com=0A /> >> =0A /> >> />=0A > __________=
_____________________________________=0A > USRP-users mailing list=0A >=
 USRP-users@lists.ettus.com=0A > http://lists.ettus.com/mailman/listinfo=
/usrp-users_lists.ettus.com=0A />=0A ___________________________________=
____________=0A USRP-users mailing list=0A USRP-users@lists.ettus.com=0A=
 http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=0A /=
>

--=_91c2f7922dbf02a4888a88dca303b34a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Mike<div><br></div><div>This was very VERY helpful! Thank yo=
u for the guidance!</div><div><br></div><div>Dennis</div><div><br></div>=
<div><div><br><div class=3D"reply-new-signature"></div><p>--------------=
---------------------------</p>From: "Mike via USRP-users" <usrp-users@l=
ists.ettus.com><br>To: usrp-users@lists.ettus.com<br>Cc: <br>Sent: Frida=
y February 19 2021 5:55:34PM<br>Subject: Re: [USRP-users] gr-ettus Cross=
-Compile "Target 'gnuradio::runtime_swig' not found."<br><br>=0AThis is=
 good information and helped me out with my cross-compiler=0Aissues.<br>=
<br>=0ASo, for posterity, my setup is as follows:<br><br>=0A1. Ubuntu 18=
.04LTS<br><br>=0A2. UHD4.0 (gitbranch UHD-4.0)<br><br>=0A3. GNU Radio (g=
itbranch maint-3.8)<br><br>=0A4. gr-ettus (gitbranch maint-3.8-uhd4.0)<b=
r><br>=0AThese were installed on the host using pybombs with the recipe=
=0Amodified<br>=0Afor the branches listed previously.<br><br>=0ANext, I=
 downloaded the SDK with "uhd_images_downloader -t e310 -t=0Asdk"<br>=0A=
and installed into a new cross compile directory=0A(~/prefix/gr38/oe)<br=
><br>=0ANext, I added python-six and added the following PYTHONPATH line=
 in=0Athe<br>=0Ascript that sources the cross-compiling environment vari=
ables:<br><br>=0Aexport<br>=0APYTHONPATH=3D/home/mike/prefix/gr38/oe/sys=
roots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/python3.7/site-packages=
/:$PYTHONPATH<br>=0A=0ANote: this is in addition to what was previously=
 instructed which=0Awas:<br><br>=0Aexport<br>=0APYTHONPATH=3D/home/mike/=
prefix/gr38/oe/sysroots/x86_64-oesdk-linux/usr/lib/python2.7/site-packag=
es/<br><br>=0ABottom line is to inspect the output of gnuradio cmake to=
 ensure=0Athat<br>=0Aall python related items are found properly<br><br>=
=0AFor cross compiling I used the following cmake directives for each=0A=
item<br><br>=0A1. UHD4.0 - cmake<br>=0A-DCMAKE_TOOLCHAIN_FILE=3D../host/=
cmake/Toolchains/oe-sdk_cross.cmake<br>=0A=0A-DCMAKE_INSTALL_PREFIX=3D/u=
sr -DENABLE_E300=3DON -DENABLE_GPSD=3DON&nbsp;=0A..<br><br>=0ANote:&nbsp=
; I tried this with setting=0A-DRUNTIME_PYTHON_EXECUTABLE=3Dpython2 but<=
br>=0Ait did not compile<br><br>=0A2. GNU Radio - cmake -Wno-dev=0A-DPYT=
HON_EXECUTABLE=3D/usr/bin/python2<br>=0A-DCMAKE_TOOLCHAIN_FILE=3D~/prefi=
x/gr38/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake<br>=0A=0A-DENABL=
E_INTERNAL_VOLK=3DOFF -DENABLE_GR_WXGUI=3DOFF=0A-DENABLE_GR_VOCODER=3DOF=
F<br>=0A-DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3D=
OFF<br>=0A-DCMAKE_ASM_COMPILER_ARG1:STRING=3D"-mcpu=3Dcortex-a9"<br>=0A-=
DCMAKE_INSTALL_PREFIX=3D/usr ../<br><br>=0ABig point here is -DPYTHON_EX=
ECUTABLE=3D/usr/bin/python2<br><br>=0A3. gr-ettus - cmake<br>=0A-DCMAKE_=
TOOLCHAIN_FILE=3D~/prefix/gr38/src/gnuradio/cmake/Toolchains/oe-sdk_cros=
s.cmake<br>=0A=0A-DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_QT=3DOFF -DENABL=
E_DOXYGEN=3DOFF=0A..<br><br>=0ALinus seems to be a moving target so what=
 works one day may not=0Awork the<br>=0Anext.&nbsp; That's why I try to=
 document what configuration worked=0Afor me.<br><br>=0AHope this helps,=
<br><br>=0AMike<br><br>=0AOn 2/19/21 11:17 AM, Marcus M=C3=BCller via US=
RP-users wrote:<br>=0A&gt; Glad you solved it! Still, should work with P=
ython3 =E2=80=93 GNU=0ARadio 3.8 (and later) is Python<br>=0A&gt; 3 comp=
atible (with 3.8 being the only release line of GNU=0ARadio to support b=
oth Py2 and Py3).<br>=0A&gt;<br>=0A&gt; However, you're right, your CMak=
e detects and chooses Python=0A2.7 (it can use either), and<br>=0A&gt; i=
f you then try to link against Python 3.x, it would indeed=0Afail.<br>=
=0A&gt;<br>=0A&gt; Best regards,<br>=0A&gt;<br>=0A&gt; Marcus<br>=0A&gt;=
<br>=0A&gt; DISCLAIMER: Any attached Code is provided As Is. It has not=
=0Abeen tested or validated as a product, for use in a deployed=0Aapplic=
ation or system, or for use in hazardous environments. You=0Aassume all=
 risks for use of the Code. Use of the Code is subject to=0Aterms of the=
 licenses to the UHD or RFNoC code with which the Code=0Ais used. Standa=
rd licenses to UHD and RFNoC can be found at=0A<a href=3D"https://www.et=
tus.com/sdr-software/licenses/.%3Cbr">https://www.ettus.com/sdr-software=
/licenses/.<br>=0A/&gt; &gt;<br>=0A&gt; NI will only perform services ba=
sed on its understanding and=0Acondition that the goods or services (i)=
 are not for the use in the=0Aproduction or development of any item prod=
uced, purchased, or=0Aordered by any entity with a footnote 1 designatio=
n in the license=0Arequirement column of Supplement No. 4 to Part 744, U=
.S. Export=0AAdministration Regulations and (ii) such a company is not a=
 party=0Ato the transaction. If our understanding is incorrect, please=
=0Anotify us immediately because a specific authorization may be=0Arequi=
red from the U.S. Commerce Department before the transaction=0Amay proce=
ed further.<br>=0A&gt;<br>=0A&gt; On 19.02.21 17:05, dtrask1@tampabay.rr=
.com wrote:<br>=0A&gt;&gt; Marcus<br>=0A&gt;&gt;<br>=0A&gt;&gt; I resolv=
ed the issue. Apparently, I needed to=0Across-compile GnuRadio with pyth=
on2<br>=0A&gt;&gt; instead of python3.<br>=0A&gt;&gt;<br>=0A&gt;&gt; Den=
nis<br>=0A&gt;&gt;<br>=0A&gt;&gt; --------------------------------------=
---<br>=0A&gt;&gt;<br>=0A&gt;&gt; From: dtrask1@tampabay.rr.com<br>=0A&g=
t;&gt; To: "Marcus M=C3=BCller"<br>=0A&gt;&gt; Cc: "usrp-users@lists.ett=
us.com"<br>=0A&gt;&gt; Sent: Friday February 19 2021 9:26:25AM<br>=0A&gt=
;&gt; Subject: Re: [USRP-users] gr-ettus Cross-Compile "Target=0A'gnurad=
io::runtime_swig' not<br>=0A&gt;&gt; found."<br>=0A&gt;&gt;<br>=0A&gt;&g=
t; Hi Marcus. Here is the info. I think this is the correct=0Aversion, b=
ut let me know what<br>=0A&gt;&gt; you think.<br>=0A&gt;&gt;<br>=0A&gt;&=
gt; labuser@EttusDevel4:~/rfnoc/src/gr-ettus/build-arm$ which=0Acmake<br=
>=0A&gt;&gt;=0A/home/labuser/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bi=
n/cmake<br>=0A=0A&gt;&gt; labuser@EttusDevel4:~/rfnoc/src/gr-ettus/build=
-arm$ cmake=0A--version<br>=0A&gt;&gt; cmake version 3.15.3<br>=0A&gt;&g=
t;<br>=0A&gt;&gt; CMake suite maintained and supported by Kitware=0A(kit=
ware.com/cmake).<br>=0A&gt;&gt;<br>=0A&gt;&gt;<br>=0A&gt;&gt; ----------=
-------------------------------<br>=0A&gt;&gt;<br>=0A&gt;&gt; From: "Mar=
cus M=C3=BCller via USRP-users"<br>=0A&gt;&gt; To: usrp-users@lists.ettu=
s.com<br>=0A&gt;&gt; Cc:<br>=0A&gt;&gt; Sent: Friday February 19 2021 9:=
12:18AM<br>=0A&gt;&gt; Subject: Re: [USRP-users] gr-ettus Cross-Compile=
 "Target=0A'gnuradio::runtime_swig' not<br>=0A&gt;&gt; found."<br>=0A&gt=
;&gt;<br>=0A&gt;&gt; Hi Dennis,<br>=0A&gt;&gt;<br>=0A&gt;&gt; that's pro=
bably not the case here but I've seen similar=0Awith installations where=
 older<br>=0A&gt;&gt; CMake with newer CMake libraries were present (or=
 vice=0Aversa). What does `cmake<br>=0A&gt;&gt; --version` say?<br>=0A&g=
t;&gt; Don't have an E310 SDK at hand to check myself, but when=0Ayou ru=
n `which cmake`, is that<br>=0A&gt;&gt; the cmake you want to run, or is=
 there a different one=0Athat's in<br>=0A&gt;&gt; /home/labuser/rfnoc/oe=
/sysroots/x86_64-oesdk-linux/usr/bin=0A?<br>=0A&gt;&gt;<br>=0A&gt;&gt; B=
est regards,<br>=0A&gt;&gt; Marcus<br>=0A&gt;&gt;<br>=0A&gt;&gt;<br>=0A&=
gt;&gt;<br>=0A&gt;&gt; _______________________________________________<b=
r>=0A&gt;&gt; USRP-users mailing list<br>=0A&gt;&gt; USRP-users@lists.et=
tus.com<br>=0A&gt;&gt; &lt;</a><a href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com%3Cbr%3Ehttp://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com%3Cbr">http://lists.ettus.com/mail=
man/listinfo/usrp-users_lists.ettus.com%3Cbr&gt;http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com<br>=0A=0A/&gt; &gt;&gt; &lt;<=
/a><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com%3E%3Cbr">http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com&gt;<br>=0A=0A/&gt; &gt;&gt; /&gt;<br>=0A&gt; ______________=
_________________________________<br>=0A&gt; USRP-users mailing list<br>=
=0A&gt; USRP-users@lists.ettus.com<br>=0A&gt;</a> <a href=3D"http://list=
s.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%3Cbr">http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<br>=0A=0A/&gt;<=
br>=0A_______________________________________________<br>=0AUSRP-users m=
ailing list<br>=0AUSRP-users@lists.ettus.com<br></a> <a href=3D"http://l=
ists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%3Cbr">http://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<br>=0A=0A/&g=
t;</a>=0A</usrp-users@lists.ettus.com></div></div></body></html>

--=_91c2f7922dbf02a4888a88dca303b34a--



--===============0514024463854035434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0514024463854035434==--


