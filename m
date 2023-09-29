Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D647B3BEE
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 23:26:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED5CF3850F2
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 17:26:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696022801; bh=tGMjM8kyWAryOvot0DaZzAmjgqvO6stSTz9Hn0WfWvQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=a+B6hdC1TL6ve0Tyk7xg1Hfof88lFPKByhitKRfR+f4gAhL0teNRKzA4766eXCSzK
	 iJ+QAY3QL3tbAd1VsbtUjOPhpXaM+L4WMPPh/9XnTCz6/blzfy9TA044aDjWyc0DLl
	 s/KBhNk7Q1dyk3DKSnRd+dKN+BD9cDk8F0bgNx3Mq1PSsoQ2hGpApzeA0RB5iBpPQq
	 57q5d8MVnuzl+Jy3wObIFX7uQ8OhxBOp4wcbBVscHNntMZUjuhWcbkMC07ZO8cWRXY
	 X7gUpC7sWRI+v2s6E4Lg9ejlmLrZdcMyOC3i4nVmwOkgpJ8dPeSGZrSlRhDks6vLvz
	 sWzQay6LoRs1A==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 43757385250
	for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 17:26:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kFpruepQ";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7757f2d3956so49242685a.0
        for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 14:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696022797; x=1696627597; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W1yvGiDybA0YNm+NlKH778C6gYwBKXakAB1m0Ci0/Bw=;
        b=kFpruepQQxjn/q26+MVaUw3ZnsMYRwEwy3rwQNtoTW7BAsE+ALmjuCuOrT/MN297UX
         jHXWxOdwxPGo0ME0yWwTqZscLpslmBBQ4McZUmBqVpxiw9HFFNFRnjsQxRYjGAYp4P9n
         j7e7UpOEbCixp+yTNc8hoypamzU/I87JBAJpbRAq9joazvzxBc3dwVJ2SE9oG6yVk4/J
         0+xwiIkjF4k5494w0p6OKplQ4f/VPXCtu0w4ZbTtS6MjwsXCwqV3jPSEFDYHM1GGO4qo
         TIWQaYEkOl/c9ZDVScPr/ScjE4YLG30Ph6cC7HN6csPzHwZEuB12gg2fkNqTydCsstlk
         TgEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696022797; x=1696627597;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W1yvGiDybA0YNm+NlKH778C6gYwBKXakAB1m0Ci0/Bw=;
        b=opxS+m1UZUxDIX9XsXCmN3DbiTwD1XoEC85y5uC49Qpy1GDE3qIfwuCJCIcYab32bH
         3o46LJ8Oo3rf+hNLR+BVuCPSQv67AiLNcb/TioqScFrS+1MjZuta6xtCcYws9Ak+ftPL
         Zm+/KWJFjiIc8bJkmuoPH49/swMBpAEDpIoYXeGCJRblVnEH+V7E0DvC+n1uZiPYOJvY
         N9/ySpQDJbBTrmErcdGG22VB0zWBXlKh6Gra+Q6hX13p+HkBPb+yf+ZjCsIa+mUP69Ql
         yA3sSKmWuDxrmSOAEYtL5+XawkSca0n8C9Kv4hhNZ5+VSojAVbcTEQdthRmxPfOQl3Ur
         Hv/Q==
X-Gm-Message-State: AOJu0YxP/7NsTrmGV7E49SAY9j2Vs16hPA9+ZjcYo+4jeLeyNlP4QJxq
	Y38KAfCMjIQr9CgANTypyY7sIJzA4JU=
X-Google-Smtp-Source: AGHT+IEUAH5JvxJWfMD2en3riY6zcsYvLATTGW063lthoYQaEu2hccewk2DLixcuNRteupUthxn2TA==
X-Received: by 2002:a05:6214:c88:b0:65b:557:8091 with SMTP id r8-20020a0562140c8800b0065b05578091mr4148030qvr.31.1696022797392;
        Fri, 29 Sep 2023 14:26:37 -0700 (PDT)
Received: from [192.168.2.156] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id k13-20020a0cb24d000000b0065862497fd2sm4563798qve.22.2023.09.29.14.26.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 14:26:37 -0700 (PDT)
Message-ID: <ab880db7-6a66-16ba-65f4-2bed82ec7318@gmail.com>
Date: Fri, 29 Sep 2023 17:26:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAANLyuZ1vMXzQ5APUzvX4OBsc042d+-1WAn2BEpaGxSrSQO3Mw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAANLyuZ1vMXzQ5APUzvX4OBsc042d+-1WAn2BEpaGxSrSQO3Mw@mail.gmail.com>
Message-ID-Hash: Z5TFKCGXMHVJQOZUAUWUQ7TV5TXWLYZI
X-Message-ID-Hash: Z5TFKCGXMHVJQOZUAUWUQ7TV5TXWLYZI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210/B205 TX Distortion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5TFKCGXMHVJQOZUAUWUQ7TV5TXWLYZI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1309811824001066736=="

This is a multi-part message in MIME format.
--===============1309811824001066736==
Content-Type: multipart/alternative;
 boundary="------------7lJDAlDAQc10s7Gxt6eKHdGd"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7lJDAlDAQc10s7Gxt6eKHdGd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/09/2023 17:14, Devin Kelly wrote:
>
> All,
>
> I=E2=80=99ve noticed some odd behavior when transmitting bursts on a B2=
10 and=20
> B205mini.=C2=A0 When scheduling my bursts there=E2=80=99s a big =E2=80=9C=
blip=E2=80=9D before my=20
> desired signal.=C2=A0 I eventually started looking at tx_bursts.cpp and=
 was=20
> able to re-create the =E2=80=9Cblip=E2=80=9Dusing this command:
>
> ./tx_bursts --repeat --rep-delay 0.01 --gain 50 --dilv
>
> Though pretty much every command had the =E2=80=9Cblip.=E2=80=9D=C2=A0 =
I=E2=80=99ve attached some=20
> oscilloscope screen caps below. My desired signal starts around 977=20
> ns.=C2=A0 This is with UHD 4.4 and the =E2=80=9Cblip=E2=80=9D happens o=
n every burst (the=20
> second screep cap shows this but it=E2=80=99s hard to see).
>
> I=E2=80=99ve also noticed that the blip magnitude stays the same and if=
 I=20
> increase the gain where the rest of the signal increases or decreases.
>
> How do I make this go away??=C2=A0 I=E2=80=99ve tried pre-pending 0s to=
 my signal=20
> and fiddling with pretty much every MultiUSRP setter.
>
> Thanks!
>
> Devin
>
>
I can't really see details in the plot you attached, but my guess is=20
that this is just the turn-on transient of the RF power amplifier
 =C2=A0 chain.=C2=A0=C2=A0 Not sure there's much you can do to get rid of=
 it if you're=20
sending TX bursts, since the TX hardware has to be turned
 =C2=A0 on/off between bursts.


--------------7lJDAlDAQc10s7Gxt6eKHdGd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/09/2023 17:14, Devin Kelly wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAANLyuZ1vMXzQ5APUzvX4OBsc042d+-1WAn2BEpaGxSrSQO3Mw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <p class=3D"MsoNormal">All,</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">I=E2=80=99ve noticed some odd behavior whe=
n
          transmitting bursts on a B210 and B205mini.=C2=A0 When scheduli=
ng
          my bursts there=E2=80=99s a big =E2=80=9Cblip=E2=80=9D before m=
y desired signal.=C2=A0 I
          eventually started looking at tx_bursts.cpp and was able to
          re-create the =E2=80=9Cblip=E2=80=9Dusing this command:</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal" style=3D"margin-left:0.5in">./tx_bursts
          --repeat --rep-delay 0.01 --gain 50 --dilv</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">Though pretty much every command had the
          =E2=80=9Cblip.=E2=80=9D=C2=A0 I=E2=80=99ve attached some oscill=
oscope screen caps below.=C2=A0
          My desired signal starts around 977 ns.=C2=A0 This is with UHD =
4.4
          and the =E2=80=9Cblip=E2=80=9D happens on every burst (the seco=
nd screep cap
          shows this but it=E2=80=99s hard to see).</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">I=E2=80=99ve also noticed that the blip ma=
gnitude
          stays the same and if I increase the gain where the rest of
          the signal increases or decreases.</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">How do I make this go away??=C2=A0 I=E2=80=
=99ve tried
          pre-pending 0s to my signal and fiddling with pretty much
          every MultiUSRP setter.</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">Thanks!</p>
        <p class=3D"MsoNormal">Devin</p>
        <br>
      </div>
    </blockquote>
    I can't really see details in the plot you attached, but my guess is
    that this is just the turn-on transient of the RF power amplifier<br>
    =C2=A0 chain.=C2=A0=C2=A0 Not sure there's much you can do to get rid=
 of it if
    you're sending TX bursts, since the TX hardware has to be turned<br>
    =C2=A0 on/off between bursts.<br>
    <br>
    <br>
  </body>
</html>

--------------7lJDAlDAQc10s7Gxt6eKHdGd--

--===============1309811824001066736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1309811824001066736==--
