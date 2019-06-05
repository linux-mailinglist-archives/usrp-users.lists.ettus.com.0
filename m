Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 900A936056
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2019 17:32:25 +0200 (CEST)
Received: from [::1] (port=57746 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYXti-0005Nl-CT; Wed, 05 Jun 2019 11:32:18 -0400
Received: from mail-wm1-f41.google.com ([209.85.128.41]:37467)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <246tnt@gmail.com>) id 1hYXtf-0005HF-0A
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 11:32:15 -0400
Received: by mail-wm1-f41.google.com with SMTP id 22so2761783wmg.2
 for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2019 08:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JZzTn6ZyzfYI+gC2xtJUKKaF81B0LyygxntujRN4NUA=;
 b=um8buMoj9oKZqiO7qkGphonAeQR2Gxju06oPlsdjR/VHBQy4rL1zfZ54XbmPpikoUV
 lJjRnshSP1ZWKw64hA1/Qtd/2YCuyZpy8+ixKVSTFHxrPGxJOyL8w/Hx52ME6CNdGr1x
 Bs0uvsO1g9vq/ySYn0pR+AxgMZOlvf2sDZMUX/4pogGYwhY2XZK+15vhj907LLBcU4A6
 qdx7piUjSQUXnoF/gmP6HsdWypyTE7WYs8I/RYaaagVceU23xpk8Dn2mj00MP+qNi3x7
 DeMwpZiYkCGfTdzTOXTZLNqYC3L/hzeeTr6QLBWBk3hgh0c58it1b+AfWOuOnSYspreg
 hgwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JZzTn6ZyzfYI+gC2xtJUKKaF81B0LyygxntujRN4NUA=;
 b=FYhI4idRq+PLvR+WfunNMCMx9B9kjpf+EQFGUZzFWanRwcxVeZfYMVdjLQfDk2MgGx
 zqPxOlmfbrxwd/OPRNxwvE6eAIsW7PEhZPy4uy9BMOlgq7WyyR66SWBi+fa0aMNIZJzU
 mHlFArwgMWs5kobCroEprccZvfqO0JDQBT7vSXsWte+I6BNSnD4eHXgmFN/ttYMgn3gQ
 gRMGRqU3ALhtpFMs6OpSdFH+s9GDnGZ2fHXlg4EZ6AYDlEIHX4QmVRF6jITRZ0iMvUPu
 TLbvj31UwgZ6gXrKGfbDWjHIXJJ14ue08c794f0XqjrDah0BQF89nUSjV9Ybxhy32peT
 QUGw==
X-Gm-Message-State: APjAAAXlABtO3ubEKiTGcJ+uXwTyTgB20Vnu0sMbSI0pCMqZvRwzJ5Ie
 wU20PJS77Xv6sd8ovV3TURbPbesRcDUmyHFy6DeU7vbx
X-Google-Smtp-Source: APXvYqywivjYKLnJRZ09zoKp6r/p/BRNxuIRx9w+SEhHXCEkmVGGPYdy9g8ztfvkIVdq8MnvuyqeR3ox6f33O+gmdP0=
X-Received: by 2002:a1c:208c:: with SMTP id
 g134mr23371611wmg.112.1559748693823; 
 Wed, 05 Jun 2019 08:31:33 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB23402C2808CD82D3A68A4E1BAF150@BL0PR12MB2340.namprd12.prod.outlook.com>
 <DM5PR10MB1945DB08DA13F4B6E9C32CDAAB150@DM5PR10MB1945.namprd10.prod.outlook.com>
 <BL0PR12MB23403E7486A123F8268DDB4DAF160@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB23403E7486A123F8268DDB4DAF160@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Wed, 5 Jun 2019 17:31:46 +0200
Message-ID: <CAHL+j0_dd7tAZL1xyHbOAr5_1xceN-m6J2N=mGRfVAn3Mrngdg@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] offset tuning on the TwinRX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sylvain Munaut via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sylvain Munaut <246tnt@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>,
 Robin Coxe <coxe@close-haul.com>
Content-Type: multipart/mixed; boundary="===============1886803631015298577=="
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

--===============1886803631015298577==
Content-Type: multipart/alternative; boundary="000000000000d594ac058a954a10"

--000000000000d594ac058a954a10
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 5, 2019 at 4:41 PM Jason Matusiak via USRP-users <
usrp-users@lists.ettus.com> wrote:

> OK, thanks everyone.  I guess I have some superhet reading up to do =F0=
=9F=99=82.
>

In a nutshell, it's _always_ using LO offset :)

The RF path always brings the signal to some IF  (150 MHz IIRC), then the
DDC blocks do the shift to baseband DC digitally.

So it's pretty much like if you had set the lo_offset =3D 150 MHz.

The finer points are :
 - It's not doing I/Q sampling, it uses one ADC for one channel and the
other for the second one.
 - It's actually using band-pass sampling since the IF is higer than fs / 2=
.

But of course that means the hardware DDC blocks in the fpga are used
already and that's why you can't (and there would be no point anyway) to
apply some second level of lo_offset.


Cheers,

     Sylvain

--000000000000d594ac058a954a10
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 5, 2019 at 4:41 PM Jason =
Matusiak via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
OK, thanks=C2=A0everyone.=C2=A0 I guess I have some superhet reading up to =
do <span id=3D"gmail-m_5072062731859412977=F0=9F=99=82" title=3D":slight_sm=
ile:">
=F0=9F=99=82.</span></div></div></blockquote><div><br></div><div>In a nutsh=
ell, it&#39;s _always_ using LO offset :)</div><div><br></div><div>The RF p=
ath always brings the signal to some IF=C2=A0 (150 MHz IIRC), then the DDC =
blocks do the shift to baseband DC digitally.</div><div><br></div><div>So i=
t&#39;s pretty much like if you had set the lo_offset =3D 150 MHz.</div><di=
v><br></div><div>The finer points are :</div><div>=C2=A0- It&#39;s not doin=
g I/Q sampling, it uses one ADC for one channel and the other for the secon=
d one.=C2=A0</div><div>=C2=A0- It&#39;s actually using band-pass sampling s=
ince the IF is higer than fs / 2.</div><div><br></div><div>But of course th=
at means the hardware DDC blocks in the fpga are used already and that&#39;=
s why you can&#39;t (and there would be no point anyway) to apply some seco=
nd level of lo_offset.</div><div><br></div><div><br></div><div>Cheers,</div=
><div><br></div><div>=C2=A0 =C2=A0 =C2=A0Sylvain=C2=A0<br></div></div></div=
>

--000000000000d594ac058a954a10--


--===============1886803631015298577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1886803631015298577==--

