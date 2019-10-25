Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBA9E55D5
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2019 23:29:27 +0200 (CEST)
Received: from [::1] (port=48128 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iO799-0000P7-6u; Fri, 25 Oct 2019 17:29:23 -0400
Received: from mail-lf1-f44.google.com ([209.85.167.44]:45331)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iO795-0000DR-KA
 for usrp-users@lists.ettus.com; Fri, 25 Oct 2019 17:29:19 -0400
Received: by mail-lf1-f44.google.com with SMTP id v8so2930758lfa.12
 for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2019 14:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MlGqrbzAYNhEJFjJg9Q5aIpu59Hjl1lTDQuQIe1lWPk=;
 b=PIJcD5JhIYQUOgopMXFfd5N6gsoysIekSUyus8xBv2V9iQaDIEUHZHNB30MyV1vK7b
 Gor3ijjxmiInVhMnfJ6ygc732LDbz9/uFjMNvkAKvvzL9jEVPzbUMa+Z4itGUl8nkejg
 dBwyB3iBTYQfQIGUjHLHDRts4ANSGhEMfbNDHX2EIo6FdRFUzenK5a4tKEhvamEL/MCr
 pDDOUst+nkqQv5C7gCZhqSzfYkJwE+lsBxuu6Z+6Xwk0HnUJc2gf3FGPblJ8uO1VmoBy
 q9CuV1o52tBoOwYamF7h1v6gWFw+fU9t45uh/RLRDbX4+j6gEqSYuLq/WJ1gsQGPxbSI
 58Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MlGqrbzAYNhEJFjJg9Q5aIpu59Hjl1lTDQuQIe1lWPk=;
 b=D1uf1KNfEOBruHb8qJZKc43u4KFRe/gOopKX/ktnz3sp3ecWB/ZSYwptSxaOHO8DV1
 JWK8mP7qvg+UqPIgq98/kGujTFsiz5oLgSClPXLdAHNbu/lC0V2XDSBM0tdoGZGcsDN5
 /RyzC6hCgDjlHQP17b4K8bOH/VfU2r8bgepy7Y4T8M5QbiVtWhLPlhbhPxgpjRTM+aUi
 t8uwHXq/JdBZ0noCchWRQkBIwdhFwt+6ZxLr5mMHndiTxw5ZWwQFaWpEP145ddQyDl2V
 FCSmpEqJBQ/y9ObPWzgptXad2k+ZVB+9CVrrczo7uvHIlsdX7/iFfCTxGWEfgb4gMq9F
 u5rQ==
X-Gm-Message-State: APjAAAWGYBdyUklpNoBO4KDD3Qm+qpJilQZC0TKbNR05sgz6d3owwPlA
 BBxs2mPSx2UhReBocAmgvmgReC0IG5nHMOyHRHef+DIM
X-Google-Smtp-Source: APXvYqwuFut5rMCSM7KL1BR50A0Vv61r9mm1vpy/esQqzVmfd/1Ue7yfCqB87v1Dtc4JVNH/7X5LO9Po9rbioom8zM0=
X-Received: by 2002:a19:3fcd:: with SMTP id m196mr3989738lfa.118.1572038918330; 
 Fri, 25 Oct 2019 14:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <CALSKgPy9YoLX2fXWJPiy5kWDxswB_0oQ4VC1chWw6EqCVKJ+Rw@mail.gmail.com>
 <CANf970YQrC0_ZXOYQhyr9SqaqP8gj6rjuiMszESpPv769PnxgA@mail.gmail.com>
 <CALSKgPxmmkkxu-9nfeCFrK81MD7A4P7p6xqQMbWagK+HwttF5g@mail.gmail.com>
In-Reply-To: <CALSKgPxmmkkxu-9nfeCFrK81MD7A4P7p6xqQMbWagK+HwttF5g@mail.gmail.com>
Date: Fri, 25 Oct 2019 16:28:27 -0500
Message-ID: <CANf970Yg4YF+Hvcdaa9GMdfQ6xwO75ZN15qsUUdoihmCc5Khog@mail.gmail.com>
To: Wheberth Damascena Dias <wheberth@gmail.com>
Subject: Re: [USRP-users] X310 over PCIe not found in Ubuntu 18
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5218315402068437531=="
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

--===============5218315402068437531==
Content-Type: multipart/alternative; boundary="0000000000004cf0b50595c2d51b"

--0000000000004cf0b50595c2d51b
Content-Type: text/plain; charset="UTF-8"

Would you be able to try shifting this card to another PCIe slot in your
machine?

I'm also interested in knowing what other PCIe devices you have connected
to the computer. It might be worth making the X310's PCIe link the only
connection, at least for testing purposes.

Sam


On Wed, Oct 23, 2019 at 6:58 PM Wheberth Damascena Dias <wheberth@gmail.com>
wrote:

> Hi Mr Reiter,
> Thank you for your answer.
>
> Actually yes, the same X310 runs perfectly in another machine. Its a i7
> 6th gen with ubuntu 18.04 kernel  4.15.0, libuhd and uhd-host on same
> version.
>
> I think this can be some PCIe related setting on the BIOS, since the lspci
> shows [disabled] next to the base address, but I can't find any option to
> change it on the BIOS.
>
> Best Regards
>
>
>
>
>

--0000000000004cf0b50595c2d51b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Would you be able to try shifting this card to another PCI=
e slot in your machine?<div><br></div><div>I&#39;m also interested in knowi=
ng what other PCIe devices you have connected to the computer. It might be =
worth making the X310&#39;s PCIe link the only connection, at least for tes=
ting purposes.=C2=A0</div><div><br clear=3D"all"><div><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div><div dir=3D"ltr">Sam=C2=A0</div></div></div></div></div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On We=
d, Oct 23, 2019 at 6:58 PM Wheberth Damascena Dias &lt;<a href=3D"mailto:wh=
eberth@gmail.com">wheberth@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"auto">Hi =
Mr Reiter,=C2=A0</div><div dir=3D"auto">Thank you for your answer.</div><di=
v dir=3D"auto"><br></div>Actually yes, the same X310 runs perfectly in anot=
her machine. Its a i7 6th gen with ubuntu 18.04 kernel=C2=A0 4.15.0, libuhd=
 and uhd-host on same version.<div dir=3D"auto"><br></div><div dir=3D"auto"=
>I think this can be some PCIe related setting on the BIOS, since the lspci=
 shows [disabled] next to the base address, but I can&#39;t find any option=
 to change it on the BIOS.=C2=A0</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Best Regards</div><div dir=3D"auto"><br></div><div dir=3D"auto"><=
br></div><div dir=3D"auto"><br><div dir=3D"auto"><br></div></div></div>
</blockquote></div>

--0000000000004cf0b50595c2d51b--


--===============5218315402068437531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5218315402068437531==--

