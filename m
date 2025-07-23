Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1BBB0F38F
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jul 2025 15:16:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FFA3385B65
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jul 2025 09:16:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753276573; bh=3epa0zx12Mx1Szupf3eo+RShFP5ZS3mFKizl7ZzVPVo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=M+VyRt3sna8dp+btQCk+EQVAQr6+GerIvEGb2zw1KXc+Q+QsJ940zpbSV/E/0TD2c
	 Zg/IQMNrom42lIOntL63lj+YDF5I1LLXmbfMSzW3hliAtW10lwDKUjht/80YF5KQFv
	 TTaE5AEts82bTvvcZhzaBrp9CVFO0cHJJUV2KZZ15jLsx1QCH1MlH1SHx7ljtNdrCS
	 Uhafv/VHTgGYmUu+UP3ql64DzJj8MB6VSh4PpSfx211LCWfl2Z+TnSL6vYRCmfCfZP
	 Tk8yRKuVmMthobQgY/Z+h5DAZaUj0yxguF3jhsMuBf66SwdHWzG4cfgn1mulGAD54M
	 3hMGZXLx0YA5A==
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E91A3858B6
	for <usrp-users@lists.ettus.com>; Wed, 23 Jul 2025 09:15:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a22HlqiB";
	dkim-atps=neutral
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-3e2c547bc90so19766005ab.2
        for <usrp-users@lists.ettus.com>; Wed, 23 Jul 2025 06:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753276524; x=1753881324; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EL+mSSOk7pOeKcMYFBh2cdQWviTltV/ZBQfreBT9W/8=;
        b=a22HlqiBjaNidMCBZefSbv0ytwjIEN91uGozkO1FhWP7I2qysV0Pt8bx1lmwrzEI0H
         giB5CsWPwaghY45JgIujTkR+Vo/QFXdlVfgO46FokZvGvTzYI6RHqaydSy6cd6n/+O0g
         zCqWzLwaoFauTcEMEsOtNTLrXdRJhwMb+T8ATQas9rBra4w3QwaC9oio+lz6mgE/Vwsc
         GKzoXTnaoj0nOpv8cYxWSinij8VtIP0LwB3ke/KzaRZy6H3TGAOACTcWPJMic9xOhoqh
         4GBEzvojLdNTeRyvAY6VfB8oCHXLk47eKfOCl0DlgKxsrkpqJ1ZqhzKsWP+qhKLcooVv
         7R/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753276524; x=1753881324;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EL+mSSOk7pOeKcMYFBh2cdQWviTltV/ZBQfreBT9W/8=;
        b=rT116icwHTrPw4/jWXVIK6X7H+pGKcaaagcQ1nfqg6ERQCYQu8Er81fmjvuL93n4so
         M9Q0zplWcAxVtFdtp5jckbzvTtj1HCNid9PJTw6eOvaObXbp/1vwWg42fe1YldZg2Knv
         Pi0LvLwrB8CzRb4G876e1BZVJuygBlx5yILRZrFtVFZy4Tqsf5Ix6oRJWwlMIJZnyyyI
         NCc5IxiIQpeK+hem5kE0HAxeO99VhiMWvjB1q9vzXtIDcpB+OtrwmY543Oq61/NzNxZc
         A7iow57hGpW+sDOs/WnytpQp+SWFPf8bnsOT/p20aIx6Bsr8/1z6TrMJ9Qf4a6Qp5vWU
         TwNw==
X-Gm-Message-State: AOJu0YyUIhrqNv4GYPnEoNYyfll5CfeEEkvjOWNIDVb1FHj9Amm8zY9O
	fAsQtH6iMnicHZUOQ64ty3DQZBGJansNDMuyhHhnJbS6eLx6v47Za4m3cx09haDGqX+J3UGUIPz
	pMSmMPmTBmbBGGxzvQp3NlWjf3mYKdi0y9Ux3
X-Gm-Gg: ASbGncvxuRKFe0e0OAYwNGjBmb38ZEn638zX6PMPyEsb6jL+Gdrj75zuLsOV7WBuqzo
	gNTKoxnQ9hY9muXYPZz75kBQtZ9BbzOlsY0ZcfqJC0VkKfcFGTPTCFL078CJvf5SGuO3onwoV5N
	+UjZgd2b0/MLcyiou0XKZIKvPBKxdAlOp2B63knlGsdX+e1NogP9npw+QM03sA82hgkVd2HRV5U
	Yy0
X-Google-Smtp-Source: AGHT+IEGVx61M25Cb8LGDTwXwWzPZ8+td/c1DmCCqQWI7XJjNfWbm2naE8q5yLL/8CLAtb0Gs/E71yhqMhxXlEfgjXU=
X-Received: by 2002:a05:6e02:1c0f:b0:3d8:2085:a188 with SMTP id
 e9e14a558f8ab-3e32fbb5ad9mr52157585ab.1.1753276521555; Wed, 23 Jul 2025
 06:15:21 -0700 (PDT)
MIME-Version: 1.0
References: <111b29cda9ce4309b4966fcfcc3b7ece@vastech.co.za>
In-Reply-To: <111b29cda9ce4309b4966fcfcc3b7ece@vastech.co.za>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Wed, 23 Jul 2025 16:15:10 +0300
X-Gm-Features: Ac12FXxtj0Fpo6wwluX6GowB7Szm0ZLDhBHNJoHdyDw0D_Yigso2OrNo5H34BRw
Message-ID: <CAAxXO2HUxF7tDvb8_OzmZS4xat-SM=X_BMN465cvw5PzGQvQ+A@mail.gmail.com>
To: Kevin Williams <kevin.williams@vastech.co.za>
Message-ID-Hash: MKI22OE5DBSY2CUCBGJC2P32U6EDGYJO
X-Message-ID-Hash: MKI22OE5DBSY2CUCBGJC2P32U6EDGYJO
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: remote streaming starts, but stops after a few packets received
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MKI22OE5DBSY2CUCBGJC2P32U6EDGYJO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0687979549669770984=="

--===============0687979549669770984==
Content-Type: multipart/alternative; boundary="00000000000042ab8f063a9880fa"

--00000000000042ab8f063a9880fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kevin,

What are your stream_args?
Using UHD_STREAM_MODE_NUM_SAMPS_AND_DONE?
Not using RFNOC, but full_packet is not a UHD 4.6 mode:(

BR,
nikos

On Wed, Jul 23, 2025 at 3:14=E2=80=AFPM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi,
>
>
>
> I have enabled remote streaming but according to wireshark I only receive
> 6x 4k packets.
>
>
>
> Everything about them is correct =E2=80=93 the destination ip, port, size=
, etc.
>
>
>
> From the debug logs the stream is set up as:
>
>
>
> [DEBUG] [RFNOC] Creating diverted RX stream with arguments:
> dest_addr=3D172.17.0.2,dest_mac_addr=3D02:42:ac:11:00:02,dest_port=3D1234=
,stream_mode=3Dfull_packet,__chdr_width=3D64,enable_remote_stream=3D1,enabl=
e_fc=3D0
>
> [DEBUG] [X300::SFP0::TA_CTL] On transport adapter 0: Adding route from
> EPID 6 to destination 172.17.0.2:1234 (MAC Address: 02:42:ac:11:00:02),
> stream mode FULL_PACKET (0)
>
>
>
> What could cause that streaming to stop (given there is no flow control)?
>
>
>
> Many thanks, Kevin
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000042ab8f063a9880fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi =
Kevin,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></di=
v><div class=3D"gmail_default" style=3D"font-size:small">What are your stre=
am_args?</div><div class=3D"gmail_default" style=3D"font-size:small">Using =
UHD_STREAM_MODE_NUM_SAMPS_AND_DONE?</div><div class=3D"gmail_default" style=
=3D"font-size:small">Not using RFNOC, but full_packet is not a UHD 4.6 mode=
:(</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><d=
iv class=3D"gmail_default" style=3D"font-size:small">BR,</div><div class=3D=
"gmail_default" style=3D"font-size:small">nikos</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Jul 23, 2025 at 3:14=E2=80=AFPM Kevin Williams &lt;<a href=3D"mai=
lto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D=
"msg3467519873614277022"><div lang=3D"EN-ZA"><div class=3D"m_34675198736142=
77022WordSection1"><p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I have enabled =
remote streaming but according to wireshark I only receive 6x 4k packets.<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Everyth=
ing about them is correct =E2=80=93 the destination ip, port, size, etc.<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">From th=
e debug logs the stream is set up as:<u></u><u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">[DEBUG] [RFNOC] Creating diverted RX stream =
with arguments: dest_addr=3D172.17.0.2,dest_mac_addr=3D02:42:ac:11:00:02,de=
st_port=3D1234,stream_mode=3Dfull_packet,__chdr_width=3D64,enable_remote_st=
ream=3D1,enable_fc=3D0<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[DEBUG] [X300::SFP0::TA_CTL] On transport adapter 0: Adding=
 route from EPID 6 to destination <a href=3D"http://172.17.0.2:1234" target=
=3D"_blank">172.17.0.2:1234</a> (MAC Address: 02:42:ac:11:00:02), stream mo=
de FULL_PACKET (0)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">What could cause that streaming to stop (given there is no flow=
 control)?<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">Many thanks, Kevin<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div></div>________________=
_______________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--00000000000042ab8f063a9880fa--

--===============0687979549669770984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0687979549669770984==--
