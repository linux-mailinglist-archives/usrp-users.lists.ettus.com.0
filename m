Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BED86F1AA7
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 16:42:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31023383F8E
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 10:42:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682692949; bh=5f+NH7XGt7RFoIE5syuZELe/MXbiK4yW3d7sr3mapIg=;
	h=References:In-Reply-To:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=W7juFQBeU2chR2z0MR7x6b2FxM+Wdf2mtBgXrfGvvzu6e5e1pYNMKyYynDc6tHpzk
	 MWVUJrnDtdFYQoJ/U7v+j/9euXl38Szjq76rsr+rnqKhtOmLHEc0qe9h8FPviEuLjn
	 F+bW4GO5i5216iZm0GvNUTj/NOj7pcMFqkrsGdikFK5ml0i3orttPUhe7axZpSYgTW
	 R2zQkCNstDHt+KE8KyUe5ueV8V6SYg1rtmGiGEgNNqV77qJ08fMti0xgcK4KizorVO
	 j7fX1f68zGBDK5g1+PvxcOu8kquU4HhAUBmVc/TeaCaiQjEkEDaDsLAeXTcTqpBkPV
	 YVIf+2NpeVrcg==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 37112383DD8
	for <usrp-users@lists.ettus.com>; Fri, 28 Apr 2023 10:41:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=mail-pucv-cl.20221208.gappssmtp.com header.i=@mail-pucv-cl.20221208.gappssmtp.com header.b="CkvD9oMj";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-94f32588c13so1508767066b.2
        for <usrp-users@lists.ettus.com>; Fri, 28 Apr 2023 07:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-pucv-cl.20221208.gappssmtp.com; s=20221208; t=1682692904; x=1685284904;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BVNMqJKkuQQ5qKlnaodQzj3LZht1PdjzpHTfxvH9xls=;
        b=CkvD9oMjteGroko01p88r4cK7pctMWU7GbcsRzMVnB4VtmBRTRo4lJ35rbErQkRrsn
         BVAAXsRo/6Cuq5OIYPl46ViXpbsmyjr7BxVYTRimvG1R4MTq90SQ3d6m1LwSRJg5m9jI
         O6aoKzazqndSTdfLXklb5cmovlcCPguWQ8LMer8uok24ZTZDuNRSizeLeJJFws/3hHhC
         x5de1SpTtkvtRPCeeEV7IEKCRubpQ7FDqV3X+0KvpsDlpQGyYNw0prNZozqt9E2csQGf
         d0ynjg1f39rH92ODgsB+uL5HdrOx6VtVVNB/2nOtkRKI+ZAN79G7WkejMBdXGnga65rg
         Q1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682692904; x=1685284904;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BVNMqJKkuQQ5qKlnaodQzj3LZht1PdjzpHTfxvH9xls=;
        b=DrKO5ChhD4ij4/M43UKbcmDdfLYMNpse7QtlWGs0s0RDO2eHRNcjpq+uXLcCHU4HzV
         lplQNRuuEbNtdHzzutaHQxcaN03RRNwNgILhMkLXjP9DyqVcqP6ZO03nCy+6+XzbJi/A
         /pCHD6VifnBgAATVDd7MtsXx2PAuxoXWuV8fENg2rJvIHmd/fyY95JRR75xw7+PTIgFI
         CIi5rj3l6lcCDTG0zPokMSVnmlyDSKMXAxLvpTAHoEpikyHkVlNeY6SuHguMNDTPC8uR
         yQ7LLi60c5HO+/aHjwJLj8hNliFiEYSmX2mmp+FLvYNun39bBV8QNzuNG7XFTLO+i4n1
         hMPw==
X-Gm-Message-State: AC+VfDw+FiAmUUT31KWqqifoSE7DPAJhNsa7c0Ud/BG3wNujo97klPkb
	mlF2yRL2UtM0O8oktFUt70Y7e+m0vSrdJtRfO1Pr4WAyGuK88jeeaw==
X-Google-Smtp-Source: ACHHUZ4wN47CWKpFzjHKfkrlgVef7XwsiDCfC4Y4UXVCDEXXQNGi6TOlbBSAdYUuiuxSIqC/1LE9os0c1bVD+oY6VUA=
X-Received: by 2002:a17:907:628a:b0:94f:80d6:b825 with SMTP id
 nd10-20020a170907628a00b0094f80d6b825mr5474677ejc.19.1682692903673; Fri, 28
 Apr 2023 07:41:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAFFpLrECHikVQ-KE=y1Z4mVhs6y+prmqtBdR6WJcbuae5553Mg@mail.gmail.com>
 <a0f6365f-2c89-f12e-bc3b-92dfbee348ee@gmail.com> <CAFFpLrFBT+WhWKfxivM_a9RjW7g9WhDK2Hq9vJVMRXxZJWwSaw@mail.gmail.com>
 <deb40247-34a6-a7a7-af1d-306252c13e56@gmail.com>
In-Reply-To: <deb40247-34a6-a7a7-af1d-306252c13e56@gmail.com>
Date: Fri, 28 Apr 2023 10:41:32 -0400
Message-ID: <CAFFpLrGfEMB=5Oz8v6WnAnhb4nNS9aJZM3UBbomS7GmBeMnVQA@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: YYE6O4AZANLKY6ANFXZTAIHWMZWFHPGQ
X-Message-ID-Hash: YYE6O4AZANLKY6ANFXZTAIHWMZWFHPGQ
X-MailFrom: jorge.gonzalez.o@mail.pucv.cl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: static ip on E312 not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YYE6O4AZANLKY6ANFXZTAIHWMZWFHPGQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: JORGE GONZALEZ ORELLANA via USRP-users <usrp-users@lists.ettus.com>
Reply-To: JORGE GONZALEZ ORELLANA <jorge.gonzalez.o@mail.pucv.cl>
Content-Type: multipart/mixed; boundary="===============5557103313285814031=="

--===============5557103313285814031==
Content-Type: multipart/alternative; boundary="000000000000ca329e05fa667852"

--000000000000ca329e05fa667852
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I end up making a interfaces file under /etc/network with this content:

$ auto lo
$ iface lo inet loopback

$ auto eth0
$ iface eth0 inet static
$ address 192.168.10.42
$ netmask 255.255.255.0

and it works correctly, now i have a static ip.

another question that i have, it how to take a file from the USRP, i been
try scp -p and i get this on the terminal

root@ni-e31x-32132F0:~# scp -p piano.wav uno@192.168.10.2:/~
ssh: connect to host 192.168.10.2 port 22: Connection refused
lost connection

running ping from the usrp to the host pc works fine.

El jue, 27 abr 2023 a las 21:30, Marcus D. Leech (<patchvonbraun@gmail.com>=
)
escribi=C3=B3:

> On 27/04/2023 14:12, JORGE GONZALEZ ORELLANA wrote:
> > eth0.network  sfp0.network    sfp0_2.network  sfp1.network
> >  sfp1_2.network
> > int0.network  sfp0_1.network  sfp0_3.network  sfp1_1.network
> >  sfp1_3.network
> >
> I followed the guide here:
>
> https://wiki.archlinux.org/title/systemd-networkd
>
> Since the E31x series use systemd-networkd
>
> The config files are under /data/network, but other than that, it
> follows systemd-networkd
>
>

--000000000000ca329e05fa667852
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-family:arial,sans-serif">I end up=
 making a interfaces file under /etc/network with this content:</span></div=
><div><span style=3D"font-family:arial,sans-serif"><br></span></div><div><p=
re class=3D"gmail-notranslate"><span style=3D"font-family:arial,sans-serif"=
><code>$ auto lo
$ iface lo inet loopback

$ auto eth0
$ iface eth0 inet static
$ address 192.168.10.42
$ netmask 255.255.255.0
<br></code></span></pre></div><div><span style=3D"font-family:arial,sans-se=
rif">and it works correctly, now i have a static ip.</span></div><div><span=
 style=3D"font-family:arial,sans-serif"><br></span></div><div><span style=
=3D"font-family:arial,sans-serif">another question that i have, it how to t=
ake a file from the USRP, i been try scp -p and i get this on the terminal<=
/span></div><div><span style=3D"font-family:arial,sans-serif"><br></span></=
div><div><span style=3D"font-family:arial,sans-serif">root@ni-e31x-32132F0:=
~# scp -p piano.wav uno@192.168.10.2:/~<br>ssh: connect to host 192.168.10.=
2 port 22: Connection refused<br>lost connection</span><br></div><div><br><=
/div><div>running ping from the usrp to the host pc works fine.<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El=
 jue, 27 abr 2023 a las 21:30, Marcus D. Leech (&lt;<a href=3D"mailto:patch=
vonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;) escribi=C3=B3:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">On 27/04/2023 14:12, JO=
RGE GONZALEZ ORELLANA wrote:<br>
&gt; eth0.network =C2=A0sfp0.network =C2=A0 =C2=A0sfp0_2.network =C2=A0sfp1=
.network =C2=A0 <br>
&gt; =C2=A0sfp1_2.network<br>
&gt; int0.network =C2=A0sfp0_1.network =C2=A0sfp0_3.network =C2=A0sfp1_1.ne=
twork <br>
&gt; =C2=A0sfp1_3.network<br>
&gt;<br>
I followed the guide here:<br>
<br>
<a href=3D"https://wiki.archlinux.org/title/systemd-networkd" rel=3D"norefe=
rrer" target=3D"_blank">https://wiki.archlinux.org/title/systemd-networkd</=
a><br>
<br>
Since the E31x series use systemd-networkd<br>
<br>
The config files are under /data/network, but other than that, it <br>
follows systemd-networkd<br>
<br>
</blockquote></div>

--000000000000ca329e05fa667852--

--===============5557103313285814031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5557103313285814031==--
