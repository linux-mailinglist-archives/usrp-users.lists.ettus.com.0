Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE3731FA88
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 15:27:12 +0100 (CET)
Received: from [::1] (port=54292 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD6kR-0001Sc-Et; Fri, 19 Feb 2021 09:27:11 -0500
Received: from p-impout002aa.msg.pkvw.co.charter.net ([47.43.26.133]:44322
 helo=p-impout002.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1lD6kM-0001MY-4b
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 09:27:06 -0500
Received: from localhost ([54.243.7.172]) by cmsmtp with ESMTP
 id D6jglZWbdOzbyD6jglw2fL; Fri, 19 Feb 2021 14:26:25 +0000
X-Authority-Analysis: v=2.3 cv=G/Fi7Os5 c=1 sm=1 tr=0
 a=ZhHbwgLlxfPm5G22ibXkng==:117 a=ZhHbwgLlxfPm5G22ibXkng==:17
 a=Jp7JS-XeckIA:10 a=kMekCo5aZDoA:10 a=Ud-fGmwBAAAA:8 a=etiEgX_XAAAA:8
 a=uBoxeySFlODQ3OyezfIA:9 a=QEXdDO2ut3YA:10 a=8n-xOlKOsUZucRbH:21
 a=_W_S_7VecoQA:10 a=H0_BfbLtyfsadj6IJfz3:22 a=MLbIUA-Bjd6y1alW9qBG:22
 a=pHzHmUro8NiASowvMSCR:22 a=nt3jZW36AmriUCFCBwmW:22
Message-Id: <afe5956f601c743dc0ebdd416176f6011704ebc5@webmail>
To: "'=?UTF-8?B?TWFyY3VzIE3DvGxsZXI=?='" <marcus.mueller@ettus.com>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Fri, 19 Feb 2021 14:26:24 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfFU9Q+7gmlq0GRBCSAt0eInZSsU+iZr+Pj1CG+Ar7+Vy6XLI+crieYIzm0yDhiF5i5hxZCDPGyBwpVVp0ifpVG10O0dP3ZojjDDAL9zbtMFhq4F374Cc
 amqqpgdxZ8nZsIp5inrsdhXGQStbblwWpyKGv8KCooWKf7tsiBu/RqxDIY2kT3VMfymFhMQrAUTYB8Yw0lcwSEO6vtsuJmEJJJU=
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
Content-Type: multipart/mixed; boundary="===============3557506409877064701=="
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

--===============3557506409877064701==
Content-Type: multipart/alternative;
 boundary="=_e6e9d17b4fa75cd32cde795d31fbe9ae"

--=_e6e9d17b4fa75cd32cde795d31fbe9ae
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus. Here is the info. I think this is the correct version, but=0A=
let me know what you think.=0Alabuser@EttusDevel4:~/rfnoc/src/gr-ettus/b=
uild-arm$ which=0Acmake/home/labuser/rfnoc/oe/sysroots/x86_64-oesdk-linu=
x/usr/bin/cmakelabuser@EttusDevel4:~/rfnoc/src/gr-ettus/build-arm$=0Acma=
ke --versioncmake version 3.15.3=0ACMake suite maintained and supported=
 by Kitware (kitware.com/cmake).=0A=0A=09-------------------------------=
----------From: "Marcus M=C3=BCller via=0AUSRP-users" =0ATo: usrp-users@=
lists.ettus.com=0ACc: =0ASent: Friday February 19 2021 9:12:18AM=0ASubje=
ct: Re: [USRP-users] gr-ettus Cross-Compile "Target=0A'gnuradio::runtime=
_swig' not found."=0A=0A Hi Dennis,=0A=0A that's probably not the case h=
ere but I've seen similar with=0Ainstallations where older CMake with ne=
wer CMake libraries were=0Apresent (or vice versa). What does `cmake --v=
ersion` say?=0A Don't have an E310 SDK at hand to check myself, but when=
 you run=0A`which cmake`, is that the cmake you want to run, or is there=
 a=0Adifferent one that's in=0A/home/labuser/rfnoc/oe/sysroots/x86_64-oe=
sdk-linux/usr/bin ?=0A=0A Best regards,=0A Marcus=0A=0A ________________=
_______________________________=0A USRP-users mailing list=0A USRP-users=
@lists.ettus.com=0Ahttp://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com=0A />

--=_e6e9d17b4fa75cd32cde795d31fbe9ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Hi Marcus. Here is the info. I think this is the correct ver=
sion, but let me know what you think.<div><br></div><div><div>labuser@Et=
tusDevel4:~/rfnoc/src/gr-ettus/build-arm$ which cmake</div><div>/home/la=
buser/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/cmake</div><div>labus=
er@EttusDevel4:~/rfnoc/src/gr-ettus/build-arm$ cmake --version</div><div=
>cmake version 3.15.3</div><div><br></div><div>CMake suite maintained an=
d supported by Kitware (kitware.com/cmake).</div><div><br></div><br><div=
 class=3D"reply-new-signature"></div><p>--------------------------------=
---------</p>From: "Marcus M=C3=BCller via USRP-users" <usrp-users@lists=
.ettus.com><br>To: usrp-users@lists.ettus.com<br>Cc: <br>Sent: Friday Fe=
bruary 19 2021 9:12:18AM<br>Subject: Re: [USRP-users] gr-ettus Cross-Com=
pile "Target 'gnuradio::runtime_swig' not found."<br><br>=0AHi Dennis,<b=
r><br>=0Athat's probably not the case here but I've seen similar with=0A=
installations where older CMake with newer CMake libraries were=0Apresen=
t (or vice versa). What does `cmake --version` say?<br>=0ADon't have an=
 E310 SDK at hand to check myself, but when you run=0A`which cmake`, is=
 that the cmake you want to run, or is there a=0Adifferent one that's in=
=0A/home/labuser/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin ?<br><br>=
=0ABest regards,<br>=0AMarcus<br><br><br><br>=0A________________________=
_______________________<br>=0AUSRP-users mailing list<br>=0AUSRP-users@l=
ists.ettus.com<br><a href=3D"http://lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com%3Cbr">http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com<br>=0A=0A/&gt;</a>=0A</usrp-users@lists.ettus.c=
om></div></body></html>

--=_e6e9d17b4fa75cd32cde795d31fbe9ae--



--===============3557506409877064701==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3557506409877064701==--


