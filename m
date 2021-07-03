Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E3B3BA7AD
	for <lists+usrp-users@lfdr.de>; Sat,  3 Jul 2021 09:39:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F3DF384706
	for <lists+usrp-users@lfdr.de>; Sat,  3 Jul 2021 03:39:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="cGV/kvIN";
	dkim-atps=neutral
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 73CE83846B0
	for <usrp-users@lists.ettus.com>; Sat,  3 Jul 2021 03:38:48 -0400 (EDT)
Received: by mail-wr1-f53.google.com with SMTP id g7so15297101wri.7
        for <usrp-users@lists.ettus.com>; Sat, 03 Jul 2021 00:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=lWaL4kC+rcNhvjOxnUVG+fdXr+lCarSeHN62vRtx2QU=;
        b=cGV/kvINNfRvHf8JfKnTYgFdZbMiIQUxNAURn/nYzrsHm1i4Etzkfgt6snt3NxrW9M
         iy4go8Syy6UsIzPCA5jW7f0i3G0HkprCBGvM7R4iE1BQoRr86p3SU6hZjnLeIttRqLrr
         1mWVSWOFjjUhp8+j9ajR8NKEPdwN537vqRZo3vRQ3vzdgjcdgzr4bSMOoX/iE6AR99jb
         Qku33qrjXiliAbVG+5Os1sQH3PYViRveJe7I5uUH3s+C4/8SkEx5vzS0I8U9yVCaZjyJ
         loYBr7geF1K+0oZtp2ypd0/1ZRe8ms/ePs7+e5m3q1VQfEtFBC9imcEP16iL5uj8U1lK
         tQxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lWaL4kC+rcNhvjOxnUVG+fdXr+lCarSeHN62vRtx2QU=;
        b=QLVprwU54EQV085LjMQwEUqaSrSoiRRl9in1pIFFOFRMsfQJLL9Bl47Wnj0OG5qGFc
         /Bx14faVFS1D/u1i249Nmlh6r0GJ5EsYASwmEjg2i/rXISbQlCcl3mEgANqgQ9DAnJmC
         SDNWi4p82t96NK7503e+1OQXswktCHV6p7FcOBUj7hze6yox05pbobp6J2hPHCN+Sc42
         +7bU+cu4bsD4TIASzuJFcVKJ8N18iqgLD0oNwiX2zTq1LO7v+E3o5EKICW6ML5/YvPGR
         cCZ7fn5+Y52gdcirIMJIfgiCVxMILRxillY7QKEFRzsz1KlJNLIvim6vd1HQLQmqM8Zi
         S21w==
X-Gm-Message-State: AOAM5320o88/Ui7G8rVvZ8BoA4FZ8/y6NjYCCde/GLEKDZi4c77AEMW/
	DggfVudeisfSlBddT/U0PA1/F0aUT4X+XmAQngvpQ3RIgfDBLw==
X-Google-Smtp-Source: ABdhPJxbx09NAf9Zrtv/4XdUyVIERhhZWMNJPDsHUif97UJ2o6mufkIazTdmxAOd/yc9OQDJmP3lfuFUdwA2TkvNcIA=
X-Received: by 2002:adf:edc8:: with SMTP id v8mr3774760wro.279.1625297926944;
 Sat, 03 Jul 2021 00:38:46 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Sat, 3 Jul 2021 09:38:36 +0200
Message-ID: <CAKHaR3kZYqzU8KJwE7kDaBEaNXQoh-K-j-owHrbGXLHkrFTiYw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: DWQ3IKVIWM3JA6ENUHFAYVXR366AZS3U
X-Message-ID-Hash: DWQ3IKVIWM3JA6ENUHFAYVXR366AZS3U
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N310 Zynq CPU efficiency in UDP transmission
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DWQ3IKVIWM3JA6ENUHFAYVXR366AZS3U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2081527071961267659=="

--===============2081527071961267659==
Content-Type: multipart/alternative; boundary="000000000000970d4505c633295f"

--000000000000970d4505c633295f
Content-Type: text/plain; charset="UTF-8"

Hi,
i'm working on a N310 and developed a custom block which processes multiple
radio channels generating a low data rate output for each one. i'm
outputting this data in a serialized way through a RFNoC block and parsing
it through a gnuradio block that demuxes it and sends each channel's data
to a socket. this works perfectly if graph runs on a PC but on zynq CPU
load rises quickly and with around 20 channels CPU saturates.
what demux block work function does is simply looking for EOB tags and
sending each chunk of data to an UDP socket using writev, which i hoped was
doing zero copy but that doesn't seem to be the case.
note that in order for the demux block to work i had to use the 1GB port
eth0 as using SFP ports connection would drop right away for some reason.
note also i'm using a graph generated in python and haven't yet tested
doing the same in C... not sure that would really help anyway.

do you have any suggestion to improve UDP packet transmission on zynq,
eventually suggesting how to perform real zero copy for UDP traffic in a
GNURadio block?

thanks!
Dario Pennisi

--000000000000970d4505c633295f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i&#39;m working on a N310 and developed a custom b=
lock which processes multiple radio channels generating a low data rate out=
put for each one. i&#39;m outputting this data in a serialized way through =
a RFNoC block and parsing it through a gnuradio block that demuxes it and s=
ends each channel&#39;s data to a socket. this works perfectly if graph run=
s on a PC but on zynq CPU load rises quickly and with around 20 channels CP=
U saturates.</div><div>what demux block work function does is simply lookin=
g for EOB tags and sending each chunk of data to an UDP socket using writev=
, which i hoped was doing zero copy but that doesn&#39;t seem to be the cas=
e.</div><div>note that in order for the demux block to work i had to use th=
e 1GB port eth0 as using SFP ports connection would drop right away for som=
e reason.</div><div>note also i&#39;m using a graph generated in python and=
 haven&#39;t yet tested doing the same in C... not sure that would really h=
elp anyway.</div><div><br></div><div>do you have any suggestion to improve =
UDP packet transmission on zynq, eventually suggesting how to perform real =
zero copy for UDP traffic in a GNURadio block?=C2=A0</div><div><br></div><d=
iv>thanks!<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"color:r=
gb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">Dario Pennisi=
</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-si=
ze:13.3333px"><br></div></div></div></div></div>

--000000000000970d4505c633295f--

--===============2081527071961267659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2081527071961267659==--
