Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF681CE566
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2020 22:25:37 +0200 (CEST)
Received: from [::1] (port=44466 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jYEzZ-00052w-0u; Mon, 11 May 2020 16:25:37 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:33454)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jYEzU-0004vR-Ix
 for usrp-users@lists.ettus.com; Mon, 11 May 2020 16:25:32 -0400
Received: by mail-ot1-f42.google.com with SMTP id v17so724511ote.0
 for <usrp-users@lists.ettus.com>; Mon, 11 May 2020 13:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rL4RpEraC0ClvfzKvrnMXOPCfD+Comx9wOPEiDzqLnw=;
 b=RMqUZSmYY0CcuIlEGhwWvTxzHIK/3WwX63pme/SiNYJAIdDMfAm21gELTpkRRLJcEo
 7Zxn4eMdqFW8Y7SxTK6ZksV3H8LyB0oQmkKf5YzWuoRtNCFExTBvxOp+YJyQftWdsFHq
 Dm8gvosOMeBw5WZOZcNIOYXysUazQ8jHYDVD0yEGx2emiD8/H4VDUssegRrt2plTRBQo
 hrq/b8C50V5oJIBcfw/N4MjETbmyxzyU8gnaIAxecK2aO1NHk1Pu36FBotWe3Omg4jrJ
 gzmcspREh+TvJ3VLzXMi9SOhVI2YORv+BG7l0hlLJpwvr8F757xX5zs5+f9fTNkY10bl
 2b8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rL4RpEraC0ClvfzKvrnMXOPCfD+Comx9wOPEiDzqLnw=;
 b=L/X3/YljQQ2IU2FGoh1CcFWvD+29fdGf9aeCeETGwk9AV8blay4TWn/tHe4LrijrnG
 c9uQjXaTtCB6m5t7+16bGM0N1AB7z5lHdwnRn4tCrN7/X3B8vFdujMz6MJSLkM5ZNdl3
 DvvjUolY7mtsPEkbi3vuNiB4e8WL4VV40UdMtIGOkYNhmm2VVBOTy7jVRhTxvbfbEXQk
 //tDyRirzSuPc6ksQRwYk4N+FHY5GvB6Asisq1Ff+0Aohd2Jmrt4kk8IznYKbLgz7V3R
 9smOuvQU6vYRLyVu+a/oq5yw4MmgYIlFnH4F3JDb4NhT7ONe4HeTiJAcZja+laiNjAAv
 vjPw==
X-Gm-Message-State: AGi0PuYg62Ijip+ySUlfx574rcCAVpRfwWkhpq1w4wNaqiznsF1EQCRR
 O0X1a0jk7fog97WgL3D0TShQ+Nnxmbvm/7D7SHGaUg==
X-Google-Smtp-Source: APiQypITVXBL0TQpp5Ssf+hjWz4WZeMupzbBexZaQguSq8SRC1jx+17QjEVoXVsqxEr4CS9SIpJ67gyTNvQgRbJCUOU=
X-Received: by 2002:a05:6830:1da1:: with SMTP id
 z1mr14045790oti.58.1589228691837; 
 Mon, 11 May 2020 13:24:51 -0700 (PDT)
MIME-Version: 1.0
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
 <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
 <CAB__hTTGOFicX7JY+RA22OUf1zXLWfAzYQoneiRGa-1zZM5gSQ@mail.gmail.com>
 <99c27324-6e6c-790c-a6a6-40cb7df21f74@email.de>
 <CAB__hTRZkV8m5y6fRODdEP3rh=Z07LrSHxYLGOAAL9bbX7u_5g@mail.gmail.com>
In-Reply-To: <CAB__hTRZkV8m5y6fRODdEP3rh=Z07LrSHxYLGOAAL9bbX7u_5g@mail.gmail.com>
Date: Mon, 11 May 2020 16:24:40 -0400
Message-ID: <CAB__hTS18U8PmJbohKnaYUAOZebFThFgdRzhcPDW0R_th+AHLw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7103367632473404370=="
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

--===============7103367632473404370==
Content-Type: multipart/alternative; boundary="000000000000a4fbf705a565234f"

--000000000000a4fbf705a565234f
Content-Type: text/plain; charset="UTF-8"

Forgot to mention.... For the reason I mentioned above, I typically put a
time stamp on every packet I send (rather than just the first packet) so
that if errors occur, subsequent packets will still be aligned.
Rob

On Mon, May 11, 2020 at 4:23 PM Rob Kossler <rkossler@nd.edu> wrote:

> Great.  One caution though.  When you do have errors, I think that if
> multiple channels are in a single streamer, UHD keeps them time aligned
> after the errors (not 100% sure though).  If you have separate streamers,
> then if one of them has an error but the other does not, the outputs may no
> longer be sample synchronous.
> Rob
>
> On Mon, May 11, 2020 at 4:13 PM Max <hex98@email.de> wrote:
>
>> Hi Rob
>>
>> Just want to let you know that using one tx_streamer per USRP works like
>> a charm.
>> So far I've streamed continuously at 184.32 MHz for a few hours without
>> any underflow. I didn't test it as intensively with 200MHz, but so far
>> it works as well.
>>
>> So thank you for pointing me in the right direction.
>>
>> Best regards,
>> Max
>>
>>
>> Am 07.05.20 um 19:43 schrieb Rob Kossler:
>> >> More important, about your two questions:
>> >> Using the Replay block is not an option,
>> > Bummer.  Because if you truly need to stream at 200e6 from CPU to
>> > host, that is pretty tough to make it work over long intervals with no
>> > underruns - even with only 1 device.
>> >
>> >> but I indeed forgot to add
>> >> clock_soure=external and time_source=external to the arguments of
>> >> benchmark_rate. Now if I use external synchronization, the benchmark
>> >> just hangs with <5% CPU usage and never finishes.
>> >> Running rx benchmarks however works, and I also never experienced any
>> >> sync issues when streaming data from two USRPs in parallel with my
>> >> custom application.
>> >>
>> >> I hope you asked this question because you had a suspicion.
>> > I just wanted to make sure that there wasn't any issue with the two
>> > devices having different clocks.  BTW, you can also use the --pps
>> > command line option rather than the args "time_source" option.  Both
>> > should work the same, I think.  But, unfortunately, that was not the
>> > issue.
>> >
>> > Also, wanted to let you know that I just happen to have two X310/UBX
>> > devices by my side, so I tried your experiment and got identical
>> > results:
>> > * Rx 2x200 works fine (channels 0,2 for me) with single instance of
>> > benchmark_rate
>> > * Tx 1x200 works fine for individual channel 0 or 2
>> > * Tx 2x200 FAILS when running single instance of benchmark_rate
>> > * Tx 2x200 works fine when running separate instances of
>> > benchmark_rate for the 2 channels
>> >
>> > Rob
>> >>
>> >> Regards,
>> >> Max
>> >>
>> >>
>> >>>> I have two X300 USRPs connected to the same PC by 10Gb. Both USRPs
>> are synchronized with 10MHz.
>> >>>>
>> >>>> I can receive data without any overflows at 200 MHz (one channel per
>> USRP), but transmitting results in massive underflows for 184.32 and 200
>> MHz.
>> >>>>
>> >>>> benchmark_rate shows the same behavior when transmitting on both
>> USRPs at the same time; sampling rates <= 100 MHz or using just one USRP
>> however works without underflows.
>> >>>>
>> >>>>
>> >>>>
>> >>>> But I also tried running two benchmark_rate processes in parallel,
>> one for each of the USRPs, and this works flawlessly.
>> >>>>
>> >>>> Is there any explanation, why using uhd::usrp::multi_usrp results in
>> massive underflows, while operating two devices in parallel in general
>> seems to work?
>> >>>>
>> >>>>
>> >>>>
>> >>>> I assume using two uhd::device objects with independent tx_streamers
>> could be a workaround for me. But using multi_usrp nevertheless seems more
>> convenient.
>> >>>
>> >>> Hi Max,
>> >>> I don't know the direct answer to your issue, but I have a few
>> comments:
>> >>> 1) Tx Underruns have always been a much bigger issue than Rx Overruns.
>> >>> It is always harder to get this solved.
>> >>> 2) Even with multi_usrp, you can have 2 threads running. So, you don't
>> >>> need to have 2 device objects.  I do this in my software. You can get
>> >>> a streamer for channel 0 and a separate streamer for channel 1 and
>> >>> then run them in different threads. Not quite as convenient as having
>> >>> a single streamer though.  And, not certain if it will solve the issue
>> >>> for you.
>> >>> 3) With UHD 3.15 and earlier, using DPDK helps alot with streaming.
>> >>> It is a pain to get configured, but it does stream much better once
>> >>> properly configured
>> >>> 4) With UHD 4.0, I've heard that streaming is improved overall such
>> >>> that it might work fine without DPDK.  But, that is a big question
>> >>> mark and there are always reasons to be cautious  when jumping on to
>> >>> the next best thing...
>> >>>
>> >>> Two questions:
>> >>> 1) When it fails with benchmark rate, are you setting PPS to external
>> >>> so that both device clocks are set to the same time?
>> >>> 2) Is your Tx waveform dynamically changing or is it a fixed length
>> >>> sequence that is repeated?  If the latter, perhaps you could transmit
>> >>> directly from the FPGA using the Replay block.
>> >>> Rob
>> >>> Rob
>> >>>
>>
>

--000000000000a4fbf705a565234f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Forgot to mention.... For the reason I mentioned above, I =
typically put a time stamp=C2=A0on every packet I send (rather than just th=
e first packet) so that if errors occur, subsequent packets will still be a=
ligned.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, May 11, 2020 at 4:23 PM Rob Kossler &lt;<a hre=
f=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Great.=C2=A0 O=
ne caution though.=C2=A0 When you do have errors, I think that if multiple =
channels are in a single streamer, UHD keeps them time aligned after the er=
rors (not 100% sure though).=C2=A0 If you have separate streamers, then if =
one of them has an error but the other does not, the outputs may no longer =
be sample synchronous.<div>Rob</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, May 11, 2020 at 4:13 PM Max &lt=
;<a href=3D"mailto:hex98@email.de" target=3D"_blank">hex98@email.de</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Rob<b=
r>
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
</blockquote></div>

--000000000000a4fbf705a565234f--


--===============7103367632473404370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7103367632473404370==--

