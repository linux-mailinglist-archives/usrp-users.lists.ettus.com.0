Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFBF3BA8CE
	for <lists+usrp-users@lfdr.de>; Sat,  3 Jul 2021 15:13:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 513B5384290
	for <lists+usrp-users@lfdr.de>; Sat,  3 Jul 2021 09:13:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Zm/J6Pbf";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id C9EFD38420E
	for <usrp-users@lists.ettus.com>; Sat,  3 Jul 2021 09:12:37 -0400 (EDT)
Received: by mail-qt1-f171.google.com with SMTP id h3so8787035qto.4
        for <usrp-users@lists.ettus.com>; Sat, 03 Jul 2021 06:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=k3SKFBA29WWAW585KwWpssOQPLNB/E9kFPgnXjVGrHM=;
        b=Zm/J6Pbf2oA+FpxJ62hCH11fxmFmHb/H3kwswvNg30gugAKIwjxJlxp2f+DE25XzIy
         4bjzvveoS3YfqgHLGMYIqwB3Rx4aS8sxCqZC2rpS37UpLqhYTeRPRMl6T8fa9BNvnTe0
         KQDYVdz2ccWwnDRPqEl1qnjnWLFxiUJywdRwS7eXQXEWcFA849gt2vbfszl8m2YIV8A6
         FS1ad9GHNmp9IkN2E3gpcQP3t13nXYrCfbikxzSOf9VRwSSWhh/3wYr8yeRyJslVBVe+
         PLV4MZOEpdurugwSMgyHTZURP4TM4/JRwM16xnjzRQyplztHj4iFkBjFGaXzbc5wUDrO
         Or7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=k3SKFBA29WWAW585KwWpssOQPLNB/E9kFPgnXjVGrHM=;
        b=RJRco/naK0+ehOXZD/lw0J8B1LLlnYF6z+LYeAvAPFLpADcwT7DpKYntI6U0Au8w7Q
         8el/ag/krfCQbTQcqQ9PMUf3VbXZwfjroJ/mHhfXJK9mQp/6T0xD+FOhK9bYW47SLe/G
         VPjyX4SV79wyl5pAgkTRsSJEredHOR0ro75CajnasUlTWoD6Lz2KstauFxqJ99MZTF5c
         7Yad+vkvLnxx1jqlw+lA0ydM952QBG0aXU9qmmNG9M2BiKlL0ZQpoO13lxkoX6NiylHA
         U5ZnwO2qtykYUd8e52xH12xbfvpVHsLhYxk3OWj2BFDT0InnkRUtCR2E0fIh3UcrhBgR
         s+6g==
X-Gm-Message-State: AOAM5311TtG2DwKD/Bqrlg6Md/QqDQ9s8v7oZYR4sLSiKgJWeAU3BUp9
	wkKLMfR3HIaxOte7B9MOBCqlLKQx+1WW7Q==
X-Google-Smtp-Source: ABdhPJwVqClAICE+sevA9fXCK7luoYAKrnKCKuzxj+JdlAkZmFZSKLUpKtooVkAETF3O7hMhMWeTDQ==
X-Received: by 2002:ac8:4e93:: with SMTP id 19mr4365068qtp.202.1625317957102;
        Sat, 03 Jul 2021 06:12:37 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id x25sm2695872qkx.109.2021.07.03.06.12.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 06:12:36 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 3 Jul 2021 09:12:35 -0400
Message-Id: <0407AD8C-3AD3-4E75-A172-045FD02891AF@gmail.com>
References: <CAKHaR3kZYqzU8KJwE7kDaBEaNXQoh-K-j-owHrbGXLHkrFTiYw@mail.gmail.com>
In-Reply-To: <CAKHaR3kZYqzU8KJwE7kDaBEaNXQoh-K-j-owHrbGXLHkrFTiYw@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: P27OETQ47PJE52RZVGDK7EV6GP5F55IM
X-Message-ID-Hash: P27OETQ47PJE52RZVGDK7EV6GP5F55IM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Zynq CPU efficiency in UDP transmission
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P27OETQ47PJE52RZVGDK7EV6GP5F55IM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8452969364741937671=="


--===============8452969364741937671==
Content-Type: multipart/alternative; boundary=Apple-Mail-718B1D57-35E5-41C6-8550-B8388F91A0A0
Content-Transfer-Encoding: 7bit


--Apple-Mail-718B1D57-35E5-41C6-8550-B8388F91A0A0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

If your special demux block is written in Python, that=E2=80=99s the first p=
lace to look for optimization. A Zynq CPU is only a fraction as powerful as e=
ven a modest desktop or laptop CPU. So you need to use C++ to give it a figh=
ting chance.=20

Sent from my iPhone

> On Jul 3, 2021, at 3:39 AM, Dario Pennisi <dario@iptronix.com> wrote:
>=20
> =EF=BB=BF
> Hi,
> i'm working on a N310 and developed a custom block which processes multipl=
e radio channels generating a low data rate output for each one. i'm outputt=
ing this data in a serialized way through a RFNoC block and parsing it throu=
gh a gnuradio block that demuxes it and sends each channel's data to a socke=
t. this works perfectly if graph runs on a PC but on zynq CPU load rises qui=
ckly and with around 20 channels CPU saturates.
> what demux block work function does is simply looking for EOB tags and sen=
ding each chunk of data to an UDP socket using writev, which i hoped was doi=
ng zero copy but that doesn't seem to be the case.
> note that in order for the demux block to work i had to use the 1GB port e=
th0 as using SFP ports connection would drop right away for some reason.
> note also i'm using a graph generated in python and haven't yet tested doi=
ng the same in C... not sure that would really help anyway.
>=20
> do you have any suggestion to improve UDP packet transmission on zynq, eve=
ntually suggesting how to perform real zero copy for UDP traffic in a GNURad=
io block?=20
>=20
> thanks!
> Dario Pennisi
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-718B1D57-35E5-41C6-8550-B8388F91A0A0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">If your special demux block is written in P=
ython, that=E2=80=99s the first place to look for optimization. A Zynq CPU i=
s only a fraction as powerful as even a modest desktop or laptop CPU. So you=
 need to use C++ to give it a fighting chance.&nbsp;<div><br><div dir=3D"ltr=
">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On=
 Jul 3, 2021, at 3:39 AM, Dario Pennisi &lt;dario@iptronix.com&gt; wrote:<br=
><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr">Hi,<div>i'm working on a N310 and developed a custom block w=
hich processes multiple radio channels generating a low data rate output for=
 each one. i'm outputting this data in a serialized way through a RFNoC bloc=
k and parsing it through a gnuradio block that demuxes it and sends each cha=
nnel's data to a socket. this works perfectly if graph runs on a PC but on z=
ynq CPU load rises quickly and with around 20 channels CPU saturates.</div><=
div>what demux block work function does is simply looking for EOB tags and s=
ending each chunk of data to an UDP socket using writev, which i hoped was d=
oing zero copy but that doesn't seem to be the case.</div><div>note that in o=
rder for the demux block to work i had to use the 1GB port eth0 as using SFP=
 ports connection would drop right away for some reason.</div><div>note also=
 i'm using a graph generated in python and haven't yet tested doing the same=
 in C... not sure that would really help anyway.</div><div><br></div><div>do=
 you have any suggestion to improve UDP packet transmission on zynq, eventua=
lly suggesting how to perform real zero copy for UDP traffic in a GNURadio b=
lock?&nbsp;</div><div><br></div><div>thanks!<br clear=3D"all"><div><div dir=3D=
"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D=
"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-si=
ze:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-family:=
Calibri,sans-serif;font-size:13.3333px"><br></div></div></div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-718B1D57-35E5-41C6-8550-B8388F91A0A0--

--===============8452969364741937671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8452969364741937671==--
