Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 934961C9831
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 19:46:26 +0200 (CEST)
Received: from [::1] (port=43096 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWkbJ-0003If-P2; Thu, 07 May 2020 13:46:25 -0400
Received: from mail-vs1-f41.google.com ([209.85.217.41]:43522)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jWkbF-000385-UW
 for usrp-users@lists.ettus.com; Thu, 07 May 2020 13:46:21 -0400
Received: by mail-vs1-f41.google.com with SMTP id m24so3893833vsq.10
 for <usrp-users@lists.ettus.com>; Thu, 07 May 2020 10:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ECtjtFUzEO12K5/rEfoviiDqnSr2iOCNiQHpyZSeNR8=;
 b=v7W848MVS2SCC8x33Vi98pmGeyh4QYmAktHJgiy3coCfJXN5P08uiimQIY0uVL9UWv
 KPEPUxufOuiEX2yI5KEbno7gb8BIBnJkSdAL01uktX1oOeR/Ivs0IwbRsIqO617zaS3j
 Nqs8/YFP21f1mB1okTq6vb1cWhkTiPAdCQ4n4QKhHblulnEkKgOUtkXwPUzzkEFlf3fO
 D/HwlNiGM3l9gHY2D8+pPOVS7a2Y1jJhPFdZXNLxgH5Tol2FWcE5Z0C4KvZHPjIr9oL3
 eacyT3l5fiztJ5Ei3jgmQHeHEYk5xzwT1O++Ewnl37MhJX9dWMIoR5rKGD81qybE2PP1
 0SRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ECtjtFUzEO12K5/rEfoviiDqnSr2iOCNiQHpyZSeNR8=;
 b=rU0AkGnoufKVyX7uiEh/wNEUVeDGABKGNFjdlvwjfkcICImMfvQwHdLSXofZia9Rfc
 KjgKr4BEs9V13QT5XRzkZT8QCb69HuqirdXizM/C+IgJos2Cgield48K9tH40nYA3ebN
 MudONdOAkELOQQAfHmzz5l3OsUaAH50A91dSqeHGm6Gye+WvWvB/iyVGvn4Idj6KVtPm
 DHeDXg1kDdyyY62Gmyc8dVUzAuBoQ4BmewD7KycrOljWxs+HafCLfSTYgpkCcyRj2LVU
 WRMEmUS9BLiw1v4oaWPhC1DYcVWjn4f41yDSS/hozgo598C3hyta6fjyECaMykcbigrX
 j5Fw==
X-Gm-Message-State: AGi0Pua5Iww/dkKEjtGnVqYgxvH6qSKh3rVfCH2mRbw+3jZWqDE4RBgL
 sc0hy+L9quWM5BVhUa6ok73EjQV3e4G0qCdlvReQM0MX
X-Google-Smtp-Source: APiQypIfaAXKqqZIdmB62NOKBg9wdLz+CGjtHD5dupy/SsVpwdzzL0dunF/PsP4A/Vx1kxFB1GUOl+D8NxtP0F8WBPo=
X-Received: by 2002:a67:fc46:: with SMTP id p6mr14518194vsq.169.1588873541304; 
 Thu, 07 May 2020 10:45:41 -0700 (PDT)
MIME-Version: 1.0
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
 <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
In-Reply-To: <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
Date: Thu, 7 May 2020 13:45:30 -0400
Message-ID: <CAGNhwTPdQpcTQZEGe916-EoXaWkTU3iztw-g=+Lccd6dCOhjyA@mail.gmail.com>
To: Max <hex98@email.de>
Subject: Re: [USRP-users] TX underflows when using multi_usrp vs. two
 independent tx_streamers
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>, Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1290724484863041536=="
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

--===============1290724484863041536==
Content-Type: multipart/alternative; boundary="00000000000005d6fc05a512737f"

--00000000000005d6fc05a512737f
Content-Type: text/plain; charset="UTF-8"

Hi Max (& Rob) - I'm working my way up to 2xX310. The following applies to
1x X310 + 2x SFP+ links; it -might- be applicable toward your 2x (1x X310 +
1x SFP+ link) situation; worth a try!  - MLD

By default, UHD + X310 will use just a single SFP+ link for data transport,
which (obviously) limits the data throughput to half that for when using
both SFP+ links. The link chosen is whichever is set as "addr" in the
--args. Under some conditions, you can add in arguments to use both SFP+
links. If the aggregate TX data throughput fits within one SFP+ link, then
just the first "addr" link will be used, regardless of these settings. If
the aggregate TX data throughput is greater than that which can be provided
by a signal SFP+ link, then both links will be used -- up to total
aggregate link capacity, of course. The additional arguments are:
"enable_tx_dual_eth=1,skip_dram=1".
---
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/


On Thu, May 7, 2020 at 12:41 PM Max via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
> thank you for your comments.
>
> I did not think about using multiple streamers with multi_usrp, but will
> give it a try before considering DPDK.
>
> More important, about your two questions:
> Using the Replay block is not an option, but I indeed forgot to add
> clock_soure=external and time_source=external to the arguments of
> benchmark_rate. Now if I use external synchronization, the benchmark
> just hangs with <5% CPU usage and never finishes.
> Running rx benchmarks however works, and I also never experienced any
> sync issues when streaming data from two USRPs in parallel with my
> custom application.
>
> I hope you asked this question because you had a suspicion.
>
> Regards,
> Max
>
>
> >> I have two X300 USRPs connected to the same PC by 10Gb. Both USRPs are
> synchronized with 10MHz.
> >>
> >> I can receive data without any overflows at 200 MHz (one channel per
> USRP), but transmitting results in massive underflows for 184.32 and 200
> MHz.
> >>
> >> benchmark_rate shows the same behavior when transmitting on both USRPs
> at the same time; sampling rates <= 100 MHz or using just one USRP however
> works without underflows.
> >>
> >>
> >>
> >> But I also tried running two benchmark_rate processes in parallel, one
> for each of the USRPs, and this works flawlessly.
> >>
> >> Is there any explanation, why using uhd::usrp::multi_usrp results in
> massive underflows, while operating two devices in parallel in general
> seems to work?
> >>
> >>
> >>
> >> I assume using two uhd::device objects with independent tx_streamers
> could be a workaround for me. But using multi_usrp nevertheless seems more
> convenient.
> >
> > Hi Max,
> > I don't know the direct answer to your issue, but I have a few comments:
> > 1) Tx Underruns have always been a much bigger issue than Rx Overruns.
> > It is always harder to get this solved.
> > 2) Even with multi_usrp, you can have 2 threads running. So, you don't
> > need to have 2 device objects.  I do this in my software. You can get
> > a streamer for channel 0 and a separate streamer for channel 1 and
> > then run them in different threads. Not quite as convenient as having
> > a single streamer though.  And, not certain if it will solve the issue
> > for you.
> > 3) With UHD 3.15 and earlier, using DPDK helps alot with streaming.
> > It is a pain to get configured, but it does stream much better once
> > properly configured
> > 4) With UHD 4.0, I've heard that streaming is improved overall such
> > that it might work fine without DPDK.  But, that is a big question
> > mark and there are always reasons to be cautious  when jumping on to
> > the next best thing...
> >
> > Two questions:
> > 1) When it fails with benchmark rate, are you setting PPS to external
> > so that both device clocks are set to the same time?
> > 2) Is your Tx waveform dynamically changing or is it a fixed length
> > sequence that is repeated?  If the latter, perhaps you could transmit
> > directly from the FPGA using the Replay block.
> > Rob
> > Rob
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000005d6fc05a512737f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Max (&amp; Rob) - I&#39;m working my way up to 2xX310. =
The following applies to 1x X310 + 2x SFP+ links; it -might- be applicable =
toward your 2x (1x X310=C2=A0+ 1x SFP+ link) situation; worth a try!=C2=A0 =
- MLD<div><br></div><div>By default, UHD=C2=A0+ X310 will use just a single=
 SFP+ link for data transport, which (obviously) limits the data throughput=
 to half that for when using both SFP+ links. The link chosen is whichever =
is set as &quot;addr&quot; in the --args. Under some conditions, you can ad=
d in arguments to use both SFP+ links. If the aggregate TX data throughput =
fits within one SFP+ link, then just the first &quot;addr&quot; link will b=
e used, regardless of these settings.=C2=A0If the aggregate TX data through=
put is greater than that which can be provided by a signal=C2=A0SFP+ link, =
then both links will be used -- up to total aggregate link capacity,=C2=A0o=
f course. The additional arguments are: &quot;enable_tx_dual_eth=3D1,skip_d=
ram=3D1&quot;.<div><div><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">---</div><div dir=
=3D"ltr">Michael Dickens<br>Ettus Research Technical Support<br>Email: <a h=
ref=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a><br=
>Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</=
a></div></div></div></div></div></div></div></div></div></div></div><br></d=
iv></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, May 7, 2020 at 12:41 PM Max via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Rob,<br>
<br>
thank you for your comments.<br>
<br>
I did not think about using multiple streamers with multi_usrp, but will<br=
>
give it a try before considering DPDK.<br>
<br>
More important, about your two questions:<br>
Using the Replay block is not an option, but I indeed forgot to add<br>
clock_soure=3Dexternal and time_source=3Dexternal to the arguments of<br>
benchmark_rate. Now if I use external synchronization, the benchmark<br>
just hangs with &lt;5% CPU usage and never finishes.<br>
Running rx benchmarks however works, and I also never experienced any<br>
sync issues when streaming data from two USRPs in parallel with my<br>
custom application.<br>
<br>
I hope you asked this question because you had a suspicion.<br>
<br>
Regards,<br>
Max<br>
<br>
<br>
&gt;&gt; I have two X300 USRPs connected to the same PC by 10Gb. Both USRPs=
 are synchronized with 10MHz.<br>
&gt;&gt;<br>
&gt;&gt; I can receive data without any overflows at 200 MHz (one channel p=
er USRP), but transmitting results in massive underflows for 184.32 and 200=
 MHz.<br>
&gt;&gt;<br>
&gt;&gt; benchmark_rate shows the same behavior when transmitting on both U=
SRPs at the same time; sampling rates &lt;=3D 100 MHz or using just one USR=
P however works without underflows.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; But I also tried running two benchmark_rate processes in parallel,=
 one for each of the USRPs, and this works flawlessly.<br>
&gt;&gt;<br>
&gt;&gt; Is there any explanation, why using uhd::usrp::multi_usrp results =
in massive underflows, while operating two devices in parallel in general s=
eems to work?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I assume using two uhd::device objects with independent tx_streame=
rs could be a workaround for me. But using multi_usrp nevertheless seems mo=
re convenient.<br>
&gt;<br>
&gt; Hi Max,<br>
&gt; I don&#39;t know the direct answer to your issue, but I have a few com=
ments:<br>
&gt; 1) Tx Underruns have always been a much bigger issue than Rx Overruns.=
<br>
&gt; It is always harder to get this solved.<br>
&gt; 2) Even with multi_usrp, you can have 2 threads running. So, you don&#=
39;t<br>
&gt; need to have 2 device objects.=C2=A0 I do this in my software. You can=
 get<br>
&gt; a streamer for channel 0 and a separate streamer for channel 1 and<br>
&gt; then run them in different threads. Not quite as convenient as having<=
br>
&gt; a single streamer though.=C2=A0 And, not certain if it will solve the =
issue<br>
&gt; for you.<br>
&gt; 3) With UHD 3.15 and earlier, using DPDK helps alot with streaming.<br=
>
&gt; It is a pain to get configured, but it does stream much better once<br=
>
&gt; properly configured<br>
&gt; 4) With UHD 4.0, I&#39;ve heard that streaming is improved overall suc=
h<br>
&gt; that it might work fine without DPDK.=C2=A0 But, that is a big questio=
n<br>
&gt; mark and there are always reasons to be cautious=C2=A0 when jumping on=
 to<br>
&gt; the next best thing...<br>
&gt;<br>
&gt; Two questions:<br>
&gt; 1) When it fails with benchmark rate, are you setting PPS to external<=
br>
&gt; so that both device clocks are set to the same time?<br>
&gt; 2) Is your Tx waveform dynamically changing or is it a fixed length<br=
>
&gt; sequence that is repeated?=C2=A0 If the latter, perhaps you could tran=
smit<br>
&gt; directly from the FPGA using the Replay block.<br>
&gt; Rob<br>
&gt; Rob<br>
&gt;<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000005d6fc05a512737f--


--===============1290724484863041536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1290724484863041536==--

