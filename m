Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D34851DD6DB
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 21:14:51 +0200 (CEST)
Received: from [::1] (port=49704 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbqdb-0006ZX-Vf; Thu, 21 May 2020 15:13:51 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:39302)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jbqdY-0006SX-2C
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 15:13:48 -0400
Received: by mail-ot1-f51.google.com with SMTP id d7so6382751ote.6
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 12:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G75tM8YmtuNHLSWd/ZJPE1NmvAoU30Z1gdy/Qbe67BQ=;
 b=RVaYqAvdK1Xuym+khZEXjI86days5ZWwwMQ9GqBFQya3hPYGLDllUs1g5q57i1zKEu
 UwotcAVzwbKy2CVveDHdG2p6HFmTMjRvw6RxFRPH1AFeSCzM4FP6j5Hzw4ze6C89gFlj
 V5fpLQEbRTwdP8MosusNo8sKRqFUVQZZhcxwlTWRCbWL2HArB9Q6GmSLe2tFJIrv/KhY
 S+R/lm1udTzYV28MUkZJfKn3AZZai5KJwjtmlafK0OpYdpX9o+sY6q05o4rscJaxpPO7
 X9vcSPZF6Liv71m1pYzjZa9SuVxabgJ3EzQ6Kab81r1nu9Iq5P3H6Fo3Dn8EjPFq6/tk
 aeuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G75tM8YmtuNHLSWd/ZJPE1NmvAoU30Z1gdy/Qbe67BQ=;
 b=hBsvM9K8G4A2RcDHm+WHiCWQGAWz7hDGG1iWS5OYQRqVxhl/gK+4SAhwEYxGfrxeZr
 bqgBaqLBB3fQWFKY48Qy5rzZprLmbRF/PKnZDrvK5Xwj0wtmhZoOFZuq2w7q4Ru4bPfL
 AtGtsUNkhBJU1468nNec9Gn+mAyCu+JkiVCwA7gDDAVIwq99j1T04H0UClncl5SBp7Ab
 a3UOXraMeDicaxy/A6Vjhz02oJzfVAIxYKNgqYSIXTO3Nhb5Mr+Pvhc2urw/vyH89gm7
 tCIQrdPwCp5FqBV9buze5XwsdcJD0jkSJmesAfAxUYdS1VnmvcoEOOuuUmCRGRtZjxFk
 7aXA==
X-Gm-Message-State: AOAM533cJp9Yhzl5C9HCW9TWitomhygYrVENmc7zU07tcYdaW6hfhnjt
 tczq1fXZ8d5xRR4vXd7HJjnGhOBQYf27QeMA+D4C/Q==
X-Google-Smtp-Source: ABdhPJzpUGiHOCLTlCuh/P40ikxf38Mf6ITTCYuv18p2MCLVF514fJBl4C1FgGmjLG8rJmZTD8GcINv4/SyMGT8Xo44=
X-Received: by 2002:a9d:6196:: with SMTP id g22mr8189933otk.58.1590088387128; 
 Thu, 21 May 2020 12:13:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPhuOxNCAMULg=PFJBoGTP+2zAtd0YSMdGP-zH6Jse_D5w@mail.gmail.com>
 <CAEXYVK6W5UNvNUFuGaMU0iEWBkpPH8njt-FFkUdGLmqcwkER1g@mail.gmail.com>
 <CAP2eGPjoT8ocBao=jW_Z=JRb6OLhx1cC_-J7nRANXCvwNNU7rA@mail.gmail.com>
 <CAEXYVK5wDuzhrWdOyN5JtnU26L6-PnhLE6dtr+vDdkQR+R8auw@mail.gmail.com>
In-Reply-To: <CAEXYVK5wDuzhrWdOyN5JtnU26L6-PnhLE6dtr+vDdkQR+R8auw@mail.gmail.com>
Date: Thu, 21 May 2020 15:12:56 -0400
Message-ID: <CAB__hTRVwf4bPYt8ZykUckC3=guxekGCj0jKa7Bpjqg2h3_CNw@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Subject: Re: [USRP-users] Multiple DMA_FIFO blocks
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8586978136453340299=="
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

--===============8586978136453340299==
Content-Type: multipart/alternative; boundary="0000000000007a2b6c05a62d4d9e"

--0000000000007a2b6c05a62d4d9e
Content-Type: text/plain; charset="UTF-8"

Hi Carlos,
I don't quite understand.  Which version of UHD are you using?  For the UHD
3.15 and earlier, I thought that the typical configuration was indeed
host->DmaFIFO->DUC->Radio as you were hoping for.  For the current master,
I noticed that the DmaFIFO is not included in the statically routed FPGA
image.  But, aside from the master branch, the DmaFIFO should have 2 ports
such that you can connect to two DUC blocks.
Rob

On Thu, May 21, 2020 at 2:34 PM Brian Padalino via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On Thu, May 21, 2020 at 2:25 PM Carlos Alberto Ruiz Naranjo <
> carlosruiznaranjo@gmail.com> wrote:
>
>> Thank you for the response Brian :)
>>
>> The throughput is about 11MSamples.
>> What about to use the AXI_FIFO_LOOPBACK?
>>
>
> No idea about that.  Someone else will have to weigh in.
>
> Good luck!
>
> Brian
>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007a2b6c05a62d4d9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Carlos,<div>I don&#39;t quite understa=
nd.=C2=A0 Which version of UHD are you using?=C2=A0 For the UHD 3.15 and ea=
rlier, I thought that the typical configuration was indeed host-&gt;DmaFIFO=
-&gt;DUC-&gt;Radio as you were hoping for.=C2=A0 For the current master, I =
noticed that the DmaFIFO is not included in the statically routed FPGA imag=
e.=C2=A0 But, aside from the master branch, the DmaFIFO should have 2 ports=
 such that you can connect to two DUC blocks.</div><div>Rob</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Ma=
y 21, 2020 at 2:34 PM Brian Padalino via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div =
dir=3D"ltr">On Thu, May 21, 2020 at 2:25 PM Carlos Alberto Ruiz Naranjo &lt=
;<a href=3D"mailto:carlosruiznaranjo@gmail.com" target=3D"_blank">carlosrui=
znaranjo@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thank yo=
u for the response Brian :)<br></div><div><br></div><div>The throughput is =
about 11MSamples.</div><div>What about to use the <span lang=3D"en"><span t=
itle=3D""><span lang=3D"en"><span title=3D"">AXI_FIFO_LOOPBACK?</span></spa=
n></span></span></div></div></blockquote><div><br></div><div>No idea about =
that.=C2=A0 Someone else will have to weigh in.</div><div><br></div><div>Go=
od luck!</div><div><br></div><div>Brian</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000007a2b6c05a62d4d9e--


--===============8586978136453340299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8586978136453340299==--

