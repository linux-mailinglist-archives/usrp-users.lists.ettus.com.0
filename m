Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4191A9BB72E
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2024 15:08:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F00C6385BB9
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2024 09:08:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730729280; bh=y7W/ccpmHw4aikmElqBdnFP+teuZBekID1lh+S8EGXg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=r0nbFWP28Fkjy41WIDDnyzQpzqMZc1AKDJ+YM8W0+h7tQe9ZXOsXiKZMLsdwjE/JX
	 wLATvcpBs1r8nA+kcnDQwPlz5e8BqusSVRFp6z01n5vIa5gcl7g4NJHUxZDvknBsk6
	 qUw6tvzmz4XoVEiScij1fLuuntpyMkX/lqW96eVrG8bYbyh/SmrazInd8IXJfVRUFC
	 V7yAumX8uBZqKbNEJjTwXXrKc9hKqeKB04qB1+AxRLqe/PAVl5DTDxseQhiMHlurxd
	 8jYttzgV6Q66s1vKmlPICgdiaM51ZtBb9Y7944YYjg6GuMp1Jx80ac2lwKUyv62nM6
	 PGJUcFwaKBtuA==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id A965F385A76
	for <usrp-users@lists.ettus.com>; Mon,  4 Nov 2024 09:07:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Dubh/Pds";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5c9693dc739so5692751a12.3
        for <usrp-users@lists.ettus.com>; Mon, 04 Nov 2024 06:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1730729229; x=1731334029; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ncy4+QSIZuGYG8yR2x9i6DQCmzA4zO4J6pK4/3DxVBA=;
        b=Dubh/PdsyX94G2jE/OdYPNu8lLKzD2u6FlUPnCWawKq3nUrUWSY8u3TmRY4ZsiNJgE
         yqBguYKLT1C6W9vBClYx7Dhre+tWqXAvyYDntO3YF3uA/Y7gNOmLFBAalY0T10ioqzko
         Qfy+DyvU8gkfiZOqkCHtWD1pIu/u+uZ0NY9bEC5ptIh2fLvriH5/4+HHWvW/FCzsPhAC
         wli6udNYsYPDl3i8JX+ppxDOYa1lnfpvufqp+S+MjWM9bbIk2wyzv3kRIW7Hf8zfznqT
         0ARQq2jK/zHNAWxA/tTzEs/FKZNKhJOxiGUAit3lVkhyJjRm3Zg2hP2xdwBKloGA9uqm
         Uvtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730729229; x=1731334029;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ncy4+QSIZuGYG8yR2x9i6DQCmzA4zO4J6pK4/3DxVBA=;
        b=acp6WK8S3DZUEsWn+CcCjw4+0uaxjZRAOKtJgE+16w/zjzKyET0jV+baz78a/7Kkhd
         jBpps/BkZbwOPiKfyJsOAN5+WKfPTpf3WaD0y2ZrcV8h++ZRwHE01eK44+iEtj8dmKDA
         6apG3nAAYuVRHiN3S4DUEcOu770Elyho3U1Mc9y0JlUNRfBD33aKbfUn01yywoirakm9
         K/5D+/k3l6S6XdaQEag27Qht4Km9iJ+PY7XC0cRJ1ofLdY4rv8BaZP5mSIWLaYSCmyCP
         Ac+mMr1eN7A+0TZyLVmm3OvslaA0ha8+l9BiABj96Ljvsi6nnm8XOsSwQeQeprCn16W0
         BkMw==
X-Gm-Message-State: AOJu0YytEEuMGgInOUVWzYyrIy8zaFQIgErR9YW807t3Kx6hpn4j8bH/
	hTpnlGF4P8eiJEet1Kth1vUbg+u3CHQpTR3c8jRwg6t4ky54/hwPzF4lcriTcdrYNC4EgFYTDHk
	S/QfYm1JCyi9EUJMiV+kUzGo+rq1OGJEfieA7u4ErNFB450mTPW9Pnw==
X-Google-Smtp-Source: AGHT+IHRpqHRmydFT0ysFBNlw74fQkorG9pHxtVu+lRhoTeFQxjIumx5fWCHkiLYmC7vT+fQz3BXYpty830yyEFJC5w=
X-Received: by 2002:a05:6402:27d0:b0:5ce:df62:2440 with SMTP id
 4fb4d7f45d1cf-5cedf62255cmr878660a12.9.1730729228598; Mon, 04 Nov 2024
 06:07:08 -0800 (PST)
MIME-Version: 1.0
References: <Xeb70F6eCoVmjGisgKh38vr1lyaNzk0lWiL5tH70zQ0@lists.ettus.com>
In-Reply-To: <Xeb70F6eCoVmjGisgKh38vr1lyaNzk0lWiL5tH70zQ0@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 4 Nov 2024 15:06:56 +0100
Message-ID: <CAFOi1A7Czo1gJqYCzHAiwvSqB+_=B=2xYfWVutZi82=PvKMDag@mail.gmail.com>
To: c1337rogers@gmail.com
Message-ID-Hash: HMPWEU4UEPY4U54OFLERSC66YJ6ALBHH
X-Message-ID-Hash: HMPWEU4UEPY4U54OFLERSC66YJ6ALBHH
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 - RfnocError: OpTimeout: Control operation timed out waiting for ACK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMPWEU4UEPY4U54OFLERSC66YJ6ALBHH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6049245067832110839=="

--===============6049245067832110839==
Content-Type: multipart/alternative; boundary="000000000000df9fa6062616ccd4"

--000000000000df9fa6062616ccd4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 31, 2024 at 3:25=E2=80=AFPM <c1337rogers@gmail.com> wrote:

> I didn=E2=80=99t quite resolve this, but I think I narrowed it down to so=
me bug
> when switching between DPDK and non-DPDK drivers... I also switched back =
to
> the default HG image for troubleshooting. After I bind the vfio-pci drive=
r,
> rebinding the i40e driver results in this error and I can=E2=80=99t reall=
y seem to
> fix it. However, re-rebinding the vfio-pci driver lets me run
> benchmark_rate with DPDK.
>
> Separate question: does DPDK constrain streaming applications to a single
> core per interface? I notice I=E2=80=99m now CPU bottlenecked when runnin=
g
> benchmark_rate and just a single core is running at 100%, which I
> definitely don=E2=80=99t remember ever being the case without DPDK. I tri=
ed adding
> additional cores in the uhd.conf file but this resulted in errors.
>

Yes, it does. We've thought about making it one core per streamer, but
haven't prioritized this so far.

--M

--000000000000df9fa6062616ccd4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 31, 2024 at 3:25=E2=80=AF=
PM &lt;<a href=3D"mailto:c1337rogers@gmail.com">c1337rogers@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I d=
idn=E2=80=99t quite resolve this, but I think I narrowed it down to some bu=
g when switching between DPDK and non-DPDK drivers... I also switched back =
to the default HG image for troubleshooting. After I bind the vfio-pci driv=
er, rebinding the i40e driver results in this error and I can=E2=80=99t rea=
lly seem to fix it. However, re-rebinding the vfio-pci driver lets me run b=
enchmark_rate with DPDK.</p><p>Separate question: does DPDK constrain strea=
ming applications to a single core per interface? I notice I=E2=80=99m now =
CPU bottlenecked when running benchmark_rate and just a single core is runn=
ing at 100%, which I definitely don=E2=80=99t remember ever being the case =
without DPDK. I tried adding additional cores in the uhd.conf file but this=
 resulted in errors.</p></blockquote><div><br></div>Yes, it does. We&#39;ve=
 thought about making it one core per streamer, but haven&#39;t prioritized=
 this so far.</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail=
_quote">--M<br></div></div>

--000000000000df9fa6062616ccd4--

--===============6049245067832110839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6049245067832110839==--
