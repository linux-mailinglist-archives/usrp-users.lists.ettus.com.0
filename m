Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7156A23AB52
	for <lists+usrp-users@lfdr.de>; Mon,  3 Aug 2020 19:03:36 +0200 (CEST)
Received: from [::1] (port=47278 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2ds6-0002vH-5c; Mon, 03 Aug 2020 13:03:34 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:41548)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1k2ds2-0002mu-PL
 for usrp-users@lists.ettus.com; Mon, 03 Aug 2020 13:03:30 -0400
Received: by mail-oi1-f177.google.com with SMTP id b22so7904985oic.8
 for <usrp-users@lists.ettus.com>; Mon, 03 Aug 2020 10:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ija+Oo8J3RGBthCeGBgXtd2VSmsO4MXVFud1at0ptq4=;
 b=kscqPOlBrUkQXdClvn9pyfMBTuZk/nhZZvW8/rrOnHRyJGw5NR2u/kYrQmb6aO/EwQ
 G+smYa+OYotQvKp5LN8pstALChAQJ8nfT6zbfcCs119BdJbaqVraKlMVKeHUw39BsDur
 XsS9MS+ujjAe4EzNEuJu3aLQfs465Gd/nac8u1CY6ZHWeSdQXqdGng9PtUpJZwUxW5uD
 x0pJjlCLBl12OokGN00pTJL39e/7k76PrTmxWW0PWhbkzbEWG/sQV2CQu0x4QvMbnl80
 K/661LkzUF3L1GGZfXzlRws3G1zPlt6kZzRadIbmN+26zb5lq5In5yGY9w/2qo7BuJec
 w4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ija+Oo8J3RGBthCeGBgXtd2VSmsO4MXVFud1at0ptq4=;
 b=arDS7+NNcwyLyuZdfdU6f88tD8KMHdb+qRWIpInlQdH9hqwA9SCV6H0EdE/m3sTaRp
 IMYe9sgI01WOZNGdV3uIQToUzdILeBq6Iv09s7l+eZYrekYjPJhJHTsp7NlLWxJB0thu
 +YE+a4D+ETBxzPBTzzfp1/xz2ELPoavdj9JljByLeeWlSaE62HPLXumePj3nuey9DLgt
 PMsQwwFh+c7GQ6i6cAZc4iK9KrcHisr67/+o5ccxdnxZRWM7hWhJt75ZD+McHNUr362C
 mTDKFlqGkwURpQcK9U2Tv6A43vwL4dAtCsn0kxmmaobRFpJ9+HYJwF3HzGIKK8MvQONZ
 bK8g==
X-Gm-Message-State: AOAM531sT/s8EO9CfwyB9Oi8O9Z2J9kWI2d9H3Z3eoYXJVckbZ1E9klR
 nzrk+AVGw1H13IluJa2PG+lSWeIfhDYbmQWEC4vUcQ==
X-Google-Smtp-Source: ABdhPJw+mjbvM/vZ7mVpIb9uksXG1Z0rYDTM0aXOsEQFiUR30jORbcnPcTaj7weh2bxNOxWsYNA5UjWRSRU5rmMXTx0=
X-Received: by 2002:aca:fd46:: with SMTP id b67mr247997oii.150.1596474169817; 
 Mon, 03 Aug 2020 10:02:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwrT9SNz7tFqmYrJthCfRUgrHCzqbkKrA+NDPX324NmeSxc-g@mail.gmail.com>
 <4aec2693-1fff-dec3-6444-021f62691f53@ettus.com>
In-Reply-To: <4aec2693-1fff-dec3-6444-021f62691f53@ettus.com>
Date: Mon, 3 Aug 2020 13:02:38 -0400
Message-ID: <CAB__hTTAkcK_QbVHMJvct2XEMHiJ7HOktD0HQRgdT4Mc1ZvGVQ@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] CHIPSCOPE ERROR (RFNOC)
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
Content-Type: multipart/mixed; boundary="===============0234976734074611186=="
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

--===============0234976734074611186==
Content-Type: multipart/alternative; boundary="000000000000c943c205abfc1b8a"

--000000000000c943c205abfc1b8a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

perhaps re-checkout any files that are modified from the repo.

On Mon, Aug 3, 2020 at 12:35 PM Marcus M=C3=BCller via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Does removing and adding the chipscope again help, and making sure
> you're really using all the channels that your chipscope implementation
> has?
>
> Best regards,
>
> Marcus
>
> On 28.07.20 08:17, Jayant Chhillar via USRP-users wrote:
> > Hi everyone,
> > I am trying to generate a bitstream for X310 board with the FFT block
> along
> > with few other ettus provided blocks. However, at the time of logic
> > optimization step I get this error
> >
> > ERROR: [Chipscope 16-213] The debug port 'u_ila_0/probe1' has 9
> unconnected
> > channels (bits). This will cause errors during implementation.
> >
> > I=E2=80=99m not able to identify the source of this error. Also, before=
 this
> > bitstream generation I did create a bitstream where I used chipscope
> using
> > the methode defined here:
> >
> > https://kb.ettus.com/Debugging_FPGA_images
> >
> > And was able to do that without any errors. However, since then I have
> been
> > getting the above mentioned error.
> >
> > Thanks
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c943c205abfc1b8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">perhaps re-checkout any files that are modified from the r=
epo.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Aug 3, 2020 at 12:35 PM Marcus M=C3=BCller via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Does=
 removing and adding the chipscope again help, and making sure<br>
you&#39;re really using all the channels that your chipscope implementation=
 has?<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
On 28.07.20 08:17, Jayant Chhillar via USRP-users wrote:<br>
&gt; Hi everyone,<br>
&gt; I am trying to generate a bitstream for X310 board with the FFT block =
along<br>
&gt; with few other ettus provided blocks. However, at the time of logic<br=
>
&gt; optimization step I get this error<br>
&gt;<br>
&gt; ERROR: [Chipscope 16-213] The debug port &#39;u_ila_0/probe1&#39; has =
9 unconnected<br>
&gt; channels (bits). This will cause errors during implementation.<br>
&gt;<br>
&gt; I=E2=80=99m not able to identify the source of this error. Also, befor=
e this<br>
&gt; bitstream generation I did create a bitstream where I used chipscope u=
sing<br>
&gt; the methode defined here:<br>
&gt;<br>
&gt; <a href=3D"https://kb.ettus.com/Debugging_FPGA_images" rel=3D"noreferr=
er" target=3D"_blank">https://kb.ettus.com/Debugging_FPGA_images</a><br>
&gt;<br>
&gt; And was able to do that without any errors. However, since then I have=
 been<br>
&gt; getting the above mentioned error.<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c943c205abfc1b8a--


--===============0234976734074611186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0234976734074611186==--

