Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64557B34546
	for <lists+usrp-users@lfdr.de>; Mon, 25 Aug 2025 17:11:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4013A38617E
	for <lists+usrp-users@lfdr.de>; Mon, 25 Aug 2025 11:11:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756134688; bh=j4feeTxAq/Hy2ub2xuFCodv70SOLZ1Gw3ItUvPcSbYI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OfynBRkNKA85Skin2H3E6/ptQfiVVNcAh+Vhw6+pG8DWVA9J8W05foXi8cdBLI+BM
	 FbDLf9p59LI7aI+INb2AKUrqlpNLQbOKiOsxDaHY52FHVTjKQBnkvYsM7lZM8/To+V
	 FLiwJODJTxJ5nR/LfJ90POxEw8yCloZ3K+9fU5ybH2ITGw1J1o6UzQIeXquH/rP70W
	 yrbGldLIDgvz9SNIswpzhi6m/5+qq4CVxD+BRQ3Tg5dC3a/ZMYkxLaYOGpozv7mj+t
	 GGkMeRzACLYEi8pbszhV7tn7KlBHcVrAjjfrxU6TRuUH6FGsIGGbbktIl7gqFkARFP
	 HRwacZZZDJl/w==
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 18448385F51
	for <usrp-users@lists.ettus.com>; Mon, 25 Aug 2025 11:10:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PuJSoUba";
	dkim-atps=neutral
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-333f929adb3so38008941fa.3
        for <usrp-users@lists.ettus.com>; Mon, 25 Aug 2025 08:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756134649; x=1756739449; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Iq2CdVIqHpQ8wbjJUye+rbA+MoIEIWePPJ3CLB3RSyI=;
        b=PuJSoUbankTjuISmddPBbzTnI2wp5/haqKe+pCrx7lsUIiuy8HnUDu8pwJfsCS+sDl
         i+w2uF2EpNvdbeqb+x1nxbY+7wasdvgMWZ/brAXRLT7/jkZs0nnGHGAk3874sXFSVkRl
         SEw8pSMroF7NgGu20AIf7c7mOKG33SztkSGa6RVjWxYRhkOVfZvXIFBBQW2sjpknleG5
         L5OvzgUe5brIwNubbCgdpI5BPYHSID/r6OjLea8Qv15OgqVZudr0IKo3YtbFUUV/WXKQ
         qOffdWjibZke4fCb6n8ZUZkSkkHJb8BaVs2EUjpomQGXPxP2/85oJdNdNW8fOb2KHHWV
         1rgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756134649; x=1756739449;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Iq2CdVIqHpQ8wbjJUye+rbA+MoIEIWePPJ3CLB3RSyI=;
        b=dJyGaC1StbSgwHGEwD7Y1jDYiqrZfPwgzePnlCdmXkxaiXokX4/CEaZ9N6LTUXcoL+
         RdTAz01XJ/KcxB/Td1ma5EW8g3s6l+Lhsw15ICbYwgP4qx8pkzq6+Hu8J6/TDBgKrtY7
         tSdepmbfbC6mI1n+JSt3w74mpy4bN/0ew6lBmldrHeNvKBNTQx22YGPA2RIqtgnx1OQC
         SNtkjukWjY6dS1F+k4KgyQEMTzgYTZyYu46If3/7JscadXBBiw0L2WQc2elxgDk2MOz2
         jmN0EZPvxz0t4fI8WH0Hwt2Uo5CBP7o9qIwhorBZrA2Za0syctnECz+p32W9tyLpjOz9
         5p+g==
X-Forwarded-Encrypted: i=1; AJvYcCUzHDiFsdgLmftY3mnprf4lvDB02wzwacv0damP40CjjbbD/ubtPwdU/esdv3BJBNvJ9l2F7b+rcomp@lists.ettus.com
X-Gm-Message-State: AOJu0YwUiELk0iHiPacXIk6JvnGO+3/lhOPz8u0Wz+L7ushvorOuNG+z
	G1jZzuVXqe5E6eVkLY/UhsY/5LDM2mwp+e3aEikHj8CKhCYgR9YgqblsrmW7fmdq4nhxabL/I8Z
	fI7cSJ2OoTspqmCxCvVXpvvDD280Hgwg=
X-Gm-Gg: ASbGncsT5Z4AUNnliP49zA20DAcFMNSyDPLKp2FwnCXJMirtj3nfe1DNneQQmVCVIzM
	4NRLy8gzymEBKxaj34fByBlCYIfOHhjsNmyJTnykwruj+1OlXPCl63+Lj+8mwSbHMKcXe/6oRxH
	Oq5iJxndJQSpgI37w8DKwAW+e4+V04/AEfu/MsRlDASlsFzMN6isiDpkuRL5139AN6jczpG1wQz
	64i0WwrKHu/Kog0MPZm
X-Google-Smtp-Source: AGHT+IES6vtpFGq1GnJGp4eFPpibv3/qaQ7rEJ6WfUvY9kWhY42iJzrrq4XzvEzfzcxX1gwTWwdpZLwD33Skh5Luyxw=
X-Received: by 2002:a2e:b8c2:0:b0:336:74c6:37b with SMTP id
 38308e7fff4ca-33674c6093amr12502961fa.22.1756134648253; Mon, 25 Aug 2025
 08:10:48 -0700 (PDT)
MIME-Version: 1.0
References: <H5JU1DqQyYvENmiLQEq2fnPJ6nxUJaQ4SDcDYD4ds0@lists.ettus.com>
In-Reply-To: <H5JU1DqQyYvENmiLQEq2fnPJ6nxUJaQ4SDcDYD4ds0@lists.ettus.com>
From: Jons <jonsdeburn@gmail.com>
Date: Mon, 25 Aug 2025 17:10:35 +0200
X-Gm-Features: Ac12FXwpnIqigsmZ9o2uSNs7pGEUm6kMCbUANDNyd-YHRdAhk5wjaoa79SpU-vU
Message-ID: <CAB-=5jYFVOLJp_JJ6Lybaq+CWUZ9Jr+L-wt58tzX78w2y3kV2w@mail.gmail.com>
To: niels.steffen.garibaldi@emerson.com, usrp-users@lists.ettus.com
Message-ID-Hash: 6JD2XTJYGLJP3JEKGZUHHS6XERSEYKJD
X-Message-ID-Hash: 6JD2XTJYGLJP3JEKGZUHHS6XERSEYKJD
X-MailFrom: jonsdeburn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tlast in the CHDR packet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6JD2XTJYGLJP3JEKGZUHHS6XERSEYKJD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0432369387340935048=="

--===============0432369387340935048==
Content-Type: multipart/alternative; boundary="000000000000e31243063d31f5fe"

--000000000000e31243063d31f5fe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Niels,
Yes you are right, that was my requirement. Thank you for the clarification
:)

-J

On Mon, 25 Aug 2025 at 14:02, niels.steffen.garibaldi--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Jons,
>
> I was assuming you were using sc16 (16bit I and 16 bit Q, therefore 32bit=
s
> for a single sample) as that is what the large majority of users use.
>
> (See https://files.ettus.com/manual/page_stream.html#stream_datatypes) On
> the host you can have =E2=80=9Clarger=E2=80=9D data types but the streame=
rs usually
> translate it to something that the FPGA can understand. I am suspecting
> that this is the conversion you found in the tx streamer host code.
>
> SC16 is both supported on host and FPGA so that is what almost everyone
> uses unless you have very specific requirements.
>
> This means samples are 32 bits each on the fpga, and with your CHDR_W of
> 128, you get 4 samples per clock cycle, therefore you will receive your
> full 32 samples payload in 8 clock cycles(plus at least one for the
> prepended header) of the `chdr_clk`.
> Of course this is the ideal scenario. In reality, this could of course be
> more clock cycles depending on the AXI-stream tvalid and tready signals o=
f
> your block interfaces, of course.
>
> Regards,
> Niels
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e31243063d31f5fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Niels,</div><div>Yes you are right, that was my re=
quirement. Thank you for the clarification :)</div><div><br></div><div>-J</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, 25 Aug 2025 at 14:02, niels.steffen.garibaldi--- via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><p>Hi Jons,<br><br>I was assuming you were using sc16 (=
16bit I and 16 bit Q, therefore 32bits for a single sample) as that is what=
 the large majority of users use.<br><br>(See <a href=3D"https://files.ettu=
s.com/manual/page_stream.html#stream_datatypes" target=3D"_blank">https://f=
iles.ettus.com/manual/page_stream.html#stream_datatypes</a>) On the host yo=
u can have =E2=80=9Clarger=E2=80=9D data types but the streamers usually tr=
anslate it to something that the FPGA can understand. I am suspecting that =
this is the conversion you found in the tx streamer host code.<br><br>SC16 =
is both supported on host and FPGA so that is what almost everyone uses unl=
ess you have very specific requirements.</p><p>This means samples are 32 bi=
ts each on the fpga, and with your CHDR_W of 128,  you get 4 samples per cl=
ock cycle, therefore you will receive your  full 32 samples payload in 8 cl=
ock cycles(plus at least one for the prepended header) of the `chdr_clk`.<b=
r>Of course this is the ideal scenario. In reality, this could of course be=
 more clock cycles depending on the AXI-stream tvalid and tready signals of=
 your block interfaces, of course.</p><p>Regards,<br>Niels</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e31243063d31f5fe--

--===============0432369387340935048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0432369387340935048==--
