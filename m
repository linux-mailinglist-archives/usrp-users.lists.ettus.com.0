Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2832C93CE5A
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 08:55:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 008CE38590A
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 02:55:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721976908; bh=NnKhRm/kX1pYFX4KuUSJ74VtwNGsMnvw/5DWbqUOWc4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kYMzCF9yEuL2GH95EYJt8lOt1sXtjvGj6jK7/VRhkGmMWoTlOieyAGW++Ibouzur4
	 sAGHF86g/MxC7Uq/SOmpT5ykTJkwAy47cahXwUBh5XK/gMxfd6UmMZ1MAKe8I+ySka
	 WtRRQbXSH/egZlgansGeQPAuFZKaPBGsFEy6s3stoXHK48Rw8Fz+i31KBMHZr8eYon
	 8pQynUEuJEkVsrXo1XeX+PVdL3S4sKc2gFYWGgNZhzznsLkc2dORt+s4JdyD/cgfb4
	 H1zFe17ruASYWLlVpqVU6xNsFghlSARbbwdTMpGCypVQfeRqjvd6idTmgQOTfTExRy
	 mNayT5tqGZbvA==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 59C93385757
	for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 02:54:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Mf66o42D";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a7a843bef98so142922266b.2
        for <usrp-users@lists.ettus.com>; Thu, 25 Jul 2024 23:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721976855; x=1722581655; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0cTwPVlswJ6d1MeKjcgL/1D9SpV4mTnc2fuCiWL/XVg=;
        b=Mf66o42Dk2qidpSbXBTmubTBjRoUYtU6mQYsODdcmtkK9HzrJizAsHQCfuGyA6KnOo
         tvcoE3Mcdb+SPA/cCcMJVZV2aWwckakuO4r4j1KfjFdSVWc6n4QIij0sgv5jrGEZjZWk
         ryg7Paoic4zYTSpNYgkIWC70Uyi9nE9eTXp4Fn99suVW9uAq4RrMaB9ilRimEp+yqzPK
         A5WrH1Nf/QspArAp3q3Axy7hYNX1YSrvAXEwzphJgDk+119zWqnAWfCTPHgdphcNxgHC
         nDoHM3dSDvhJYkP3RkSk6Rs4OGCBxhcSB5qscrDoXD8jc/J9oUEEsaOeY9ttYkOxNUsH
         Gqtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721976855; x=1722581655;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0cTwPVlswJ6d1MeKjcgL/1D9SpV4mTnc2fuCiWL/XVg=;
        b=QcyIw/bAgHDPx4macjwS8E6dYUez/7Ei+QhTq/hXR2A3jcv5BMqP2mp9bXXLKxu86+
         mr+MywzOmPenStPJrqqjA5uzJWVxgsAqaeo3aN7VlGUywGaM0Kpb6Ne1Nb2YK7HX3cg6
         f/Ncvus26Af11XJ8Yg2uRZze5AABg42oihqyeAVfFuJC+neGe96RiPtSybrAd34PhBcD
         vbaT1sdQF+K9rMplhrClTO0saWBh0GF0umNRxEIeaCXLILMejRL5aSEpK0+8I9GKYw0d
         Rvgn2NK2Xu37NnR5WGtaRIvW61KnyyGxhrELZoayVteaLyh3Z6V9M4BtrW/aDrL/2eDh
         v0pA==
X-Gm-Message-State: AOJu0YyGRMG4YOQ68w+n6M3seA1xUafPt1UVBXbFumxc18llPD6Mc487
	81Tus+QJVQ7czoN0fYfewwa9O7lQUv8OxrinpfFrvAxR3Sb34HYmEGvUAO6X69uMc9JksJKyW1O
	iiTceZ2kWIB35x7DLFyQXkeLJjkj8X6v0gQI=
X-Google-Smtp-Source: AGHT+IHKWLKX7d4BHLzzJse5n9y/wulxfzlZ6166eeVLqzkfEGMEGkDJ1ovbrr2QdiIovQvZoFgcSi3O7mnQymfmWsw=
X-Received: by 2002:a17:907:1c23:b0:a7a:9d1e:3b16 with SMTP id
 a640c23a62f3a-a7ac52e0d81mr413654566b.47.1721976854327; Thu, 25 Jul 2024
 23:54:14 -0700 (PDT)
MIME-Version: 1.0
From: Tim Smith <secsubs@gmail.com>
Date: Thu, 25 Jul 2024 23:54:03 -0700
Message-ID: <CADPi3fiO-37O8QXpRoFe5aaNNHo8eJcf6C7S6H=k0GGF3QLCsg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: MHFMKACDKDFPCJKU7TKZK7RYS4S4PNGJ
X-Message-ID-Hash: MHFMKACDKDFPCJKU7TKZK7RYS4S4PNGJ
X-MailFrom: secsubs@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Making a USRP N230 work
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MHFMKACDKDFPCJKU7TKZK7RYS4S4PNGJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5947225766841140247=="

--===============5947225766841140247==
Content-Type: multipart/alternative; boundary="000000000000b6bc9e061e20fa9d"

--000000000000b6bc9e061e20fa9d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to make an older N230 board work for me. On MacOS, I got
UHD-3.15.0 via MacPorts. "uhd_usrp_probe" discovers the device over the
network and I can run "uhd_fft" but when I try to talk to the radio with
gqrx, it refuses to find the device. Oddly enough, "device scan" on gqrx
automatically populates the "device string" as "addr=3D192.168.20.2" but th=
en
won't connect. On Ubuntu 22.04 and 24.04, the UHD package is from the 4.xx
release where support for N230 had been pulled so nothing works on Ubuntu.

I tried restoring the commits from this PR:
https://github.com/EttusResearch/uhd/commit/d94140a4129d6b2153b15860eeb2406=
672ebb414
- I copied the entire N230 folder from the 3.15.0 release into the codebase
from 4.7.0 and added back all the comments/includes for N230 but "make"
failed miserably because underlying functions have probably been entirely
changed between 3.x and 4.x. I get an error:
-------------------------
uhd-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp: In constructor
=E2=80=98uhd::usrp::n230::n230_ref_pll_ctrl::n230_ref_pll_ctrl(uhd::usrp::n=
230::n230_core_spi_core::sptr)=E2=80=99:
uhd-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp:60:13: error: no matching
function for call to
=E2=80=98uhd::usrp::adf4001_ctrl::adf4001_ctrl(uhd::usrp::n230::n230_core_s=
pi_core::sptr&,
const uint32_t&)=E2=80=99
   60 |     _spi(spi)
------------------------

I tried building 3.15.0 on Ubuntu 22.04 but that failed with a different
set of errors.

What's the best way to use/support a N230?

--
Thanks,

Tim

--000000000000b6bc9e061e20fa9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am trying to make an older N230 b=
oard work for me. On MacOS, I got UHD-3.15.0 via MacPorts. &quot;uhd_usrp_p=
robe&quot; discovers the device over the network and I can run &quot;uhd_ff=
t&quot; but when I try to talk to the radio with gqrx, it refuses to find t=
he device. Oddly enough, &quot;device scan&quot; on gqrx automatically popu=
lates the &quot;device string&quot; as &quot;addr=3D192.168.20.2&quot; but =
then won&#39;t connect. On Ubuntu 22.04 and 24.04, the UHD package is from =
the 4.xx release where support for N230 had been pulled so nothing works on=
 Ubuntu.</div><div><br></div><div>I tried restoring the commits from this P=
R:=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/commit/d94140a4129d=
6b2153b15860eeb2406672ebb414">https://github.com/EttusResearch/uhd/commit/d=
94140a4129d6b2153b15860eeb2406672ebb414</a> - I copied the entire N230 fold=
er from the 3.15.0 release into the codebase from 4.7.0 and added back all =
the comments/includes for N230 but &quot;make&quot; failed miserably becaus=
e underlying functions have probably been entirely changed between 3.x and =
4.x. I get an error:</div><div>-------------------------</div><div>uhd-4.7.=
0.0/host/lib/usrp/n230/n230_cores.cpp: In constructor =E2=80=98uhd::usrp::n=
230::n230_ref_pll_ctrl::n230_ref_pll_ctrl(uhd::usrp::n230::n230_core_spi_co=
re::sptr)=E2=80=99:<br>uhd-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp:60:13:=
 error: no matching function for call to =E2=80=98uhd::usrp::adf4001_ctrl::=
adf4001_ctrl(uhd::usrp::n230::n230_core_spi_core::sptr&amp;, const uint32_t=
&amp;)=E2=80=99<br>=C2=A0 =C2=A060 | =C2=A0 =C2=A0 _spi(spi)<br></div><div>=
------------------------</div><div><br></div><div>I tried building 3.15.0 o=
n Ubuntu 22.04 but that failed with a different set of errors.=C2=A0</div><=
div><br></div><div>What&#39;s the best way to use/support a N230? =C2=A0</d=
iv><div><div><br></div><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div><div>--<br></div>Thanks,<br=
><br></div>Tim<br></div></div></div></div>

--000000000000b6bc9e061e20fa9d--

--===============5947225766841140247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5947225766841140247==--
