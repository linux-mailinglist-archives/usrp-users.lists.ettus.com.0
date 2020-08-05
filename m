Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE93123C35D
	for <lists+usrp-users@lfdr.de>; Wed,  5 Aug 2020 04:20:20 +0200 (CEST)
Received: from [::1] (port=35764 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k392O-00072f-3h; Tue, 04 Aug 2020 22:20:16 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:34465)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1k392L-0006xL-4t
 for usrp-users@lists.ettus.com; Tue, 04 Aug 2020 22:20:13 -0400
Received: by mail-ot1-f48.google.com with SMTP id k12so15353170otr.1
 for <usrp-users@lists.ettus.com>; Tue, 04 Aug 2020 19:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RjJetG61IcXHOcZywDrtgKHBvSmGTwhkkL15UqZ6q+Y=;
 b=bM0+Cdda8QCgISBOm8YyhkJ1D8V6rMJ08cNsHXQYXvx3irYIBq+kX0ouyRv6sPt1pu
 RsbkVJWZo42TrqmkMj1e8B4/GdLzJIDFM7Du+OQy7aMPjxM97RAlohP2mflupWGxPNyW
 31PKvFkAHMkr53zVauDW39DlpmulZjFK2JL4C8lZOiS5g3sp40yMJlrRl9pQNWTPaneO
 JcPEpoqIS67LSxO9j99zurjR7NVK2D1Hj95QoolJH7THspvk0ELl5urQ5+qAHvCHBajW
 JJdgwGu3JuFZmcf/9XGX2WiUQH/2oVPYJYg7sVOmO0ZRv27I+DjEFAicZ+MXI8p05pTr
 51Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RjJetG61IcXHOcZywDrtgKHBvSmGTwhkkL15UqZ6q+Y=;
 b=NbwaEmUNTD6e9qisHI16BEtLsZGD4EXFFcuLldZpgl+pMb3/aivw87RC25fGovhMnT
 m6VY1fVTiFYmiETbPDSdkQBaXJ7i0p3Ghh2YpJ0tyOGAEAazz224ShchxK7LzLvkNyf+
 iCMJginAzxDqSfA3AHFxIMtE4cKimsXmiv32YvwaWtyVuw9UMVrx/3KDPcZNrSKNNWws
 MBQ6AIxx2laG+KXNyzIrGqJBws2GDTc4pAD3D+/8R+eqcDXYsYkIUqIFysWoagJRafBU
 JXIWRgIKBwfVro4+R4YZ/w/cGa3VkYzSU7UzDJ1RRQnsf5guMjYkHMA+XDSSINIGXmcK
 x0Jw==
X-Gm-Message-State: AOAM533eVVJ/cJv0ZIhlTBUWA1UZVRzN5m04YCMDbYOWHrZmgEfiQJRZ
 WF9/oIYbAiibNohFs9L/nEN7zTsYD3qcpRegnKv6uaGB
X-Google-Smtp-Source: ABdhPJymx0tpnszgKPHxyCwohzVQ4/zk26zEX6P0M6aAe+pwNEgfpGajDmefoBc8g+8rDw1eang/mm4+ZPJEej2P+rM=
X-Received: by 2002:a9d:3f66:: with SMTP id m93mr904760otc.49.1596593972353;
 Tue, 04 Aug 2020 19:19:32 -0700 (PDT)
MIME-Version: 1.0
References: <MA1PR01MB2588409C6077BABC4BF92A9D904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2588409C6077BABC4BF92A9D904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Date: Tue, 4 Aug 2020 21:18:56 -0500
Message-ID: <CACaXmv8yKe-Zr8xYvRb5_U4-rtNvMMd9u0TrL15u5+t7Ojd95w@mail.gmail.com>
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Using PCIe
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============1159142766703569017=="
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

--===============1159142766703569017==
Content-Type: multipart/alternative; boundary="00000000000092af6905ac18002b"

--00000000000092af6905ac18002b
Content-Type: text/plain; charset="UTF-8"

Hello Koyel:

Yes, to use PCIe with the USRP X300/X310, you need to download and install
the PCIe driver.

However, if you're using UHD/C++ or GNU Radio, then I would recommend using
10 Gbps Ethernet instead.

--Neel Pandeya



On Tue, 4 Aug 2020 at 04:30, Koyel Das (Vehere) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> Do we need to install driver for using PCIe with USRP 2955? If so which
> link to follow for all installations to be able to use PCIe.
>
> Regards,
> Koyel
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000092af6905ac18002b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Koyel:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">Yes, to use PCIe with the USRP X300/X310, you=
 need to download and install the PCIe driver.</div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmai=
l_default" style=3D"font-family:verdana,sans-serif">However, if you&#39;re =
using UHD/C++ or GNU Radio, then I would recommend using 10 Gbps Ethernet i=
nstead.</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans=
-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana=
,sans-serif">--Neel Pandeya</div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif"><br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 4 Aug 2020 at 04:30, Koy=
el Das (Vehere) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Do we need to install driver for using PCIe with USRP 2955=
? If so which link to follow for all installations to be able to use PCIe.<=
/div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel=C2=A0</div>
<div><br>
</div>
<div id=3D"gmail-m_5891566876836178092ms-outlook-mobile-signature">Get <a h=
ref=3D"https://aka.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000092af6905ac18002b--


--===============1159142766703569017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1159142766703569017==--

