Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7763262F58
	for <lists+usrp-users@lfdr.de>; Wed,  9 Sep 2020 15:50:50 +0200 (CEST)
Received: from [::1] (port=60812 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kG0Un-0000Jp-Gw; Wed, 09 Sep 2020 09:50:45 -0400
Received: from mail-oi1-f173.google.com ([209.85.167.173]:39818)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kG0Uj-0000Ef-VI
 for usrp-users@lists.ettus.com; Wed, 09 Sep 2020 09:50:42 -0400
Received: by mail-oi1-f173.google.com with SMTP id c13so2398355oiy.6
 for <usrp-users@lists.ettus.com>; Wed, 09 Sep 2020 06:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l6zkrehDoYowKSBQIgXFoQ3Lr73lmLc0wwPm2S6+mhE=;
 b=cSgYV/FTnGg1XtOrQFdrAp6K3YBpzN4C4sGuCVBGhkIyi0dfQQZv4mmKc4TVY/i5jP
 IiBI5OuZjil2SqsDqLQPiAbhliwEM+Md2oveutgEnN3eUHmEY5VmfoNkaQBn12MbMLfQ
 idkdm+w2Zsf1te4OQeZM2Tk1hVvA17aaeywAACBlovRpOruVk97b1KgZ66mS1nVBuQ1I
 VVPiBwHJDnzgxTC1/t8gvugaoJQq76+bX266g89kS67rc1EPsjP4kbTaqY+EXSN2md85
 9NRXFF4SvTmrZFTjJOW1MOsamYQuM5ur/jnjpRktvW6KRb6PXN9ZELffJ0ozej1csWd0
 wXPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l6zkrehDoYowKSBQIgXFoQ3Lr73lmLc0wwPm2S6+mhE=;
 b=bcC9ZgoTLrIoKfkwus9k8i7fe7JTEknCHPLn91pxfRz5bNsxWMiLWNmC9lMwNld0eT
 pWKSyjIK5bpSXb+DA0Voj3uCE8bGLHxCtM19svv8fEm60zQ3ZdoV+N6JrrXIL98JLORI
 JZViTVG1HWV/BCGfj+E2YbPhpRrLfYc2is9ISys+geJI/PoQX1e+zcNifwIW/i8xzCr6
 3ImrLmTLQre792Iu+ClFtgxI34jxsWZOEcCvFoLj8dLVFhem+378E+IttzfFcXoYrh3I
 qO+mEO7T3aYzRiKABSkOYKsvXTYzVfzv2CSIEW3QIjKLouhlyWz9f7axswNS6/EhkE5i
 PVSw==
X-Gm-Message-State: AOAM530DW5JJZ/QZvxLCkeXU9d3ZyPySxnl3g4PFQHK0DWRB8Ag/qHuJ
 ziTERGY+3+9CTFk5BvcAn8PedsKI+dG5dtWhFflGnQ==
X-Google-Smtp-Source: ABdhPJzm+Xjq07K2wLf+lYd1Dp0oj7ohOm3lMXLzmrCqDkzVhXxDuwq9aFr/Dr3EJuoSEIxIqQ7NS6ybkTTWrKo84Is=
X-Received: by 2002:aca:f0d:: with SMTP id 13mr703947oip.124.1599659400928;
 Wed, 09 Sep 2020 06:50:00 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.44.1599580802.32464.usrp-users_lists.ettus.com@lists.ettus.com>
 <CACDReSzm2jTnnq7YLENKr==RCZy2_epGo0Tce6yrxDtFy49sNQ@mail.gmail.com>
 <9f6e3cf9-46ae-1fd8-bcb3-62cfbf0d2e8d@ettus.com>
In-Reply-To: <9f6e3cf9-46ae-1fd8-bcb3-62cfbf0d2e8d@ettus.com>
Date: Wed, 9 Sep 2020 09:49:49 -0400
Message-ID: <CAB__hTT3KM-QmBMaD+j2RAf7PbHiVWpZnL=uhdZn0NKSfouDkw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Rx sample rate for USRP E310
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6285146424077479160=="
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

--===============6285146424077479160==
Content-Type: multipart/alternative; boundary="0000000000005aebfb05aee1ba12"

--0000000000005aebfb05aee1ba12
Content-Type: text/plain; charset="UTF-8"

Does the axi_ram_fifo rfnoc block work for the E310 (perhaps in uhd 4.0)?
If so, couldn't you implement an rfnoc graph such as
Radio->axi_ram_fifo->host and then you should be able to capture
250MSamples (1GB) at a time which could be streamed at a slower rate to
host?
Rob

On Wed, Sep 9, 2020 at 3:28 AM Martin Braun via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 9/9/20 5:46 AM, Ofer Saferman via USRP-users wrote:
> > Thank you Marcus and Martin.
> > Maybe I will try to explain what I am trying to do and you can correct
> > what I am doing wrong.
> > I don't want to stream the samples. I understand the limitations of the
> > ARM processor.
> > What I would like to do is to record (capture) samples to DDR memory in
> > real time. Only one block of samples.
> > Then, write that block, offline, to the SD card as slow as necessary. So
> > definitely no streaming to SD card.
> > This should be possible and not related at all to the speed of the ARM
> > processor. It should be handled by a DMA of the FPGA directly to DDR
> > memory and the FPGA should be fast enough to handle the task.
>
> Ofer,
>
> UHD won't initiate direct DMA if you do that. Every packet of data
> coming from the FPGA needs to go to the CPU first.
>
> If you want your samples to DMA directly to memory, you need to do
> something like this: https://www.youtube.com/watch?v=Y8QQ0sh5IhI
>
> rx_samples_to_file is a generic tool that works equally with all USRPs,
> regardless of their transport type.
>
> --M
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005aebfb05aee1ba12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Does the axi_ram_fifo rfnoc block work fo=
r the E310 (perhaps in uhd 4.0)?=C2=A0 If so, couldn&#39;t you implement an=
 rfnoc graph such as Radio-&gt;axi_ram_fifo-&gt;host and then you should be=
 able to capture 250MSamples (1GB) at a time which could be streamed at a s=
lower rate to host?<div>Rob</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 9, 2020 at 3:28 AM Martin Brau=
n via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On 9/9/20 5:46 AM, Ofer Saferman via USRP-users wrote:<br=
>
&gt; Thank you Marcus and Martin.<br>
&gt; Maybe I will try to explain what I am trying to do and you can correct=
<br>
&gt; what I am doing wrong.<br>
&gt; I don&#39;t want to stream the samples. I understand the limitations o=
f the<br>
&gt; ARM processor.<br>
&gt; What I would like to do is to record (capture) samples to DDR memory i=
n<br>
&gt; real time. Only one block of samples.<br>
&gt; Then, write that block, offline, to the SD card as slow as necessary. =
So<br>
&gt; definitely no streaming to SD card.<br>
&gt; This should be possible and not related at all to the speed of the ARM=
<br>
&gt; processor. It should be handled by a DMA of the FPGA directly to DDR<b=
r>
&gt; memory and the FPGA should be fast enough to handle the task.<br>
<br>
Ofer,<br>
<br>
UHD won&#39;t initiate direct DMA if you do that. Every packet of data<br>
coming from the FPGA needs to go to the CPU first.<br>
<br>
If you want your samples to DMA directly to memory, you need to do<br>
something like this: <a href=3D"https://www.youtube.com/watch?v=3DY8QQ0sh5I=
hI" rel=3D"noreferrer" target=3D"_blank">https://www.youtube.com/watch?v=3D=
Y8QQ0sh5IhI</a><br>
<br>
rx_samples_to_file is a generic tool that works equally with all USRPs,<br>
regardless of their transport type.<br>
<br>
--M<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000005aebfb05aee1ba12--


--===============6285146424077479160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6285146424077479160==--

