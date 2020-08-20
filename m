Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D91924C607
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 21:01:29 +0200 (CEST)
Received: from [::1] (port=43654 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8poQ-0007jJ-Jh; Thu, 20 Aug 2020 15:01:22 -0400
Received: from mail-il1-f177.google.com ([209.85.166.177]:46001)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emoges@uncc.edu>) id 1k8poN-0007ai-2s
 for USRP-users@lists.ettus.com; Thu, 20 Aug 2020 15:01:19 -0400
Received: by mail-il1-f177.google.com with SMTP id k4so2535213ilr.12
 for <USRP-users@lists.ettus.com>; Thu, 20 Aug 2020 12:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uncc.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6G1vqriYbcv4T9tm4CCS7d/4ggDcqRhXykOihRb0u5M=;
 b=GpJxLFe3a4N0KOBh6sIUiHW3SWdPzpnZLvKrdjS62HL+a1PbHOFC8qjXDnIqWK2qIz
 BRbyCfd4NdwsiaxOapw4Xr4fDBl5hBTyS9h0P4OX1tYULx5VACDAGk29KTn8oeW7FdR6
 eMgACkEu2mMivM1g69rG3Fe5Q1wxE0t4rKv/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6G1vqriYbcv4T9tm4CCS7d/4ggDcqRhXykOihRb0u5M=;
 b=S+52+CWkcBpFx6ys0DXisiP+Y4BX3TNrbg0mNyYrKJo3cYLUD4iIWu8MrmwhHFS6XY
 wSlyowcUiD5199vBz7tuTBAR068F9I192Nlf+JWCnaH9S3Fa3dUIPlExbGJ6j0UBdtop
 aN7ipkU88Y+U/tboY231T3U74fg/dtDRuuuTDKgqF6yuVHSz+xQGj3RivW1aSxRZXIiU
 5/rJt7+bPKzDyAcgvV87hL/e3h6EVdTTBR2xaVLYW2tVaJDEEfDFbB/3d9yfWtKzmWh6
 8sUEgr3PJU7Xs+mzTb9uWcOyAlTwOKj2CuMwYVlu4cbMuKo870cSz8L7W/KrmTcBNUwD
 sY0Q==
X-Gm-Message-State: AOAM531SnqvdtpBFsfRtx01TrH/eoA94p3HCHVEKxAY/fEsZNguhKlRu
 jvwRgP72GTs6fraaF4Ya2/GZFgABZXeFRbRFLZMuOQ==
X-Google-Smtp-Source: ABdhPJw3m0kwbRKKpdmLs/1+yRPqVDm80YzYPd9lRbiXD4NMvo1nI7Z/vR7r9O4/Lqh/G5cZa3OvKnZCUQAT5r97fbE=
X-Received: by 2002:a92:9fdb:: with SMTP id z88mr48219ilk.57.1597950038048;
 Thu, 20 Aug 2020 12:00:38 -0700 (PDT)
MIME-Version: 1.0
References: <CANwgjNp9NiRfWnidoV0MGKFLP8YKKYFgjV=9jiKDz91DxfLn9w@mail.gmail.com>
 <E0495F5B-2367-4ADC-B00F-E114849470FD@gmail.com>
 <CANwgjNoe7Qeq-KWFvNaN6vStzLupbcPsPqH4+t-BE-ZN43cQcA@mail.gmail.com>
 <5F3E951A.9080107@gmail.com>
In-Reply-To: <5F3E951A.9080107@gmail.com>
Date: Thu, 20 Aug 2020 15:00:25 -0400
Message-ID: <CANwgjNqtFTwdjX+-1HFwcSKFVWLkTzo=JNdeEqkeJCgQ-sd6dw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Fwd: Benchmark_rate.py error
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
From: Ephraim Moges via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ephraim Moges <emoges@uncc.edu>
Content-Type: multipart/mixed; boundary="===============6113563898421888450=="
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

--===============6113563898421888450==
Content-Type: multipart/alternative; boundary="000000000000633dc405ad53bc45"

--000000000000633dc405ad53bc45
Content-Type: text/plain; charset="UTF-8"

Thank you so much for your help. I was able to get it to work after so
troubleshooting.

Sincerely,

 Moges

On Thu, Aug 20, 2020, 11:22 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 08/20/2020 06:57 AM, Ephraim Moges wrote:
> > Good Morning,
> >
> > I am getting an error when follow the package manager route. I think
> > it is because their is currently no build that ettus was able to do on
> > Ubuntu 20 and 18 according to ettus records. Please advise if I should
> > revert back to ubuntu 16 or if this problem is unique to my computer.
> >
> > https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages
> > <https://launchpad.net/%7Eettusresearch/+archive/ubuntu/uhd/+packages>
> >
> > Err:6 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal Release
> >   404  Not Found [IP: 91.189.95.83 80]
> > Hit:7 https://deb.trendtechcn.com stable InRelease
> > Reading package lists... Done
> > E: The repository 'http://ppa.launchpad.net/ettusresearch/uhd/ubuntu
> > focal Release' does not have a Release file.
> > N: Updating from such a repository can't be done securely, and is
> > therefore disabled by default.
> > N: See apt-secure(8) manpage for repository creation and user
> > configuration details.
> >
> > Sincerely,
> >
> > Ephraim Moges
> >
> >
> It looks like for Ubuntu 20.04 (Focal), there exists a python3-uhd package:
>
> https://packages.ubuntu.com/focal/python3-uhd
>
> So, you don't need the PPAs---the standard distribution includes what
> you need.
>
>
>

--000000000000633dc405ad53bc45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you so much for your help. I was able to get it to =
work after so troubleshooting.<br><br><div data-smartmail=3D"gmail_signatur=
e">Sincerely,<br><br>=C2=A0Moges</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 20, 2020, 11:22 AM Marcus=
 D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 08/20/2020 =
06:57 AM, Ephraim Moges wrote:<br>
&gt; Good Morning,<br>
&gt;<br>
&gt; I am getting an error when follow the package manager route. I think <=
br>
&gt; it is because their is currently no build that ettus was able to do on=
 <br>
&gt; Ubuntu 20 and 18 according to ettus records. Please advise if I should=
 <br>
&gt; revert back to ubuntu 16 or if this problem is unique to my computer.<=
br>
&gt;<br>
&gt; <a href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+p=
ackages" rel=3D"noreferrer noreferrer" target=3D"_blank">https://launchpad.=
net/~ettusresearch/+archive/ubuntu/uhd/+packages</a> <br>
&gt; &lt;<a href=3D"https://launchpad.net/%7Eettusresearch/+archive/ubuntu/=
uhd/+packages" rel=3D"noreferrer noreferrer" target=3D"_blank">https://laun=
chpad.net/%7Eettusresearch/+archive/ubuntu/uhd/+packages</a>&gt;<br>
&gt;<br>
&gt; Err:6 <a href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu" re=
l=3D"noreferrer noreferrer" target=3D"_blank">http://ppa.launchpad.net/ettu=
sresearch/uhd/ubuntu</a> focal Release<br>
&gt;=C2=A0 =C2=A0404=C2=A0 Not Found [IP: 91.189.95.83 80]<br>
&gt; Hit:7 <a href=3D"https://deb.trendtechcn.com" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">https://deb.trendtechcn.com</a> stable InRelease<br=
>
&gt; Reading package lists... Done<br>
&gt; E: The repository &#39;<a href=3D"http://ppa.launchpad.net/ettusresear=
ch/uhd/ubuntu" rel=3D"noreferrer noreferrer" target=3D"_blank">http://ppa.l=
aunchpad.net/ettusresearch/uhd/ubuntu</a> <br>
&gt; focal Release&#39; does not have a Release file.<br>
&gt; N: Updating from such a repository can&#39;t be done securely, and is =
<br>
&gt; therefore disabled by default.<br>
&gt; N: See apt-secure(8) manpage for repository creation and user <br>
&gt; configuration details.<br>
&gt;<br>
&gt; Sincerely,<br>
&gt;<br>
&gt; Ephraim Moges<br>
&gt;<br>
&gt;<br>
It looks like for Ubuntu 20.04 (Focal), there exists a python3-uhd package:=
<br>
<br>
<a href=3D"https://packages.ubuntu.com/focal/python3-uhd" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://packages.ubuntu.com/focal/python3-uh=
d</a><br>
<br>
So, you don&#39;t need the PPAs---the standard distribution includes what <=
br>
you need.<br>
<br>
<br>
</blockquote></div>

--000000000000633dc405ad53bc45--


--===============6113563898421888450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6113563898421888450==--

