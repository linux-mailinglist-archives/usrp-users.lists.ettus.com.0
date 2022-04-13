Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 705464FFCD9
	for <lists+usrp-users@lfdr.de>; Wed, 13 Apr 2022 19:33:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4946238449E
	for <lists+usrp-users@lfdr.de>; Wed, 13 Apr 2022 13:33:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649871221; bh=6AcPQ0zc6t9dqpfF9g68VfbhFR038AEwg4BKAnCOSms=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=K/ltMYicDcGwvjPb1NVhzkX9JCnBW4iW0ELqugSbMEBiLyDlOoVVhOKyVPWDbbPq6
	 v9VTeYqZs0TTOugknbbmaoLBpIu3cevEm1uNlKGzkFysULcogDLbz/+pMdbkHqqcvA
	 7trigOnZaoPfBlnwDNJtigfea0IUjdQ7pwDzQVzYKs2m3pvzyaK+oozXgsd1DBhASz
	 aALMf83y3O60v0Ou5DlSkA9kGs5ETHo9PxYMlGx4Nh/qAKZz1IsB+Nu2OJwTkPr1Di
	 pFO8NEXKr6/dv9muXczo+h5aQMUjaedsKVcTOvv+o1pbXpfzLa8/nDQW+A+hXK81I6
	 cE7ggVSdPy+FQ==
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 492C5384373
	for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 13:32:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fukmKrb6";
	dkim-atps=neutral
Received: by mail-vs1-f51.google.com with SMTP id f32so2276138vsv.1
        for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 10:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=hyjKpMT/91pZylkb6EK07FKdo3CPhmnBXOe6+GD5jDI=;
        b=fukmKrb68rrVs6jVQIJRfpQYKTY9TQYkmetXdv5V9hdXhxdIOXIR2uf8+Oq5ofpkrc
         5uXFD5lRBr2FbHpWzsTMA917ADKVtB66KWGkGcvvc9cWiyazvFuOtJ7WPWLDngC5ff9y
         qSk3cG0+tGFgLkWbVwI3mWHqxE90iFEr6gV6udkz9lYlMjlSymlhC4pbxfI/LJv8R/a2
         eSPgxwYTXPoYJF/kWnEU49hKuWKjtEZ/uLbrxOr4Lji30teMwCqjHjG+ZUEsWPqWT6I+
         I+ySVUZF1/SjN6FV4dmiaK+I3mTY9OMFGx4tNFt64G/l4PAABUBfvcJl2OPDPrMO+92x
         fTEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hyjKpMT/91pZylkb6EK07FKdo3CPhmnBXOe6+GD5jDI=;
        b=J3e0TOj+KWGbuCRj4c5lNrwQG8K2ayNtcebTN0oHHtL3Gq6ESBNHlUD4obAdvkSivL
         wgVzd0wwN7FXaC6NKh/UlgAKfdx1oqGEJx18MlnwqqQ50wBfAEYVqMeS5Jg0afNXFJjL
         NQEiH4MgDa07Wpt9TVHQmGrCWHWMPmwNEIaEt4RIDj+nkprwdcbRljTtXiU8/qGHN6Ui
         p/rMg5raa4k8sK8UEbhUdgOSkPJmGxrEgpx0sV0CacWJF31WTOLXUTEtnhwgv3OFKoIR
         mkV+4w42c4+V9IGFR11pTw85Biyv6PlVJvlAtCUy9kfPH323HVN032MRaRJWds8/o0k9
         2tFA==
X-Gm-Message-State: AOAM533D0QIbYz9IlbuPGnvkbnabBzgUVTOCKEMhAU1z5iNcZcGc2fiD
	FA7aIzgVFWc6nQpDomHT3FXk4yOwneMaJd29y44SMMI+bk8=
X-Google-Smtp-Source: ABdhPJx82jXUqazzmB+YMURW0e15wzvcVej3feBvN2xiaRJ2uXGu5l3104Siyqs8mkXrL+e8TSPQXi5yZKYVJesDjfQ=
X-Received: by 2002:a67:ba10:0:b0:328:28e6:7066 with SMTP id
 l16-20020a67ba10000000b0032828e67066mr7913009vsn.29.1649871155438; Wed, 13
 Apr 2022 10:32:35 -0700 (PDT)
MIME-Version: 1.0
From: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Date: Wed, 13 Apr 2022 14:32:24 -0300
Message-ID: <CAOucfAOCAAvZ8GuirG15oZ30EPO1=ENs3teM8FKUhm3YyaptXQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: DTCIRRQ25P4YZRRHPQK7WRRTWDBGVKN6
X-Message-ID-Hash: DTCIRRQ25P4YZRRHPQK7WRRTWDBGVKN6
X-MailFrom: lorenzen.lautaro@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Issue with TRX-B output
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DTCIRRQ25P4YZRRHPQK7WRRTWDBGVKN6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6000970299247980901=="

--===============6000970299247980901==
Content-Type: multipart/alternative; boundary="000000000000252a8305dc8c9001"

--000000000000252a8305dc8c9001
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm trying to run a simple example on an Ettus E310.
I'm using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5.

Everything seems to work okay, but I can not manage to get the second
channel (TRX-B) to transmit anything. FYI: I can receive from both channels
RX-A and RX-B.
The problem came up when I tried to transmit something via gnu-radio,
changing the "subdev" arg to "A:1" instead of leaving it blank as I
normally do.
When I pressed start, everything seemed to compile fine, but the GUI
freezes (something that did not happen when using TRX-A).

To see if gnu-radio was the problem, I logged in the embedded linux and
tried some uhd examples from usr/lib/uhd/examples.
As expected, I ran ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:0  and
the tx light turned on and I could see something on my oscilloscope. Also,
a few "LLLLL" appeared on the console.

When I ran:
./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:1, everything looks the
same but no light, no signal, and no "LLLLL" are displayed on the console.
Just the message "press ctrl+C to stop streaming".

Any help would be very much appreciated.
Regards,
Lautaro.

--000000000000252a8305dc8c9001
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi everyone,</div><div class=3D"gmail_default" style=3D=
"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:arial,helvetica,sans-serif">I&#39;m trying to run=
 a simple example on an Ettus E310. <br><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif">I&#39;m using an E312 with UHD =
4.1.0.5 and gnuradio v3.8.0.5. <br></div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif">Everything seems t=
o work okay, but I can not manage to get the second channel (TRX-B) to tran=
smit anything. FYI: I can receive from both channels RX-A and RX-B.<br></di=
v><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif">The problem came up when I tried to transmit something via gnu-radio, =
changing the &quot;subdev&quot; arg to &quot;A:1&quot; instead of leaving i=
t blank as I normally do. <br></div><div class=3D"gmail_default" style=3D"f=
ont-family:arial,helvetica,sans-serif">When I pressed start, everything see=
med to compile fine, but the GUI freezes (something that did not happen whe=
n using TRX-A).</div><div class=3D"gmail_default" style=3D"font-family:aria=
l,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif">To see if gnu-radio was the problem, I=
 logged in the embedded linux and tried some uhd examples from usr/lib/uhd/=
examples.</div><div class=3D"gmail_default" style=3D"font-family:arial,helv=
etica,sans-serif">As expected, I ran ./tx_waveforms --rate 1e6 --freq 100e6=
 --subdev A:0=C2=A0 and the tx light turned on and I could see something on=
 my oscilloscope. Also, a few &quot;LLLLL&quot; appeared on the console.</d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,hel=
vetica,sans-serif">When I ran: <br></div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif">./tx_waveforms --rate 1e6 --fre=
q 100e6 --subdev A:1, everything looks the same but no light, no signal, an=
d no &quot;LLLLL&quot; are displayed on the console. Just the message &quot=
;press ctrl+C to stop streaming&quot;.</div><div class=3D"gmail_default" st=
yle=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmai=
l_default" style=3D"font-family:arial,helvetica,sans-serif">Any help would =
be very much appreciated. <br></div><div class=3D"gmail_default" style=3D"f=
ont-family:arial,helvetica,sans-serif">Regards,</div><div class=3D"gmail_de=
fault" style=3D"font-family:arial,helvetica,sans-serif">Lautaro.<br> </div>=
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f"><br></div></div></div>

--000000000000252a8305dc8c9001--

--===============6000970299247980901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6000970299247980901==--
