Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF56D3AB3C8
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 14:39:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A0843841F0
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 08:39:16 -0400 (EDT)
Received: from smtp7.emailarray.com (smtp7.emailarray.com [65.39.216.66])
	by mm2.emwd.com (Postfix) with ESMTPS id 29A3E3841DD
	for <usrp-users@lists.ettus.com>; Thu, 17 Jun 2021 08:38:30 -0400 (EDT)
Received: (qmail 45164 invoked by uid 89); 17 Jun 2021 12:38:28 -0000
Received: from unknown (HELO ?IPv6:::1?) (cGhpbGlwQG9wZW5zZHIuY29tQDE3Mi41OC4xODcuODI=) (POLARISLOCAL)  
  by smtp7.emailarray.com with SMTP; 17 Jun 2021 12:38:28 -0000
Date: Thu, 17 Jun 2021 08:38:25 -0400
From: Philip Balister <philip@opensdr.com>
To: usrp-users@lists.ettus.com, paradis@kwesst.com
User-Agent: K-9 Mail for Android
In-Reply-To: <SG7njKcub2AkVItwPUyTDMImoSUIF8HGbTOKHXHo@lists.ettus.com>
References: <SG7njKcub2AkVItwPUyTDMImoSUIF8HGbTOKHXHo@lists.ettus.com>
Message-ID: <3842B112-4D89-4D98-A43B-7C782C688F6E@opensdr.com>
MIME-Version: 1.0
Message-ID-Hash: PEIEV7S7UGACBAUMXYZSTC3IXXONH2LN
X-Message-ID-Hash: PEIEV7S7UGACBAUMXYZSTC3IXXONH2LN
X-MailFrom: philip@opensdr.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PEIEV7S7UGACBAUMXYZSTC3IXXONH2LN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3912565477800827496=="

--===============3912565477800827496==
Content-Type: multipart/alternative;
 boundary=----QGE1U53KAP0GMJL16563YA8YQKQKUD
Content-Transfer-Encoding: 7bit

------QGE1U53KAP0GMJL16563YA8YQKQKUD
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

The gcc killed message says the out of memory killer is killing the compile=
r=2E Since you are in a hurry, add swap=2E

Philip

On June 17, 2021 8:21:44 AM EDT, paradis@kwesst=2Ecom wrote:
>Thanks for the help everyone=2E I=E2=80=99m still trying to build the UHD=
 v4=2E0=2E0=2E0 on the SBC but it keeps dying at about 28%=2E I feel like i=
t might be a storage and/or ram/memory issue=2E It=E2=80=99s a Newport GW62=
00 with 1GB of RAM, but after installing Ubuntu and all the depencies for U=
HD and clone the UHD repo, there=E2=80=99s only about 20% disk space left=
=2E
>
>I=E2=80=99ll take a look at the bitbake stuff, but I don=E2=80=99t know i=
f that will help me right now, since I need this up and running by tomorrow=
 at the latest, otherwise there=E2=80=99s no point=2E
>
>I had two different SBCs running builds overnight, and the build both fai=
led at the same spot: Trying to build =E2=80=98magnesium_radio_contro=2Eccp=
=2Eo=E2=80=99 I get this error:
>
>c++: fatal error: Killed signal terminated program cc1plus
>
>compilation terminated=2E
>
>make\[2\]: \*\*\* \[lib/CMakeFiles/uhd=2Edir/build=2Emake:2010: lib/CMake=
Files/uhd=2Edir/usrp/dboard/magnesium/magnesium_radio_control=2Ecpp=2Eo\] E=
rror 1
>
>make\[1\]: \*\*\* \[CMakeFiles/Makefile2:961: lib/CMakeFiles/uhd=2Edir/al=
l\] Error 2
>
>make: \*\*\* \[Makefile:163: all\] Error 2
>
>Does anyone know what the error or problem could be with that file?

------QGE1U53KAP0GMJL16563YA8YQKQKUD
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>The gcc killed message says the out of memory kill=
er is killing the compiler=2E Since you are in a hurry, add swap=2E<br><br>=
Philip<br><br><div class=3D"gmail_quote">On June 17, 2021 8:21:44 AM EDT, p=
aradis@kwesst=2Ecom wrote:<blockquote class=3D"gmail_quote" style=3D"margin=
: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); padding-l=
eft: 1ex;">
<p>Thanks for the help everyone=2E I=E2=80=99m still trying to build the U=
HD v4=2E0=2E0=2E0 on the SBC but it keeps dying at about 28%=2E I feel like=
 it might be a storage and/or ram/memory issue=2E It=E2=80=99s a Newport GW=
6200 with 1GB of RAM, but after installing Ubuntu and all the depencies for=
 UHD and clone the UHD repo, there=E2=80=99s only about 20% disk space left=
=2E</p><p>I=E2=80=99ll take a look at the bitbake stuff, but I don=E2=80=99=
t know if that will help me right now, since I need this up and running by =
tomorrow at the latest, otherwise there=E2=80=99s no point=2E</p><p>I had t=
wo different SBCs running builds overnight, and the build both failed at th=
e same spot: Trying to build =E2=80=98magnesium_radio_contro=2Eccp=2Eo=E2=
=80=99 I get this error:</p><p>c++: fatal error: Killed signal terminated p=
rogram cc1plus</p><p>compilation terminated=2E</p><p>make[2]: *** [lib/CMak=
eFiles/uhd=2Edir/build=2Emake:2010: lib/CMakeFiles/uhd=2Edir/usrp/dboard/ma=
gnesium/magnesium_radio_control=2Ecpp=2Eo] Error 1</p><p>make[1]: *** [CMak=
eFiles/Makefile2:961: lib/CMakeFiles/uhd=2Edir/all] Error 2</p><p>make: ***=
 [Makefile:163: all] Error 2</p><p><br></p><p>Does anyone know what the err=
or or problem could be with that file?</p>
</blockquote></div></body></html>
------QGE1U53KAP0GMJL16563YA8YQKQKUD--

--===============3912565477800827496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3912565477800827496==--
