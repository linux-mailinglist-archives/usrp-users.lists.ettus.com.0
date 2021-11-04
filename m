Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1274456BF
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 17:06:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D454E38436E
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 12:06:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="S6x2qZDt";
	dkim-atps=neutral
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by mm2.emwd.com (Postfix) with ESMTPS id EB91F384337
	for <usrp-users@lists.ettus.com>; Thu,  4 Nov 2021 12:05:47 -0400 (EDT)
Received: by mail-oi1-f178.google.com with SMTP id q124so10008523oig.3
        for <usrp-users@lists.ettus.com>; Thu, 04 Nov 2021 09:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xt2BoIkreYPGlLYKCp2UiZJs0YPWfwCf9UA370E2VEs=;
        b=S6x2qZDt03Gdb9x213gnAPH/SL0O5jiWq6TVYHMWG+wK3sf8lb99WjVvrGLNol2r90
         vffY1YOgqODPxquf8jHzljXvmHiSAZFiNuTc1Ec0INQ23l8tG/ccKj97wJZZpyxyhlbd
         pia4bBtP7RL05vfxdIQ21CeN4duhctrJjNC8dStW4C2g8xW8dIACCP5qETxKqlgm4zOB
         sar9Pk8wbPuKjvdXBqnPGFLaTh1dtJ7h77uKY4Vtg2g2jnx4CvXo72AsO5YWjBCiJ6Vm
         salIgec7R4ba4gcBJpbo+XRftfKEkV+evL8Y1b1yu+G4WAo72fQetEGK3VZa8d9T1nry
         qb5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xt2BoIkreYPGlLYKCp2UiZJs0YPWfwCf9UA370E2VEs=;
        b=zbkBd/jOekxff3UhhAB2PjUzkbPo9gDnJ1AwAssnHnoLmvM3TTJqoeAWsJ7jBdzJ3g
         Xi/R6EQoFFuRzwfsEuIMeofuqcrMSrRaLLjpep4WVVocl8ogaJlsm3alIXgiPaNOIC1t
         klENZGkoyFIpleqHm2jkhGIoA81wJwhVq/kOuGW7dMB2tkqU1rjV9xa9OdsjRah6lqgI
         2wStIgugsq7IbdT40mu01dxnpKAeEQdl1F1N+HEtCtZ48XW9Adk8GCtKnyH+mnqSzHIO
         WV8AdyuNIQcx2HAwdTGX/8aENvkmdW7CmEjzoHQR0TEXVjDmPNZMk5u96sPrPWrJUFkk
         G1bQ==
X-Gm-Message-State: AOAM532aQjVadHnoaaBHvHzNpn6Ezy58a41jxjw60DUeWJhKLQ8mR8CK
	FqM7OjwbMaj/V0xpoepDhOOCJWFkffQG1w/7cT0RSA==
X-Google-Smtp-Source: ABdhPJxvvFVx6g1kIr51z9x76j2vNIXyJvAfOlb/ZH2rDeQso4ewYvLl/Ji+akpwEoJAqWRDS3qErSAmB451vl7iMkM=
X-Received: by 2002:a05:6808:1925:: with SMTP id bf37mr2656438oib.33.1636041945629;
 Thu, 04 Nov 2021 09:05:45 -0700 (PDT)
MIME-Version: 1.0
References: <30510aa4f1e04639b856128d20a14a3b@campus.tu-berlin.de>
In-Reply-To: <30510aa4f1e04639b856128d20a14a3b@campus.tu-berlin.de>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 4 Nov 2021 12:05:34 -0400
Message-ID: <CAB__hTSR+EizJUFDvsCeQQNsNQFnMWoa8L2zx9zCQ4EJDbA=9w@mail.gmail.com>
To: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
Message-ID-Hash: KXQAD64FUGWNAZ6NDU5NDYYNBRHNCEFL
X-Message-ID-Hash: KXQAD64FUGWNAZ6NDU5NDYYNBRHNCEFL
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tx RF chain still on after transmission?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KXQAD64FUGWNAZ6NDU5NDYYNBRHNCEFL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7651911775040802346=="

--===============7651911775040802346==
Content-Type: multipart/alternative; boundary="000000000000021e8805cff8b3f1"

--000000000000021e8805cff8b3f1
Content-Type: text/plain; charset="UTF-8"

Hi Qasim,
What if you continue to transmit but with all zeros in I/Q?  Does this
produce the result you need?
Rob

On Wed, Nov 3, 2021 at 10:25 AM Chang, Kaixin <k.chang@campus.tu-berlin.de>
wrote:

> Dear all,
>
> I have a questuon regarding the TX chain. I wanna measure some data
> transmitted from TX antenna to Rx antenna and without any stop measure the
> noise. So for example I configure the program to send 1000samples and
> receive 1500samples (so 500 noise samples). My question is, when the
> transmitter finishes its job, is the RF TX chain still on? Are the ADC or
> amplifier turnt off? Becaue I want the measured noise the same as while
> transmission.
>
> Sincerely
>
> Qasim
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000021e8805cff8b3f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Qasim,<div>What if you continue to transmit but with al=
l zeros in I/Q?=C2=A0 Does this produce the result you need?</div><div>Rob<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, Nov 3, 2021 at 10:25 AM Chang, Kaixin &lt;<a href=3D"mailto:k.=
chang@campus.tu-berlin.de">k.chang@campus.tu-berlin.de</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
Dear all,<br>
<br>
I have a questuon regarding the TX chain. I wanna measure some data transmi=
tted from TX antenna to Rx antenna and without any stop measure the noise. =
So for example I configure the program to send 1000samples and receive 1500=
samples (so 500 noise samples).
 My question is, when the transmitter finishes its job, is the RF TX chain =
still on? Are the ADC or amplifier turnt off? Becaue I want the measured no=
ise the same as while transmission.<br>
<br>
Sincerely<br>
<br>
Qasim
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000021e8805cff8b3f1--

--===============7651911775040802346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7651911775040802346==--
