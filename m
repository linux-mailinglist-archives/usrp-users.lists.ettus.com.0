Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4888ABE22
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 18:57:30 +0200 (CEST)
Received: from [::1] (port=55986 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6HY9-0001ic-1x; Fri, 06 Sep 2019 12:57:29 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:35638)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <support@ettus.com>) id 1i6HY5-0001dY-LQ
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 12:57:25 -0400
Received: by mail-qt1-f181.google.com with SMTP id k10so7823526qth.2
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 09:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:sender:from:date:message-id
 :subject:to:cc;
 bh=64y+H2t83SNzfCEjN+YpJHupeyWZEUNyIn3ox+BOvSQ=;
 b=Mn1F+u+VeTIBMf4pgL59qCwHRQsQJaeuxdte2IdWRi949tl2PwzOQumL7F52mrZo1/
 KtR+1vW7tXrPE5Y2hcoSrD9/0pZp7nptI8XAXYrptg3FCwvhn4Mmw5nBv3pW5yxuyBlK
 bwCIdZl+MGfuF4QJFWNca5CQsy/EkOy7xkxYe+yUN+XStSPGtyGvZq5acryoJT9vlRgS
 327BhvqjJm2TbmmzYLAtJdDqAxkEYLMful3V/AI/4wbSQaJbP5O+Ah2pqGW8/vI193g9
 sO68xJu4VacI4Ij2RAKGIxumkDfMOd/r4YWvxuyDUZbdMOqRoUkvfWYoVzjtcKj5WxNw
 7rvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
 :date:message-id:subject:to:cc;
 bh=64y+H2t83SNzfCEjN+YpJHupeyWZEUNyIn3ox+BOvSQ=;
 b=tHNssXIrm06jaaqKFpvDbE0HbbnwfRulh3VBhmYCR+Y5nRbUh4J1eZLWGRi4sBeYvS
 l8kcEanLiVSTycg1xmvnDlbs3hb09emm/hAy1chWcAr0Rw0svhfLWIZYodEfO2StSgpp
 vYPthjZw5O0rfaN2Y1Hg1Q4ipLnq5ZG609hOR7ZARTNkcrskelL6Q6efQwgo+JNfyvKt
 V+gG5Rv1BgEJuH8r8TJauPpEppV7H/xN81CSslsHvQQwgZmJvmPUywgM7/9vlLqX1Aoe
 EqfrVP+zod4ncpnuw8x2VorzCTTaIsD0IkQKutMS404xKToITRkSuBCNdyCVewBZ4Udi
 jHng==
X-Gm-Message-State: APjAAAXWqiCnKopaUTGX/gtw6IqPSMBg6EhWT09wbEGDlLvZ9yCl1hdW
 Q9y3WTTPw1Y8qJbU9Zn6L3HFm6hp5tTLy8I/4AP7x35p
X-Google-Smtp-Source: APXvYqxpanWahP1Xbpse0NZzPoFvbcdqCX4F5gpjZeaHOG4tJ2FyWL35HJSf5h8upJo2cOdUfFY6epwg7K386du1cHs=
X-Received: by 2002:ad4:4391:: with SMTP id s17mr327152qvr.242.1567789004784; 
 Fri, 06 Sep 2019 09:56:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTexps+cnkJ4STrAtJpJgM9OfVo84CLDp+si=np8ni-xg@mail.gmail.com>
In-Reply-To: <CAB__hTTexps+cnkJ4STrAtJpJgM9OfVo84CLDp+si=np8ni-xg@mail.gmail.com>
X-Google-Sender-Delegation: nate.temple@ettus.com
Date: Fri, 6 Sep 2019 09:56:54 -0700
X-Google-Sender-Auth: gnGYpjuA39Lz_VZtPqRBK6u56IU
Message-ID: <CACSOXP31eCM+Dw=+pEJ4epAGB7QaUmRftXb9A=v=ymq5CVTTuQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] Using DmaFIFO for receive on X310
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
From: Ettus Research Support via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ettus Research Support <support@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8623351024358033511=="
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

--===============8623351024358033511==
Content-Type: multipart/alternative; boundary="000000000000b694700591e5523b"

--000000000000b694700591e5523b
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

What version of UHD are you using?

2x RX 50 MS/s streams should work without much issue with a fast enough
host, especially to a ram disk.

Are you using DPDK? DPDK support for X3xx was recently added to UHD and
will reduce the overhead on the host side, which can help quite a bit. Some
anecdotal testing I've done with a N310, with the native UHD driver, to
stream 2 channels full duplex, the minimum cpu freq I was able to run
without any flow control errors was 3.8 GHz. Using DPDK, I was able to run
2x2 @ 125 MS/s with my CPU cores locked at 1.5 GHz with no flow control
errors. Using DPDK, it's possible to stream 2x2 @ 200e6 on the X3xx with a
SRAM FPGA image (it's not possible to TX at full rate using the native
driver and DRAM based FPGA).

You could try the few things listed here
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

One other bit to add, I've been able to stream 1 RX channel @ 200 MS/s
straight to disk using a Intel 750 Series PCIe SSD until it was full (circa
UHD 3.10.x). To do that, I had to use a sc16 host side data format and also
use a XFS file system instead of EXT4. The host was a i7-4790k @ 4.4 GHz. I
would recommend NVMe SSD drives now as they support faster rates than that
PCIe SSD.


Regards,
Nate Temple

On Fri, Sep 6, 2019 at 8:37 AM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> As part of an effort to improve capability to store incoming receive chain
> samples to files on my SSD without errors ('O' or 'D'), I decided to wire
> an X310 noc graph to include the DmaFIFO. My thought was that the DmaFIFO
> could better tolerate varying rates of sample consumption at the OS.
>
> Before trying this by streaming to a file on my SSD, I first ran a test
> which streamed to a RAM-based file (60 GB ram filesystem).  I used an
> X310/UBX160 with the default FPGA XG image and initiated a 2-channel
> receive at 50MS/s (using my C++ app & UHD).  To my surprise, I am getting
> frequent "timeouts" on receive, but not always at the same time.  In one
> case, the receive worked successfully for 28 secs (2 ch, 50 MS/s).  In
> other cases, it timed out immediately or after several seconds.  Note that
> I can reliably run this same test without error if I remove the DmaFIFO.
>
> The following works fine:
>   RxRadio -> DDC -> host file (in RAM file system)
>
> The following times-out at random times:
>   RxRadio -> DDC -> DmaFIFO -> host file (in RAM file system)
>
> What could be the cause?  Is there any reason the DmaFIFO shouldn't work
> in the receive chain?
>
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b694700591e5523b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi Rob,<br><br>What version of UHD are you using?<br><br>2x RX =
50 MS/s streams should work without much issue with a fast enough host, esp=
ecially to a ram disk. <br><br>Are you using DPDK? DPDK support for X3xx wa=
s recently added to UHD and will reduce the overhead on the host side, whic=
h can help quite a bit. Some anecdotal testing I&#39;ve done with a N310, w=
ith the native UHD driver, to stream 2 channels full duplex, the minimum cp=
u freq I was able to run without any flow control errors was 3.8 GHz. Using=
 DPDK, I was able to run 2x2 @ 125 MS/s with my CPU cores locked at 1.5 GHz=
 with no flow control errors. Using DPDK, it&#39;s possible to stream 2x2 @=
 200e6 on the X3xx with a SRAM FPGA image (it&#39;s not possible to TX at f=
ull rate using the native driver and DRAM based FPGA).<br><br>You could try=
 the few things listed here <a href=3D"https://kb.ettus.com/USRP_Host_Perfo=
rmance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_Performance_T=
uning_Tips_and_Tricks</a><br><br>One other bit to add, I&#39;ve been able t=
o stream 1 RX channel @ 200 MS/s straight to disk using a Intel 750 Series =
PCIe SSD until it was full (circa UHD 3.10.x). To do that, I had to use a s=
c16 host side data format and also use a XFS file system instead of EXT4. T=
he host was a i7-4790k @ 4.4 GHz. I would recommend NVMe SSD drives now as =
they support faster rates than that PCIe SSD. <br><br><br>Regards,<br>Nate =
Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, Sep 6, 2019 at 8:37 AM Rob Kossler via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hi,<div>As part of an effort to improve capability to store in=
coming receive chain samples to files on my SSD without errors (&#39;O&#39;=
 or &#39;D&#39;), I decided to wire an X310 noc graph to include the DmaFIF=
O. My thought was that the DmaFIFO could better tolerate varying rates of s=
ample consumption at the OS.=C2=A0</div><div><br></div><div><div>Before try=
ing this by streaming to a file on my SSD, I first ran a test which streame=
d to a RAM-based file (60 GB ram filesystem).=C2=A0 I used an X310/UBX160 w=
ith the default FPGA XG image and initiated a 2-channel receive at 50MS/s (=
using my C++ app &amp; UHD).=C2=A0 To my surprise, I am getting frequent &q=
uot;timeouts&quot; on receive, but not always at the same time.=C2=A0 In on=
e case, the receive worked successfully for 28 secs (2 ch, 50 MS/s).=C2=A0 =
In other cases, it timed out immediately or after several seconds.=C2=A0 No=
te that I can reliably run this same test without error if I remove the Dma=
FIFO.</div><div><br></div><div>The following works fine:</div><div>=C2=A0 R=
xRadio -&gt; DDC -&gt; host file (in RAM file system)</div><div><br></div><=
div>The following times-out at random times:</div><div></div></div><div>=C2=
=A0 RxRadio -&gt; DDC -&gt; DmaFIFO -&gt; host file (in RAM file system)</d=
iv><div><br></div><div>What could be the cause?=C2=A0 Is there any reason t=
he DmaFIFO shouldn&#39;t work in the receive chain?</div><div><br></div><di=
v>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b694700591e5523b--


--===============8623351024358033511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8623351024358033511==--

