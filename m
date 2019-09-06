Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C75E8ABCB1
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 17:37:58 +0200 (CEST)
Received: from [::1] (port=34732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6GJB-0000vZ-16; Fri, 06 Sep 2019 11:37:57 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:43038)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1i6GJ7-0000oD-MB
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 11:37:53 -0400
Received: by mail-ot1-f44.google.com with SMTP id b2so6088166otq.10
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 08:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=bkS5wn1FET9dDNq94V3cdZRpPQ3ziFUseS6VfbU8WAs=;
 b=VKa1zPM8y8rBH5TTsPUrndr+iGDPcmKiLYrA1GfKInOwQ2MddlsXONQ96NDZiZzuRf
 H9PdxmQutc0XbzJmRG1WI+bFjzun79XLElY+I+Z4QSuB1elFS/66r63H5jprUEpRJyzz
 BHG51KlPeVMt+m9VofELqf9kH3flSI+cC2F6bie5D2w3KiFR7pCWVE6eWWMKG5cOKOVu
 y9p7wa+wm/eDvqqTBudzaJr2IOvjgkEGP1DmCF25NC1z/oOcx8qmuiOn7VXqBE8R+cRX
 KJ62XWr0quoIq+/zetCuHGoyg/i+0SvBS9TpjIlTdzpJlctTbkO7z1TbRd/Usrj+4YMV
 Cw7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bkS5wn1FET9dDNq94V3cdZRpPQ3ziFUseS6VfbU8WAs=;
 b=uMrrhYec4mZOPX4d/EANN65Wkrpa02/KKSGe5FrhluuX6T0X1WO3wCZF49r7NvKB0j
 sC1zG6CQG71EBCbg7enjIh8hzvptj9d3mjYbvqtFaRA12EsZPsXTM4tCN/alSf5d0C8/
 KH6tB6Bnp0hvNS+ow17BF31WSIAxJRxl8l94WXKzbWdp8XI4bXHMEB1mgs3/FE5fWEMT
 sQ+KSDiH96UIKo3KSYsKzctA4hp5ktHiL5hV1rfN/an5U16ZbwzZ/HvCJxbmNUZUjNjP
 ep5q9qmTW/G3+4aosp1V/zrEAwipb52as9lGx7gK2+Z3s0HhxPR26ODP+qH08fgkwQT+
 u+Jg==
X-Gm-Message-State: APjAAAXSlvMKiuLDI3zR6jzJACo71T3KehBq4/ELzODW5/bGqr0BHEWo
 5DXcoxVuy//wXLxF/2eDD+ArDfMEuWjYzLRPrNUGkwpmHpA=
X-Google-Smtp-Source: APXvYqzX5DQuYyDChYDVhOWZVouUll3PqfiPf5AjkCS/3cLCSbMf2RfwCoOaD+AzC6M5NI5y0NVJ6U7pndxWf5qPopE=
X-Received: by 2002:a9d:5f0b:: with SMTP id f11mr7861570oti.211.1567784232561; 
 Fri, 06 Sep 2019 08:37:12 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 6 Sep 2019 11:37:01 -0400
Message-ID: <CAB__hTTexps+cnkJ4STrAtJpJgM9OfVo84CLDp+si=np8ni-xg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Using DmaFIFO for receive on X310
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1406062215736774512=="
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

--===============1406062215736774512==
Content-Type: multipart/alternative; boundary="0000000000004472530591e43618"

--0000000000004472530591e43618
Content-Type: text/plain; charset="UTF-8"

Hi,
As part of an effort to improve capability to store incoming receive chain
samples to files on my SSD without errors ('O' or 'D'), I decided to wire
an X310 noc graph to include the DmaFIFO. My thought was that the DmaFIFO
could better tolerate varying rates of sample consumption at the OS.

Before trying this by streaming to a file on my SSD, I first ran a test
which streamed to a RAM-based file (60 GB ram filesystem).  I used an
X310/UBX160 with the default FPGA XG image and initiated a 2-channel
receive at 50MS/s (using my C++ app & UHD).  To my surprise, I am getting
frequent "timeouts" on receive, but not always at the same time.  In one
case, the receive worked successfully for 28 secs (2 ch, 50 MS/s).  In
other cases, it timed out immediately or after several seconds.  Note that
I can reliably run this same test without error if I remove the DmaFIFO.

The following works fine:
  RxRadio -> DDC -> host file (in RAM file system)

The following times-out at random times:
  RxRadio -> DDC -> DmaFIFO -> host file (in RAM file system)

What could be the cause?  Is there any reason the DmaFIFO shouldn't work in
the receive chain?

Rob

--0000000000004472530591e43618
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>As part of an effort to improve capability to stor=
e incoming receive chain samples to files on my SSD without errors (&#39;O&=
#39; or &#39;D&#39;), I decided to wire an X310 noc graph to include the Dm=
aFIFO. My thought was that the DmaFIFO could better tolerate varying rates =
of sample consumption at the OS.=C2=A0</div><div><br></div><div><div>Before=
 trying this by streaming to a file on my SSD, I first ran a test which str=
eamed to a RAM-based file (60 GB ram filesystem).=C2=A0 I used an X310/UBX1=
60 with the default FPGA XG image and initiated a 2-channel receive at 50MS=
/s (using my C++ app &amp; UHD).=C2=A0 To my surprise, I am getting frequen=
t &quot;timeouts&quot; on receive, but not always at the same time.=C2=A0 I=
n one case, the receive worked successfully for 28 secs (2 ch, 50 MS/s).=C2=
=A0 In other cases, it timed out immediately or after several seconds.=C2=
=A0 Note that I can reliably run this same test without error if I remove t=
he DmaFIFO.</div><div><br></div><div>The following works fine:</div><div>=
=C2=A0 RxRadio -&gt; DDC -&gt; host file (in RAM file system)</div><div><br=
></div><div>The following times-out at random times:</div><div></div></div>=
<div>=C2=A0 RxRadio -&gt; DDC -&gt; DmaFIFO -&gt; host file (in RAM file sy=
stem)</div><div><br></div><div>What could be the cause?=C2=A0 Is there any =
reason the DmaFIFO shouldn&#39;t work in the receive chain?</div><div><br><=
/div><div>Rob</div></div>

--0000000000004472530591e43618--


--===============1406062215736774512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1406062215736774512==--

