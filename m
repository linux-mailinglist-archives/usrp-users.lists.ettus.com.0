Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFC93921C1
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 23:06:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A287384868
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 17:06:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="BjB1oHVW";
	dkim-atps=neutral
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 635E038434D
	for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 17:05:44 -0400 (EDT)
Received: by mail-oi1-f181.google.com with SMTP id u11so2928275oiv.1
        for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 14:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MwJrTQ8SQ98uKZtdqtAOweQnYcKEOnXSYBLzkIeHHqY=;
        b=BjB1oHVWitJdj6FpYzgznMEVCTj6LOYnhyRjbDAu5UiTTj7PoCKE6GiLrYJc0rgS6R
         21kM6fdRnZwmmfdjixsOf8Xh/MIfxFSUMnnNjAGhhmjp20p/lGDzoVv9HgguMkHkNtRX
         5TXVyA+hxGdR7McNnX8QkeFxJKqfdDskFDj8zE3EHctWO9bwFWec1R4svKpNScuoqvuI
         qTd/G/IAiKUOx+Dev/cxPyaIUhzwOMBxSZw5pOmrsxAlPcEKproCEe+6eFYOgkWHR9ds
         N4gnS5fAX5EIp5AuNaAiQatOeNEL4SSTNpmE2zBM6anWqEd/wlZRimoD+uLCycM6jmJ2
         Ek8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MwJrTQ8SQ98uKZtdqtAOweQnYcKEOnXSYBLzkIeHHqY=;
        b=UuTccetVXdNdFUwyEOetF9955iCCauBTY3UlC07WzjO4eMY4bSJcDM2pbw7vlqVpU3
         WdiBJzZQ84Uzo9lM2JjcUo4PxSJha2ZhEOgMPq0Y8PBCEmSLWNCVI0lTK36dSapQ1Sjh
         Nh5z/F6r19i7EgfbEIxtVyegCgaeAL7ERW1zSQ7Ki6+Q6fnomNCeLT8AQr12CsZ1f2Ct
         3prcegQIH/X0bQHUIkN/FS1YqIKeG0V727JhbIGEet0qGiPDBLMlNYdPvQojoRyyHoV2
         i+8I82VsKMIZUnJ1Sx4mnVmiUNCsY7/QUhhxlYSfncqJBioV9fZ72YjGkb9HjI0tHTW/
         VN0Q==
X-Gm-Message-State: AOAM531o9Nf9m+5Mqxtjg8MzOMsIOlCnb+Tv8veOxN/7LX6oAQGf/0wl
	n5SNLhWadAN5xkqgaPxM5uVzoDdpT4aVCQxyxawPO+ub
X-Google-Smtp-Source: ABdhPJw4H2u3aVdi4tQPb9OsGb10p6Wl63exjhw2Z5glRQR1vkmjmUK48b5bF9OGHhhYU8fdLb+y7jVSJZ0gqLTlZMA=
X-Received: by 2002:aca:603:: with SMTP id 3mr3248431oig.145.1622063143565;
 Wed, 26 May 2021 14:05:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7+tqS5VzQQePfvw96igArX=wQNWME_2xg9OPP3ir7yRRVPsw@mail.gmail.com>
In-Reply-To: <CAA7+tqS5VzQQePfvw96igArX=wQNWME_2xg9OPP3ir7yRRVPsw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 26 May 2021 16:05:28 -0500
Message-ID: <CAFche=hJ6h7kWWdjAycyOUopqqwQZEJqUiBFBJ93spFKANZOUA@mail.gmail.com>
To: Berkay SAYGILI <zuhasdasn@gmail.com>
Message-ID-Hash: Q3DJJNWFW4FAQ35QV6FZD2LSTWXQEJFS
X-Message-ID-Hash: Q3DJJNWFW4FAQ35QV6FZD2LSTWXQEJFS
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK setup with UHD 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q3DJJNWFW4FAQ35QV6FZD2LSTWXQEJFS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1584521680744612898=="

--===============1584521680744612898==
Content-Type: multipart/alternative; boundary="00000000000079cf7205c3420178"

--00000000000079cf7205c3420178
Content-Type: text/plain; charset="UTF-8"

Hi Berkay,

I also had a lot of trouble getting DPDK to be recognized. It could be a
lot of things, so I can only speculate what the problem is in your case. In
my case, I had hyphens instead of underscores in my uhd.conf file. I think
I also had some issues with specifying the correct location of the DPDK
driver. Hopefully you've already read through the KB on how to set it up.

https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD

There are also some driver dependencies and, depending on your Ethernet
card, some flags may be needed when building DPDK.

Maybe you could share some additional details about your setup, such as
which card you're using, which driver/version, how you built DPDK, etc.

Looking at my notes, I built DPDK using the following steps. I'm using a
Mellanox CX516A.
cd dpdk-stable-18.11.11/
meson build
cd build
ninja
sudo ninja install
sudo ldconfig

My /root/.uhd/uhd.conf pretty much matches the one in the KB under UHD 4.0,
although I commented some things out.
[use_dpdk=1]
dpdk_mtu=9000
dpdk_driver=/usr/local/lib/
dpdk_corelist=2,3,4
;dpdk_num_mbufs=4095
;dpdk_mbuf_cache_size=315

[dpdk_mac=XX:XX:XX:XX:XX:XX]
dpdk_lcore = 3
dpdk_ipv4 = 192.168.10.1/24

;[dpdk_mac=XX:XX:XX:XX:XX:XX]
;dpdk_lcore = 4
;dpdk_ipv4 = 192.168.20.1/24

Wade

On Wed, May 26, 2021 at 3:56 AM Berkay SAYGILI <zuhasdasn@gmail.com> wrote:

> Hello,
>
> I've been trying to use dpdk with UHD 4.0 on our newly purchased N320, but
> it is shown as disabled component when i cmake uhd. First, i used "apt-get
> install dpdk dpdk-dev", then realized it installed wrong version,
> afterwords i downloaded dpdk 18.11. from the source and compiled. Another
> mistake was not enabling shared library build, so i rebuilded it with share
> libraries enabled (i can .so files now in the lib). But, still cmake shows
> that dpdk is disabled. I added cmakecache.txt file to this mail, maybe it
> can be useful. Btw, i completed all other steps like enabling hugepages,
> adding drivers, etc. Do you have any solution to this problem?
>
>
> Best regards
>
> Berkay S.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000079cf7205c3420178
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Berkay,</div><di=
v><br></div><div>I also had a lot of trouble getting DPDK to be recognized.=
 It could be a lot of things, so I can only speculate what the problem is i=
n your case. In my case, I had hyphens instead of underscores in my uhd.con=
f file. I think I also had some issues with specifying the correct location=
 of the DPDK driver. Hopefully you&#39;ve already read through the KB on ho=
w to set it up. <br></div><div><br></div><div><a href=3D"https://kb.ettus.c=
om/Getting_Started_with_DPDK_and_UHD">https://kb.ettus.com/Getting_Started_=
with_DPDK_and_UHD</a></div><div><br></div><div>There are also some driver d=
ependencies and, depending on your Ethernet card, some flags may be needed =
when building DPDK.</div><div><br></div><div>Maybe you could share some add=
itional details about your setup, such as which card you&#39;re using, whic=
h driver/version, how you built DPDK, etc.</div><div><br></div><div>Looking=
 at my notes, I built DPDK using the following steps. I&#39;m using a Mella=
nox CX516A.<br>cd dpdk-stable-18.11.11/<br>meson build<br>cd build<br>ninja=
<br>sudo ninja install<br>sudo ldconfig</div><div><br></div><div>My /root/.=
uhd/uhd.conf pretty much matches the one in the KB under UHD 4.0, although =
I commented some things out.</div><div>[use_dpdk=3D1]<br>dpdk_mtu=3D9000<br=
>dpdk_driver=3D/usr/local/lib/<br>dpdk_corelist=3D2,3,4<br>;dpdk_num_mbufs=
=3D4095<br>;dpdk_mbuf_cache_size=3D315<br><br>[dpdk_mac=3DXX:XX:XX:XX:XX:XX=
]<br>dpdk_lcore =3D 3<br>dpdk_ipv4 =3D <a href=3D"http://192.168.10.1/24">1=
92.168.10.1/24</a><br><br>;[dpdk_mac=3DXX:XX:XX:XX:XX:XX]<br>;dpdk_lcore =
=3D 4<br>;dpdk_ipv4 =3D <a href=3D"http://192.168.20.1/24">192.168.20.1/24<=
/a></div><div><br></div><div>Wade<br></div></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 26, 2021=
 at 3:56 AM Berkay SAYGILI &lt;<a href=3D"mailto:zuhasdasn@gmail.com">zuhas=
dasn@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;v=
e been trying to use dpdk with UHD 4.0 on our newly purchased N320, but it =
is shown as disabled component when i cmake uhd. First, i used &quot;apt-ge=
t install dpdk dpdk-dev&quot;, then realized it installed wrong version, af=
terwords i downloaded dpdk 18.11. from the source and compiled. Another mis=
take was not enabling shared library build, so i rebuilded it with share li=
braries enabled (i can .so files now in the lib). But, still cmake shows th=
at dpdk is disabled. I added cmakecache.txt file to this mail, maybe it can=
 be useful. Btw, i completed all other steps like enabling hugepages, addin=
g drivers, etc. Do you have any solution to this problem?</div><div><br></d=
iv><div><br></div><div>Best regards<br></div><div><br></div><div>Berkay S.<=
br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000079cf7205c3420178--

--===============1584521680744612898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1584521680744612898==--
