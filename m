Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0013EAC0CE1
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 15:34:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E20CF3830B0
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 09:34:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747920891; bh=81bpW98ICFZ8VVTpOSWxtxUmb9VDu4ub0z5XcWeaRXw=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=H/vV9KRbJAsafRE3CI1RwMM/TSBNhOOmueCj3mv5TWZzkqfW7fAOxJ8C6ZCgkwJHx
	 kbgtlamA7f4BXOFCfIuv0y5hF4Rzyyb9cv6NcKv3XriCaOMcCQybCUrdDg+fzCufn+
	 slrAF8SFiEAluHevkNgcyXgwnZzfDzWlhUuH7T5UyyZ5uxVv63EcXaRG/QwXSj3frY
	 JisvQztVXSs/HK3eae3LVH3i9l5Rt37tSSmpe13COdqugHul4S6AR4ey730IqeoY06
	 MzhsHYQyu3+QJBJAAhoHvSPhbrDsZ7Bad9QwyxkpDvLqXsZW9RVkaEAIxASOlh1Q4o
	 ORzjvyVk8HI7g==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C172380BE1
	for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 09:33:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="GfzSSz4z";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-601dd3dfc1fso9603963a12.0
        for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 06:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1747920837; x=1748525637; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Kq1WhbBMVHr5moT7I+pNQ1DjQIw7tNvXqPeIENBpfcM=;
        b=GfzSSz4zBrXsUHfkarpTHRhI2I4+RXrnhjhACaiXSb66svhQ7npr1ymBYijitQZFwI
         pcpCurq6uHSRiIDHnO1pqf9myRGq2BM1Z/xsjDYcOAhqkbceAJ+aYizRk6hqooKuP851
         2JI9W7Bi1XQdwcH8MNvUlayqGl6II/t0My6mcqxzWITI1HzfJo/addKMgjQK/YMvVxzA
         kSYC5hrMiLbCp65u2TpZFxsgV8MVlrQMH6zo8XNquZ2S/tvUsLatX37XUaGBo44eC9hY
         ebaTd7+KR/LqAYqApnnZJmlZoLHwXVtFTKtdJFGruvQ9razM0eqLTvtx4ThKYA6pzXWB
         kr4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747920837; x=1748525637;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kq1WhbBMVHr5moT7I+pNQ1DjQIw7tNvXqPeIENBpfcM=;
        b=J81xkOdq4mWEju7nGPcLllHEW9CI1+xqV6ySC4kVqec74iUFViSHeTvSUk8Q5w9sFl
         humZ5VIkeBztMceo7ocIxmR6RXqC8y2sSVghxFPNhFAWk1erw3s5OGdoC7re2lrc/nKQ
         0rldrTrduzRrEwG4teH3g2Qo5tp/o6cC/cfRiHIl4uXkKgxVLuxocV6T42XJtCfMPvt4
         3tXF6Y2j1qHPwZjWKwDisypoftaC1g8CJ23qQkDibZFdT+vJ2O8nbNQQ9orx27cTkpna
         iTfwAE0/9gOVwCi91Z8/aGSbtnSq5Y3dNwXg/E1O0NlhfyIdOmJwXShezL6YYMlivCLG
         U0Ow==
X-Gm-Message-State: AOJu0Yzqekp0vFh3eo2PNywgRunVqr+F8EhgAmWl0xC5NDuew5DWKi50
	ZJvUG1nfWgjpu3g2W+3A/j+VnauLOGqyKAkmqop2KbXIdJ3w72s5QHftqazQPHgd5TCWgD/QF3Y
	FSLjs9WpXCyZVn2tIsxaenMtFngr9XWJFB2z7NenWNBxBEiO/c5U=
X-Gm-Gg: ASbGncuNSCkBQ+eJZHN4QqsEwGNjlBf9rENkcHF1OKjZb2+YjR3eiXqz5bpl1UvOw82
	rSrxmlHSepJyThzVVDu/lMuor1xzHN8NvbjvUlHZhDhK30Si+xdMqd6W6FJ/LD8sHwaZvzpPXJB
	m5tXkczSsiKQh2BCwjCicAdWliPcTW/IQ+
X-Google-Smtp-Source: AGHT+IG09kL9jTNJgeY6t9c5WucnfC5TilDWcJVYiG8m84nWVdRn73bVplrBNkpdzULnJz7+Ei3ikVFH8D5X+98+6EQ=
X-Received: by 2002:a50:c041:0:b0:602:4405:7799 with SMTP id
 4fb4d7f45d1cf-602440578e4mr3734424a12.31.1747920837413; Thu, 22 May 2025
 06:33:57 -0700 (PDT)
MIME-Version: 1.0
References: <328bee3e43a747c08792d6dd375da2d4@vastech.co.za>
In-Reply-To: <328bee3e43a747c08792d6dd375da2d4@vastech.co.za>
Date: Thu, 22 May 2025 09:33:45 -0400
X-Gm-Features: AX0GCFuE4qY4GUGEghTOhX2YFlSA5ji4Qs_LEYjbouHyIdOtBohdQQyqmlZTLKk
Message-ID: <CAB__hTQWeeSzxmidtTKMsPgwNtgPkLs0776vzmshR9w+ugmneA@mail.gmail.com>
To: Kevin Williams <kevin.williams@vastech.co.za>
Message-ID-Hash: 6263MFDO5ESUDIE6QTNOALTETRU4HTKJ
X-Message-ID-Hash: 6263MFDO5ESUDIE6QTNOALTETRU4HTKJ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: clarification of timestamp calculations
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6263MFDO5ESUDIE6QTNOALTETRU4HTKJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2251979133748159236=="

--===============2251979133748159236==
Content-Type: multipart/alternative; boundary="0000000000009c288b0635b98826"

--0000000000009c288b0635b98826
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Note that every packet doesn't need to have a time stamp (assuming that the
previous packet does not have EOB set).  If the first packet has a
timestamp and is not the final packet in a burst, then the subsequent
packet will be assumed to be continuous to the previous packet such that no
new timestamp is needed.  I'm not sure if this is helpful to you, but it
can be easier than trying to timestamp every packet if it is not needed.
Rob

On Thu, May 22, 2025 at 6:43=E2=80=AFAM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi,
>
>
>
> Must the timestamp of every packet in an rfnoc network must remain locked
> to the time source the radio used when it timestamped the first adc sampl=
e
> of that packet?
>
>
>
> In other words, if I have a decimator must I figure out the time offset o=
f
> the first sample of my decimated packets to within 1 sample of the origin=
al
> data?
>
>
>
> This seems complex because the radio is delivering packets of some size
> related to an rfnoc mtu and most likely not related to my decimator ratio=
 =E2=80=93
> so the timestamp of the first sample of my packets changes as it =E2=80=
=9Cbeats=E2=80=9D
> with the input packets?
>
>
>
> Thanks, Kevin
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009c288b0635b98826
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Note that every packet doesn&#39;t need t=
o have a time stamp (assuming that the previous packet does not have EOB se=
t).=C2=A0 If the first packet has a timestamp and is not the final packet i=
n a burst, then the subsequent packet will be assumed to be continuous to t=
he previous packet such that no new timestamp is needed.=C2=A0 I&#39;m not =
sure if this is helpful to you, but it can be easier than trying to timesta=
mp every packet if it is not needed.<div>Rob</div></div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, May 22, 2025 at 6:43=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:k=
evin.williams@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-=
5679069295236258828"><div lang=3D"EN-ZA"><div class=3D"m_-56790692952362588=
28WordSection1"><p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Must the timestamp=
 of every packet in an rfnoc network must remain locked to the time source =
the radio used when it timestamped the first adc sample of that packet?<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">In other w=
ords, if I have a decimator must I figure out the time offset of the first =
sample of my decimated packets to within 1 sample of the original data?<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">This seems=
 complex because the radio is delivering packets of some size related to an=
 rfnoc mtu and most likely not related to my decimator ratio =E2=80=93 so t=
he timestamp of the first sample of my packets changes as it =E2=80=9Cbeats=
=E2=80=9D with the input packets?<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">Thanks, Kevin<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div></=
div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--0000000000009c288b0635b98826--

--===============2251979133748159236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2251979133748159236==--
