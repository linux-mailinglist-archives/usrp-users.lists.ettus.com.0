Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0261CE552
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2020 22:24:07 +0200 (CEST)
Received: from [::1] (port=42692 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jYEy4-0004ia-AQ; Mon, 11 May 2020 16:24:04 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:40915)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jYEy0-0004ap-RP
 for usrp-users@lists.ettus.com; Mon, 11 May 2020 16:24:00 -0400
Received: by mail-ot1-f41.google.com with SMTP id i27so8648063ota.7
 for <usrp-users@lists.ettus.com>; Mon, 11 May 2020 13:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LkNgbnWMvt4xxz4sR1KeVuZ4xEELmLfuX+V7NS3OI2g=;
 b=fzj5ENzWMtVaFfh33OBYzjPD9orSqbQrrhzG7IvxXRv8yPtIL7OrpbueRDfJ3m8727
 euxLkJPSyQHgt1+dN13rdbWHLKpLzr4095MBOEy/lJQtKn/qlJ0YODfzOwYCXMTHRTTy
 P3lnurlfncyS2GXTBK207fX1A2gxjFWZmGq+nT65r44WNNH7jSUqoBej0GcCW+s6xuRW
 FbwSw1pmTFLBM3TWGilrKc+OTecxVOB6/VlkCd082labuXO45obQoR+sYVVUmRvpMdhy
 aDeHH9nuKP6qjZPkX2eAvaOwtXvGkQSmHVh6GcvWQN1JeMNrIL0fS+VR7udY7e9KDzAF
 5xhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LkNgbnWMvt4xxz4sR1KeVuZ4xEELmLfuX+V7NS3OI2g=;
 b=DPLwTrq87pnnpmBnfAhqnLzxx6lFMs8EXUCl21Ugxb3eORQUnhb3oh7AVBLKA/GICs
 T61I9ZoEKdLeCTNwPtP5Lo5j9gNsXUop+WPexQ0kxXl5AfhKp+kbiv4Q8e7d55hfdR8w
 /7Y7e3oIY1I9HijmcJOAYEYoUOUxBvlBVxF2HrewEpK79bK3XezvKbQoCb0yPDiZRRom
 FLb81oG1dKJa32IUfE8lpPhbPj64/6pT0jU5Vjkmm5Cd0aM5AtH+rH5x2U1OPQkwdu+t
 kitNuoo3womzGrNraXu6/cRz02duL2DMxfuuxQ/TO99kapxfT02i44GV08d1cMbkFnwx
 E6Qg==
X-Gm-Message-State: AGi0PuZJfivpvoqaIXenP3L11t0ejoH+inWBmL1bbC60IqrJoTPj1N1K
 DSfNLcKGUYJHKZ1HzDhJ6OboJQ8dCYc+Ul7Ll6/MUQ==
X-Google-Smtp-Source: APiQypIHRpaOxwwCg2+/9ZmW7ShTQZSiMYYbptzW0cAmonxKXs19nOzhlRpvkYkaDVvoZsLom8qrMghyoUyRn0IEOoc=
X-Received: by 2002:a05:6830:4db:: with SMTP id
 s27mr13456779otd.301.1589228600046; 
 Mon, 11 May 2020 13:23:20 -0700 (PDT)
MIME-Version: 1.0
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
 <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
 <CAB__hTTGOFicX7JY+RA22OUf1zXLWfAzYQoneiRGa-1zZM5gSQ@mail.gmail.com>
 <99c27324-6e6c-790c-a6a6-40cb7df21f74@email.de>
In-Reply-To: <99c27324-6e6c-790c-a6a6-40cb7df21f74@email.de>
Date: Mon, 11 May 2020 16:23:09 -0400
Message-ID: <CAB__hTRZkV8m5y6fRODdEP3rh=Z07LrSHxYLGOAAL9bbX7u_5g@mail.gmail.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3780168944992652992=="
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

--===============3780168944992652992==
Content-Type: multipart/alternative; boundary="0000000000002c7c5905a5651ed8"

--0000000000002c7c5905a5651ed8
Content-Type: text/plain; charset="UTF-8"

Great.  One caution though.  When you do have errors, I think that if
multiple channels are in a single streamer, UHD keeps them time aligned
after the errors (not 100% sure though).  If you have separate streamers,
then if one of them has an error but the other does not, the outputs may no
longer be sample synchronous.
Rob

On Mon, May 11, 2020 at 4:13 PM Max <hex98@email.de> wrote:

> Hi Rob
>
> Just want to let you know that using one tx_streamer per USRP works like
> a charm.
> So far I've streamed continuously at 184.32 MHz for a few hours without
> any underflow. I didn't test it as intensively with 200MHz, but so far
> it works as well.
>
> So thank you for pointing me in the right direction.
>
> Best regards,
> Max
>
>
> Am 07.05.20 um 19:43 schrieb Rob Kossler:
> >> More important, about your two questions:
> >> Using the Replay block is not an option,
> > Bummer.  Because if you truly need to stream at 200e6 from CPU to
> > host, that is pretty tough to make it work over long intervals with no
> > underruns - even with only 1 device.
> >
> >> but I indeed forgot to add
> >> clock_soure=external and time_source=external to the arguments of
> >> benchmark_rate. Now if I use external synchronization, the benchmark
> >> just hangs with <5% CPU usage and never finishes.
> >> Running rx benchmarks however works, and I also never experienced any
> >> sync issues when streaming data from two USRPs in parallel with my
> >> custom application.
> >>
> >> I hope you asked this question because you had a suspicion.
> > I just wanted to make sure that there wasn't any issue with the two
> > devices having different clocks.  BTW, you can also use the --pps
> > command line option rather than the args "time_source" option.  Both
> > should work the same, I think.  But, unfortunately, that was not the
> > issue.
> >
> > Also, wanted to let you know that I just happen to have two X310/UBX
> > devices by my side, so I tried your experiment and got identical
> > results:
> > * Rx 2x200 works fine (channels 0,2 for me) with single instance of
> > benchmark_rate
> > * Tx 1x200 works fine for individual channel 0 or 2
> > * Tx 2x200 FAILS when running single instance of benchmark_rate
> > * Tx 2x200 works fine when running separate instances of
> > benchmark_rate for the 2 channels
> >
> > Rob
> >>
> >> Regards,
> >> Max
> >>
> >>
> >>>> I have two X300 USRPs connected to the same PC by 10Gb. Both USRPs
> are synchronized with 10MHz.
> >>>>
> >>>> I can receive data without any overflows at 200 MHz (one channel per
> USRP), but transmitting results in massive underflows for 184.32 and 200
> MHz.
> >>>>
> >>>> benchmark_rate shows the same behavior when transmitting on both
> USRPs at the same time; sampling rates <= 100 MHz or using just one USRP
> however works without underflows.
> >>>>
> >>>>
> >>>>
> >>>> But I also tried running two benchmark_rate processes in parallel,
> one for each of the USRPs, and this works flawlessly.
> >>>>
> >>>> Is there any explanation, why using uhd::usrp::multi_usrp results in
> massive underflows, while operating two devices in parallel in general
> seems to work?
> >>>>
> >>>>
> >>>>
> >>>> I assume using two uhd::device objects with independent tx_streamers
> could be a workaround for me. But using multi_usrp nevertheless seems more
> convenient.
> >>>
> >>> Hi Max,
> >>> I don't know the direct answer to your issue, but I have a few
> comments:
> >>> 1) Tx Underruns have always been a much bigger issue than Rx Overruns.
> >>> It is always harder to get this solved.
> >>> 2) Even with multi_usrp, you can have 2 threads running. So, you don't
> >>> need to have 2 device objects.  I do this in my software. You can get
> >>> a streamer for channel 0 and a separate streamer for channel 1 and
> >>> then run them in different threads. Not quite as convenient as having
> >>> a single streamer though.  And, not certain if it will solve the issue
> >>> for you.
> >>> 3) With UHD 3.15 and earlier, using DPDK helps alot with streaming.
> >>> It is a pain to get configured, but it does stream much better once
> >>> properly configured
> >>> 4) With UHD 4.0, I've heard that streaming is improved overall such
> >>> that it might work fine without DPDK.  But, that is a big question
> >>> mark and there are always reasons to be cautious  when jumping on to
> >>> the next best thing...
> >>>
> >>> Two questions:
> >>> 1) When it fails with benchmark rate, are you setting PPS to external
> >>> so that both device clocks are set to the same time?
> >>> 2) Is your Tx waveform dynamically changing or is it a fixed length
> >>> sequence that is repeated?  If the latter, perhaps you could transmit
> >>> directly from the FPGA using the Replay block.
> >>> Rob
> >>> Rob
> >>>
>

--0000000000002c7c5905a5651ed8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Great.=C2=A0 One caution though.=C2=A0 When you do have er=
rors, I think that if multiple channels are in a single streamer, UHD keeps=
 them time aligned after the errors (not 100% sure though).=C2=A0 If you ha=
ve separate streamers, then if one of them has an error but the other does =
not, the outputs may no longer be sample synchronous.<div>Rob</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
May 11, 2020 at 4:13 PM Max &lt;<a href=3D"mailto:hex98@email.de">hex98@ema=
il.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hi Rob<br>
<br>
Just want to let you know that using one tx_streamer per USRP works like<br=
>
a charm.<br>
So far I&#39;ve streamed continuously at 184.32 MHz for a few hours without=
<br>
any underflow. I didn&#39;t test it as intensively with 200MHz, but so far<=
br>
it works as well.<br>
<br>
So thank you for pointing me in the right direction.<br>
<br>
Best regards,<br>
Max<br>
<br>
<br>
Am 07.05.20 um 19:43 schrieb Rob Kossler:<br>
&gt;&gt; More important, about your two questions:<br>
&gt;&gt; Using the Replay block is not an option,<br>
&gt; Bummer.=C2=A0 Because if you truly need to stream at 200e6 from CPU to=
<br>
&gt; host, that is pretty tough to make it work over long intervals with no=
<br>
&gt; underruns - even with only 1 device.<br>
&gt;<br>
&gt;&gt; but I indeed forgot to add<br>
&gt;&gt; clock_soure=3Dexternal and time_source=3Dexternal to the arguments=
 of<br>
&gt;&gt; benchmark_rate. Now if I use external synchronization, the benchma=
rk<br>
&gt;&gt; just hangs with &lt;5% CPU usage and never finishes.<br>
&gt;&gt; Running rx benchmarks however works, and I also never experienced =
any<br>
&gt;&gt; sync issues when streaming data from two USRPs in parallel with my=
<br>
&gt;&gt; custom application.<br>
&gt;&gt;<br>
&gt;&gt; I hope you asked this question because you had a suspicion.<br>
&gt; I just wanted to make sure that there wasn&#39;t any issue with the tw=
o<br>
&gt; devices having different clocks.=C2=A0 BTW, you can also use the --pps=
<br>
&gt; command line option rather than the args &quot;time_source&quot; optio=
n.=C2=A0 Both<br>
&gt; should work the same, I think.=C2=A0 But, unfortunately, that was not =
the<br>
&gt; issue.<br>
&gt;<br>
&gt; Also, wanted to let you know that I just happen to have two X310/UBX<b=
r>
&gt; devices by my side, so I tried your experiment and got identical<br>
&gt; results:<br>
&gt; * Rx 2x200 works fine (channels 0,2 for me) with single instance of<br=
>
&gt; benchmark_rate<br>
&gt; * Tx 1x200 works fine for individual channel 0 or 2<br>
&gt; * Tx 2x200 FAILS when running single instance of benchmark_rate<br>
&gt; * Tx 2x200 works fine when running separate instances of<br>
&gt; benchmark_rate for the 2 channels<br>
&gt;<br>
&gt; Rob<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Max<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt;&gt; I have two X300 USRPs connected to the same PC by 10Gb. Bo=
th USRPs are synchronized with 10MHz.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I can receive data without any overflows at 200 MHz (one c=
hannel per USRP), but transmitting results in massive underflows for 184.32=
 and 200 MHz.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; benchmark_rate shows the same behavior when transmitting o=
n both USRPs at the same time; sampling rates &lt;=3D 100 MHz or using just=
 one USRP however works without underflows.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; But I also tried running two benchmark_rate processes in p=
arallel, one for each of the USRPs, and this works flawlessly.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Is there any explanation, why using uhd::usrp::multi_usrp =
results in massive underflows, while operating two devices in parallel in g=
eneral seems to work?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I assume using two uhd::device objects with independent tx=
_streamers could be a workaround for me. But using multi_usrp nevertheless =
seems more convenient.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi Max,<br>
&gt;&gt;&gt; I don&#39;t know the direct answer to your issue, but I have a=
 few comments:<br>
&gt;&gt;&gt; 1) Tx Underruns have always been a much bigger issue than Rx O=
verruns.<br>
&gt;&gt;&gt; It is always harder to get this solved.<br>
&gt;&gt;&gt; 2) Even with multi_usrp, you can have 2 threads running. So, y=
ou don&#39;t<br>
&gt;&gt;&gt; need to have 2 device objects.=C2=A0 I do this in my software.=
 You can get<br>
&gt;&gt;&gt; a streamer for channel 0 and a separate streamer for channel 1=
 and<br>
&gt;&gt;&gt; then run them in different threads. Not quite as convenient as=
 having<br>
&gt;&gt;&gt; a single streamer though.=C2=A0 And, not certain if it will so=
lve the issue<br>
&gt;&gt;&gt; for you.<br>
&gt;&gt;&gt; 3) With UHD 3.15 and earlier, using DPDK helps alot with strea=
ming.<br>
&gt;&gt;&gt; It is a pain to get configured, but it does stream much better=
 once<br>
&gt;&gt;&gt; properly configured<br>
&gt;&gt;&gt; 4) With UHD 4.0, I&#39;ve heard that streaming is improved ove=
rall such<br>
&gt;&gt;&gt; that it might work fine without DPDK.=C2=A0 But, that is a big=
 question<br>
&gt;&gt;&gt; mark and there are always reasons to be cautious=C2=A0 when ju=
mping on to<br>
&gt;&gt;&gt; the next best thing...<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Two questions:<br>
&gt;&gt;&gt; 1) When it fails with benchmark rate, are you setting PPS to e=
xternal<br>
&gt;&gt;&gt; so that both device clocks are set to the same time?<br>
&gt;&gt;&gt; 2) Is your Tx waveform dynamically changing or is it a fixed l=
ength<br>
&gt;&gt;&gt; sequence that is repeated?=C2=A0 If the latter, perhaps you co=
uld transmit<br>
&gt;&gt;&gt; directly from the FPGA using the Replay block.<br>
&gt;&gt;&gt; Rob<br>
&gt;&gt;&gt; Rob<br>
&gt;&gt;&gt;<br>
</blockquote></div>

--0000000000002c7c5905a5651ed8--


--===============3780168944992652992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3780168944992652992==--

