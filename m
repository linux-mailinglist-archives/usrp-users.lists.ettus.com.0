Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 324EE3A8EBF
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 04:15:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0645383EA5
	for <lists+usrp-users@lfdr.de>; Tue, 15 Jun 2021 22:15:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ylg1/8sG";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D92A383E6A
	for <usrp-users@lists.ettus.com>; Tue, 15 Jun 2021 22:14:26 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id z4so719478qts.4
        for <usrp-users@lists.ettus.com>; Tue, 15 Jun 2021 19:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:message-id:date
         :cc:to;
        bh=vql8uT53QB7RKFU2jDJdrNPUL+l/FCyEQUWaMx12Ub8=;
        b=Ylg1/8sGATJAdTs2EtH2y3kYVZrYYHKxpG9OraObBXOW99cAzydm4IQAQO+e8p7Ihx
         hXKK5H7+ZWxRUjYb2OgYRQwax/wv9JdiecM6kgB2uZKBjr9C+nIP8Z9cGbHsvOXy3DX+
         /1IpXpZGwzGbNKffjig4qvZgUlr7EdiRblTEM4fAJLBwIjNeJBuN08+styEPtQHKWSDU
         1bmFUQ5njK8+LlRBfpd7aGJsIBmZyJMAosbVK3Zo9sa3FDPtpwUeC/Zsmvpgkns5UMKV
         WDXRCrx4sK1aTtLTz/NWde5aAt33MNfS9BM844YbtJzrliflQK/wnZqgHy+p44+Tj8ju
         qNog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:message-id:date:cc:to;
        bh=vql8uT53QB7RKFU2jDJdrNPUL+l/FCyEQUWaMx12Ub8=;
        b=XQ5t45l3CizB+GfFBhtRM/a4uvyMW7qNv+9LiN7Fh8Ai5pd15Ktf4agSCRVr/0f2lz
         a2abetFnPSebLpHqOGdVC7sveCV6R1Yae4w9Pupa/rWM3J8IP+BwgL0u1XBCWdff3pVd
         qKfm5EWbp+fLPUPqN/iVqci86h0qg31TLTG+xdscw3os55bqauC4vTXvAxGHO+FW5Z0k
         FRceLRAdIih94ZBEm7hcGDjKOhAJgIgUlJDbuu+tfaaDWIcdYkMW+tTSJc74VIGptsD/
         x85h7WmLs5KpOL4FJuupz2PL94EXib7HvWRYgCgDiheQZWGGNewpfeOVE8QTGBLzNsNv
         PfOQ==
X-Gm-Message-State: AOAM530QFfNucGVXlyanPAuNT1/YtOsKyr6K9oQsIo3bIfooDujWptZu
	lWJtcmboydR+EYnjEfyj7msw6hQREDDrEw==
X-Google-Smtp-Source: ABdhPJyfU2vf2Du6Qk7arIHP60QSW/6vznj+ftwnni/xTFvv8zVewNDqBJY925hazkrmN+zqircLGQ==
X-Received: by 2002:ac8:1483:: with SMTP id l3mr2772418qtj.142.1623809666179;
        Tue, 15 Jun 2021 19:14:26 -0700 (PDT)
Received: from smtpclient.apple ([2601:151:c000:a810:f013:4730:acad:2e38])
        by smtp.gmail.com with ESMTPSA id t196sm667555qke.50.2021.06.15.19.14.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 19:14:25 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <F89F05CF-A154-411D-9716-767FE5B3114A@gmail.com>
Date: Tue, 15 Jun 2021 22:14:12 -0400
To: rblack@swri.org
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: FC6GG3K3V6OWI3QT2LHLDNKHDKHHUDCD
X-Message-ID-Hash: FC6GG3K3V6OWI3QT2LHLDNKHDKHHUDCD
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Software Loopback RFNoC TX/RX same flowgraph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FC6GG3K3V6OWI3QT2LHLDNKHDKHHUDCD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8463549540500397637=="


--===============8463549540500397637==
Content-Type: multipart/alternative; boundary=Apple-Mail-880AA697-5B85-4FA6-99A3-520C85131FD2
Content-Transfer-Encoding: 7bit


--Apple-Mail-880AA697-5B85-4FA6-99A3-520C85131FD2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

=EF=BB=BF
Robert,=20
Not to answer for Jonathan, but I tested the loopback patch a few days ago a=
nd it definitely works.=20
My setup is the following=20
Ubuntu18.04
UHD 4 (UHD-4.0 branch)
GNURadio (maint-3.8)
gr-ettus (master branch)
X310 running the HA image (1G/Aurora)

You need to apply the patch using=20
git am
It will error when you try to run it, but you can get around that by deletin=
g the first part of the patch file as the DUC fix is in the master branch no=
w.=20

In other news, I=E2=80=99ve also FINALLY gotten aurora working across two X3=
10=E2=80=99s (no host streaming) using the same setup as above plus a second=
 X310. I=E2=80=99ll do a detailed post on this in a few days.=20
I had to keep the patch applied to get it to work because the base build of U=
HD4 didn=E2=80=99t work =E2=80=9Cout of the box=E2=80=9D. I=E2=80=99ve confi=
rmed this is the case by rebuilding the entire system from the ground up.=20=

There is an=20
=E2=80=9CRFNoC Error: Op Timeout config_stream=E2=80=9D or some such error t=
hat occurs sporadically (i don=E2=80=99t have it in front of me now). It see=
ms to be a race condition or maybe the radios are having a time/clock sync i=
ssue since I=E2=80=99m just using internal/default sources. With the patch i=
n place however it doesn=E2=80=99t propagate any actions so there is a stead=
y stream of warnings about that coming into the terminal.=20

I will dig in deeper tomorrow and debug/refine the use case, but at least fo=
r now the proof of concept works (for the most part) as it was shown at GRCO=
N2019.=20

Hope this is helpful.=20

<end transmission>

> On Jun 15, 2021, at 19:42, rblack@swri.org wrote:
> =EF=BB=BF
> Hi Johnathon,
>=20
> I am also trying to get loopback working on the X310. Several questions:
>=20
> Did Maris=E2=80=99s issues get resolved? With her last post she was still h=
aving problems after the patch install
>=20
> Which UHD versions is your patch compatible with?
>=20
> The software load comes with an =E2=80=9Cexample program=E2=80=9D called s=
omething like =E2=80=9Cloopback test=E2=80=9D. Is this supposed to work on X=
310?
>=20
> What loopback latency would you expect?
>=20
>=20
>=20
> thanks in advance
>=20
> robert
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-880AA697-5B85-4FA6-99A3-520C85131FD2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D=
"content-type" content=3D"text/html; charset=3Dutf-8"><div dir=3D"ltr"><meta=
 http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><div>Rob=
ert,&nbsp;</div><div>Not to answer for Jonathan, but I tested the loopback p=
atch a few days ago and it definitely works.&nbsp;</div><div>My setup is the=
 following&nbsp;</div><div>Ubuntu18.04</div><div>UHD 4 (UHD-4.0 branch)</div=
><div>GNURadio (maint-3.8)</div><div>gr-ettus (master branch)</div><div>X310=
 running the HA image (1G/Aurora)</div><div><br></div><div>You need to apply=
 the patch using&nbsp;</div><div>git am</div><div>It will error when you try=
 to run it, but you can get around that by deleting the first part of the pa=
tch file as the DUC fix is in the master branch now.&nbsp;</div><div><br></d=
iv><div><div>In other news, I=E2=80=99ve also FINALLY gotten aurora working&=
nbsp;<span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">across t=
wo X310=E2=80=99s (no host streaming)&nbsp;</span>using the same setup as ab=
ove plus a second X310. I=E2=80=99ll do a detailed post on this in a few day=
s.&nbsp;</div><div>I had to keep the patch applied to get it to work because=
 the base build of UHD4 didn=E2=80=99t work =E2=80=9Cout of the box=E2=80=9D=
. I=E2=80=99ve confirmed this is the case by rebuilding the entire system fr=
om the ground up.&nbsp;</div><div>There is an&nbsp;</div><div>=E2=80=9CRFNoC=
 Error: Op Timeout config_stream=E2=80=9D or some such error that occurs spo=
radically (i don=E2=80=99t have it in front of me now). It seems to be a rac=
e condition or maybe the radios are having a time/clock sync issue since I=E2=
=80=99m just using internal/default sources. With the patch in place however=
 it doesn=E2=80=99t propagate any actions so there is a steady stream of war=
nings about that coming into the terminal.&nbsp;</div><div><br></div><div>I w=
ill dig in deeper tomorrow and debug/refine the use case, but at least for n=
ow the proof of concept works (for the most part) as it was shown at GRCON20=
19.&nbsp;</div><div><br></div><div>Hope this is helpful.&nbsp;</div><div><br=
><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-=
highlight-color: rgba(26, 26, 26, 0.298);">end transmission&gt;</span></div>=
<div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 15, 2021, at 19:42, rb=
lack@swri.org wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF<p>Hi Johnathon,</p><p>I am also trying to get loopba=
ck working on the X310. Several questions:</p><ul><li><p>Did Maris=E2=80=99s=
 issues get resolved?  With her last post she was still having problems afte=
r the patch install</p></li><li><p>Which UHD versions is your patch compatib=
le with?</p></li><li><p>The software load comes with an =E2=80=9Cexample pro=
gram=E2=80=9D called something like =E2=80=9Cloopback test=E2=80=9D.  Is thi=
s supposed to work on X310?</p></li><li><p>What loopback latency would you e=
xpect?</p></li></ul><p><br></p><p>thanks in advance</p><p>robert</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></div></div></body></html>=

--Apple-Mail-880AA697-5B85-4FA6-99A3-520C85131FD2--

--===============8463549540500397637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8463549540500397637==--
