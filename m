Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48715145B16
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2020 18:45:38 +0100 (CET)
Received: from [::1] (port=44672 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuK4L-000668-RX; Wed, 22 Jan 2020 12:45:33 -0500
Received: from mail-lf1-f41.google.com ([209.85.167.41]:38651)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iuK4I-00060i-Gj
 for usrp-users@lists.ettus.com; Wed, 22 Jan 2020 12:45:30 -0500
Received: by mail-lf1-f41.google.com with SMTP id r14so261039lfm.5
 for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2020 09:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/DnD3uE/ftD3cPezRWWYmG6iZSkuzufW1xX3MiSiGpo=;
 b=wUNhqYFpaS4lqYqdJBRFiM6O1lcThRH3KWcfdrnHOVg1VDefIUrUqZD73Pu9EI12Fa
 TcfeUOyj3gUs9bUn66mRhM7xF4nto6RB0ZxcjRZgC79pxQjnfFFMBcGqqk4jXcwKR5WA
 E9/FfU7SkeMWVxqm0bIWdQqK9OrWvPFLUwzfvCTYuCDPal+u6peS00ynan/Zr0rkWdpB
 Z1PwMg/ZzUHsm51mB1rewUv8ranoogTslLcgtnLASq/IF9z4JPfzYlrf554eFBcZ8GQz
 zK4fSagz6iIZv18rxJYHP1Y2JlKiiNiPy/JPxa3qI4QGj6L8PA6YQ1GLXBexj5qsojRj
 5klA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/DnD3uE/ftD3cPezRWWYmG6iZSkuzufW1xX3MiSiGpo=;
 b=M5fMZG+sa3eNI1h3rce0Y8KizVLeUojQIK1L279C0h+ZpxQJ0WuCsiLpWAGFAtM9f8
 8qkCd/Y57e1p93rWVZ6rm1ZqCc06GR7e1n3akYYrOtZq3Cf2yyj5JePOa4QZfWDmHqPu
 QLPm5T9sjicO70/F4uww7joLsBGFirJgMDdqL4Vpyq0TlcrmmRcj5dFCZ1f8oMgYP0HG
 mvTMkvF4Y4JM2r4qlxw2Gtfn7zm5bISj3ylp/yhh/96cvD4uhDH3sbab4hpkznxweC+F
 alQy9UVr7lnXR9U73E81jUB+zDyrEfPcir9XIj5QLyj9avFrLnHAZ1Xpwz5VlCcPvagi
 Ev3A==
X-Gm-Message-State: APjAAAWDasb1CBJ6Ds6Fctg8eJOkzwqRxLd60CXRQVLOAJ+ixSWh6+dY
 TnY6qSOodu9fpJH+sw1a1kfHuFY4jXfBDKorIByO8VRy
X-Google-Smtp-Source: APXvYqytFioJJbdF49+IHi+fLf8jgEtWFwCaMpaegusIgI0C4VQg1rq6oAAvaM9A7iffToYCqlabC2xSnojcxFa0ZkE=
X-Received: by 2002:ac2:5a43:: with SMTP id r3mr2425156lfn.150.1579715089221; 
 Wed, 22 Jan 2020 09:44:49 -0800 (PST)
MIME-Version: 1.0
References: <CAE_Rk55U-U6U5+oMuJ7FWFbkzTEro7+zSDDmoVOgePs8rQsQvQ@mail.gmail.com>
In-Reply-To: <CAE_Rk55U-U6U5+oMuJ7FWFbkzTEro7+zSDDmoVOgePs8rQsQvQ@mail.gmail.com>
Date: Wed, 22 Jan 2020 11:44:38 -0600
Message-ID: <CANf970bWhwPN+=1Sq9BD11BJJ2T9jWm0U2yLCnk3-J34VOZgfw@mail.gmail.com>
To: Daniel Ozer <danielozer22@gmail.com>
Subject: Re: [USRP-users] Use most of the ddr3 space in x310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============7350347462512804430=="
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

--===============7350347462512804430==
Content-Type: multipart/alternative; boundary="000000000000bd6192059cbe1483"

--000000000000bd6192059cbe1483
Content-Type: text/plain; charset="UTF-8"

Daniel,

The X310 has 1Gb of DRAM available to the FPGA. In the stock images, some
of this DRAM is used for FIFOs between RFNoC blocks. If you were to replace
these DRAM FIFOs with SRAM (i.e. compile the XGS image for X310), you
should theoretically be able to leverage all of the X310s DRAM in the
Replay Block by modifying axi_intercon_2x64_128_bd.

Sam Reiter

On Wed, Jan 15, 2020 at 2:09 AM Daniel Ozer via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello everyone ,
> I want to load a file using the replay block that will consume almost all
> the space  of the ddr3 on the device .
> I saw that replay block has a address range of 32mib which is not enough
> at all .
> How can i change the space address of the replay block and what is the max
> size i can put so i want damage other components in the design?
> Thank you in advance.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bd6192059cbe1483
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Daniel,<div><br></div><div>The X310 has 1Gb of DRAM availa=
ble to the FPGA. In the stock images, some of this DRAM is used for FIFOs b=
etween RFNoC blocks. If you were to replace these DRAM FIFOs with SRAM (i.e=
. compile the XGS image for X310), you should theoretically be able to leve=
rage all of the X310s DRAM in the Replay Block by modifying=C2=A0<font face=
=3D"monospace">axi_intercon_2x64_128_bd</font>.</div><div><br clear=3D"all"=
><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_si=
gnature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0</div></div=
></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, Jan 15, 2020 at 2:09 AM Daniel Ozer via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">Hello everyone ,<div dir=3D"auto">I want to lo=
ad a file using the replay block that will consume almost all the space=C2=
=A0 of the ddr3 on the device .</div><div dir=3D"auto">I saw that replay bl=
ock has a address range of 32mib which is not enough at all .</div><div dir=
=3D"auto">How can i change the space address of the replay block and what i=
s the max size i can put so i want damage other components in the design?</=
div><div dir=3D"auto">Thank you in advance.=C2=A0=C2=A0</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000bd6192059cbe1483--


--===============7350347462512804430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7350347462512804430==--

