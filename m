Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA1B4C168F
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 16:22:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 756663846BD
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 10:22:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="VVbCRVpG";
	dkim-atps=neutral
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 1FABA3841FD
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 10:21:46 -0500 (EST)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-2d641c31776so214735627b3.12
        for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 07:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FqyGNNTpnal5SBIEDiyijvhikIMQAAMQvFTU6iNwwmw=;
        b=VVbCRVpGobazf2xLDGxZd66CrrBoGkvhuXYttFEgNPrBfWUKsB0O08Rru/ZQZzb6P2
         eyEbl5kVHNQAazQt6BwqvZMpikwQVN0LYYoWC+UBLkVQGrBxWSoyF4NIYEMIVR+XHjZc
         ynVZUwyHj3g5q9dyqgt28ATZfde2R+KTF1PfE4IQrAuTiZOhw85XHOy+EmUelIfQobsV
         8q5zkCsEQ8Wj2DhG3vyec476uIK4bNsowhCEbcN4QyzT2cSOuiIOaBkSfGf7bmZWLaGF
         n8CgWL2077VAeunyOToKh+9HuaU1nrwp8Yw10AuHQl95sH8k9pbAUogca2TJX3VhMLmg
         zViw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FqyGNNTpnal5SBIEDiyijvhikIMQAAMQvFTU6iNwwmw=;
        b=lCYST4EkEdlEbojyNn//GtpWi3fsmdr2NOiGYMIM7GvZw/o/FySWn+P9ueHEJvoISI
         4OZb0Ma2BGlaFwODcTvOlnAIjOh0ocJNpS8KkfqvBSP+9Wz6x19fpoNi5zcetFzEzdjr
         QxTsptssFR4SBzbCe9QqmR4C1VMwCSmGpC4cON2qcBzc9RO9/MYqSbIUsm09L8H2MyCN
         7B1sOLmAUZGR2Ynb2gIBB6o83oUyRao5dc/DsSZq8H6YvFju1mWvB174Bq7Wn5JGhh0G
         8LWzhImCROmRSWe9ncbFq2oA+z9yji4KJ7JK0dIMe4CpNivRDrNtMLmzrrEOkYqW+twQ
         GU9w==
X-Gm-Message-State: AOAM530lWroX9WmgNjucBVNZ7E4MuVX5cpytYtbgJjJhbJ8GsNPWGwR+
	EdfXWw6b3PzuQyvSsYVi1PLJvqfODuvylFqIs4oisujKHG76qQ==
X-Google-Smtp-Source: ABdhPJy6KD97khFG72qv+dNHXTh/TDasCTlWdTJxe3zLq9LGf0IXhOUSNFMIFK4UhXnJ+lhs+fLf6CZkfi9NE0oxhY0=
X-Received: by 2002:a81:1391:0:b0:2d0:efe4:a758 with SMTP id
 139-20020a811391000000b002d0efe4a758mr172103ywt.82.1645629706312; Wed, 23 Feb
 2022 07:21:46 -0800 (PST)
MIME-Version: 1.0
References: <PAXP193MB22523F0DC38B2BBD84D77318963C9@PAXP193MB2252.EURP193.PROD.OUTLOOK.COM>
In-Reply-To: <PAXP193MB22523F0DC38B2BBD84D77318963C9@PAXP193MB2252.EURP193.PROD.OUTLOOK.COM>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 23 Feb 2022 10:21:35 -0500
Message-ID: <CAB__hTSf7Ms2=d1nNaE=woB+7bOYv_ZZWereBrTFFLO3p2cLyA@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Lorblanch=C3=A8s?= <zlika_ese@hotmail.com>
Message-ID-Hash: CJ726REIP6I2HJ3G3QMHWYQKMLZYR6F4
X-Message-ID-Hash: CJ726REIP6I2HJ3G3QMHWYQKMLZYR6F4
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows "O" messages with USRP X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CJ726REIP6I2HJ3G3QMHWYQKMLZYR6F4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9184204447224656180=="

--===============9184204447224656180==
Content-Type: multipart/alternative; boundary="00000000000013d8f505d8b10698"

--00000000000013d8f505d8b10698
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Thomas,
I confess to not fully understanding the network-based back pressure. Based
on my own experience, it seems that it is possible to get either "O" or
"S/D" (despite the information mentioned at the link you provided which
indicates no back pressure).  I would even say that "O" is more common.
This is just a guess, but I wonder if there is a sort-of "race condition"
on the host where in most cases UHD is able to see that host network
buffers are getting full and issue a command to pause streaming from the
FPGA (causing "O"), but in some cases, the buffers fill so quickly that the
pause is not received prior to data being discarded in the OS network
buffers (thus "D" or "S").

Have you run "benchmark_rate"?  If not, try running for a long time to see
if the same problem occurs as when running gnuradio.
Rob

On Wed, Feb 23, 2022 at 5:11 AM Thomas Lorblanch=C3=A8s <zlika_ese@hotmail.=
com>
wrote:

> Hi all,
> I try to use a USRP X300 with a 10G Ethernet link at full speed (200MS/s)=
,
> running uhd 3.15.0 and gnuradio 3.8.2.
> I followed all the tips from
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
> but I still receive "O"s from time to time.
> I don't have these messages at 100MS/s.
> I'm surprised to receive these overflow warnings, because this is not wha=
t
> is
> described in
> https://files.ettus.com/manual/page_general.html#general_ounotes.
> In this document, network-based devices are only supposed to drop ("D")
> packets
> because there is no back-pressure.
> So how is it possible to receive "O"s (i.e. the device's internal buffers
> become full) with this setup?
> Thanks for your answers.
> Thomas
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000013d8f505d8b10698
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Thomas,</div><div>I confess to not fully understan=
ding the network-based back pressure. Based on my own experience, it=C2=A0s=
eems that it is possible to get either &quot;O&quot; or &quot;S/D&quot; (de=
spite the information mentioned at the link you provided which indicates no=
 back pressure).=C2=A0 I would even say that &quot;O&quot; is more common.=
=C2=A0 This is just a guess, but I wonder if there is a sort-of &quot;race =
condition&quot; on the host where in most cases UHD is able to see that hos=
t network buffers are getting full and issue a command to pause streaming f=
rom the FPGA (causing &quot;O&quot;), but in some cases, the buffers fill s=
o quickly that the pause is not received prior to data being discarded in t=
he OS network buffers (thus &quot;D&quot; or &quot;S&quot;).</div><div><br>=
</div><div>Have you run &quot;benchmark_rate&quot;?=C2=A0 If not, try runni=
ng for a long time to see if the same problem occurs as when running gnurad=
io.</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, Feb 23, 2022 at 5:11 AM Thomas Lorblanch=C3=A8s &l=
t;<a href=3D"mailto:zlika_ese@hotmail.com">zlika_ese@hotmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all,<br>
I try to use a USRP X300 with a 10G Ethernet link at full speed (200MS/s), =
running uhd 3.15.0 and gnuradio 3.8.2.<br>
I followed all the tips from <br>
<a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Trick=
s" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/USRP_Host_Perf=
ormance_Tuning_Tips_and_Tricks</a><br>
but I still receive &quot;O&quot;s from time to time.<br>
I don&#39;t have these messages at 100MS/s.<br>
I&#39;m surprised to receive these overflow warnings, because this is not w=
hat is <br>
described in<br>
<a href=3D"https://files.ettus.com/manual/page_general.html#general_ounotes=
" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual/page_=
general.html#general_ounotes</a>.<br>
In this document, network-based devices are only supposed to drop (&quot;D&=
quot;) packets <br>
because there is no back-pressure.<br>
So how is it possible to receive &quot;O&quot;s (i.e. the device&#39;s inte=
rnal buffers <br>
become full) with this setup?<br>
Thanks for your answers.<br>
Thomas<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000013d8f505d8b10698--

--===============9184204447224656180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9184204447224656180==--
