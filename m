Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB6253F1F2
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 00:05:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 695CC384122
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 18:05:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654553133; bh=w3eoV2jl8PyEL8AOBktlj0F68Z0oD+qB+XVOmv3bWDI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XnTNcNtkejruD2gF8UZ656uC0QDqo0Pl87yPeWFy+r/M7rTDP+ukzbXwFmCY/s2bn
	 mqyP7mKRs6JWNvkTQ8k9Kl9j0ZbB9Psnn6W+JkXNA+tWhxld85TTV2HWM2C8kiVSMo
	 I65KMQ30zDOvrjEBev4Sy/QEM0q/sQZ+ixidTv4icMrxn753g1Gdf+VOD+RfiOAE+E
	 C4bmerSKWX5FHnESQihFbU95XaskqmJv3gK9INL7xyjN37BBq3uLNfDB5ONemNm3g0
	 56Ge5hVEXl1nYdutaPNLJv/Qlxyc+01SWgIh1Q2YSyQe6A8FBCWG6eqAFoVVyl9Tby
	 fdl3zArYjIyzw==
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 81A91383D80
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 18:04:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="SH3hi5Ly";
	dkim-atps=neutral
Received: by mail-yb1-f176.google.com with SMTP id s39so496303ybi.0
        for <usrp-users@lists.ettus.com>; Mon, 06 Jun 2022 15:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VwUpWokkNzhDKDPuEgGmDQWBKDeeYQXRaUGV10rt5zY=;
        b=SH3hi5LyRkliePijXBEZx5UUgbchksuFumW3aVt0ncVZ6hO9CmcQ7Q3OkaoPVlu0+1
         HWUyvD1V4RIkSak6BuWHUD+6CAC5W2JPK/p0jvUAvkTv2oHW8o4SWiD5sBpmc+PCNI42
         T8+6xltonnxD/P36z4+yimIHVTTMeT9s5im90kVzpUwykE+0ilABN0BRZa+ndmLvPfk3
         kVUg3K7BVvjBFUJ897d8vmXjZ86ISfSiieTULDG/aiQbsc68OjsIb741VhdmwoqZ+xyl
         fwlCP/9shIUzezi8YTGzqpL+ix4o4sU/CeTJnM0aB+qXwtmlrPmy0rtPTHk2oPSYsEnt
         Sdig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VwUpWokkNzhDKDPuEgGmDQWBKDeeYQXRaUGV10rt5zY=;
        b=iGruwRh9qILsBK+ecntzy+j9k+w+tRFTkH7ldcSStF0a1Ndbug2Sq3RRvarGijvI1w
         bK6/41MF4TQ8KmBM00bIzUEZWhY5eSIfqmO34a88UKr7sjn/GI7yG+9a28Uv08LTK4EP
         7ZE/YAuPEeQYv8POtsuStf6+UdM5sFGL6gdyAM2puPWVavb3EUvbuoZ+qbvj6gMkNq15
         eNlqDsjbMyfIGkhSU3uCFQU8nPHY16151jQES+SupHbUXERYOtHd50qFMgAnzpa+EDjE
         UUrOG0wjKIt5bLXRWjaMEZeGZFEjtXD7alPF85k47cyBFztyooxhoiSZWTV5P//edFL1
         m0XA==
X-Gm-Message-State: AOAM533LqRwU6tC31SnKeP3Km2vJ2OGpLKDlc2NdqIn3L9wjVLV6Ipts
	T1bWpdUH3nqPmyQ4Lq5Ef/F6vQoj1IX61nZmP4MPQImg1tY=
X-Google-Smtp-Source: ABdhPJxiEOgTLNN87+K6o9+/G9QPNS6Z+0xwwr7YWhSxbPLAWDDgO4RDYCS5XrcQ9D6UzcFgBg4RHDvT3Oj3o7o5rSA=
X-Received: by 2002:a25:fe0d:0:b0:64d:915f:e73e with SMTP id
 k13-20020a25fe0d000000b0064d915fe73emr27456328ybe.447.1654553069794; Mon, 06
 Jun 2022 15:04:29 -0700 (PDT)
MIME-Version: 1.0
References: <5MCe4i4StNT3b3yXsHc9dfQzS9q57ay3TyOzbqa8@lists.ettus.com>
In-Reply-To: <5MCe4i4StNT3b3yXsHc9dfQzS9q57ay3TyOzbqa8@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 6 Jun 2022 18:04:18 -0400
Message-ID: <CAB__hTTOrTOZH8kuheTCLjPchOWn6d92fhpsR_FcfgR1KojntA@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: GGPTWZZNLZJWTEECVYJJ2XZWAGLPZJVM
X-Message-ID-Hash: GGPTWZZNLZJWTEECVYJJ2XZWAGLPZJVM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GGPTWZZNLZJWTEECVYJJ2XZWAGLPZJVM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5049810479128688657=="

--===============5049810479128688657==
Content-Type: multipart/alternative; boundary="000000000000fcf85905e0cea77d"

--000000000000fcf85905e0cea77d
Content-Type: text/plain; charset="UTF-8"

Would it make sense to separate into 2 threads where one thread sends the
tuning commands and the other sends the Tx samples?
Rob

On Mon, Jun 6, 2022 at 5:12 PM <ri28856@mit.edu> wrote:

> I modified the three files described above, changing the CMD_FIFO_SIZE
> parameter in dds_timed.v and axi_tag_time.v, and FIFO_SIZE in ddc.v. In all
> cases I attempted to adjust to 20, but that used too much BRAM and I
> instead tried 10, which successfully built.
>
>
> I loaded the bitfile onto an x310, and ran the following code snippet to
> test:
>
>     uhd::time_spec_t initial_lat(1.0);
>     uhd::time_spec_t cmd_time(0.0);
>     // Amount of time to increment on each iteration
>     uhd::time_spec_t schedule_increment(0, FREQ_SCHEDULE_WINDOW_TICK, CLOCK_RATE);
>     uhd::tx_metadata_t md;
>     md.has_time_spec = true;
>     md.start_of_burst = true;
>     md.end_of_burst = true;
>
>     global_usrp_time = usrp->get_time_now();
>     // Assume the first packet arrives some time before it is actually sent
>     cmd_time = global_usrp_time + initial_lat;
>
>     for (int i = 0; i < queue_size; i++)
>     {
>         // Transmit
>         md.time_spec = cmd_time;
>         tx_streamer->send(ppayload, nsamples, md);
>         cmd_time += schedule_increment;
>
>         // Hop at a scheduled time
>         usrp->set_command_time(cmd_time);
>         usrp->set_tx_freq(tune_request.getNextTuneRequest());
>     }
>
> The idea is that I schedule approximately one second in the future a
> number of transmits and hops spaced ~200 us apart. If the USRP has enough
> timed command slots in both the digital resampling chain and the transmit
> chain, this will work fine.
>
> Running this code with queue_size = 5 against the base x310 image works,
> but produces a bunch of late Ls to stdout when queue_size = 6. My image
> which I built with the above parameter modifications has the same behavior
> as the base image, failing at queue_size = 6.
>
> Is there another FIFO somewhere I need to grow?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fcf85905e0cea77d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Would it make sense to separate into 2 threads where one t=
hread sends the tuning commands and the other sends the Tx samples?<div>Rob=
=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Jun 6, 2022 at 5:12 PM &lt;<a href=3D"mailto:ri28856@mi=
t.edu">ri28856@mit.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><p>I modified the three files described above, changi=
ng the CMD_FIFO_SIZE parameter in dds_timed.v and axi_tag_time.v, and FIFO_=
SIZE in ddc.v. In all cases I attempted to adjust to 20, but that used too =
much BRAM and I instead tried 10, which successfully built.</p><p><br></p><=
p>I loaded the bitfile onto an x310, and ran the following code snippet to =
test:</p><pre><code>    uhd::time_spec_t initial_lat(1.0);
    uhd::time_spec_t cmd_time(0.0);
    // Amount of time to increment on each iteration
    uhd::time_spec_t schedule_increment(0, FREQ_SCHEDULE_WINDOW_TICK, CLOCK=
_RATE);
    uhd::tx_metadata_t md;
    md.has_time_spec =3D true;
    md.start_of_burst =3D true;
    md.end_of_burst =3D true;

    global_usrp_time =3D usrp-&gt;get_time_now();
    // Assume the first packet arrives some time before it is actually sent
    cmd_time =3D global_usrp_time + initial_lat;

    for (int i =3D 0; i &lt; queue_size; i++)
    {
        // Transmit
        md.time_spec =3D cmd_time;
        tx_streamer-&gt;send(ppayload, nsamples, md);
        cmd_time +=3D schedule_increment;
       =20
        // Hop at a scheduled time
        usrp-&gt;set_command_time(cmd_time);
        usrp-&gt;set_tx_freq(tune_request.getNextTuneRequest());
    }</code></pre><p>The idea is that I schedule approximately one second i=
n the future a number of transmits and hops spaced ~200 us apart. If the US=
RP has enough timed command slots in both the digital resampling chain and =
the transmit chain, this will work fine. </p><p>Running this code with queu=
e_size =3D 5 against the base x310 image works, but produces a bunch of lat=
e Ls to stdout when queue_size =3D 6. My image which I built with the above=
 parameter modifications has the same behavior as the base image, failing a=
t queue_size =3D 6.</p><p>Is there another FIFO somewhere I need to grow?</=
p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fcf85905e0cea77d--

--===============5049810479128688657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5049810479128688657==--
