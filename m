Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F13AEA70C
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jun 2025 21:42:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 675CE385BBC
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jun 2025 15:42:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750966951; bh=emoXjjukZJZiL/9TW/PH3+/nnOPop9sucbzKXdCtNSU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sOsBkN/8XPB9YxP/Fq1abKt192nwM7oqeY+2XnRLZ4RJZoOw1vxrRZRSxFXx/atjo
	 ZWOah9C31GVPsX8C10bzLT4eCX2vBVwnFrC7IrvVxYHuesHz0EPSIqPqPVGAAS7OpA
	 N/Cxrtshp8kbNZBulfwr/p0ldis6xPdnAjtk2CeouMl3PQMIx/Mqj7pR3syPkJ8z22
	 Ka73PjWY7uzH8sOWGjnMPhlyFz1P4vQdkh0T9w/lE5fd26TB4x87DwTpSXRmm/HaPO
	 BhA5nXlE9rrL8i4cZSee9xTrPr08HULxVZwIgEjJzAe92l1NP70omP+/0xA8Oscahi
	 mwuD2uqMW5zBA==
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 88976385BBC
	for <usrp-users@lists.ettus.com>; Thu, 26 Jun 2025 15:41:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="appoScWU";
	dkim-atps=neutral
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-70e302191a3so13813657b3.2
        for <usrp-users@lists.ettus.com>; Thu, 26 Jun 2025 12:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1750966892; x=1751571692; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=03oJiCJ5FDi1BA3HbPFfV/P9FYntjSD4XExVM1hbLjk=;
        b=appoScWUUmt1NNjEp5ARfBC2/91m/7moY27PPQc9LbMr7xupf3W60BmHDBcQcT0XAl
         KoLclAf7pV3j4CDuzpgS9mKkDM67g4X2sWaVMQxp2aaRVoOOMYFjZKdHSEEu0jPJucyT
         hGcB99dNwb0oB5IF5mN9ki3Y63nWy+ikWH7cd7eKBI2oZeBHQ1/dh4atoHk7heaPQEru
         raoHUh46DZIBfLrS7Bx9TVwSxI9Pq8iYNjce2Fq+BXEjhoxs2Yr9pX9bAGBKiq/y8Qo0
         B6eRlxsKjOii9HF458WbSG//BltoTvCyWE0Sf0GYtR24I7GkOWDWNZIQrK8SDDIzcfFN
         MY1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750966892; x=1751571692;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=03oJiCJ5FDi1BA3HbPFfV/P9FYntjSD4XExVM1hbLjk=;
        b=Z4nfBC7CMi0oIbL3cFAHCbAxnUxFAbfQ4O89DQBJskPBSN02m1M8qRtYn0vkHS/Gzz
         mUcP7AqD3ZVyhtaqk/groZtd2tfoRrwfFMjqFxSzIv1q2ThgQcV4Uq2a7kNKnCTfwKvH
         fBRRfSLs/KWYE/XXuz4PEwnxV2e3/PJHcJwm7bwuxbDnSIXVFwrERZoE8hes2b9BVXW6
         6EsS1VD4Mi6B9Sk95e6HHiqSqckizzS1iuonN6r5u57QFLgyIw2ixaYbr+UywEAZzMk5
         g3/X3f157qbSgVJpkSLu+NR/QGumsRZ1F+Id3LzD3/kSxWpEwVEzDYS6RX6KutRgc1zJ
         KjTw==
X-Gm-Message-State: AOJu0YxAwzG/tAYlndAXPtfBmQ7zJev1/e0ktMUnXJB01D2n2vhShi0X
	KY5bBVThR/gFYgd+jffD3NUCa6bPp7+6A6xikeQc161g9IzCB6jU0B/ODZdw7OpJvLW4h0DWK7N
	uIg+bZ/uzx0WrJMYsrDOy/dlqoypXUajzSzFLRJwonOswIgss55cSXoObCQ==
X-Gm-Gg: ASbGnctj/3uRlUxkAojigQJLuFVxmqqP7Weqld7cCnikQp2ejgftiqmmIc3J+epkv5V
	SPGVz/JwCndPuzS/Ol/ryu2sv+FQ2cn0SZKWEjUeqFME9gGH+YOWhjEY9mm3w4UpVDVMor7GfVG
	sAMJFp6xSBEC2G5sbUrNK31CAol6olLMBkPsxWjSLK
X-Google-Smtp-Source: AGHT+IF9BsDjX2/9R/H0jtw0ZKu+WoOqsfKI/UBjK/ShW1rHPcp2YK/kCo7U9DvRF/KrjEy3YwBRYSEDujKK0P/IlYI=
X-Received: by 2002:a05:690c:9683:b0:70d:f237:6a6a with SMTP id
 00721157ae682-7151714ebfamr10273307b3.11.1750966891840; Thu, 26 Jun 2025
 12:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQB0JjEKNk0=SFDREonEeCVavhWpUR_-hcwy0-adDv8Cg@mail.gmail.com>
In-Reply-To: <CAB__hTQB0JjEKNk0=SFDREonEeCVavhWpUR_-hcwy0-adDv8Cg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 26 Jun 2025 14:41:15 -0500
X-Gm-Features: Ac12FXy_Qx9Gao5LY7a0giM2TZ5F0H-4En85OIQJ8JJ1dmezhhPsaluorPncM_Q
Message-ID: <CAFche=gdLTvuw1RpWzDDRyN=AvW=hDAKtcSMcxCNbFeB0o_MaQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: KDGDXOFOMLZXDDU2JCLFWZKWPTAETEOI
X-Message-ID-Hash: KDGDXOFOMLZXDDU2JCLFWZKWPTAETEOI
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 SPI clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KDGDXOFOMLZXDDU2JCLFWZKWPTAETEOI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1649579397198931350=="

--===============1649579397198931350==
Content-Type: multipart/alternative; boundary="0000000000009a14c906387ebf7a"

--0000000000009a14c906387ebf7a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

I believe the underlying code that implements this is here:

https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7=
704cbd5/fpga/usrp3/lib/control/simple_spi_core.v#L182

It looks like the clock is inverted every divider+1 cycles, meaning
divider+1 is half the SPI clock period, not the full period. If so, the
frequency of the SPI clock would actually be (Radio_Clk / (divider + 1)) /
2.

That seems to agree with what you're seeing? Just to confirm, can you share
the URL for the documentation with this equation?

Wade



On Wed, Jun 25, 2025 at 4:25=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> The equation in the UHD manual for the X410 SPI clock rate is:
>   SPI_clk =3D Radio_clk / (divider + 1)
> However, I'm seeing half of that rate if I use the function:
>   Radio_clk =3D usrp->get_radio_control()->get_rate();
> Note that this returns the sample rate.  I'm wondering if maybe the radio
> clock rate is half of the sample rate because it processes multiple sampl=
es
> per clock cycle.
>
> So, basically, my question is: what function or functions should I call t=
o
> determine the Radio clock rate needed for the equation above? Or is the
> equation wrong?
>
> Thanks.
> Rob
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009a14c906387ebf7a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>I believe the underl=
ying code that implements this is here:</div><div><br></div><div><a href=3D=
"https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb=
7704cbd5/fpga/usrp3/lib/control/simple_spi_core.v#L182">https://github.com/=
EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5/fpga/usrp3/=
lib/control/simple_spi_core.v#L182</a></div><div><br></div><div>It looks li=
ke the clock is inverted every divider+1 cycles, meaning divider+1 is half =
the SPI clock period,=C2=A0not the full period. If so, the frequency of the=
 SPI clock would actually be=C2=A0(Radio_Clk / (divider=C2=A0+ 1)) / 2.</di=
v><div><br></div><div>That seems to agree with what you&#39;re seeing? Just=
 to confirm, can you share the URL for the documentation with this equation=
?</div><div><br></div><div>Wade</div><div><br></div><div><br></div></div><b=
r><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jun 25, 2025 at 4:25=E2=80=AFPM Rob Kossler via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi,<br><div>The equation in the UHD manual for =
the X410 SPI clock rate is:</div><div>=C2=A0 SPI_clk =3D Radio_clk / (divid=
er=C2=A0+ 1)</div><div>However, I&#39;m seeing half of that rate if I use t=
he function:</div><div>=C2=A0 Radio_clk =3D usrp-&gt;get_radio_control()-&g=
t;get_rate();</div><div>Note that this returns the sample rate.=C2=A0 I&#39=
;m wondering if maybe the radio clock rate is half of the sample rate becau=
se it processes multiple samples per clock cycle.=C2=A0</div><div><br></div=
><div>So, basically, my question is: what function or functions should I ca=
ll to determine the Radio clock rate needed for the equation above? Or is t=
he equation wrong?</div><div><br></div><div>Thanks.</div><div>Rob</div><div=
><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009a14c906387ebf7a--

--===============1649579397198931350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1649579397198931350==--
