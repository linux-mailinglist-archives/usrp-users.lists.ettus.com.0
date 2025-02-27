Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B23CA48155
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2025 15:32:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 384FF385F7D
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2025 09:32:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740666772; bh=8wxImDudd0TKHKMxbcenSRfkpvkauNdcQ8MZA0C2Nz0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=qUCBtH7kKsVP71QYhyJr7BfPtoJKQmM8k1BYTfcD9M9gsU2Ri026OI7efkA9CaGmb
	 qxX/9e3UepCQDiu2xFLLTW5ZavtVRwyWA1NgI8bb/OrYq4LheVfbuPHQ7SmArzQNIb
	 RR7Mws6GB6FUo+pYAOo6PTQ71rEgYlqG8ni6dd/Dph/JuGUHaOiD2zTFMtXMwJMrcv
	 ey9K53HBGWb1+H+pquK80U8nY6tdBf2JMrkbjnuGZRr9z7L6ir2IWIWvXsEqpf7byi
	 vmB6rN3LgKjMp+lLUdlbVaOSu4r5a1w47/QnLyF2eL6Zdm388/bsskbDjRjsic6cTE
	 x2XoNGNoSHmcA==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id C4D73385E61
	for <usrp-users@lists.ettus.com>; Thu, 27 Feb 2025 09:31:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="IdN0aBYI";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5dec817f453so1404059a12.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Feb 2025 06:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1740666716; x=1741271516; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=h0AcnVRLGysrXy8AzuxYQYCGF4gBPpEXZGIVsHyueAQ=;
        b=IdN0aBYITqbxtiTLUWemuaycWhoa9MpM2RDHzrqNoYk/bwoWk75wvg3THtYMhSHesd
         2NG4PzTT6ydqxGFMziRYg8Zt76axEtMPlKTJr5Ixn0j4q7IgPiUnvAbTh9TA6doL2gg8
         combktCmjUDtOJnNn6D+3kLDlmwPKhBkV2Ek0pHKQvZhnwY6C1dLwEvEYAuseX9Ni3qI
         d8ImDdZsRPBzErZmaZ6Y+1m9iN+igjE6Tsy1UUZPJU0ZgotUxpRJrBBzeUNzD22NnqZZ
         CXKVM+JYP9Xez3udpk24kSRvA++fgE+STI8dFpms1sFYN69pwQxSQe/lFyN/lTCTKsnX
         prvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740666716; x=1741271516;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h0AcnVRLGysrXy8AzuxYQYCGF4gBPpEXZGIVsHyueAQ=;
        b=KdCrf/DFClWflC+d03MsIL/hn40skyAeqK8xh19X/nK3EOe+mhJ+zzPrziWn06j+yR
         l6TFfd3E/X+S65RmoymM1XoFq5N53VT7fwMYpffWkLHOlMl05l5D5IZMjrpyvhYYdO2h
         4zp9wfbIKVG3saxTpsi10J4dh9qExcdde8ehzqtMUa/dX7mZC6LWCgqxjKsWtDYoVrer
         wXtAbIsKOzoewFeN0RwqFfEOc1jUshYzgc+QgXj+Yc/spz5hIirVYfR20f0DkvolKY9r
         rEPmONs6OsTzBgp81ZcvR5noWHcObejgXpHTc/J/cx6Gtb/f0YVeJqY32Q5lfVFUmNw0
         1oNQ==
X-Gm-Message-State: AOJu0Ywvs+R194ppq83prOudsOrShV3IH5osXsjuGaBSjS6LYkm1Le8b
	M8OfK4hX5Y3uc5lmWEGDMVwkqKfGMMmEwLzIP8CwPF3oKy1zJRZXJPxSs0hTsyxSXMtMKZrhguD
	3YBMRukBTQtvaiHpehdwlWcZzTGh0kV1X+m94D+mu1B35C2s=
X-Gm-Gg: ASbGncvwEYMxNu1hCr9RYduaqTxemeDRnMLyHsq2ODuQHztetgjqWP8bBkZOY4RTsF6
	VS7HXZ4O484CRvh1ccWuNEPJoOYXtRR6SyG60sN9REkvpCIVXIy1qz5gTD8VCEjeQuz/N4qicOy
	GzbOOVRRE=
X-Google-Smtp-Source: AGHT+IHpf4SGuvPbTQV/qK5+6W14slhHmU7HIn7buxZAjpdPisMQrm/H84qsHWD1JG0PTPuDi6c1Pz6uYmUxuvupesk=
X-Received: by 2002:a05:6402:401a:b0:5e0:82a0:50dc with SMTP id
 4fb4d7f45d1cf-5e4a0e1aea9mr11239863a12.28.1740666716501; Thu, 27 Feb 2025
 06:31:56 -0800 (PST)
MIME-Version: 1.0
References: <Kp022C4qnJHvbCBmnUrUWW3YmFZrg8vF4YRu5RuT7zA@lists.ettus.com>
In-Reply-To: <Kp022C4qnJHvbCBmnUrUWW3YmFZrg8vF4YRu5RuT7zA@lists.ettus.com>
Date: Thu, 27 Feb 2025 09:31:45 -0500
X-Gm-Features: AQ5f1JqiYhInSfqKTkGPdm0j_9VHIWGPT2uLCywYyC7rPAG5ovRHo_C3iHfvh-E
Message-ID: <CAB__hTSqA8=aVHp7eLY9fs1t+Wwh9usspxFrNSFn9fnWTQ9fGQ@mail.gmail.com>
To: michalgorny01@gmail.com
Message-ID-Hash: GG4S4ECJCNB3KVW2KKMUG3ITHYHQS3UU
X-Message-ID-Hash: GG4S4ECJCNB3KVW2KKMUG3ITHYHQS3UU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: strange behavior related to gain
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GG4S4ECJCNB3KVW2KKMUG3ITHYHQS3UU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1551761719977045821=="

--===============1551761719977045821==
Content-Type: multipart/alternative; boundary="0000000000004f5b0c062f208dbf"

--0000000000004f5b0c062f208dbf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you are using timed commands and if you can verify that the tx-to-rx
synchronization is consistent every time, perhaps you could measure the
leakage signal (with attenuators connected to the RF ports) and then simply
subtract this signal from your over-the-air measurements.  This method of
leakage cancellation can change over time as the device heats up so you may
need to periodically perform this calibration.
Rob

On Thu, Feb 27, 2025 at 9:02=E2=80=AFAM <michalgorny01@gmail.com> wrote:

> Hello,
>
> I am working with a USRP E320. my main goal is to try to create a
> two-channel FMCW radar. I have noticed a significant leakage of the
> transmitted signal in the receive channel. the only gain level that does
> not cause leakage is about 20 (the allowed max is 80) while it is
> insufficient to register a reflection in my configuration. Is there any w=
ay
> to mitigate this leakage?
>
> double gainTX  =3D 20;
>
> double gainRX  =3D 20;
>
> radio_ctrl->set_rx_gain(gainRX, radio_chanRX);
>
> radio_ctrl->set_tx_gain(gainTX, radio_chanTX);
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004f5b0c062f208dbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you are using timed commands and if you can verify that=
 the tx-to-rx synchronization is consistent every time, perhaps you could m=
easure the leakage signal (with attenuators connected to the RF ports) and =
then simply subtract this signal from your over-the-air measurements.=C2=A0=
 This method of leakage cancellation can change over time as the device hea=
ts up so you may need to periodically perform this calibration.<div>Rob</di=
v></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Feb 27, 2025 at 9:02=E2=80=AFAM &lt;<a href=
=3D"mailto:michalgorny01@gmail.com">michalgorny01@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello,</p><p>=
I am working with a USRP E320. my main goal is to try to create a two-chann=
el FMCW radar. I have noticed a significant leakage of the transmitted sign=
al in the receive channel. the only gain level that does not cause leakage =
is about 20 (the allowed max is 80) while it is insufficient to register a =
reflection in my configuration. Is there any way to mitigate this leakage?<=
/p><p>double gainTX =C2=A0=3D 20; =C2=A0 =C2=A0 </p><p>double gainRX =C2=A0=
=3D 20; =C2=A0 =C2=A0</p><p>radio_ctrl-&gt;set_rx_gain(gainRX, radio_chanRX=
);</p><p>radio_ctrl-&gt;set_tx_gain(gainTX, radio_chanTX); </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004f5b0c062f208dbf--

--===============1551761719977045821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1551761719977045821==--
