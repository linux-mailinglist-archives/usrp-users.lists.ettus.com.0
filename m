Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F61A6FDC97
	for <lists+usrp-users@lfdr.de>; Wed, 10 May 2023 13:23:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4787384618
	for <lists+usrp-users@lfdr.de>; Wed, 10 May 2023 07:23:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683717798; bh=LZZdBpUZELmT4HII/GP5qc3b0dPrP/9GjN5SzNZ9fM4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=g4OxyfI/o5y/GYQKCHoyeCsGRjETL1yK7TwTQijhtQB29y3u8U4TkrhRqnt8OHBxP
	 c7wyMKSWJ3UkrFSUxvUuWwR9DDMEIxi+fLSpv9O/LC4h6YqQfPXDOobsh/wyAFnDgF
	 q0/aZnq+v1AQ/OqSSlZOABEkl3I4f5wyp/g8QOdJAEXvGSNJUpvk6DOTAzt3OBbpMh
	 6kNAQCzm9Lv1JrK94pn0JhQMUFIDlNP6QZLZ+21iNc7FZLFcXiVxXm7oxAAOWS6WPk
	 ewfePNeAqIuJakphM0hT+jHQ+WGjkJsf99NtL1CRimdbgBVUwo5fNem6x9ECZCQ7Hl
	 uCzIlT2lqcJDQ==
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 456E5384579
	for <usrp-users@lists.ettus.com>; Wed, 10 May 2023 07:22:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l11mZfxS";
	dkim-atps=neutral
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-38e692c0918so3560706b6e.1
        for <usrp-users@lists.ettus.com>; Wed, 10 May 2023 04:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683717775; x=1686309775;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XnvoLlgzbATft8HtxQYK/EnSDvV4BBSeDjmlA12fUmE=;
        b=l11mZfxSQJU3eEiiyVD9ny83KNuXtZsyWsNOrGF5GsAkFbTvVQ7geGOO/S5wp0x0X3
         c5Cj5dkjFkBC4dJa+M84DStk88qxyD8fgFD9J+Ocdc7ZduYSOddtmPbQLAUiX+snqiEt
         XDR+LOClrb/62orluj6v+3nsmp+jm8UD5f8znclQGUZC0EQquYZicBeDIFekjdFKFy9E
         Nqrcxl5P7bpqbSPxCizsiiUfWnvhntB+wSuSg1ygKpeubtn10Pqyhkq2uU8RUYAkUro6
         WG92uXmjTBXBJ3pIxuVm4PHsGLO7ES6CyZdKA8yY1VaKF8OXkadiPTpOapHoH5+3JHhD
         AlUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683717775; x=1686309775;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XnvoLlgzbATft8HtxQYK/EnSDvV4BBSeDjmlA12fUmE=;
        b=W0QEQxx9JdHpy1WDmA8EVqhBvk8pBkuHcV3KK67HE8Ap3+cTZaxvU1RUQmQafg1E9C
         E8t5+sHAtI5o+6vR/5fRJJFQYplxmOLZI/KXzyUsbLXg96/RTgCm4NpxV9qLdgdLTwLD
         vu8URcPEjBXMGshW+XPmbhAKtrGTu5B6Gx6yeqITuQCziyTCdITsZltYOrQZG6FtIA2y
         8043LmMEPrHDDuD98EQBf4HdmpPFEzqd/NsVPo8VQAR2Rekm81fE0YIYTHpMZfbH18VN
         emGIrLQUJH3fxYLEhGaNjw51g7vhSaLkk68nWSBX92RsUycOdgHT3cX8cGfa8NXPAHUT
         DQpA==
X-Gm-Message-State: AC+VfDxLvqtmXY+h9NuKp65nei6dqPul+mtzGuImfLS0f7fOKfNv1JYD
	S1TuHNElD6FGYS+bCkRM/aS0D7fmcPPyC2ib1fM=
X-Google-Smtp-Source: ACHHUZ5DR4JagDY8IZx0T4L6M1sd7ywcOWNWMAolevSnId8yvuLoeQDUjYmMcN7vBfsmgMWv9W0o15SX48yF1UH+BI8=
X-Received: by 2002:a05:6808:10b:b0:38d:ee6e:235d with SMTP id
 b11-20020a056808010b00b0038dee6e235dmr2815318oie.22.1683717775307; Wed, 10
 May 2023 04:22:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAKacFEkkeKv68MSZqrVKPPzn5QLx4UL6zjDq0zBdn-1Wvz44hQ@mail.gmail.com>
 <756d6dca-4cd6-cb5e-9d91-24ff02607ba7@gmail.com>
In-Reply-To: <756d6dca-4cd6-cb5e-9d91-24ff02607ba7@gmail.com>
From: ali siddig <alisiddig12@gmail.com>
Date: Wed, 10 May 2023 15:22:44 +0400
Message-ID: <CAKacFEnipoiLP=1Lu9gN48z7Pb6uwjnsBffXF1zRMQx2dX5ZmA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: KA7H7BMSZJ6JRC7IOHJFCOKIA3H2QRGL
X-Message-ID-Hash: KA7H7BMSZJ6JRC7IOHJFCOKIA3H2QRGL
X-MailFrom: alisiddig12@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: time division duplexing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KA7H7BMSZJ6JRC7IOHJFCOKIA3H2QRGL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1770264097727636554=="

--===============1770264097727636554==
Content-Type: multipart/alternative; boundary="000000000000e637b405fb551776"

--000000000000e637b405fb551776
Content-Type: text/plain; charset="UTF-8"

Dear Marcus,
Thanks for the detailed response. Yes, using LO offset tuning shifted the
leakage as intended.

Best regards,
Ali Siddig


On Tue, May 9, 2023, 7:51 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 09/05/2023 05:20, ali siddig wrote:
> > Dear all,
> > I am trying to design time division duplexing (TDD) transmission on
> > USRP B200 mini and gnuradio 3.10.5.1 . To achieve that, I tried to use
> > the Full-duplex mode and stopping the inactive mode (Tx/Rx) by
> > multiplying with constant=0. But, still the carrier appears on the
> > spectrum analyzer. I have read some stuff about burst transmission and
> > the ability to enable/disable transmission using "tx_sob" and "tx_eob"
> > , but didn't succeed in stopping USRP transmission.
> > Any suggestions for TDD design other than Full-duplex mode?
> > or some more information about enable/disable transmission or burst
> > transmission?
> >
> > Best regards,
> > Ali Siddig
> >
> What you are seeing with "residual carrier when I'm not TXing" is the LO
> leakage of the mixer.   ALL mixers produce LO leakage
>     at some level--in superhet systems, this is arrange to fall outside
> the passband of the final filters.  In a direct-conversion
>     scheme (nearly ALL SDRs), this LO leakage appears right in the
> middle of your passband.
>
> You can use "offset tuning" to move the LO to your band edge where it
> may be less problematic:
>
> https://files.ettus.com/manual/page_general.html
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e637b405fb551776
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Dear Marcus,<div dir=3D"auto">Thanks for the detaile=
d response. Yes, using LO offset tuning shifted the leakage as intended.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">Best=C2=A0regards,</div><d=
iv dir=3D"auto">Ali Siddig=C2=A0</div><br><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, May 9, 2023, 7:51 PM Marcus D. =
Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 09/05/2023 05:2=
0, ali siddig wrote:<br>
&gt; Dear all,<br>
&gt; I am trying to design time division duplexing (TDD) transmission on <b=
r>
&gt; USRP B200 mini and gnuradio 3.10.5.1 . To achieve that, I tried to use=
 <br>
&gt; the Full-duplex mode and stopping the inactive mode (Tx/Rx) by <br>
&gt; multiplying with constant=3D0. But, still the carrier appears on the <=
br>
&gt; spectrum analyzer. I have read some stuff about burst transmission and=
 <br>
&gt; the ability to enable/disable transmission using &quot;tx_sob&quot; an=
d &quot;tx_eob&quot; <br>
&gt; , but didn&#39;t succeed in stopping USRP transmission.<br>
&gt; Any suggestions for TDD design other than Full-duplex mode?<br>
&gt; or some more information about enable/disable transmission or burst <b=
r>
&gt; transmission?<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Ali Siddig<br>
&gt;<br>
What you are seeing with &quot;residual carrier when I&#39;m not TXing&quot=
; is the LO <br>
leakage of the mixer.=C2=A0=C2=A0 ALL mixers produce LO leakage<br>
=C2=A0=C2=A0=C2=A0 at some level--in superhet systems, this is arrange to f=
all outside <br>
the passband of the final filters.=C2=A0 In a direct-conversion<br>
=C2=A0=C2=A0=C2=A0 scheme (nearly ALL SDRs), this LO leakage appears right =
in the <br>
middle of your passband.<br>
<br>
You can use &quot;offset tuning&quot; to move the LO to your band edge wher=
e it <br>
may be less problematic:<br>
<br>
<a href=3D"https://files.ettus.com/manual/page_general.html" rel=3D"norefer=
rer noreferrer" target=3D"_blank">https://files.ettus.com/manual/page_gener=
al.html</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>

--000000000000e637b405fb551776--

--===============1770264097727636554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1770264097727636554==--
