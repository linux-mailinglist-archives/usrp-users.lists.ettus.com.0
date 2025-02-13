Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24724A33EBB
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2025 13:05:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE9E9385EE0
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2025 07:05:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739448342; bh=lTb7RUI54XTmEi1ki1+K2iNhNzkCjgn4kQOlxwc+Bww=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=a7UHPo5oerLNlZEdQz5RP+7jFzB6pvHXzLedZTgubwbTSC4wbozV25ivrzXfBrX/4
	 3ut6DCEd4PDqQD35jrRD3VbwkRjjn8tsCunp8bQ+5kP6POpOWD642fiOie+U/dAbnD
	 rhVfzvLvsf7yV9rmstW+gpzSB7Md2Puo7Gqg0FJB3BlUjRCq2zlFNoZEECt8GguXDZ
	 uf/bodAg7Emn/5DzP1eqzuxBrM0GdZWot9uzAUtvHsKJGFqvfZsGdt/L9nWhJ02Gos
	 dl3zqtDoHeqMzTzANGbskiOCD+WJc/0Xy4CNd/ezsze++wksmJBgCr61Ji+r1EOkAb
	 x+TvKKaasC1jw==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 13A40385EF9
	for <usrp-users@lists.ettus.com>; Thu, 13 Feb 2025 07:04:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="xsCMyO0R";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ab7cb1154abso112677166b.0
        for <usrp-users@lists.ettus.com>; Thu, 13 Feb 2025 04:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739448292; x=1740053092; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3vdd+X5xj2HbWOzucj091EylAeKGPBDyjFap8Xf1AD0=;
        b=xsCMyO0Rnmi/5HzSF6l1DLkUpAH5vWbR48QIqrlZYzneLyWT2v6uAvOjYxBOAb7A+E
         jrMEawEKFvvD4mcysaChoXTTK9NVP/+PtLs3ww1gBYdCKhZMD3GNhyDXJyIypruz5qMb
         MQeaIZadkRn6jedGxTViPTdowHEeXAzCmpMCRuc5mDpbBHhl7+EQnikXaIs2SJ3q9Dak
         93I03zCqt4HF8RKgZ8Z79k/NlEyw5wX6JeJCeceFP5nA9OsECMUvcBh0MisDzCryGwMz
         Fxdsc3KLVG6HjzMHxU2fxejrsbqqyM/l4q+Q+eDyay4t80q1RLR5jqJ8TMXtxDEhijx7
         CkFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739448292; x=1740053092;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3vdd+X5xj2HbWOzucj091EylAeKGPBDyjFap8Xf1AD0=;
        b=g6OzzVlNLIsAIOLJ86q853MC+6J+ntTwfjepJ7pzFnn5Xk6qEpWpvQIgqRNsOrKsbH
         J4wV78n7KtPX4EhWwTYi9UbCU81b1c3dAZZW7STQE3fbDxWSLxVh9rh7OuUwXMuRL4DC
         sVfJ1D2ak/pVhHG6E3ycZ7RZjMx/OjTUj5aRFVJ8HtJFz0qDmernBs4fcHez8N70zShV
         vCtNGGL2ixb3eQwIEIGYF+/x0ai7BvhS3HvTKtjZDrUjfyEGgDBhi51Qg3KXcuBi3dkF
         +4fzHsxhdfCaAFDCSujfQMr+ySPcIy6UKQeOw845TTQgGnImoP90PeQM9Ia1jM1yUi17
         2Nyg==
X-Gm-Message-State: AOJu0YzTgvm/XgTcvAWidsbjWnMKSurEIg6/H8amBdncsjK+yTTtqG8Z
	LkQ2lKWSIi4RP7///1m1lkB3r6E4ps9CtIOyu79X6d4vKqp887fewtxZc3h584imfnxPO4USOf9
	8QXo5LSUOhL3scV7mVlLhOpljxU2soDOWudzyVTmfjP6CDVqz+wU=
X-Gm-Gg: ASbGncuLgAbWby51sWnX1Lwi2RMyquCiFAZBebvW3t+Z6myeb00osEs/T8Ye6HjcN6j
	yU+w4HvTPMHM50hak/C26OkXYiN1at40QM4aEYntWWSPBdW7ESOGBK58xN55PHVtYeVv9C/c0K9
	0cAdfOMfxRs2T5r4AfhLsp8XMQwsc=
X-Google-Smtp-Source: AGHT+IEFQjgymdWSCAFFkKHq20JX83m6oOq2xoPgFlnButxdp8TJvL5yThrc8U+1iyXKjhutcJmwn9kiMw6nDAnzZuQ=
X-Received: by 2002:a05:6402:35cb:b0:5dc:9589:9f64 with SMTP id
 4fb4d7f45d1cf-5dec9d3b932mr6399182a12.13.1739448291704; Thu, 13 Feb 2025
 04:04:51 -0800 (PST)
MIME-Version: 1.0
References: <mETAuMU7KOCQVKmdXyC6Gav3btAQVarhDbRQSLvHHJg@lists.ettus.com>
In-Reply-To: <mETAuMU7KOCQVKmdXyC6Gav3btAQVarhDbRQSLvHHJg@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 13 Feb 2025 13:04:40 +0100
X-Gm-Features: AWEUYZnNW-LUX7TsCPCJkrOTzZ0ShAOZC_5ZHSTjMEy1veh4q8vBOMcdu6s3zj8
Message-ID: <CAFOi1A7E=4-5wW-5K7_Mn6D=+ungwLvYPhb_6SGdnxmT33unXg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: POBSDTR5HZJUEPGYGCX33U3ZZUTCZN2F
X-Message-ID-Hash: POBSDTR5HZJUEPGYGCX33U3ZZUTCZN2F
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/POBSDTR5HZJUEPGYGCX33U3ZZUTCZN2F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6410455673777882058=="

--===============6410455673777882058==
Content-Type: multipart/alternative; boundary="000000000000885eb3062e04dd7f"

--000000000000885eb3062e04dd7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Marino,

not sure what you mean -- from software, or in general as a CHDR
transaction (e.g., from another RFNoC block)? Also, what do you want to
timeout: Is this for the case where there are too many commands in the
queue, and the backpressure is blocking (so you want to return without
doing the register read/write)?

--M

On Wed, Feb 12, 2025 at 6:37=E2=80=AFPM <cyberphox@gmail.com> wrote:

> Hi All,
>
> Is there a mechanism to set a timeout when reading or writing registers
> for a OOT NOC block?
>
> Thanks,
>
> Marino
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000885eb3062e04dd7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Marino,</div><div><br></div><div>not sure what yo=
u mean -- from software, or in general as a CHDR transaction (e.g., from an=
other RFNoC block)? Also, what do you want to timeout: Is this for the case=
 where there are too many commands in the queue, and the backpressure is bl=
ocking (so you want to return without doing the register read/write)?</div>=
<div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 12, 2025 at =
6:37=E2=80=AFPM &lt;<a href=3D"mailto:cyberphox@gmail.com">cyberphox@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><p>Hi All,</p><p>Is there a mechanism to set a timeout when reading or w=
riting registers for a OOT NOC block?</p><p>Thanks,</p><p>Marino</p><p><br>=
</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000885eb3062e04dd7f--

--===============6410455673777882058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6410455673777882058==--
