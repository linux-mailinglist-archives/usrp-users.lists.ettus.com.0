Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 482AB20B79A
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 19:54:04 +0200 (CEST)
Received: from [::1] (port=36130 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1josY4-00022C-OV; Fri, 26 Jun 2020 13:54:00 -0400
Received: from mail-vk1-f181.google.com ([209.85.221.181]:43787)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <tajikd@mcmaster.ca>) id 1josY1-0001xX-0r
 for usrp-users@lists.ettus.com; Fri, 26 Jun 2020 13:53:57 -0400
Received: by mail-vk1-f181.google.com with SMTP id q69so2386526vkq.10
 for <usrp-users@lists.ettus.com>; Fri, 26 Jun 2020 10:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mcmaster-ca.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ufVGuRHtc9qSfijtSYcwxtjkn1tNmta7UNs291MJX9I=;
 b=vuwDR2ghEM9kpA8lnqpBkDGdfQNTHTpRlitLYRgTWrNcidrY9JR2HdlcC1bZe68Djj
 +eF4YafMopnTuWDoGCrApK6Y0QxuF7bBAKkhkCwa2Dac3xLBSRw4xFmzIGwK02Cysxv8
 35IBXMKB6+ciH5UdE2dgoQFwmBSKQS8nL64mr52xET0VKeolHvMC95fImxs9cm4UJ1eX
 i24YahL4MAtTKgBsjI54s1yLKxPTG9ukaY8+/rXlChh9rcChZbAUJcMwMqKSLeLDPOTo
 VGrnXbBPvoBrMCI7DF/ZkTIcyoVHy18Zr4YFi2Hs+iWiQOBB7YfzfFBGBnMgFdLQrFRj
 R1hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ufVGuRHtc9qSfijtSYcwxtjkn1tNmta7UNs291MJX9I=;
 b=r715/3p1fU3o24ldOWy5ntsCsayWk5k5sWn3zXWvUfwzmuCzOiHHbc6T/bqyQAnrrH
 kK9bxmBH9nJ9K7ljR/wsvOuXX9tf9Rp0K/cHGKh0bpfXc+I/Z2H9ZHCn7dSjEim7PL6c
 ubmK3kOBkb6Osjb+H1YNGsWpHJOj6UOc7hV/8ACO98Ul1Pa3xAbM/X0kvsAGX1tFxMpY
 1eki/NIOGphP5Idb35xWgjr8s0URO9eM4WLZJ5qheLNAtznnJ1lAVNQSzC8vECzPLIJn
 3+iPAYhQmM+7f7Y+rXe8YlwzSWuHjanTMPRGdGUFPz73Z/K+yDoNawkhLfcm11CkdhKO
 MTAA==
X-Gm-Message-State: AOAM530MRb++Swftl9HJFozUjB25Gk3f+nO1kdOP5q1prkG2spxq0Mzv
 ksT+Yu9Kvh/+Kmego7WeTWYtA/Mx+9RExilhSQYoMg==
X-Google-Smtp-Source: ABdhPJz4Bce5OJErE5h1a4H1XguRxfGfOA6ni+z0G6ze2wj5xb5s6cLqW3vKmjwhBx65bgYIPmDfAHs5OpFKrcsP2Sc=
X-Received: by 2002:ac5:cdf5:: with SMTP id v21mr2962948vkn.1.1593193996319;
 Fri, 26 Jun 2020 10:53:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAMuWo5trjDhxSOc0sKbw9-SshYmTKHv2UWM+aPa1v7t+a04Lyw@mail.gmail.com>
 <5EF5536B.5060500@gmail.com>
 <CAMuWo5sGe1Ce8MEeK1T9s2kKgY+h8eY-S205nM89LTnqLWHFtA@mail.gmail.com>
 <5EF588CD.70001@gmail.com>
In-Reply-To: <5EF588CD.70001@gmail.com>
Date: Fri, 26 Jun 2020 13:53:05 -0400
Message-ID: <CAMuWo5suz2RF20UYxmmRsp=xq7KHE0wu3377-R6UNc1t+JUQ7Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] B210 Loopback Exponential Decay in Burst Messaging
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
From: Daniel Tajik via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Tajik <tajikd@mcmaster.ca>
Content-Type: multipart/mixed; boundary="===============3807518235981559744=="
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

--===============3807518235981559744==
Content-Type: multipart/alternative; boundary="00000000000035a4b605a9006268"

--00000000000035a4b605a9006268
Content-Type: text/plain; charset="UTF-8"

I was able to clean up my signals by downconverting on the Rx side with a
frequency offset, then using one of GNURadio's xlating filters to shift it
back to the 0 frequency and filter out all irrelevant responses.

It's a little bit confusing that the B210 doesn't seem to have any
indicator that the DC offset is enabled. Indeed I spent several hours
adjusting the FE corrections block on GNURadio where it says I can
enable/disable those options.

Thanks for your help!

Dan

On Fri, Jun 26, 2020 at 1:34 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/25/2020 11:14 PM, Daniel Tajik wrote:
> > Hey Marcus!
> >
> > Yep, my configuration has the recommended 30 dB attenuation. I haven't
> > maxed out either gain stages to avoid risking anything, mostly sit
> > around 50 dB on both Rx and Tx side, as its recommended to also use at
> > least half the gain available to achieve a suitable noise figure.
> >
> > No frequency hopping here, just ran a couple tests to see if different
> > carrier frequencies would improve the behaviour, which it did not. I
> > primarily run the test at 435 MHz, and the overall bandwidth I'm
> > looking at is 25 KHz. My GFSK modulation is squeezed in between that
> > at the 6.25 KHz deviation. As for half/full duplex, the test I am
> > running is a single channel loopback test on a B210, so the transmit
> > and receive port are both running at the same time (i.e. Full duplex).
> >
> > Still not sure what the problem is in my implementation. I assume its
> > something internal? LO leakage or some sort of cross-coupling
> > somewhere? I've read that operating Rx and Tx at nearby frequencies
> > can lead to interference issues but I'm not sure if this exponential
> > decay in a burst transmission is how it manifests itself in my
> > implementation. Any other tests I can try to explore the cause of this?
> >
> > Thanks!
> >
> I would try using offset tuning on the RX side.  The B2xx series doesn't
> actually have a way of disablng DC offset removal as far as I know--it's
>    always on.
>
>
>

-- 
Daniel Tajik

PhD Student, EMVi Research Laboratory
Department Electrical and Computer Engineering
McMaster University
1280 Main Street West, ITB-A201
Hamilton, ON, Canada L8S 4K1
tajikd@mcmaster.ca

--00000000000035a4b605a9006268
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I was able to clean up my signals by downconverting o=
n the Rx side with a frequency offset, then using one of GNURadio&#39;s xla=
ting filters to shift it back to the 0 frequency and filter out all irrelev=
ant responses.=C2=A0<br><br></div><div>It&#39;s a little bit confusing that=
 the B210 doesn&#39;t=C2=A0seem to have any indicator that the DC offset is=
 enabled. Indeed I spent several hours adjusting the FE corrections block=
=C2=A0on GNURadio where it says I can enable/disable those options.</div><d=
iv><br></div><div></div><div>Thanks for your help!</div><div><br>Dan</div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 Jun 26, 2020 at 1:34 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">On 06/25/2020 11:14 P=
M, Daniel Tajik wrote:<br>
&gt; Hey Marcus!<br>
&gt;<br>
&gt; Yep, my configuration has the recommended 30 dB attenuation. I haven&#=
39;t <br>
&gt; maxed out either gain stages to avoid risking anything, mostly sit <br=
>
&gt; around 50 dB on both Rx and Tx side, as its recommended to also use at=
 <br>
&gt; least half the gain available to achieve a suitable noise figure.<br>
&gt;<br>
&gt; No frequency hopping here, just ran a couple tests to see if different=
 <br>
&gt; carrier frequencies would improve the behaviour, which it did not. I <=
br>
&gt; primarily run the test at 435 MHz, and the overall bandwidth I&#39;m <=
br>
&gt; looking at is 25 KHz. My GFSK modulation is squeezed in between that <=
br>
&gt; at the 6.25 KHz deviation. As for half/full duplex, the test I am <br>
&gt; running is a single channel loopback test on a B210, so the transmit <=
br>
&gt; and receive port are both running at the same time (i.e. Full duplex).=
<br>
&gt;<br>
&gt; Still not sure what the problem is in my implementation. I assume its =
<br>
&gt; something internal? LO leakage or some sort of cross-coupling <br>
&gt; somewhere? I&#39;ve read that operating Rx and Tx at nearby frequencie=
s <br>
&gt; can lead to interference issues but I&#39;m not sure if this exponenti=
al <br>
&gt; decay in a burst transmission is how it manifests itself in my <br>
&gt; implementation. Any other tests I can try to explore the cause of this=
?<br>
&gt;<br>
&gt; Thanks!<br>
&gt;<br>
I would try using offset tuning on the RX side.=C2=A0 The B2xx series doesn=
&#39;t <br>
actually have a way of disablng DC offset removal as far as I know--it&#39;=
s<br>
=C2=A0 =C2=A0always on.<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr">Daniel Tajik</div><div dir=3D"ltr"><font s=
ize=3D"2"><br></font><div><div style=3D"font-size:small">PhD Student, EMVi =
Research Laboratory</div><div style=3D"font-size:small">Department Electric=
al and Computer Engineering</div><div style=3D"font-size:small">McMaster Un=
iversity</div><div style=3D"font-size:small"><span style=3D"font-size:12.8p=
x">1280 Main Street West, ITB-A201</span><br style=3D"font-size:12.8px"><sp=
an style=3D"font-size:12.8px">Hamilton, ON, Canada L8S 4K1</span><br></div>=
<div style=3D"font-size:small"><a href=3D"mailto:tajikd@mcmaster.ca" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">tajikd@mcmaster.ca<br></a></div=
></div></div></div></div></div></div></div></div></div></div>

--00000000000035a4b605a9006268--


--===============3807518235981559744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3807518235981559744==--

