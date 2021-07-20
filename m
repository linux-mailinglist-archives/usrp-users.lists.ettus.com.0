Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC60B3CFAA8
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jul 2021 15:35:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A45253848B9
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jul 2021 09:35:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="LwGtCbO/";
	dkim-atps=neutral
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 27F983841D9
	for <usrp-users@lists.ettus.com>; Tue, 20 Jul 2021 09:34:25 -0400 (EDT)
Received: by mail-oi1-f177.google.com with SMTP id t6so7037509oic.0
        for <usrp-users@lists.ettus.com>; Tue, 20 Jul 2021 06:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6LP/CiGuq48nyiRKWdFgIISa2mGoksjwahMMIs99lSE=;
        b=LwGtCbO/E4wxmMlxVqQAZPlemc3tao10O1rGqE/5j5rDxllyz9f8ovlLhbZe6WiL37
         phghJa3MBWKG9UjUXbEIGyTWGaLv2nivCILSerNYLbdw01N6+4PpIY23ZvaTOYgSpcKx
         mSmgHNhOF6MH35/uP5EyVeejUGFA8SpWrYvimiyfnsQKAi2vHcNbpBHVHAwEJ/Uvqpuo
         2GUwiW+cHxRwrq4sbr19iEA/sg5w1iplVTNqjJwEXW+HesGII+g5Jyl+OXU2FxkjL2mK
         IiMrYxQPSo0DdWPN9JhiLhQzVzD0hHCDilEsAz//mNc/Oj321LHfskGOQJ7jfEcdCedG
         ZzHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6LP/CiGuq48nyiRKWdFgIISa2mGoksjwahMMIs99lSE=;
        b=ZOyJ0vYNTtdhfwFJ+48kPBATwxjuZUMLTvpW1aS9roMmktV22WK2tVcuIV7oxqXL0o
         PQxhOuT1xnzAfCuQXImY0JFJ8v4dIzHrD5tknF0sOgV/4lHXgqQqhG296CbPko+JsAoj
         Cp36y6VIM9nFcNgfoxD7f0SGG4fUYyaDBexDzbMBL+hjFlvId18jIp5o2zl5mIjEEic0
         6D2UxvtlGayed32Ie8TpB59vavAJnCry7l/vhUVpmnAuiYzXNE47uG0dNhpIxDvSYnxL
         Ik+dL3FuP4+0HxvSaLXGbgceBdz/JH1JHyAHTEWStwYo9w+b+G/UOf82msRgbTYU+Bv3
         CRLw==
X-Gm-Message-State: AOAM530CehXU/mof2YROPShx0orW4MWxtS+s6rksl+y4E/qRYXg3UB5/
	PrTIUqhG00QWB/XHt2uTvM6r6v+sPBEKKZVUOjFktg==
X-Google-Smtp-Source: ABdhPJx8G4jTpUjSKXxyuk6l4HMkgYyR+BthNjF5JRLwRwU5H98qY6VQ3I8bJpkCe3MTeVTqTSi15/ZCje59w53320k=
X-Received: by 2002:aca:5a04:: with SMTP id o4mr20790619oib.33.1626788064307;
 Tue, 20 Jul 2021 06:34:24 -0700 (PDT)
MIME-Version: 1.0
References: <CO6PR19MB48018F401C16D7665A626F37C6129@CO6PR19MB4801.namprd19.prod.outlook.com>
 <60F0A175.7050905@gmail.com>
In-Reply-To: <60F0A175.7050905@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 20 Jul 2021 09:34:13 -0400
Message-ID: <CAB__hTSaJ7BJKK-r=Lxv8mwnS6Z=b5TMMzobppy8zbkPHmiyig@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: J3UK3EFMSTZJG6TVLYPF7HFHAPSGWO4S
X-Message-ID-Hash: J3UK3EFMSTZJG6TVLYPF7HFHAPSGWO4S
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting the TX SPP to reduce underruns
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J3UK3EFMSTZJG6TVLYPF7HFHAPSGWO4S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6182278155702396747=="

--===============6182278155702396747==
Content-Type: multipart/alternative; boundary="000000000000b2f9a805c78e1ca4"

--000000000000b2f9a805c78e1ca4
Content-Type: text/plain; charset="UTF-8"

Hi Jerrid,
What are the values of SPP that work and don't work well in benchmark_rate?
What is the interface (1Gbe or 10Gbe) and what is the MTU setting?
Rob

On Thu, Jul 15, 2021 at 4:59 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 07/15/2021 04:52 PM, Jerrid Plymale wrote:
>
> Hello All,
>
>
>
> So I have been running some tests today using the benchmark_rate test to
> try and find the solution to the underruns I am getting when executing a
> GRC flowgraph. I am trying to get the flowgraph to run at a 25 MHz sampling
> rate using a USRP X310 without any underruns. I found that by changing the
> spp value using --tx_stream_args with the benchmark_rate tests, I was able
> to stop the underruns I was seeing when using a 25 MHz sampling rate with
> the default spp value.
>
>
>
> Now my question is, how can I go about changing this value within my GRC
> flowgraph? Is this a value I can set within the UHD USRP Sink block? How
> can I determine mathematically what the best spp value would be to maximize
> the performance of the GRC flowgraph?
>
>
>
> Any help or insight I can get for this problem would be greatly
> appreciated.
>
>
>
> Best Regards,
>
> Jerrid
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> There's a "Stream Args" field in both UHD Source and Sink in GRC.
>
> Just put "spp=<your-value>" in the stream args field.
>
> Determining optimal numbers is going to be environment depending.
> Generally larger is better, keeping in mind MTU, and the effects on
>   latency (it takes longer to stuff and send a larger packet compared to a
> smaller one).
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b2f9a805c78e1ca4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Jerrid,<br>What are the values of SPP =
that work and don&#39;t work well in benchmark_rate? What is the interface =
(1Gbe or 10Gbe) and what is the MTU setting?<br>Rob<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 15, 2021=
 at 4:59 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">=
patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 07/15/2021 04:52 PM, Jerrid Plymale
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">Hello All,<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">So I have been running some tests today
          using the benchmark_rate test to try and find the solution to
          the underruns I am getting when executing a GRC flowgraph. I
          am trying to get the flowgraph to run at a 25 MHz sampling
          rate using a USRP X310 without any underruns. I found that by
          changing the spp value using --tx_stream_args with the
          benchmark_rate tests, I was able to stop the underruns I was
          seeing when using a 25 MHz sampling rate with the default spp
          value.
          <u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Now my question is, how can I go about
          changing this value within my GRC flowgraph? Is this a value I
          can set within the UHD USRP Sink block? How can I determine
          mathematically what the best spp value would be to maximize
          the performance of the GRC flowgraph? <u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Any help or insight I can get for this
          problem would be greatly appreciated.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Best Regards,<u></u><u></u></p>
        <p class=3D"MsoNormal">Jerrid<u></u><u></u></p>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    There&#39;s a &quot;Stream Args&quot; field in both UHD Source and Sink=
 in GRC.<br>
    <br>
    Just put &quot;spp=3D&lt;your-value&gt;&quot; in the stream args field.=
<br>
    <br>
    Determining optimal numbers is going to be environment depending.=C2=A0
    Generally larger is better, keeping in mind MTU, and the effects on<br>
    =C2=A0 latency (it takes longer to stuff and send a larger packet
    compared to a smaller one).<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b2f9a805c78e1ca4--

--===============6182278155702396747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6182278155702396747==--
