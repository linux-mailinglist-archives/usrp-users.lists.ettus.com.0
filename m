Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED44B15284
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jul 2025 20:12:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4264138659C
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jul 2025 14:12:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753812734; bh=j3qGtF7I+X7BNzp2hrRepG/DkHxEXIhbq395X8NO7M4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XNtMR2MxSBZIFiPsgojQL8c0oGoVydS2YcJIBDtvqHPW2onUbYMFgpr4dRI9kKqlK
	 nZuO6794ApgrO5G/PMrPFMYyXtm6VdAlb/ByNk4Vdk1A7X91BcjS3qqseSQNyTv4qt
	 waGOZArSLzCtk6BNyai1AfNb73DTy0JnVlCja5du15T9T69MQBd4hhnqcJVpqP273h
	 fhydAhHxPSi7FFVUkzCfKzXKFnU4bCA1WiuuMajjYZUyKMxXVa5IMNZqstWn1H001a
	 mTrzI24dQopFIbBl3wC5+vIdNuZ8rxbRB5YVHHS3zuRtiL/Vy6scMjYyJX0Anek1gv
	 NKT6COyfxhr/g==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A6EC386511
	for <usrp-users@lists.ettus.com>; Tue, 29 Jul 2025 14:11:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ldUqJWn4";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-af8fd1b80e5so34804566b.2
        for <usrp-users@lists.ettus.com>; Tue, 29 Jul 2025 11:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753812694; x=1754417494; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Uhu14Nsfxvk4LdU93sKVOyJZ1lI8Am8EhE2unlZgvMg=;
        b=ldUqJWn48zEPZQH25C0nihEWj68enxPY8eWrtLMn73p/EFNYtvoE4EUMw8CxMkPcw/
         1cHjm0qQH+uwEfBCWWGMY0w2y9s1oh+PSyxcQEIDPf4wvnTI9KJG6QovhdT4Xdb3KBJu
         qcliNlArBAnqB3UqW4LIGHXQuAhJMDwMePRPh57NIFX5dbacHknzcJ8EjF2FpcUb2mNu
         qPAaxtm4i3KxnftVSWBmzE7SIBy+bxAjWN/8cPynyMVPUOk2NJTNLrZBxrTDNOodZIC6
         Qw2PpcjCpGsJqhQlUlPS7b5WC7anAE+UtB77USw129/B4mdfdzALuetqp3m1vgKz7/K9
         q0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753812694; x=1754417494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uhu14Nsfxvk4LdU93sKVOyJZ1lI8Am8EhE2unlZgvMg=;
        b=woP64QYmWwc8rPVJ2GboNB/EV6bbnzhi4uiqDzJnNVHgV5ifu1Ywo7H8NFQbqV21Zh
         i7WvpF519bDkMCFFGDC4wmXNyy/dFmVsOacwfABb0HeWNzC7CeCqtCBhwSfSbwalu5K7
         lxKnwcEWKBepczFK89Rhcbgkb9kPGW66pz2msZPBFi14lXyK5uY062hKXYqFx4M3dEm1
         xybQv6GhU11gmwW+/vCK8zoBK4PaI4JaSUwBwlBh3pGYTYH6hIgAi86ixaedkLdtifzI
         rAajItYQmdQAXzr7E3wIEtdHLx4x/w8I5GzTMAyZZ5In3sls67ZudJgnAwYL680Vvwwg
         aFrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWdz/N8Trdc3MoE7kz+ocwP1WskyKXVeV+nVE81PGfu24A6OKv9TKpIFAlRsnqSEQsPm+Z9FDOgW5M@lists.ettus.com
X-Gm-Message-State: AOJu0YwktoFmXxUfP/4lTOzo66YKVa6CMecslaf0W7QwBq4px8WKRnpx
	0z7yBElbT7fgLkhE3Fy66qwCOs2xGAu9DP6kYEqTzAIZZTIRcOTb3LzRO3FbTLqCAaaBhlHCCTo
	gM3QNyLYOCorVh1IOSJgfzVkGTxkPEz4=
X-Gm-Gg: ASbGncv5jN1lVFmT/aXp+lvNpDhem/chRIvkYduRV/yYRIGx2Us/K0bHisA3VWN4pQq
	QKk0/O/+7DPUM+Jl048tS2S/3zs61S1FU60R97u/LhTvzKa0vIz0O7hPbJI1xF5AR4CGRF/IDi2
	sJGRw2lPxlHetqhpZo2U66CwjuqozfIkuVGdDO58IFkXrMafQuKFUfou3otqH4wkxYSnbVqRQlS
	0e3zhM=
X-Google-Smtp-Source: AGHT+IFBd1w3zd0uwVNZYJLO5azaFPEhG4GTjNHvhi+1rWOdJx+Oo3CxWQwUYD6dUHcsmX+1Hj1H2Q3lX3KyPiSJRAg=
X-Received: by 2002:a17:907:9691:b0:ad8:9d41:371e with SMTP id
 a640c23a62f3a-af8fd9760fbmr49341966b.36.1753812693887; Tue, 29 Jul 2025
 11:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <111b29cda9ce4309b4966fcfcc3b7ece@vastech.co.za>
 <CAAxXO2HUxF7tDvb8_OzmZS4xat-SM=X_BMN465cvw5PzGQvQ+A@mail.gmail.com>
 <00b1e2cd914e4e87a81ed418f7fa142c@vastech.co.za> <CAFOi1A79w6Yn703f7V+Jwe2X0PpR7or7Vn1naNgWmhYY3kJm-g@mail.gmail.com>
 <45a2d2bfa5784898840a602a2b31db9c@vastech.co.za> <CAFOi1A7k0F=vs7bhSVQFjoQFvBg=nNtfyLxq_zJypMPJUp_uhg@mail.gmail.com>
 <a60e4a0ea3ec4a10b95d90103bd2a7f7@vastech.co.za> <CAFOi1A5oPd6pCJK8mh18Un=WDLGVYt+mGpQHp5J2UQR7xLNV+A@mail.gmail.com>
 <42dbe59d936f4847841d2f442a7ebdf8@vastech.co.za> <CAEXYVK4MN=aNyP201VqABP=xbfB7DuiXF3kVu3t_WwVhnrf8sg@mail.gmail.com>
 <87a46c7a1cc643d9b30f2fc63e70cb40@vastech.co.za> <fb3ebac4d0aa48b7a1c3d9e7261ce06d@vastech.co.za>
 <CAFOi1A4X3PcST+MYSdpCSZUwZtNvBE14xSoHywGZ1RZeR7AP2g@mail.gmail.com>
 <f2f6f4a9aa574c9599c240b8353e2d02@vastech.co.za> <CAFOi1A4FsGYAbAz++Yg+rBphiXoPWYCjOLv_MYhWrmpNQZZOjA@mail.gmail.com>
 <827a6d39fb054bb4beb9eecdd59bd922@vastech.co.za> <CAFOi1A4LSO_cRQKGC_U+KNiU=UgEnUi_W9eDK9QaoLW9c+CWGw@mail.gmail.com>
 <CAAxXO2HbQ0dhjJYzgRUqhGRYmVpj_S6HjLdOfazUiNueEz8AJA@mail.gmail.com>
 <b874b353db35427fbba1515438423d5b@vastech.co.za> <CAAxXO2H2UTX2YMv9yMajS_ZEgLN5L_D6qVh99woC+4xuNQh7eQ@mail.gmail.com>
 <4dd2e3fa86e642cfa0f3059a07645ee4@vastech.co.za> <CAEXYVK5N1g_RZjDqKVO1vuUPtD2NqJP-JbibyFZgmwgJc+G5mg@mail.gmail.com>
 <a9cb0ee7f5614d16986d9a12e209cbb7@vastech.co.za>
In-Reply-To: <a9cb0ee7f5614d16986d9a12e209cbb7@vastech.co.za>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 29 Jul 2025 14:11:20 -0400
X-Gm-Features: Ac12FXzr4YzJV_LhFIHOmUbaGJkU2QLDCdYqtXfZ5Afl5FFICaVtqDA5RqOhWPw
Message-ID: <CAEXYVK7=zwy+kcMeDf2qp2JFgUYvTkQFrVXo1+sX-e_wouD_jA@mail.gmail.com>
To: Kevin Williams <kevin.williams@vastech.co.za>
Message-ID-Hash: DMXQD2R4HJHP43QYICPKMTESTA4EVNDB
X-Message-ID-Hash: DMXQD2R4HJHP43QYICPKMTESTA4EVNDB
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "nbalkanas@gmail.com" <nbalkanas@gmail.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Werner Bode <werner.bode@vastech.co.za>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops after a few packets received
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DMXQD2R4HJHP43QYICPKMTESTA4EVNDB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1186425332454975151=="

--===============1186425332454975151==
Content-Type: multipart/alternative; boundary="0000000000009f2fd1063b15564b"

--0000000000009f2fd1063b15564b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 29, 2025 at 11:26=E2=80=AFAM Kevin Williams <
kevin.williams@vastech.co.za> wrote:

> This is the issue =E2=80=93 my block processes inputs 1:1 without requiri=
ng to
> give back-pressure.
>
>
>
> It decimates, sure, but that is 1:N.
>
>
>
> I don=E2=80=99t understand how that radio block can get its fifo nearly f=
ull?
>

I'd recommend approaching this in 2 ways in parallel:

  - Build an FPGA image with an ILA that has all the ready/valid signals
for each stage of your pipeline and trigger when ready is low for multiple
clocks or when the overflow occurs and look back at what caused the backup
  - Simulate the full block design and randomly deassert the CHDR ready
signal until you see a similar issue even if you know the cadence can't
keep up with your data

I really prefer the simulation method over everything since you see all the
signals, but sometimes simulations can take forever to run and rebuilding
with an ILA can give you a little faster insight.

Good luck.

Brian

--0000000000009f2fd1063b15564b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jul 29, 2025 at 11:26=E2=80=AFAM =
Kevin Williams &lt;<a href=3D"mailto:kevin.williams@vastech.co.za">kevin.wi=
lliams@vastech.co.za</a>&gt; wrote:</div><div class=3D"gmail_quote gmail_qu=
ote_container"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"msg-4914567429703873366"><div lang=3D"EN-ZA"><div class=3D"m_-491456742=
9703873366WordSection1"><p class=3D"MsoNormal"><span>This is the issue =E2=
=80=93 my block processes inputs 1:1 without requiring to give back-pressur=
e.<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal"><span>It decimates, sure, but that is 1:=
N.<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal"><span>I don=E2=80=99t understand how tha=
t radio block can get its fifo nearly full?</span></p></div></div></div></b=
lockquote><div><br></div><div>I&#39;d recommend approaching this in 2 ways =
in parallel:</div><div><br></div><div>=C2=A0 - Build an FPGA image with an =
ILA that has all the ready/valid signals for each stage of your pipeline an=
d trigger when ready is low for multiple clocks or when the overflow occurs=
 and look back at what caused the backup</div><div>=C2=A0 - Simulate the fu=
ll block design and randomly deassert the CHDR ready signal until you see a=
 similar issue even if you know the cadence can&#39;t keep up with your dat=
a</div><div><br></div><div>I really prefer the simulation method over every=
thing since you see all the signals, but sometimes simulations can take for=
ever to run and rebuilding with an ILA can give you a little faster insight=
.</div><div><br></div><div>Good luck.</div><div><br></div><div>Brian</div><=
/div></div>

--0000000000009f2fd1063b15564b--

--===============1186425332454975151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1186425332454975151==--
