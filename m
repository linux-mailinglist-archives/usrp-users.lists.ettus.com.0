Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C1E84C031
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 23:46:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09353384E9F
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 17:46:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707259565; bh=v+//m7jRLrDFY0a5ZUIyrqElygurElRX6S9aRxUrfKI=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=yRTTO696wDAoNjfRN1VHv7bg+XXbD7D88o8YC+MHvWyiR2u7MnUQdWJxz0qCzb5KC
	 hJ2SpUcL8C2STzbat5Vkc7F2gTqU/4xHeiUH8MidCCFCHusvR7Q2WmiUuoQoEw0AFG
	 KX51ndwPmMQ8wnvr4x6ey7f1F+NtY3bsCV3wfFDVl9/dWFd3aT2HaBnp6LGBrlpXgN
	 06xsZ0lsKaUxuAWkli9Id/BqVKVIhGHK9XkNNPj/YQG6yeQdcty14tIZTbomiLxN0L
	 oWkRSwGsN0KjP47RN5zvRmomo10OlkcJZ0iNllZ7Qw6VwaRic9BEMUtE1sW1iqvPhz
	 cV6UVJvT7OCYA==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 32EB8384D21
	for <usrp-users@lists.ettus.com>; Tue,  6 Feb 2024 17:45:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Uug4tYbG";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-56001b47285so5259533a12.1
        for <usrp-users@lists.ettus.com>; Tue, 06 Feb 2024 14:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1707259507; x=1707864307; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mAhIVGYpJtB6bTRKyNG5Anls455xw38QFU74HUPS4fE=;
        b=Uug4tYbGEI7PVYx89zVaJh1qKTOU9Rnva3WqnDYOQLkg8SIaobJlfJvZfxntVJRtZl
         E1OQUQazYMowdAHBLJj1BlB3ptSs7h+qsFqeqiMMV+LS+to8hmexzy1ZYnA3J9R8Dh4r
         CJRLT9cPdvkmZw0pVBZsy5pvkI9IGhHb5EFVVd2p4zVTELT6CMRYNmXZbXb2gJMNF3tH
         5XxcUXKnGubSWmt6FMlZl9N1RAzr/FRCYOvccUE7earwpBbjJTvOHjEEGtG85bMLqOZR
         oYCSNlrS70TaYpZWB5xuzt7GZhLrP0+OJB5Nfw9J1+VFj8qkkOEqWdtlSr5u8SknS3JJ
         5OTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707259507; x=1707864307;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mAhIVGYpJtB6bTRKyNG5Anls455xw38QFU74HUPS4fE=;
        b=rgjwEieUqr0sXFf5xhkStHKgvTEAVGFX1dHXH1NJx+zt4CDvEcNaAGmbUoyryV7OTU
         z507L5mr9DxQKgPXyA5U//cHVQuf3GSBfnXK5Y79g/CWQSVZM1rXFrQBeMHIrX4YOGgH
         VEvfUUH64DXlVf4ozXECIZ2fN5VFy8/QQMdn21DvWDxCeKVpT6Y80HCapE5Ke/HLHoUY
         3yD0nas77ZGc7okvwWPXUOVFSM25gN6WaJKMQebtipotaXddti5Hmy461luK65uXbhiw
         28uD1P4zD+lLtYI/iDiilICD0TKN5dGzh76H1F7FCP3zAGkLEqZv2ol2wfpEXq6qiPlI
         GLdA==
X-Gm-Message-State: AOJu0YzUsEZ4mTRR/phhbhv+lCs63hRpnzE5KlrCN74Z4olbUr6Gz8pj
	SfMbetHUaJXRAA+zRjt5xKA0igTahIoxlDKokefDvsU/0Py4WoUi4nX9LODesFAGG16YqKB1+WN
	D+5slD7ns3/neuB1nOTmNqCJQpRuouPl9ZXsx
X-Google-Smtp-Source: AGHT+IGqeAap24yoWLCo0fLAJHjlx0YwxHl6kH4La1UylGVtfzhSaAgvlADWyJINGliXxnYSHS8VjoJCQuxrhCGelaw=
X-Received: by 2002:a05:6402:7c3:b0:55f:f343:9f38 with SMTP id
 u3-20020a05640207c300b0055ff3439f38mr2540101edy.19.1707259506702; Tue, 06 Feb
 2024 14:45:06 -0800 (PST)
MIME-Version: 1.0
References: <Je2rmnVRsHMv5FbqtTKa3wbbzr1mn2RPKFRr6nzHGc@lists.ettus.com>
In-Reply-To: <Je2rmnVRsHMv5FbqtTKa3wbbzr1mn2RPKFRr6nzHGc@lists.ettus.com>
Date: Tue, 6 Feb 2024 17:44:55 -0500
Message-ID: <CAB__hTSBp1qfHpGLTd4RgYsk_Tp8qHF3F5-suChDfW+rJTh4xQ@mail.gmail.com>
To: zackkomo@utexas.edu
Message-ID-Hash: MICD5SPTZMHZTHUWJTG7MZ4YEIZH45SU
X-Message-ID-Hash: MICD5SPTZMHZTHUWJTG7MZ4YEIZH45SU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Align multi-channel captures with different rx_stremers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MICD5SPTZMHZTHUWJTG7MZ4YEIZH45SU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4436518481554827762=="

--===============4436518481554827762==
Content-Type: multipart/alternative; boundary="0000000000007038b90610be54c6"

--0000000000007038b90610be54c6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You mentioned a difference of 732ns. Is this a measured difference or is
this the difference in the timestamps contained in the metadata for the 2
streams?

On Tue, Feb 6, 2024 at 5:23=E2=80=AFPM <zackkomo@utexas.edu> wrote:

> If I do thing concurrently (same thread, same rx_streamer) would that
> solve the timing issue? For example:
>
> stream_args.channels =3D { 0, 1};
>
> uhd::rx_streamer::sptr rx_stream =3D usrp_->get_rx_stream(stream_args);
>
> =E2=80=A6
>
> size_t num_rx_samps =3D
>
>                 rx_stream->recv(buffs, samps_per_buff_, md, timeout, one_=
packet);
>
> Where buffs is a collection of receive buffers.
>
> It would become a little awkward with different sampling rates, but would
> this potentially solve the timing issue?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007038b90610be54c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You mentioned a difference of 732ns. Is this a measured di=
fference or is this the difference in the timestamps contained in the metad=
ata for the 2 streams?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, Feb 6, 2024 at 5:23=E2=80=AFPM &lt;<a href=3D=
"mailto:zackkomo@utexas.edu">zackkomo@utexas.edu</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><p>If I do thing concurrent=
ly (same thread, same rx_streamer) would that solve the timing issue? For e=
xample:</p><pre><code>stream_args.channels =3D { 0, 1};</code></pre><pre><c=
ode>uhd::rx_streamer::sptr rx_stream =3D usrp_-&gt;get_rx_stream(stream_arg=
s);</code></pre><pre><code>=E2=80=A6</code></pre><pre><code>size_t num_rx_s=
amps =3D</code></pre><pre><code>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 rx_stream-&gt;recv(buffs, samps_per_buff_, md, timeout, one_p=
acket);</code></pre><p>Where buffs is a collection of receive buffers.</p><=
p>It would become a little awkward with different sampling rates, but would=
 this potentially solve the timing issue?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007038b90610be54c6--

--===============4436518481554827762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4436518481554827762==--
