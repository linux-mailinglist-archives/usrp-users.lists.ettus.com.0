Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C222C28FE
	for <lists+usrp-users@lfdr.de>; Tue, 24 Nov 2020 15:07:36 +0100 (CET)
Received: from [::1] (port=60565 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khYyj-0002OY-VA; Tue, 24 Nov 2020 09:07:33 -0500
Received: from mail-lj1-f170.google.com ([209.85.208.170]:33166)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <prkane92@gmail.com>) id 1khYyg-0002Ig-LD
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 09:07:30 -0500
Received: by mail-lj1-f170.google.com with SMTP id t22so9765657ljk.0
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 06:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+wV2pK1v3iLgk/mSB9v8XDCxvFoyfDjapGBlvYX1R5A=;
 b=WGhouK9YX20ZHrvUKkFdMXhmLAbuRL+wFsh9p2Q/YIT1mjrojmZ9PtdhN/ArkSdlfa
 fk17Ji3RukDtjSvYRWeorNVqguKzmtT5bBlo4YMiZSV1jJqJobtGOG6xJZqxGkS4ajwK
 YgLRPyzLjA/vHS5QSh9430Ql3lhBS6pRYwcdfsBeoD2Oc5B1llrMG0rAzugKMxvslVYF
 aJu7CznbW5xmB6OrihSkUkuo3UxCbme61Hg0Uu3tQD50bd2CEMKVPRvbl/Ry8+dEI174
 Pvf10RscmojuGl4WDlowZJj3mwxz7t12bKhTMAwkjKA/PoVcsQXqVYmXUfk0688Ajr0R
 n4vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+wV2pK1v3iLgk/mSB9v8XDCxvFoyfDjapGBlvYX1R5A=;
 b=AHrfd1RLVaULOtqqaBQYDB/wyph3TfCoF87KJbDY5osSHvarJ9nPuL268Lmx8Wmaej
 YuJmmI0KL23sj00pD5PLssJW8Dn5vyhtugtQ7mmUSv/I+JwQBXimTmz04e0leczGBBe+
 7UUjs2CieqhlNnfLAx6H8f9AOA193DGNrZM7xLhH9k5CJ2+kF0o2T2myemSJvyWf63J0
 8f8ap2QZ+NqoVFX0kgA7rpzqMckcQH5cZ4s4VbFJNMs2NXLEQfZ+JQSWdHbQN+gjaNbM
 cV9ZTG6hDqNBaHc/SCnpAYUxytdfq/w9Hn8WelUqS6eBoNuMG7331sUP+ww479cwXDG/
 vEyQ==
X-Gm-Message-State: AOAM5318u/ngZw8Ps4wVvhMO8Qeom9MVU7RpeiXdcOP51C26J9yMiZIj
 4QA30PjWpatDihgFddLY2xU+Je/SM6ohUKEgJh0=
X-Google-Smtp-Source: ABdhPJzE8/tS63ZKryxue4FJ7j/gPK7MLMt6zYGWSndnFvbVGZ2IQAkgekxLLWJ12XH8fWNLOIz5Q7hnoeo9qADrnnI=
X-Received: by 2002:a2e:5815:: with SMTP id m21mr724615ljb.361.1606226809114; 
 Tue, 24 Nov 2020 06:06:49 -0800 (PST)
MIME-Version: 1.0
References: <CAOLzfSg88FT3Cm_-Dd0jL__BchiuGhR03jLW1nxCv5N3O-TQjg@mail.gmail.com>
 <84B751A1-3137-41AA-91FF-AAAEB03C7927@ettus.com>
In-Reply-To: <84B751A1-3137-41AA-91FF-AAAEB03C7927@ettus.com>
Date: Tue, 24 Nov 2020 09:06:37 -0500
Message-ID: <CAOLzfSjROwto1SRtXa=H1ce6pRZssLYKF5mjQQrTSHdqOBXgrA@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] N321 QSFP+ XQ image network connection
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Patrick Kane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Patrick Kane <prkane92@gmail.com>
Content-Type: multipart/mixed; boundary="===============7664327081164749117=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7664327081164749117==
Content-Type: multipart/alternative; boundary="00000000000062d45305b4dad26b"

--00000000000062d45305b4dad26b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mike,

That seemed to do the trick, thanks for info! At some point, can we make
these steps part of the N32x getting started docs?

Also- the config utilty makes me choose 2x2x10 A, B, or LOM. Choosing A
disables the second port on the QDA2, and B disables the first port. LOM
disables both ports (expected because it's not a MB NIC). My ideal case is
using 2x N321s over QSFP on the same XL710-QDA2 NIC. Have you had any luck
in this configuration?

Thanks,
Pat

On Mon, Nov 23, 2020 at 9:23 PM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Pat - I recently verified that the N321 QAFP+ interface works with UHD
> 4.0 release. I am also using an Intel XL710 (QDA2, but that probably
> doesn=E2=80=99t matter too much). The trick for me was using the Intel QS=
FP+ NIC
> configuration tool to set the NIC to 2x(2x10 Gb) mode. This is the settin=
g
> that the N321 requires, and one that the NIC provides. Once that was set
> then you need to configures the host and USRP network interfaces as you
> normally would. After all of that, the link worked very nicely! I hope th=
is
> is useful! - MLD
>
> On Nov 23, 2020, at 4:44 PM, Patrick Kane via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
>
> I have an N321 connected to serial console and QSFP+ through a XL710 Inte=
l
> NIC. With the default HG image, I can connect through 1G and serial as
> expected. I updated the filesystem to UHD 4.0.0.0 using mender, and the
> build artifact reflects that this was successful. Then, after loading the
> XQ image (using 2x 10Gb lanes through QSFP+ port), I lose all ethernet
> connectivity through the 1G port SFP0 (expected), but I get the following
> output in the console window:
>
>
> [  451.560674] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
>
> [  453.800673] nixge 40000000.ethernet sfp0: Link is Down
>
> [  454.920676] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
>
> [  458.280672] nixge 40000000.ethernet sfp0: Link is Down
>
> [  459.400677] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
>
> [  462.760705] nixge 40000000.ethernet sfp0: Link is Down
>
> [  463.880678] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
> flow control off
>
> [  466.120673] nixge 40000000.ethernet sfp0: Link is Down
>
>
> uhd_usrp_probe:
>
>   _____________________________________________________
>
>  /
>
> |       Device: N300-Series Device
>
> |     _____________________________________________________
>
> |    /
>
> |   |       Mboard: ni-n3xx-31E00AC
>
> |   |   dboard_0_pid: 338
>
> |   |   dboard_0_serial: 31DB406
>
> |   |   dboard_1_pid: 338
>
> |   |   dboard_1_serial: 31DB407
>
> |   |   eeprom_version: 3
>
> |   |   fs_version: 20200914000806
>
> |   |   mender_artifact: v4.0.0.0_n3xx
>
> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
>
> |   |   pid: 16962
>
> |   |   product: n320
>
> |   |   rev: 7
>
> |   |   rpc_connection: local
>
> |   |   serial: 31E00AC
>
> |   |   type: n3xx
>
> |   |   MPM Version: 3.0
>
> |   |   FPGA Version: 8.0
>
> |   |   FPGA git hash: be53058.clean
>
> |   |
>
> |   |   Time sources:  internal, external, gpsdo, sfp0
>
> |   |   Clock sources: external, internal, gpsdo
>
> |   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
> gps_time, gps_tpv
>
>
> Are there any configuration items needed to connect to the N321 through
> the QSFP+ port. Note that I only see eth0, sfp0, sfp1, and int0 in
> /etc/network/interfaces.
>
>
> Thanks,
>
> Pat
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--00000000000062d45305b4dad26b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mike,=C2=A0<div><br></div><div>That seemed to do the tr=
ick, thanks for info! At some point, can we make these steps part of the N3=
2x getting started docs?=C2=A0</div><div><br></div><div>Also- the config ut=
ilty makes me choose 2x2x10 A, B, or LOM. Choosing A disables the second po=
rt on the QDA2, and B disables the first port. LOM disables both ports (exp=
ected because it&#39;s not a MB NIC). My ideal case is using 2x N321s over =
QSFP on the same XL710-QDA2 NIC. Have you had any luck in this configuratio=
n?=C2=A0</div><div><br></div><div>Thanks,</div><div>Pat</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 23=
, 2020 at 9:23 PM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ett=
us.com">michael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"ltr">Hi Pat =
- I recently verified that the N321 QAFP+ interface works with UHD 4.0 rele=
ase. I am also using an Intel XL710 (QDA2, but that probably doesn=E2=80=99=
t matter too much). The trick for me was using the Intel QSFP+ NIC configur=
ation tool to set the NIC to 2x(2x10 Gb) mode. This is the setting that the=
 N321 requires, and one that the NIC provides. Once that was set then you n=
eed to configures the host<span style=3D"color:rgb(0,0,0)">=C2=A0and USRP</=
span>=C2=A0network interfaces as you normally would. After all of that, the=
 link worked very nicely! I hope this is useful! - MLD=C2=A0</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Nov 23, 2020, at 4:44 PM, Patrick=
 Kane via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></blockquote=
></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"=
><div>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">I have an N321 connected =
to serial console and QSFP+ through a XL710 Intel NIC. With the default HG =
image, I can connect through 1G and serial as expected. I updated the files=
ystem to UHD 4.0.0.0 using mender, and the build artifact reflects that thi=
s was successful. Then, after loading the XQ image (using 2x 10Gb lanes thr=
ough QSFP+ port), I lose all ethernet connectivity through the 1G port SFP0=
 (expected), but I get the following output in the console window:</span></=
p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&qu=
ot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 451.560674] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 453.800673] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 454.920676] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 458.280672] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 459.400677] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 462.760705] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 463.880678] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 466.120673] nixge
40000000.ethernet sfp0: Link is Down</span><span style=3D"font-size:10pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:black"> </span></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&qu=
ot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p class=3D"MsoNor=
mal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;font-family:=
Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot;Segoe U=
I&quot;,sans-serif;color:black">uhd_usrp_probe:</span></p><div>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">=C2=A0 __________________=
___________________________________</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">=C2=A0/</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Device:
N300-Series Device</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0 /</sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard:
ni-n3xx-31E00AC</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_0_pid: 338</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_0_serial:
31DB406</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_1_pid: 338</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_1_serial:
31DB407</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 eeprom_version: 3</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 fs_version:
20200914000806</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 mender_artifact:
v4.0.0.0_n3xx</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 mpm_sw_version:
4.0.0.0-g90ce6062</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 pid: 16962</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 product: n320</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 rev: 7</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 rpc_connection:
local</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 serial: 31E00AC</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 type: n3xx</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 MPM Version: 3.0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 FPGA Version: 8.0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 FPGA git hash:
be53058.clean</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |</span></p=
>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Time sources:=C2=A0
internal, external, gpsdo, sfp0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Clock sources:
external, internal, gpsdo</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Sensors:
ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv</s=
pan></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;f=
ont-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt=
;font-family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p=
 class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal"><font colo=
r=3D"#000000" face=3D"Segoe UI, sans-serif"><span style=3D"font-size:13.333=
3px">Are there any configuration items needed to connect to the N321 throug=
h the QSFP+ port. Note that I only see eth0, sfp0, sfp1, and int0 in /etc/n=
etwork/interfaces.</span></font></p><p class=3D"MsoNormal" style=3D"margin:=
2pt 0in;line-height:normal"><font color=3D"#000000" face=3D"Segoe UI, sans-=
serif"><span style=3D"font-size:13.3333px"><br></span></font></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal"><font color=3D"#=
000000" face=3D"Segoe UI, sans-serif"><span style=3D"font-size:13.3333px">T=
hanks,</span></font></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line=
-height:normal"><font color=3D"#000000" face=3D"Segoe UI, sans-serif"><span=
 style=3D"font-size:13.3333px">Pat</span></font></p>

</div><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;fon=
t-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p>

</div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></blockquote></div>

--00000000000062d45305b4dad26b--


--===============7664327081164749117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7664327081164749117==--

