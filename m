Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB47F1567BB
	for <lists+usrp-users@lfdr.de>; Sat,  8 Feb 2020 21:50:55 +0100 (CET)
Received: from [::1] (port=34858 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j0X3y-0000GQ-4R; Sat, 08 Feb 2020 15:50:50 -0500
Received: from mail-io1-f51.google.com ([209.85.166.51]:36251)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1j0X3u-0000Bu-Lc
 for usrp-users@lists.ettus.com; Sat, 08 Feb 2020 15:50:46 -0500
Received: by mail-io1-f51.google.com with SMTP id d15so3393434iog.3
 for <usrp-users@lists.ettus.com>; Sat, 08 Feb 2020 12:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ao4t43CQr2npoPWccz03EnifBMct2tjXDyOQTxsOX20=;
 b=h4F2ObZ6ye1Kl5oPvC1V2cS0saDMF1Rc8y4IrplgI0iKz796I6HCXPhOzpuiruqtmO
 k4lfP1qNH20l5t0YP4OE+rBtsiPYJAVbbMLb8lr4RLOw4EJ6D+WVWN66vVkdNI2LdplA
 6oNMXyw+e/hzxFfVAB4jUcJ456uZ0yrKdRjqbMCFYvDuYa9sejLK2H0tkJ9ZYc7Qd3s+
 A/I29b5/HyT0pYqPYiGZr5L/slWUCMASD2r7fZoV0A6oabbRlgB/RVb719ulEZLvPrG+
 as6prNtlLAdshpVR6h7CqhqbI7WwP3SIg7R5CtApEKcroVOr85+T4T6ud7HnjsrLGvqO
 yKZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ao4t43CQr2npoPWccz03EnifBMct2tjXDyOQTxsOX20=;
 b=fVZ2WCrJXbZ9Lq2AQYFZPfPKDt4aUpLs25vxMk/cu9SA02dPhPrJmfsqn+GjQFeCPF
 8fabC246aogvxVEV9+tA7w7wA4U1Kfi6Hnlf6YkJp1G1a9W7JcZ1XPZ/cmfYmQ32Mmac
 MKFa5IKwJ5tsDlxKyjfVOwm1dDtftEgMbcbbKn6N68fjVBaSdVEY4c/Yp4WhRwHYrs1o
 068Rs6MTIl7KjQ84DfBBbMMceRlI15L5LtxmZ/L8nn1N7uCVvvKNuxi1kwM6fMUpKFkg
 Tcl2l0olY9ScZZfKMe1blJv+95obLEN/XCUs6dJnEDLYu4pe3k4/I0x/S9AjSCGQ/5V3
 XFJA==
X-Gm-Message-State: APjAAAVK7ITb3U921Ii1LZqFNuT7vCFElqjIchqOIuOAGMr80DzCIoni
 1ECWzdbUGPEd3lcNcJF1ZsYPXW5cat2SnakZC5w=
X-Google-Smtp-Source: APXvYqyCQKxC44APJKFmaZMK4fX/CsAUkhPrA8oP2O6ByYx9/QMN+GaCyXVdtR+QWnLIYHAiQKHUnr5hCvscYbv5RcI=
X-Received: by 2002:a02:85e8:: with SMTP id d95mr4114967jai.92.1581195005925; 
 Sat, 08 Feb 2020 12:50:05 -0800 (PST)
MIME-Version: 1.0
References: <CAB50+dRf+cguaJvQwr-rZr8nXqHxqBqYh7=8-YXp_w7rG2=t5Q@mail.gmail.com>
In-Reply-To: <CAB50+dRf+cguaJvQwr-rZr8nXqHxqBqYh7=8-YXp_w7rG2=t5Q@mail.gmail.com>
Date: Sat, 8 Feb 2020 12:49:49 -0800
Message-ID: <CA+JMMq_jm5ixJ6ZDMk6QkNVrGpX+LS+f4pCUBR4uBeSL_ztnKA@mail.gmail.com>
To: Andrew Payne <wandrewp@gmail.com>
Subject: Re: [USRP-users] noc_block_addsub_tb.sv - number of samples/packets.
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8180635883149341751=="
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

--===============8180635883149341751==
Content-Type: multipart/alternative; boundary="000000000000a61f7d059e16a689"

--000000000000a61f7d059e16a689
Content-Type: text/plain; charset="UTF-8"

The NOC bus is 64 bits wide. This means each item in the testbench data
array is 2 samples {16i, 16q, 16i, 16q}. The testbench is failing because
you're reading past the end of the input data array.

On Sat, Feb 8, 2020 at 5:04 AM Andrew Payne via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I'm running and slightly modifying the simulation testbench for the
> RFNOC addsub module.  I've noticed that the for loop in test case 4
> goes to SPP/2 - that upper limit is what I'm modifying to learn how
> packets work in the NOC shell.  So it passes as a stock testbench, and
> after modifying it to run to SPP (256), the entire test case 4 fails,
> with every return from the noc block being "x" (undriven as I
> understand it).  Why does the test fail when I increase the upper
> limit of tests?
>
> Thanks,
> Andrew
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a61f7d059e16a689
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The NOC bus is 64 bits wide. This means each item in the t=
estbench data array is 2 samples {16i, 16q, 16i, 16q}. The testbench is fai=
ling because you&#39;re reading past the end of the input data array.<br></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sat, Feb 8, 2020 at 5:04 AM Andrew Payne via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
I&#39;m running and slightly modifying the simulation testbench for the<br>
RFNOC addsub module.=C2=A0 I&#39;ve noticed that the for loop in test case =
4<br>
goes to SPP/2 - that upper limit is what I&#39;m modifying to learn how<br>
packets work in the NOC shell.=C2=A0 So it passes as a stock testbench, and=
<br>
after modifying it to run to SPP (256), the entire test case 4 fails,<br>
with every return from the noc block being &quot;x&quot; (undriven as I<br>
understand it).=C2=A0 Why does the test fail when I increase the upper<br>
limit of tests?<br>
<br>
Thanks,<br>
Andrew<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a61f7d059e16a689--


--===============8180635883149341751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8180635883149341751==--

