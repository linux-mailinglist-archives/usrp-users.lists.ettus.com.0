Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2829D4838CE
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 23:30:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 306D53851CD
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 17:30:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BtxCoTXP";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F7693851BB
	for <USRP-users@lists.ettus.com>; Mon,  3 Jan 2022 17:29:16 -0500 (EST)
Received: by mail-qk1-f177.google.com with SMTP id 131so33143674qkk.2
        for <USRP-users@lists.ettus.com>; Mon, 03 Jan 2022 14:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=8onfh+oghb98MZKq2NjKCFIIkI7NeIAN50J+OMIWYng=;
        b=BtxCoTXPwrVgQKP10y3tUvpe3clQ+yTy/SQvc/ZZfnORSKbrh94NDeippGP1NuoaKs
         Kb0302ARkliqgUERfoS7fX+zfQq3uzzpkiN3CaVDiNISoz9fooUdZaT3SKeTdgI0OEG5
         UrAKU+JNR3koKYUfB4uCyYzbKe7+WHbShrcS0+U8uCiz0zXu/eO5xAeg8h+QMOirBmT+
         g5UigOe6unaHCfRvNYJ6JPxxbDYtao5+/wHFDVJrcnN/EyL+M9h59TTTxSaw9Eh9kTqf
         HXfPiuc3NNwrNJqyRJfpKV7YtfrJK05PUMA19GqLipHNxJ6ckEvRXrogX2RrZ4t0I1G0
         sJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=8onfh+oghb98MZKq2NjKCFIIkI7NeIAN50J+OMIWYng=;
        b=IyaomiU6od0suet1XyU0XlgyhUWKSIcZhM+0QtPslDoCoJnlDlVpjZcPga7EnCO1DL
         kSAV5AzdFNWLiVSkg2tkriQzMwrjWvJb2lc7DDzRVUWo1eMomXv6nCWcHh5waiAeeU2p
         8FuZO5OGq3gUS4OLOEV41s8ZkkCZqFVguLC/SI7rgeD9g925NXubVoTAYdwGxsBAWTLc
         Iwqurf0A6tN7qaheM6YoVYHbmB6dCPs1/KzcUGGGRhPww+iaJGcBu7lTFYAuSjwN5M/X
         7hv6OAwQ2ftz8DQDRZ4QbymcqsS68+yriGKirjc5zNRrMFTAzQ5APc3SAs9K0U0yow1p
         BqFQ==
X-Gm-Message-State: AOAM532yts4IR7T8a1IFOqEfaeNNWEhC2UUFHppMnMLbFUMNnjEx3u4U
	PSNOxMY9Xae6aiubemSuJ4YywtjDatgqOg==
X-Google-Smtp-Source: ABdhPJyBuPc8ghd7H7HUbKp7sbVXGLezsJN/fuWoxY9nkmOblmmZ057S6zOzikkCP0qj7kE/odplyg==
X-Received: by 2002:a05:620a:1713:: with SMTP id az19mr33467762qkb.297.1641248956506;
        Mon, 03 Jan 2022 14:29:16 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id d15sm31250919qtd.70.2022.01.03.14.29.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 14:29:16 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 3 Jan 2022 17:29:14 -0500
Message-Id: <B12AC042-D009-49BF-96F6-78227B6D9A8A@gmail.com>
References: <QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU@lists.ettus.com>
In-Reply-To: <QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU@lists.ettus.com>
To: ri28856@mit.edu
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: ZK6ZGGB45MWW2SP6TCNPX5BAXPUEQULV
X-Message-ID-Hash: ZK6ZGGB45MWW2SP6TCNPX5BAXPUEQULV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Propagating late and overflow messages in software
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZK6ZGGB45MWW2SP6TCNPX5BAXPUEQULV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7136075412789355481=="


--===============7136075412789355481==
Content-Type: multipart/alternative; boundary=Apple-Mail-7C7492FE-A62C-4BA1-95EE-8E614736CF59
Content-Transfer-Encoding: 7bit


--Apple-Mail-7C7492FE-A62C-4BA1-95EE-8E614736CF59
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I don=E2=80=99t think that recv_async_msg() blocks. So an infinite loop will=
 chews up CPU.=20

The production o O/L/D/U happens independently. I=E2=80=99m struggling with m=
ulti laptop failure right now or I=E2=80=99d get you more info on shutting t=
hose off. I assume that redirection is not appropriate because your applicat=
ion uses stdout?


Sent from my iPhone

> On Jan 3, 2022, at 5:14 PM, ri28856@mit.edu wrote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> I=E2=80=99ve attempted to use uhd::tx_streamer::recv_async_msg() before, b=
ut it slowed down my application and caused frequent lates on the tx_streame=
r. I=E2=80=99m unclear on the intended usage. I tried creating a separate th=
read that polls in an infinite while loop looking for async messages. Am I i=
nadvertently adding contention over a mutex hidden somewhere inside tx_strea=
mer? If I handle the async message, does that prevent UHD from printing =E2=80=
=9CL=E2=80=9D to stdout?
>=20
>=20
>=20
> This only handles part of my issue. What about the Rx side? For my applica=
tion, I am not issuing individual Rx stream commands, only a single one on s=
tartup to constantly receive. I then call uhd::rx_streamer::recv() in an inf=
inite loop. I check the error code returned in the form of a uhd::rx_metadat=
a_t. How do I prevent it from printing =E2=80=9CD=E2=80=9D to stdout in the e=
vent where I drop a packet?
>=20
>=20
>=20
> As a side note, why should I upgrade? Normally I would just try to stay up=
 to date with libraries I=E2=80=99m using, but for this particular applicati=
on I have a bunch of air gapped systems that are difficult to release new li=
bs onto for largely bureaucratic reasons. I haven=E2=80=99t noticed any new f=
eatures in the release notes I need, and my application has good enough perf=
ormance, so I never bothered updating UHD.
>=20
> Thanks,
>=20
> Richard
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-7C7492FE-A62C-4BA1-95EE-8E614736CF59
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I don=E2=80=99t think that recv_async_msg()=
 blocks. So an infinite loop will chews up CPU.&nbsp;<div><br></div><div>The=
 production o O/L/D/U happens independently. I=E2=80=99m struggling with mul=
ti laptop failure right now or I=E2=80=99d get you more info on shutting tho=
se off. I assume that redirection is not appropriate because your applicatio=
n uses stdout?</div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><=
div dir=3D"ltr"><br><blockquote type=3D"cite">On Jan 3, 2022, at 5:14 PM, ri=
28856@mit.edu wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF<p>Hi Marcus,</p><p>I=E2=80=99ve attempted to use uhd=
::tx_streamer::recv_async_msg() before, but it slowed down my application an=
d caused frequent lates on the tx_streamer. I=E2=80=99m unclear on the inten=
ded usage. I tried creating a separate thread that polls in an infinite whil=
e loop looking for async messages. Am I inadvertently adding contention over=
 a mutex hidden somewhere inside tx_streamer? If I handle the async message,=
 does that prevent UHD from printing =E2=80=9CL=E2=80=9D to stdout?</p><p><b=
r></p><p>This only handles part of my issue. What about the Rx side? For my a=
pplication, I am not issuing individual Rx stream commands, only a single on=
e on startup to constantly receive. I then call uhd::rx_streamer::recv() in a=
n infinite loop. I check the error code returned in the form of a uhd::rx_me=
tadata_t. How do I prevent it from printing =E2=80=9CD=E2=80=9D to stdout in=
 the event where I drop a packet?</p><p><br></p><p>As a side note, why shoul=
d I upgrade? Normally I would just try to stay up to date with libraries I=E2=
=80=99m using, but for this particular application I have a bunch of air gap=
ped systems that are difficult to release new libs onto for largely bureaucr=
atic reasons. I haven=E2=80=99t noticed any new features in the release note=
s I need, and my application has good enough performance, so I never bothere=
d updating UHD. </p><p>Thanks,</p><p>Richard</p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-7C7492FE-A62C-4BA1-95EE-8E614736CF59--

--===============7136075412789355481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7136075412789355481==--
