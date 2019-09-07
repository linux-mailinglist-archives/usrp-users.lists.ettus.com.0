Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A91BDAC400
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 03:54:12 +0200 (CEST)
Received: from [::1] (port=40962 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6PvW-0007NH-Bh; Fri, 06 Sep 2019 21:54:10 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:16431)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <daniel.lundberg@gtri.gatech.edu>)
 id 1i6PvS-0007JM-Nb
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 21:54:06 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1567821206; h=from:subject:to:date:message-id;
 bh=TMhhZlRzKcEGtZzfhuxrhcq6I3P2gb4lzwLtrWpsxhQ=;
 b=Un5+L1O3PP28LZ+YHTiKfB2qJ57UuUkom0ZCY6553tXWo20+eK5YotzoGgWeM+xtLbnUmfa37cn
 9OSV6+H+FVeImW11bMlBdu5H/LZTNHt4iVIhL9AKX4s2SVb+p1bRggS4I/MLAFBOK+UJ6JIg7sra2
 j+bTjSDg+Uc32wq8pRg=
Received: from jekyll.core.gtri.org (10.41.1.48) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Fri, 6 Sep 2019
 21:53:26 -0400
Received: from kiawah.core.gtri.org (10.41.31.71) by jekyll.core.gtri.org
 (10.41.1.48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 6 Sep
 2019 21:53:25 -0400
Received: from kiawah.core.gtri.org ([fe80::c531:9662:df24:eb8f]) by
 kiawah.core.gtri.org ([fe80::c531:9662:df24:eb8f%15]) with mapi id
 15.01.1713.004; Fri, 6 Sep 2019 21:53:25 -0400
To: Nate Temple <nate.temple@ettus.com>, =?Windows-1252?Q?Marcus_M=FCller?=
 <marcus.mueller@ettus.com>
Thread-Topic: [USRP-users] Processor requirements for full-rate streaming on
 N320
Thread-Index: AdVk/SYtIwM80FUeRxaUhhDsHwEDLwAJh/SAAACMOQD///E+qA==
Date: Sat, 7 Sep 2019 01:53:25 +0000
Message-ID: <a9572c0b26d34c1eaa187f532ef2866f@gtri.gatech.edu>
References: <7a40a32856c14d31807bfea8150bc996@gtri.gatech.edu>
 <46108c0b98749cd2de8a820ca88777003dcf33b6.camel@ettus.com>,
 <CAL263izYt6-x2cCbP90M+NrRPatP2tah5A6gJp_9mVZecAjATA@mail.gmail.com>
In-Reply-To: <CAL263izYt6-x2cCbP90M+NrRPatP2tah5A6gJp_9mVZecAjATA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: Re: [USRP-users] Processor requirements for full-rate streaming on
 N320
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
From: "Lundberg, Daniel via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Lundberg, Daniel" <daniel.lundberg@gtri.gatech.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4134853111869201185=="
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

--===============4134853111869201185==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_a9572c0b26d34c1eaa187f532ef2866fgtrigatechedu_"

--_000_a9572c0b26d34c1eaa187f532ef2866fgtrigatechedu_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thank you all, I will look into DPDK (didn't know about it until now!) and =
investigate what is available with those processors.

Marcus, all we need to do is generate samples from a set of pre-canned file=
s, record a loopback to file, and also Tx to another system, which sends sa=
mples back that we also record to file.  Time sync between the two Rx chann=
els is important.  We don't do any additional signal processing in this app=
lication, so we really just need hardware to support file I/O and streaming=
, but these systems tend to stick around and get used for other things, so =
I will likely try to include some headroom in the processor.

Thank you again,
DL
________________________________
From: Nate Temple <nate.temple@ettus.com>
Sent: Friday, September 6, 2019 6:39:26 PM
To: Marcus M=FCller
Cc: Lundberg, Daniel; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Processor requirements for full-rate streaming on=
 N320

Hi  Daniel,

As Marcus mentioned, an i3 is not ideal for streaming at such high rates.

For 200 MS/s of usable bandwidth, you'll need to stream at 250 MS/s per cha=
nnel.

A colleague has ran 2x2 @ 250 MS/s using an Intel Xeon E5-1620 v3 @ 3.50GHz=
, and I've ran at those rates with an i9-9900x @ 4.4 GHz.

Generally speaking, you'll want to have a CPU with a clock freq of 3.5 GHz =
or higher with as many cores as possible, ideally 4.0+ GHz.

To stream at 250 MS/s you'll need to use DPDK. The Mellanox MCX4121A-ACAT N=
IC is a good option as you do not need to use the vfio-pci driver with it f=
or DPDK.


Regards,
Nate Temple

On Fri, Sep 6, 2019 at 3:24 PM Marcus M=FCller via USRP-users <usrp-users@l=
ists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi Daniel,

i3 doesn't sound like the processor family of choice here; a few more
cores can't hurt. Basically, assume one CPU core per stream for the
wire- to CPU-format conversion, plus a bit of demand for someone
handling OS/network card interrupts.
What're you doing with the samples afterwards?

Best regards,
Marcus

On Fri, 2019-09-06 at 21:53 +0000, Lundberg, Daniel via USRP-users
wrote:
> Does anyone have a known good hardware configuration to support full
> (or at least close to full) 200 MS/s streaming from the N320?
> Preferably with 1 Tx and 2 Rx channels.
> As a data point, a recent i3 (4 cores) seems to be choking above 62.5
> MS/s.  This is over dual SFP+ ports.  At higher sampling rates, it is
> producing U=92s, which I interpret to mean that the cpu can=92t shovel
> samples into the radio fast enough, not that there is a network jam.
>
> Thank you,
> DL
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_a9572c0b26d34c1eaa187f532ef2866fgtrigatechedu_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
Thank you all, I will look into DPDK (didn't know about it until now!) and =
investigate what is available with those processors.&nbsp;
<br>
<br>
Marcus, all we need to do is generate samples from a set of pre-canned file=
s, record a loopback to file, and also Tx to another system, which sends sa=
mples back that we also record to file.&nbsp; Time sync between the two Rx =
channels is important.&nbsp; We don't do any
 additional signal processing in this application, so we really just need h=
ardware to support file I/O and streaming, but these systems tend to stick =
around and get used for other things, so I will likely try to include some =
headroom in the processor.<br>
<br>
Thank you again,<br>
DL
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Nate Temple &lt;nate.=
temple@ettus.com&gt;<br>
<b>Sent:</b> Friday, September 6, 2019 6:39:26 PM<br>
<b>To:</b> Marcus M=FCller<br>
<b>Cc:</b> Lundberg, Daniel; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Processor requirements for full-rate strea=
ming on N320</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f">Hi &nbsp;Daniel,<br>
<br>
As Marcus mentioned, an i3 is not ideal for streaming at such high rates.<b=
r>
<br>
For 200 MS/s of usable bandwidth, you'll need to stream at 250 MS/s per cha=
nnel.<br>
<br>
A colleague has ran 2x2 @ 250 MS/s using an Intel Xeon E5-1620 v3 @ 3.50GHz=
, and I've ran at those rates with an i9-9900x @ 4.4 GHz.
<br>
<br>
Generally speaking, you'll want to have a CPU with a clock freq of 3.5 GHz =
or higher with as many cores as possible, ideally 4.0&#43; GHz.<br>
</div>
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f"><br>
To stream at 250 MS/s you'll need to use DPDK. The Mellanox MCX4121A-ACAT N=
IC is a good option as you do not need to use the vfio-pci driver with it f=
or DPDK.<br>
<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 3:24 PM Marcus=
 M=FCller via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
Hi Daniel,<br>
<br>
i3 doesn't sound like the processor family of choice here; a few more<br>
cores can't hurt. Basically, assume one CPU core per stream for the<br>
wire- to CPU-format conversion, plus a bit of demand for someone<br>
handling OS/network card interrupts.<br>
What're you doing with the samples afterwards?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Fri, 2019-09-06 at 21:53 &#43;0000, Lundberg, Daniel via USRP-users<br>
wrote:<br>
&gt; Does anyone have a known good hardware configuration to support full<b=
r>
&gt; (or at least close to full) 200 MS/s streaming from the N320? <br>
&gt; Preferably with 1 Tx and 2 Rx channels.<br>
&gt; As a data point, a recent i3 (4 cores) seems to be choking above 62.5<=
br>
&gt; MS/s.&nbsp; This is over dual SFP&#43; ports.&nbsp; At higher sampling=
 rates, it is<br>
&gt; producing U=92s, which I interpret to mean that the cpu can=92t shovel=
<br>
&gt; samples into the radio fast enough, not that there is a network jam.<b=
r>
&gt;&nbsp; <br>
&gt; Thank you,<br>
&gt; DL<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_a9572c0b26d34c1eaa187f532ef2866fgtrigatechedu_--


--===============4134853111869201185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4134853111869201185==--

