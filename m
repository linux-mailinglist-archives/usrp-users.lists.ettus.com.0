Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C7431FCC2
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 17:05:51 +0100 (CET)
Received: from [::1] (port=55102 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD8Ht-0006ND-K0; Fri, 19 Feb 2021 11:05:49 -0500
Received: from p-impout005aa.msg.pkvw.co.charter.net ([47.43.26.136]:51577
 helo=p-impout005.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1lD8Hp-0006Ge-D9
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 11:05:45 -0500
Received: from localhost ([54.243.7.172]) by cmsmtp with ESMTP
 id D8H9l2yKKeKjED8H9lrSBf; Fri, 19 Feb 2021 16:05:04 +0000
X-Authority-Analysis: v=2.3 cv=ALzgjvLx c=1 sm=1 tr=0
 a=ZhHbwgLlxfPm5G22ibXkng==:117 a=ZhHbwgLlxfPm5G22ibXkng==:17
 a=Jp7JS-XeckIA:10 a=kMekCo5aZDoA:10 a=ayC55rCoAAAA:8 a=etiEgX_XAAAA:8
 a=Ud-fGmwBAAAA:8 a=uBoxeySFlODQ3OyezfIA:9 a=QEXdDO2ut3YA:10
 a=E4B8Oa3m0opw503U:21 a=_W_S_7VecoQA:10 a=B_RyunTPg8udlmYm5Cu2:22
 a=MLbIUA-Bjd6y1alW9qBG:22 a=H0_BfbLtyfsadj6IJfz3:22
Message-Id: <d56665a4704b3e2f4ca209f3c1b3d4ba630b5e4d@webmail>
To: "'dtrask1@tampabay.rr.com'" <dtrask1@tampabay.rr.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Fri, 19 Feb 2021 16:05:03 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfBtvYs26KhZWGXai8hW8yBCt+gzTSiT9qLmUoPePyTyDeNEfNXSWsht8hlnCmS/EPnhZxsaLY+mKwr1blfsy29BqCgMEplEAK2lsvFmdiCaIZ0HvODk8
 yqwVS91W9Py4/NrgG5kScJaIHdLIYexUPSQ5qkg7Ppdn5qKJ8/Qr6ACPg+i/0JlM4APWsN86ztDtWrCo7J6bAvYW5N1OvlsfZubDe+i7ccYsNNwqVkTHebZM
 +g1n2hl3OqqCMGi7E/20Pg==
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
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0569064522820787497=="
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

--===============0569064522820787497==
Content-Type: multipart/alternative;
 boundary="=_dd314025ef9a25573b04bfdc57a87991"

--=_dd314025ef9a25573b04bfdc57a87991
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=0AMarcus=0AI resolved the issue. Apparently, I needed to cross-compile=
 GnuRadio=0Awith python2 instead of python3.=0ADennis=0A=0A=09----------=
-------------------------------From:=0Adtrask1@tampabay.rr.com=0ATo: "Ma=
rcus M=C3=BCller"=0ACc: "usrp-users@lists.ettus.com"=0ASent: Friday Febr=
uary 19 2021 9:26:25AM=0ASubject: Re: [USRP-users] gr-ettus Cross-Compil=
e "Target=0A'gnuradio::runtime_swig' not found."=0A=0A Hi Marcus. Here i=
s the info. I think this is the correct version, but=0Alet me know what=
 you think. =0A  labuser@EttusDevel4:~/rfnoc/src/gr-ettus/build-arm$ whi=
ch cmake =0A/home/labuser/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/c=
make=0Alabuser@EttusDevel4:~/rfnoc/src/gr-ettus/build-arm$ cmake --versi=
on=0Acmake version 3.15.3 =0A CMake suite maintained and supported by Ki=
tware (kitware.com/cmake). =0A=0A=09------------------------------------=
----- From: "Marcus M=C3=BCller via=0AUSRP-users"=0A To: usrp-users@list=
s.ettus.com=0A Cc:=0A Sent: Friday February 19 2021 9:12:18AM=0A Subject=
: Re: [USRP-users] gr-ettus Cross-Compile "Target=0A'gnuradio::runtime_s=
wig' not found."=0A=0A Hi Dennis,=0A=0A that's probably not the case her=
e but I've seen similar with=0Ainstallations where older CMake with newe=
r CMake libraries were=0Apresent (or vice versa). What does `cmake --ver=
sion` say?=0A Don't have an E310 SDK at hand to check myself, but when y=
ou run=0A`which cmake`, is that the cmake you want to run, or is there a=
=0Adifferent one that's in=0A/home/labuser/rfnoc/oe/sysroots/x86_64-oesd=
k-linux/usr/bin ?=0A=0A Best regards,=0A Marcus=0A=0A __________________=
_____________________________=0A USRP-users mailing list=0A USRP-users@l=
ists.ettus.com=0A =0A[1]http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com=0A[2]=0A /> =0A=0ALinks:=0A------=0A[1]=0Ahttp://list=
s.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%3Cbr=0A[2] http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=0A

--=_dd314025ef9a25573b04bfdc57a87991
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><br>Marcus<div><br></div><div>I resolved the issue. Apparent=
ly, I needed to cross-compile GnuRadio with python2 instead of python3.<=
/div><div><br></div><div>Dennis</div><div><br><div class=3D"reply-new-si=
gnature"></div><p>-----------------------------------------</p>From: dtr=
ask1@tampabay.rr.com<br>To: "Marcus M=C3=BCller"<br>Cc: "usrp-users@list=
s.ettus.com"<br>Sent: Friday February 19 2021 9:26:25AM<br>Subject: Re:=
 [USRP-users] gr-ettus Cross-Compile "Target 'gnuradio::runtime_swig' no=
t found."<br><br>=0AHi Marcus. Here is the info. I think this is the cor=
rect version,=0Abut let me know what you think.=0A<div><br></div>=0A<div=
>=0A<div>labuser@EttusDevel4:~/rfnoc/src/gr-ettus/build-arm$ which=0Acma=
ke</div>=0A<div>=0A/home/labuser/rfnoc/oe/sysroots/x86_64-oesdk-linux/us=
r/bin/cmake</div>=0A<div>labuser@EttusDevel4:~/rfnoc/src/gr-ettus/build-=
arm$ cmake=0A--version</div>=0A<div>cmake version 3.15.3</div>=0A<div><b=
r></div>=0A<div>CMake suite maintained and supported by Kitware=0A(kitwa=
re.com/cmake).</div>=0A<div><br></div>=0A<br><div class=3D"reply-new-sig=
nature"></div>=0A<p>-----------------------------------------</p>=0AFrom=
: "Marcus M=C3=BCller via USRP-users"<br>=0ATo: usrp-users@lists.ettus.c=
om<br>=0ACc:<br>=0ASent: Friday February 19 2021 9:12:18AM<br>=0ASubject=
: Re: [USRP-users] gr-ettus Cross-Compile "Target=0A'gnuradio::runtime_s=
wig' not found."<br><br>=0AHi Dennis,<br><br>=0Athat's probably not the=
 case here but I've seen similar with=0Ainstallations where older CMake=
 with newer CMake libraries were=0Apresent (or vice versa). What does `c=
make --version` say?<br>=0ADon't have an E310 SDK at hand to check mysel=
f, but when you run=0A`which cmake`, is that the cmake you want to run,=
 or is there a=0Adifferent one that's in=0A/home/labuser/rfnoc/oe/sysroo=
ts/x86_64-oesdk-linux/usr/bin ?<br><br>=0ABest regards,<br>=0AMarcus<br>=
<br><br><br>=0A_______________________________________________<br>=0AUSR=
P-users mailing list<br>=0AUSRP-users@lists.ettus.com<br><a href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%3Cbr">=0A=
</a><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com</a><br>=0A=0A/&gt;</div>=0A</div></body></html>

--=_dd314025ef9a25573b04bfdc57a87991--



--===============0569064522820787497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0569064522820787497==--


