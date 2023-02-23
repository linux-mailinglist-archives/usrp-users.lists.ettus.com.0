Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5256A1069
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 20:14:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9E6D3841D4
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 14:14:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677179697; bh=jRNeZnzMkhAgFvQkveUR96VtBWTSQ77s1R1kTLJpwDU=;
	h=Date:References:To:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NPd65Zc+S6UUU7hZOkgEpzCyrrpRWDr44DHRP41ykXGvW1GKlTWyxqpywXlNxwQtu
	 gQ4GHnr+v6UFJVPQVuyYYA1A9rh4Ph/17y6LuXW62AyquLnBgPfBowVJJW4FSmnryl
	 ewEKov8UrHlyJp3l8kcLIvfBEWx6kdj1gT8mDdiOQzg9K05x8+ijy/jrTX2jv4IjJi
	 tEtMdAWPbqXCXW6MHPaPh47/yzVKdwccvLLbq0H3GAQ5//YXSANbNpCpycmy07Xo5C
	 UQbS5rFPBShj2uzhRKpW61hZTw6LxjdHKIoKIIJnOrZM2Vk6te6SGS53plNIUusf9B
	 fpuEx+Rz54lCA==
Received: from smtp6.emailarray.com (smtp6.emailarray.com [65.39.216.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 73EAD383F8E
	for <USRP-users@lists.ettus.com>; Thu, 23 Feb 2023 14:14:20 -0500 (EST)
Received: (qmail 32926 invoked by uid 89); 23 Feb 2023 19:14:14 -0000
Received: from unknown (HELO ?192.168.11.155?) (cGhpbGlwQGJhbGlzdGVyLm9yZ0A3NS43NS45Ni4y) (POLARISLOCAL)  
  by smtp6.emailarray.com with SMTP; 23 Feb 2023 19:14:14 -0000
Content-Type: multipart/mixed; boundary="------------HPmRqBH092N90E8V5LrJP1w0"
Message-ID: <02d5f55d-d9aa-37d4-17c7-012966e922dc@balister.org>
Date: Thu, 23 Feb 2023 14:14:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
References: <CANsNeaqS0jJ0sGFoKWU6EtH1ZYFomnSYz3v9AtX75xfQHoQhDQ@mail.gmail.com>
Content-Language: en-US
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
From: Philip Balister <philip@balister.org>
In-Reply-To: <CANsNeaqS0jJ0sGFoKWU6EtH1ZYFomnSYz3v9AtX75xfQHoQhDQ@mail.gmail.com>
X-Forwarded-Message-Id: <CANsNeaqS0jJ0sGFoKWU6EtH1ZYFomnSYz3v9AtX75xfQHoQhDQ@mail.gmail.com>
Message-ID-Hash: IILQPADJ3NRGC5NRRIVW6X5A4V3W7TIB
X-Message-ID-Hash: IILQPADJ3NRGC5NRRIVW6X5A4V3W7TIB
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Fwd: Re: E310 GnuRadio upgrade?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IILQPADJ3NRGC5NRRIVW6X5A4V3W7TIB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.
--------------HPmRqBH092N90E8V5LrJP1w0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

For the person asking about upgrading GNURadio on the E312. My outline=20
from last year.

Philip


-------- Forwarded Message --------
Subject: 	[USRP-users] Re: E310 GnuRadio upgrade?
Date: 	Fri, 4 Nov 2022 15:42:31 -0700
From: 	Rich Gopstein <rich@ourowndomain.com>
To: 	Philip Balister <philip@balister.org>
CC: 	Marcus D. Leech <patchvonbraun@gmail.com>, usrp-users@lists.ettus.co=
m



Thanks.=C2=A0 I'll take a look, though I suspect that is beyond my abilit=
ies...

Rich


On Fri, Nov 4, 2022 at 8:49 AM Philip Balister <philip@balister.org=20
<mailto:philip@balister.org>> wrote:

     Random git links that might help:

     https://github.com/balister/sdr-build/tree/dunfell-ettus
     <https://github.com/balister/sdr-build/tree/dunfell-ettus>

     This will build a file system based of a Yocto Project branch that i=
s
     still supported. It does a a gcc version that causes fftw failures
     though. This hasn't been updated in a couple of years, so it does ne=
ed
     updating to collect bug and security fixes.

     https://github.com/balister/meta-sdr/tree/dunfell-3.10
     <https://github.com/balister/meta-sdr/tree/dunfell-3.10>

     Contains work to get gnuradio-3.10 building against the YP Dunfell
     branch. Still needs some cleanup. Also I need to break out a layer t=
o
     update the gcc version so fftw works. This actually happen, but is a
     spare time task :)

     All of the above likely need uhd recipe updates.

     So, basically the pieces are available to put gnuradio-3.10 on the E=
3XX
     series are known, they just need someone to do the work to make it
     happen.

     Philip

     On 11/2/22 19:05, Marcus D. Leech wrote:
      > On 02/11/2022 16:39, Rich Gopstein wrote:
      >> I tried following the instructions in here:
      >>
=20
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFN=
oC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
=20
<https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RF=
NoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source>
      >> to cross compile GnuRadio on my Ubuntu box, but the cmake failed
      >> because=C2=A0the OE environment was from 2016 and had old librar=
y
     versions.
      >>
      >> I could really use some suggestions on how to get a more modern
      >> GnuRadio (3.9+) on the E310.
      >>
      >> Thanks.
      >> Rich
      > Here's a direct link to the images:
      >
      > https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.3.0.0/
     <https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.3.0.0/>
      >
      >
      > That image includes GR 3.8.3
      >
      >
      >>
      >> On Tue, Oct 25, 2022 at 2:32 PM Rich Gopstein
     <rich@ourowndomain.com <mailto:rich@ourowndomain.com>>
      >> wrote:
      >>
      >>=C2=A0 =C2=A0 =C2=A0I'd like to run GR 3.9 or later on the E310.=C2=
=A0 Is there a
      >>=C2=A0 =C2=A0 =C2=A0documented process to upgrade GR on the E310?
      >>
      >>=C2=A0 =C2=A0 =C2=A0Thanks.
      >>=C2=A0 =C2=A0 =C2=A0Rich
      >>
      >>
      >> _______________________________________________
      >> USRP-users mailing list --usrp-users@lists.ettus.com
     <mailto:usrp-users@lists.ettus.com>
      >> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
     <mailto:tousrp-users-leave@lists.ettus.com>
      >
      >
      > _______________________________________________
      > USRP-users mailing list -- usrp-users@lists.ettus.com
     <mailto:usrp-users@lists.ettus.com>
      > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
     <mailto:usrp-users-leave@lists.ettus.com>
     _______________________________________________
     USRP-users mailing list -- usrp-users@lists.ettus.com
     <mailto:usrp-users@lists.ettus.com>
     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
     <mailto:usrp-users-leave@lists.ettus.com>

--------------HPmRqBH092N90E8V5LrJP1w0
Content-Type: text/plain; charset=UTF-8; name="Attached Message Part"
Content-Disposition: attachment; filename="Attached Message Part"
Content-Transfer-Encoding: base64

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQoK

--------------HPmRqBH092N90E8V5LrJP1w0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------HPmRqBH092N90E8V5LrJP1w0--
