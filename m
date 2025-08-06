Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AB5B1CDC9
	for <lists+usrp-users@lfdr.de>; Wed,  6 Aug 2025 22:43:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 456DD38561B
	for <lists+usrp-users@lfdr.de>; Wed,  6 Aug 2025 16:43:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754513032; bh=TGlo9aR+Fj0jBp0NBax9G8Vd7Lp8ysChDPf+QBK8uvs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bOn2luv8/XqIjTTdKLKV5tYPNvcGv/0w/pVajrW06q3q7OBhCYT3CffBzTdq8w0ec
	 Kd9AO3OUWi/26eLaMxrE/sLlIaA14pPDWxIRx9EWLpE5soT1rVxt3lB3npifyY0CH0
	 nHs2njHDp/og2lOYOCE/BMoQKTXQM1d3WDzjWzYDNx8dmrTvSRhIDxtbz9K++C98SD
	 SIn5EvbFS0Srol+jnmvBtGAjgYNVLGfHD0TKQmvg77SCV6E/9FpP0vWeNrBHLSp4Rx
	 gBsLA/gLnCdO8bcTDk+j4FXTNnCAnF64VJDic48H8vJJSkCASIV8jaTKF4sNApO4BH
	 QFO8oR1BQL3TA==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 88C0438561B
	for <usrp-users@lists.ettus.com>; Wed,  6 Aug 2025 16:43:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VgU9lirt";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-af967835d0aso43774766b.0
        for <usrp-users@lists.ettus.com>; Wed, 06 Aug 2025 13:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754512984; x=1755117784; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=57n+7w0afKIGEJRoz1C7Ob9HCrLKOazBzIxAU0WojJ0=;
        b=VgU9lirt/9oC0zkP6HlAgAHtj9PeZyHKc9cq0S6kDXk0aSZW1aLxhG1V/0zsv34yqu
         xuHMWWde4WqLH1EcPcarWVXh2Cy8js7SWVTKdD5bSLxBTfrbw2GTkpZ4jkPcc1PPdjT9
         9/czT0VME4kchNexJPVsHmp1zltCEmFyi8i+pxQrf3MefQIOiYJPLFf686LHQIsEZ8tU
         Y3EfeszmfOotCzuMw+4u/GLjGYPAOmtVIvJaebGB10XBAtL1e3Z9xQTJhtARk7c3JvmI
         qLMQoiWgc4R6wwBNtDYxqYhfS66yztiF6aAKv9pF9xgY2K9EGjTjZb3jhC4tBK1SQJ/B
         nqhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754512984; x=1755117784;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=57n+7w0afKIGEJRoz1C7Ob9HCrLKOazBzIxAU0WojJ0=;
        b=hC961HrWSGXm2cwCiC5t2v54xdVl0KTVKutopkQk0oLkUSlQ1vQJ5k4/ROhxUQ8u5L
         atHVstpici8XulA6un2T+9tkv95WUKxno48IF4FORGVw/y/y+AQ641XfdeDrhw5ngm93
         tjps2z+go9d4kIDCfCg4DTIdNZAv4K3aatZj1YRDafVk2J+6+UvEqKvnjsb+79SQOj3b
         bdMJz1Bser9KKvBf1SUU+WZPugeByuHSN0CPj0Ha73JY+av64yulCID9bAyxfqXZWpw5
         lrKcvXPFqFB6OQj1OnqVZVfhXcvm84RfjYCDT7Xc4/nET5O8x12QVhoC0YL7BmUUcozO
         3EgA==
X-Gm-Message-State: AOJu0YyUxAFn/+kHurScfi/EwCXRpL4+dprEIixADdmXz0Wj4RipRzMn
	FIRtGuTSs3h1zcvdnp+9Cefq8QzyohM/sc2GMm5V2EfxsXMXK0C3fXC0NvAeBHOZOcS/uzjbRlh
	qSr6VuIm92GdksbxzDtvtqVP+r9lqsTtH6Kz+
X-Gm-Gg: ASbGncsxECB+AiDTppIlGZ+0ddHsAG38ZIxqObNGOZoIATZHUuJe5lPz5jxmVhKRwna
	+5Gydjs3Gfj0LG/ODbqsaG0dymW/ZRwpPGLM1m9Qs2msPULJJ7URTNpr6Im6vTBhBkNpzIeUbMt
	y0P/kkuVRn6l0VNUIJ/B132qvcnEsRfBZNUJYNtMQYCmZt0hc16aGScAvaJSJZMJ1Xo0TI4tQg7
	mE4oo4vRE0eHk1u2w==
X-Google-Smtp-Source: AGHT+IEsyjg85ghDMXuchGNwKBIvXxr3C2uNDUBVrCMCEhE8e0BU3jzYblkkbnvSNvhX+Ukbeh7jz1j5X41Cg4Vp1HM=
X-Received: by 2002:a17:907:980a:b0:ae0:d019:dac7 with SMTP id
 a640c23a62f3a-af9a60f99d8mr27264766b.23.1754512983928; Wed, 06 Aug 2025
 13:43:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK7rTUg-C9fsxZyueKMzqckYkwYZzb5XSETJpUwq4nQfCQ@mail.gmail.com>
In-Reply-To: <CAEXYVK7rTUg-C9fsxZyueKMzqckYkwYZzb5XSETJpUwq4nQfCQ@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 6 Aug 2025 16:42:52 -0400
X-Gm-Features: Ac12FXwtxExiYEX4qj8REYQ6OQTjPcwNHm716mUtQUdIKagryv0DEYvJc9woA64
Message-ID: <CAEXYVK5pqZtJ67ahe4tdt84VESetsHAoy2vKkHPTkH56Npk5mQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: P6DETWPCP2BFWPNIQMZUHAZSSDB64232
X-Message-ID-Hash: P6DETWPCP2BFWPNIQMZUHAZSSDB64232
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue Stream Command to Radio without 1:1 Endpoint
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P6DETWPCP2BFWPNIQMZUHAZSSDB64232/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4981166495107877371=="

--===============4981166495107877371==
Content-Type: multipart/alternative; boundary="0000000000002931ea063bb863cc"

--0000000000002931ea063bb863cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Replying to myself since I just didn't see it beforehand. It seems like
instead of asking the streamer to issue the command, I can ask the radio
controller itself to do it for me as per:


https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1radio__control.html#a33=
e138c4771e4dade783411224857a43

I'll give this a shot to see if it does what I want to do. Sorry for the
chatter.

Brian

On Wed, Aug 6, 2025 at 4:29=E2=80=AFPM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> In my application, I have a transform that I do at the radio block such
> that the 4 RX ports turn into a single stream of data.
>
> I want to issue a stream command to each of the 4 RX ports, but I only
> have a single streamer that it'll be outputting to.
>
> Is this paradigm possible with RFNoC, or do I need an EP for every RF por=
t
> such that I can connect to the endpoint and create an RX streamer?
>
> Thanks,
> Brian
>

--0000000000002931ea063bb863cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Replying to myself=C2=A0since I just didn&#39;t see it bef=
orehand. It seems like instead of asking the streamer to issue the command,=
 I can ask the radio controller itself to do it for me as per:<div><br></di=
v><div>=C2=A0=C2=A0<a href=3D"https://files.ettus.com/manual/classuhd_1_1rf=
noc_1_1radio__control.html#a33e138c4771e4dade783411224857a43">https://files=
.ettus.com/manual/classuhd_1_1rfnoc_1_1radio__control.html#a33e138c4771e4da=
de783411224857a43</a></div><div><br></div><div>I&#39;ll give this a shot to=
 see if it does what I want to do. Sorry for the chatter.</div><div><br></d=
iv><div>Brian</div></div><br><div class=3D"gmail_quote gmail_quote_containe=
r"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 6, 2025 at 4:29=E2=80=
=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">In my application, I have a transform=C2=A0that I =
do at the radio block such that the 4 RX ports turn into a single stream of=
 data.<div><br></div><div>I want to issue a stream command to each of the 4=
 RX ports, but I only have a single streamer that it&#39;ll be outputting t=
o.</div><div><br></div><div>Is this paradigm possible with RFNoC, or do I n=
eed an EP for every RF port such that I can connect to the endpoint and cre=
ate an RX streamer?</div><div><br></div><div>Thanks,</div><div>Brian</div><=
/div>
</blockquote></div>

--0000000000002931ea063bb863cc--

--===============4981166495107877371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4981166495107877371==--
