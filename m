Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 286BC9176CA
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jun 2024 05:30:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1316385488
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 23:30:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719372633; bh=TOOL5/Dg445TK8XSgxchQuWbb+2r8Mzskb+OzCqiEFw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=t4aUfFfXYt8zeMu7k6bNoxQXYF+Avle5qGmdukIqkPhIY0wuJztZRztHHS+ImPo/S
	 gza8M+h/phVECOSIqcaU9OxkdIPX6GtUKeRkTH92E3uduUZ1DLHO+NqSG4qcukdKl3
	 gEZ82P0XbmZzBKiL/QovglyKFwExXKXJlNtq4crrUp2Daw8984dmhfFxJkGdqW6URM
	 koFHILSbmM/wylGAoZCKpeJjvrE2NZmV/9hNPdhEo5iwMAgk3cN0otAwoE3o2OESlF
	 VKZZNC70XeEXFuM0CK6HFV2ZAOWN10RxhCW3SgH95t74OBmTZOBesbWRgTKbB3lnup
	 EvyOxY3xDgw9Q==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D31D3853DE
	for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 23:30:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="UqRVs5Xt";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a727d9dd367so140134866b.3
        for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 20:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719372606; x=1719977406; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nGh8B53LDl7i8iZLy+lKrP/q7a7b9DNh6Z+IgHVsc3M=;
        b=UqRVs5XtduoS/w8Dy+1we1gi7MDFiuCKKXq8fpXl198T4rkS9epCfYOqsjdyoYrqTN
         Roc8JAbIkl3kLDc0C8JOk6OlSKla8hOb/LkMQ52hDXkwcVP1KxyoLQ6KN4AmpWRQHEoJ
         Z6Yy+FVvb3e3+pW5yKo/g0S4KfgMAqH52JloMlfeP0R1hntP5+d46iRELFSTIX5ow4Bh
         uqKpl6uGY8THF5zdiZe64yWYW8Sf4xpN/azRVgYtAej+40+IXU1h9KJjzsYvvPXmwzov
         I59Kpnv8kFw1K3xfMAAE7Avi8RWN5RFZQq4/K/jdPyx+TmGGDwhNfEfStU1/lbyCEhyn
         jaEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719372606; x=1719977406;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nGh8B53LDl7i8iZLy+lKrP/q7a7b9DNh6Z+IgHVsc3M=;
        b=pXMQoZgKdkJ4FIOOtJPozQfQjrXzvi5oqPVsllcTk1shVrEU6clxL16wB8nm/2UYfJ
         e1TBIqKbNGIUSZZPuXhCNbwscIwh6eNUJay0t5/r/w7LcnWuMDnPT2mxx4kk6EpReMPa
         YgsykyKlPymQ6G/VpuVj/59KQfaafu38S7Ao5TXItsgV+h/GcPUz3m75RuUVeXJBHl8V
         05bl+Fxl6e07B/x+FBYpvN+EJBLPECYb0kdKFhhs3yfMMVumI7TfOOx3e1ggyKahN8j6
         WNCAvtysILVdXlA9CTve4UDVlRl73wdmaQThOlhdKu1IvV6+INnV+5XdItdiB0g6+/rA
         yrGA==
X-Gm-Message-State: AOJu0YxxFUkP09//JvQzg3UJtEjmLv2ufpHXuZoip/5llD4i4dcJrgWX
	IiiN6JL0MEMR2gnVNicDpTbxl0G5INypDuL7W0059IQwBM4qItLdreyxgG7Xwx4UA6vKIwYYeyi
	MNi26qwv3dBl2f6YZk+AAnrX47I4ZC0mWRLk6kWmF
X-Google-Smtp-Source: AGHT+IFWLreeQwI/z9fzOiIwWXUnvHbADmbYpBhhBCJY+a91EHmSKQnrBDJQkYQKxqlD8rzDd9oOCd+FTvs276inmEg=
X-Received: by 2002:a17:906:e0c4:b0:a6f:96b0:ed2 with SMTP id
 a640c23a62f3a-a7242c39c5fmr733156066b.30.1719372605613; Tue, 25 Jun 2024
 20:30:05 -0700 (PDT)
MIME-Version: 1.0
References: <SA1PR09MB92757320D99AD9548CA581F092D52@SA1PR09MB9275.namprd09.prod.outlook.com>
In-Reply-To: <SA1PR09MB92757320D99AD9548CA581F092D52@SA1PR09MB9275.namprd09.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 25 Jun 2024 22:29:49 -0500
Message-ID: <CAFche=ib+X7FzNZjJGNMfimWzmbTfXh_GOhPuuneMvzv6OA0ig@mail.gmail.com>
To: "Rohde, Zach (US 333G)" <zachary.s.rohde@jpl.nasa.gov>
Message-ID-Hash: 3CCNMA6TKYHHHDOPCQKHJWPRC53EUVWY
X-Message-ID-Hash: 3CCNMA6TKYHHHDOPCQKHJWPRC53EUVWY
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus KB: Missing CE clocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3CCNMA6TKYHHHDOPCQKHJWPRC53EUVWY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1114241483297624550=="

--===============1114241483297624550==
Content-Type: multipart/alternative; boundary="000000000000650320061bc2a114"

--000000000000650320061bc2a114
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for pointing that out! I'll make sure that gets updated.

Thanks,

Wade

On Tue, Jun 25, 2024 at 12:52=E2=80=AFPM Rohde, Zach (US 333G) via USRP-use=
rs <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I noticed in the RFNoC Frequency Asked Questions
> <https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_are_the_clock=
_frequencies.3F>
> article, that the N300/N310, N32X, X410, and X440 clock tables do not
> contain the CE clocks that are present in these radios.
>
>
>
> N300/N310 CE: 266.66667 MHz (from n3xx_clocking.v)
>
> N32x CE: 266.66667 MHz (from n3xx_clocking.v)
>
> X410 CE: 266.66667 MHz (from x4xx.v)
>
> X440 CE: 266.66667 MHz (from x4xx.v)
>
>
>
> -Zach
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000650320061bc2a114
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for pointing that out! I&#39;ll make sure that=
 gets updated.</div><div><br></div><div>Thanks,</div><div><br></div><div>Wa=
de<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, Jun 25, 2024 at 12:52=E2=80=AFPM Rohde, Zach (US 333G) =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div class=3D"msg-2512331470509129196">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-2512331470509129196WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I noticed in the <a href=3D"https://kb.ettus.com/RFN=
oC_Frequently_Asked_Questions#What_are_the_clock_frequencies.3F" target=3D"=
_blank">
RFNoC Frequency Asked Questions</a> article, that the N300/N310, N32X, X410=
, and X440 clock tables do not contain the CE clocks that are present in th=
ese radios.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">N300/N310 CE: 266.66667 MHz (from n3xx_clocking.v)<u=
></u><u></u></p>
<p class=3D"MsoNormal">N32x CE: 266.66667 MHz (from n3xx_clocking.v)<u></u>=
<u></u></p>
<p class=3D"MsoNormal">X410 CE: 266.66667 MHz (from x4xx.v)<u></u><u></u></=
p>
<p class=3D"MsoNormal">X440 CE: 266.66667 MHz (from x4xx.v)<u></u><u></u></=
p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">-Zach<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000650320061bc2a114--

--===============1114241483297624550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1114241483297624550==--
