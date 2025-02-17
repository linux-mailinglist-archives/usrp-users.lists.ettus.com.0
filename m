Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B2EA37DEE
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 10:10:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B84D3858B3
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 04:10:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739783437; bh=Fmni5gZKTNBREXNelRmGmdxvLWZAxFDH8SXZUWTmaS4=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=D3nGp+4syqkj4Fa2QVlFJzT4SkyD/uDaNeKcEDjeuoMJiIZ+k63LHaD5Z5mlGv7Q1
	 lGfjwTolZyk6dXMfr7bN/I5/um1BoC2codDnkgcRHM2Jo1iYhsCmd7OyeNKYEphvHG
	 3eO6KDWgryegCeVwkhVWKBUHkxBLHOCqWM1wrdv5SwvIN/nCGLAQ+WSMskKxMeI3/u
	 PZVSM3aNHOt69Nh0W4wdrDsOhR9IahgPlIFNKhjMuLFm6JyzQzaE0SfVrzNxgyRYRk
	 i8K/F/EF3kdX4WNgkGhQPiWS+yX8UgMITMN77e4lKVbtjDP4PVxjjJqziQVRfGJRNo
	 XaIAEeml/ChZA==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id C6FD73854C6
	for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 04:09:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="liU++nDd";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aba868c6e88so393683666b.2
        for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 01:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739783385; x=1740388185; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CMK/hdVcB7/J4EaeFCCIY3Ni162B5YSCeIBjh+JMwBE=;
        b=liU++nDdfN5rldnhdVSUeVpgRqobDcH4Eowmztl51A+lhrdJ7emM5MNe1ByOhl0u17
         90ylLZeJXpu6EgCml8kgsdzjQsN1Ydh3GrJzbI2uJrAwftGcDc/tkH8s20iekLSBjnzD
         dZOg+DP6z8a0EG4jHWQy1vXsLQOCUPSkbU61CHk5JLItBc9hYx2MK/kUUDd9I5Dx+wJp
         SsWQAtpcBct5JH7qiR02UjCKuFsWKZ/eMMIHQ5QtkHC6FGK2Nm6djSnCsFhLSZd/9Qox
         LWr2RK/7sqWddYz1t1GgQFEWhBTk6eRSx97YjZBXe5TQFGuGTXPoNbUlDUjSyLxNuJvH
         juQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739783385; x=1740388185;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CMK/hdVcB7/J4EaeFCCIY3Ni162B5YSCeIBjh+JMwBE=;
        b=tlDrjq/6e+AYEAOVVZdyt2T++gbo7YvzK2ejIpvd+hh/lXu29oVhbN/UxJcq4TGCi8
         MYQLha3OHHOftIwdLOMDA37BLS8PjueM56Vnu+lC62s6uV3whlmUTxl6cZimKEiitvsu
         b2DyrKPVZEYuPI1Cm/pR8zFiVizse00o1oEqASUYNGkcNQK+3GNqwgMIBP3itn0wZ+YK
         wwrdr/oJpAasI0aWFXN3evY0jPzGZs9pCFQ/T0ka50FxyAl5HepLMT4F3M7FzFRP7bcU
         qsffoP30fo+BjbAWuAz6X0IYu4Rsqs5ja6sqM+hwnnvf/9g4QuF1an6HIb1S5cu7RGq8
         37cQ==
X-Gm-Message-State: AOJu0Yxaj4TvBcrdy5jyldg/uPCT8HLcbuqyog45Pkt9Tjm68f2Iwhs+
	DpTBg5GuVf9pfLUwIUz3bAdYXmWxQ86UYbom2Rhjkc9jGbYurArBJHUZdQHwuqNM5JdWPn3lTln
	HFeBKXvhc1aTuhR3vyHkZ+EYBftKrZEBogfSzZaaCwZ8278CiV7k=
X-Gm-Gg: ASbGncuKh34UlZvE/UnBoiNLlWDhssPgb+5oLP36WavxveXhDygai/LV/Uwdg0ihBDP
	QCpmou9S3fzGbB514rRVf1dZsLTwzCQiF5X5/q725hSPJSi+zEij7UP87tUcHi0UTOFY7ByOPOB
	UkNaFlBUd8rRr9NVPac7Ln/65d
X-Google-Smtp-Source: AGHT+IHtENOXtVUEDHjpFC2cguGvqkEKSRQje4fH3F5i/N3S2snRd9zhw7a0fE9fUrN8fX9qmKMdDtH2S46cOQ70vU0=
X-Received: by 2002:a17:907:784b:b0:aba:608d:4a22 with SMTP id
 a640c23a62f3a-abb70b8a807mr703230466b.21.1739783384795; Mon, 17 Feb 2025
 01:09:44 -0800 (PST)
MIME-Version: 1.0
References: <XOhHAf5zvjgaX72I0xNY70LROpVIZKh6SxFkNYczs@lists.ettus.com>
In-Reply-To: <XOhHAf5zvjgaX72I0xNY70LROpVIZKh6SxFkNYczs@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 17 Feb 2025 10:09:33 +0100
X-Gm-Features: AWEUYZnj8YWefUlnygA4TayYmD4WFim4JC_9D-xEsSPJrym1KkVkM_JgiR_SaTY
Message-ID: <CAFOi1A4eJ+OaBm0Kbw5C-f1JeTMUaytgM0oyJSjaX85aFHizjw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: ZOSRBVVH4IV54RYIF7KJ6RCB3KAOEN6R
X-Message-ID-Hash: ZOSRBVVH4IV54RYIF7KJ6RCB3KAOEN6R
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZOSRBVVH4IV54RYIF7KJ6RCB3KAOEN6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9175378510785234764=="

--===============9175378510785234764==
Content-Type: multipart/alternative; boundary="000000000000a32ace062e52e2fe"

--000000000000a32ace062e52e2fe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Some bullets for you:
- If you do peek32(), then you cannot skip ack, because the ack contains
the read-response (i.e., your peek result).
- For poke, if you don't set ack, then yes, it can still timeout. UHD will
always wait for acks if it thinks the FIFO is full. If it didn't, you would
lose the command, or clog the crossbar, something bad.
- There's no API to check the FIFO fullness. That said, we could
potentially add that. What's your use case?

--M

On Mon, Feb 17, 2025 at 12:18=E2=80=AFAM <cyberphox@gmail.com> wrote:

> If I am calling poke32 or peek32 without setting the time and ack
> arguments (just sending the address and data), where they default to:
>
> uhd::time_spec_t time =3D uhd::time_spec_t::ASAP
>
> and
>
> bool ack              =3D false
>
> Would you expect the timeout exceptions to occur? In the code comment it
> says if ACK is requested.
>
> Is there a way to check the fifo status?
>
>
> Also, is there an example that shows the use of the timespan and ack with
> poke32/peek32?
>
>
> Thank you
>
> Marino
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a32ace062e52e2fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Some bullets for you:</div><div>- If you do peek32(),=
 then you cannot skip ack, because the ack contains the read-response (i.e.=
, your peek result).</div><div>- For poke, if you don&#39;t set ack, then y=
es, it can still timeout. UHD will always wait for acks if it thinks the FI=
FO is full. If it didn&#39;t, you would lose the command, or clog the cross=
bar, something bad.</div><div>- There&#39;s no API to check the FIFO fullne=
ss. That said, we could potentially add that. What&#39;s your use case?</di=
v><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_qu=
ote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 17, 2025 a=
t 12:18=E2=80=AFAM &lt;<a href=3D"mailto:cyberphox@gmail.com">cyberphox@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><p>If I am calling poke32 or peek32 without setting the time and ack =
arguments (just sending the address and data), where they  default to: </p>=
<pre><code>uhd::time_spec_t time =3D uhd::time_spec_t::ASAP   </code></pre>=
<p>and </p><pre><code>bool ack              =3D false  </code></pre><p>Woul=
d you expect the timeout exceptions to occur?  In the code comment it says =
if ACK is requested.</p><p>Is there a way to check the fifo status? </p><p>=
<br></p><p>Also, is there an example that shows the use of the timespan and=
 ack with poke32/peek32?</p><p><br></p><p>Thank you </p><p>Marino</p><p><br=
></p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a32ace062e52e2fe--

--===============9175378510785234764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9175378510785234764==--
