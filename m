Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D332A5A2F
	for <lists+usrp-users@lfdr.de>; Mon,  2 Sep 2019 17:08:30 +0200 (CEST)
Received: from [::1] (port=33756 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i4nwR-0000Hk-75; Mon, 02 Sep 2019 11:08:27 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:41611)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1i4nwM-00009t-Kv
 for usrp-users@lists.ettus.com; Mon, 02 Sep 2019 11:08:22 -0400
Received: by mail-oi1-f172.google.com with SMTP id h4so7210962oih.8
 for <usrp-users@lists.ettus.com>; Mon, 02 Sep 2019 08:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LqadEnQB2pP+yvnkK1QjSSaZWP4qE9aAX7t2RCDuL8k=;
 b=zN4UG3AG3nVK+8DYGsGC6hGrTjTjQyE4z31KDeDCthig8LHZ6KuU6XZNDx39jczPSw
 QzfyRFOjrpiKFIWSjjwQnGV+Z/ZI7sT5qBshXEeKF4aOVUNq6QodGkQURYW+Rk2Ja/7W
 m7TmE0xbIDpbDXx3LxaIuxKh7aNd3ELapI1PqvvDr3xbyuYg58BWPyZhp/evnqykEoTU
 aZf0lKuCiRllx5hHDCkb3vn81BffoRcsMBhhS97vgJkEiHIvVpBaOJmaX0h2eGssD9n3
 IqXo9FCYMhuuFSAbSvDdmyUKs4mEQIA/7C6M7jNb2CuYx452jFtwyABQm6sv3S0kWBqH
 kVcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LqadEnQB2pP+yvnkK1QjSSaZWP4qE9aAX7t2RCDuL8k=;
 b=Wvi66dNrPEauvNdvl605grSDmBbWug0ykYvOiGTZBIzK0HJORziZxlvhwUoVEc3pK5
 yyGkMgMax6Etr00vbBaU0Yghhp06wtmch/BcMu06UmlDd0p2dZMkTOd4GMo5v45npX1u
 rNhI2KJ8pnw2NZ49pvXFA5Ocbu7jLKXNgs7vnFtWHEqywd/sn9/7Jli0n68E4ehL5SHz
 CQua9qmN5h1SNWZB3Q/QwuexDJRg61yJnVtkNRUa9GbWOWAMcz29j1H7kqq6IUcSjBnN
 UD7A6lnVxtTr2NzSJx8fesw0daQWF2tAjvB+t7L1X13j8UVLMPrsuJ5JOpM6TbsHVLSx
 Qifg==
X-Gm-Message-State: APjAAAWw+Qo+gMmArJzWcFuSg4UmVNIE+8nxyaklXkW6I+ZJvQwQu9RD
 SUFYmO42ZQN7MorYslTmni7Kwx91ji6kNNzLwrDGAhS9
X-Google-Smtp-Source: APXvYqxNKslbwybgwSzAVV8j8Dn99cqSSjts8VPGdiYOjLoKsIS2Hj+YZ3jU6P9bD7/xLzurwFurjV6xaqYNf8AZS7A=
X-Received: by 2002:aca:4797:: with SMTP id u145mr20155594oia.19.1567436861651; 
 Mon, 02 Sep 2019 08:07:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAMHwfuiwk2DfqSEt1SJkxhriZraRML9XWYFYDzZHxEOW3MJpVA@mail.gmail.com>
In-Reply-To: <CAMHwfuiwk2DfqSEt1SJkxhriZraRML9XWYFYDzZHxEOW3MJpVA@mail.gmail.com>
Date: Mon, 2 Sep 2019 10:07:24 -0500
Message-ID: <CACaXmv9avqAniNLvxOs7ybiR7g5+kpdd6ZntXcFvgTU3PgUHMg@mail.gmail.com>
To: "shachar J. brown" <shachar.brown@gmail.com>
Subject: Re: [USRP-users] Vivado Version Compatiability, X310
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: "shachar J. brown via USRP-users" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6542960871658179713=="
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

--===============6542960871658179713==
Content-Type: multipart/alternative; boundary="00000000000058d107059193553c"

--00000000000058d107059193553c
Content-Type: text/plain; charset="UTF-8"

Hello Steve:

In the UHD 3.14 release series, RFNoC requires the use of Xilinx Vivado
version 2017.4.  In the UHD 3.15 release series, RFNoC will require the use
of Xilinx Vivado version 2018.3.  Other versions of Vivado have not been
tested and are not supported.  Please note that 3.15.0.0 has not been
released yet.  I would suggest that you continue using the 3.14 release
series until 3.15.0.0 is available, and this will allow you to continue
using Vivado 2017.4.  Your Xilinx license should allow you to install and
use multiple versions of Vivado.  Please let me know if you have any
further questions.

--Neel Pandeya



On Mon, 2 Sep 2019 at 09:05, shachar J. brown via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I have been working for a long while with rfnoc on an X310.
>
> I have lately upgraded the rfnoc, and now when I try to run
> uhd_image_builder.py I receive an error indicating I need Vivado 2018.12,
> while my licence is for 2018.3. Upgrading the Vivado is currently not
> available.
>
> 1. Is there any workaround for using the updated rfnoc version alongside
> Vivado 2018.3 or older?
> 2. If the first suggestion is not an option, is there any way to downgrade
> the rfnoc to a version that is compatiable with Vivado 2018.3 or older?
>
> Thanks in advance!
> Steve
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000058d107059193553c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Steve:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">In the UHD 3.14 release series, RFNoC require=
s the use of Xilinx Vivado version 2017.4.=C2=A0 In the UHD 3.15 release se=
ries, RFNoC will require the use of Xilinx Vivado version 2018.3.=C2=A0 Oth=
er versions of Vivado have not been tested and are not supported.=C2=A0 Ple=
ase note that 3.15.0.0 has not been released yet.=C2=A0 I would suggest tha=
t you continue using the 3.14 release series until 3.15.0.0 is available, a=
nd this will allow you to continue using Vivado 2017.4.=C2=A0 Your Xilinx l=
icense should allow you to install and use multiple versions of Vivado.=C2=
=A0 Please let me know if you have any further questions.</div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">--Neel Pan=
deya</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sa=
ns-serif"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, 2 Sep 2019 at 09:05, shachar J. brown via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I have been working for =
a long while with rfnoc on an X310.=C2=A0</div><div><br></div><div>I have l=
ately upgraded the rfnoc, and now when I try to run uhd_image_builder.py I =
receive an error indicating I need Vivado 2018.12, while my licence is for =
2018.3. Upgrading the Vivado is currently not available.</div><div><br></di=
v><div>1. Is there any workaround for using the updated rfnoc version along=
side Vivado 2018.3 or older?</div><div>2. If the first suggestion is not an=
 option, is there any way to downgrade the rfnoc to a version that is compa=
tiable with Vivado 2018.3 or older?</div><div><br></div><div>Thanks in adva=
nce!</div><div>Steve</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000058d107059193553c--


--===============6542960871658179713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6542960871658179713==--

