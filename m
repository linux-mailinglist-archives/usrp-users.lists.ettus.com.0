Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E48C425A15
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 19:55:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4222E384466
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 13:55:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="KwVycCe0";
	dkim-atps=neutral
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 528F03843FA
	for <usrp-users@lists.ettus.com>; Thu,  7 Oct 2021 13:54:58 -0400 (EDT)
Received: by mail-ot1-f48.google.com with SMTP id l7-20020a0568302b0700b0054e40740571so2771622otv.0
        for <usrp-users@lists.ettus.com>; Thu, 07 Oct 2021 10:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zv7PbGb6F12+pTNZws6sp//y7RgYbwB6Sbr7ArIa/Z8=;
        b=KwVycCe0TPbxicTq6AWwyZu82Olc6ufppmZCeyOTwgPuk7oAnbuct3kpSuhDHmqT7I
         4HbuMGTND/zpyzKhOqaLiXjqOnzJ4rvfO6alk7tp4CxmWhB32emQHcj4uL3viAwLtxPp
         oNkZRlVrmDGZi08AynryovAACKbax5/BD7yHWynSyZb2MyYax7MQGPZcjtOoZlR6wpt0
         UujZMg5QnWu8skz5qFaOXVG8dGDHZ7AuJCNCx2qnjxu1pW+kjvLBZKplE+6hMgXGjE5j
         vUeU9yEex2i/BW3LN/uL/8Z1DCqUwQp4AVWkrI/tQ82NGQqpFcjaOStBZKBWrXKp9zTe
         /2Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zv7PbGb6F12+pTNZws6sp//y7RgYbwB6Sbr7ArIa/Z8=;
        b=vZn/ueGEbM50w4ptM08VSsPEJCGLB4lvMunWHBpSHUOfKZ4vQjZABonq3DBk0WHaby
         P3wyiGl20Vmby0eNjvC6JF1txJm+WeLE1S2dRnCMXvAN8Sf/AJ7mkj9xN3HgqYfoejv8
         8q8iWeTJqVZC4tk20hUcIdn9i9ejfnosDMc4qAy9mldFmLNisVrloDRIIjPTETXfqHre
         6pE/bejfSaq2T0YZw0/51oERoj+69ksDB+4OOxi1dcwrkDoap9sIZKz/GucpkWDkogwi
         IPZri6OjvVdCvUIDn0FszL537avL8wmXhf4kEMCSrHn9/okGD8JJlU7k8LU2AUvYpDTG
         s8tQ==
X-Gm-Message-State: AOAM530tpQr7eobGfBe8lGFnuHh5SNo2TOXtVpY32hwkq7fLy2phinSK
	o2mcHJ/IjGjWAziGbp8CrQfM+mpDyqlmH+lj15TXh1h9HHE=
X-Google-Smtp-Source: ABdhPJyQUrL6m9Td/GvQYVdz1viP/r8EzC6AuKTmiOuUzVrdAOvVDvZoswY5N/zGgnG6lIJ4ICl3WKa7S4ZFY0Vbh7M=
X-Received: by 2002:a05:6830:314e:: with SMTP id c14mr4760015ots.37.1633629297459;
 Thu, 07 Oct 2021 10:54:57 -0700 (PDT)
MIME-Version: 1.0
References: <BN7PR05MB4500C27C573EBDAB9A2FD998D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
In-Reply-To: <BN7PR05MB4500C27C573EBDAB9A2FD998D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 7 Oct 2021 13:54:46 -0400
Message-ID: <CAB__hTQbAiyie8RxsnpE1arSu6sR7Zqxozz4VOpugNK2qSLGMQ@mail.gmail.com>
To: Jonathan Tobin <Tobin@augustusaero.com>
Message-ID-Hash: 2OQEKLKBLPILIWEMYG4Y6JWQR5TW3MKO
X-Message-ID-Hash: 2OQEKLKBLPILIWEMYG4Y6JWQR5TW3MKO
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 3.15 on Windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2OQEKLKBLPILIWEMYG4Y6JWQR5TW3MKO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8693593028541112200=="

--===============8693593028541112200==
Content-Type: multipart/alternative; boundary="000000000000f86ba605cdc6f5a0"

--000000000000f86ba605cdc6f5a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Perhaps you are just finding the address of the N310 RJ45 Ethernet port,
but not the address of the SFP+ ports? These are needed for UHD (at least
one of them). Are you only connected via 1GB?  Do you have a direct link
between host PC and one of the SFP+ ports?
Rob

On Thu, Oct 7, 2021 at 1:37 PM Jonathan Tobin <Tobin@augustusaero.com>
wrote:

> Hello =E2=80=93 I am attempting to install UHD 3.15 on my Windows 10 PC. =
I am able
> to ping and find the device, but currently unable to probe. Not sure what
> the issue is =E2=80=93 any recommendations?
>
>
>
> Command Prompt output:
>
>
>
> C:\Program Files\UHD3\bin>uhd_find_devices
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200;
> UHD_3.15.0.HEAD-0-gaea0e2de
>
> --------------------------------------------------
>
> -- UHD Device 0
>
> --------------------------------------------------
>
> Device Address:
>
>     serial: 3218B5F
>
>     claimed: False
>
>     mgmt_addr: 192.168.10.2
>
>     product: n310
>
>     reachable: No
>
>     type: n3xx
>
>
>
> C:\Program Files\UHD3\bin>uhd_usrp_probe
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200;
> UHD_3.15.0.HEAD-0-gaea0e2de
>
> [INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD
> session. Specify find_all to find all devices.
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Empty Device Address
>
>
>
>
>
> Thanks,
>
> Jonathan
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f86ba605cdc6f5a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Perhaps you are just finding the address =
of the N310 RJ45 Ethernet port, but not the address of the SFP+ ports? Thes=
e are needed for UHD (at least one of them). Are you only connected via 1GB=
?=C2=A0 Do you have a direct=C2=A0link between host PC and one of the SFP+ =
ports?<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Oct 7, 2021 at 1:37 PM Jonathan Tobin &lt;<a hr=
ef=3D"mailto:Tobin@augustusaero.com">Tobin@augustusaero.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_4576718258842437248WordSection1">
<p class=3D"MsoNormal">Hello =E2=80=93 I am attempting to install UHD 3.15 =
on my Windows 10 PC. I am able to ping and find the device, but currently u=
nable to probe. Not sure what the issue is =E2=80=93 any recommendations?<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Command Prompt output:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_find_devices<u></u>=
<u></u></p>
<p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++ version 14.=
2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<u></u><u></u></p>
<p class=3D"MsoNormal">--------------------------------------------------<u=
></u><u></u></p>
<p class=3D"MsoNormal">-- UHD Device 0<u></u><u></u></p>
<p class=3D"MsoNormal">--------------------------------------------------<u=
></u><u></u></p>
<p class=3D"MsoNormal">Device Address:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 serial: 3218B5F<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 claimed: False<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 =C2=A0=C2=A0mgmt_addr: 192.168.10.2<u></u><u>=
</u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 product: n310<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 reachable: No<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 type: n3xx<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_usrp_probe<u></u><u=
></u></p>
<p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++ version 14.=
2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPMD FIND] Found MPM devices, but none are r=
eachable for a UHD session. Specify find_all to find all devices.<u></u><u>=
</u></p>
<p class=3D"MsoNormal">Error: LookupError: KeyError: No devices found for -=
----&gt;<u></u><u></u></p>
<p class=3D"MsoNormal">Empty Device Address<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Jonathan<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000f86ba605cdc6f5a0--

--===============8693593028541112200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8693593028541112200==--
