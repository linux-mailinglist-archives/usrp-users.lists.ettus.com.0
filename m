Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C71D54679EC
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 16:02:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 939E5385581
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 10:02:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="S7bWGdWA";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 73B043849A8
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 10:01:47 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id q74so10007573ybq.11
        for <usrp-users@lists.ettus.com>; Fri, 03 Dec 2021 07:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pGy1yXItwhGyKVf/WSMDiOO6aTfNHMAXkGzdmJEBh9s=;
        b=S7bWGdWADS4vfhbJT1iOF2fiBjCZPiYbtN4dUZYU7JSZPKO8QIeQQwRyns8VpP48EA
         9AuKeQbtE5rFqne2P3/tTwHWU5suOfFeRHFqr32Uw4HoCf5hwQ3Zeu8iTQ05hS3h86Uz
         AccGVDDyeDYOCGfT+Onm+q/MzmwcUV8oh2uT6IFN0ltsc196iJUiMXnTiYFSZJThyGgY
         EBcUEXWhYJOIUQQghRO4qUve9snRgJeDOMqgoOM6WhaPjhR3Mg+rxnTI3kz5u3JraAiD
         mHXPsD8nD0cCZFXMlhytreO5jrhqw5D+JqIwmL7MLCpvUHktkvFS71jqUUvlAc0IvXdT
         hyGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pGy1yXItwhGyKVf/WSMDiOO6aTfNHMAXkGzdmJEBh9s=;
        b=yVS8BSKFAXNWVcW3Vu5VXvZKE1XFOu6E12qGUDddMJQkqNMkdXyBelndxu7/tMXX8a
         KiBMm7lzXKGtQZUZr4a5+vY/d6ouv6DH7RaL16cVwrc5pOOWEHwKTuzcpvB0X5sABSrF
         VzNDV6P6C+jsJEKg6USAavs4zkWzuSAHVMyDUYji5VdW6WWudo6HT9mUuDMusM+gcDJA
         gzlxlItDTVMc3OsuWdkipyUkRofluiIG2PzI6M99iIYl4lsdRTY8n1lmWnq6eggYSzQE
         1xGoqRuS9vK6j6BSDw/uPaAYbKp4RuRl+zaadBOWJxqB+7vyuXVf2bf/A3o+3tiLB40F
         8mhQ==
X-Gm-Message-State: AOAM5326UEiBfPydcS0o/TaVSleF4A/KscEPufTiGiv4bMrvn/oB3scT
	hdg0zM5ZvgevC/c1klbY8MnpDhkQboEtTGGLDI++nGBB4Fo=
X-Google-Smtp-Source: ABdhPJzD30vVMg52eFYR1dBRO2FypppJRdkfvV/BcGZNouudIUQvHztmRoKkcqNedND8kkphN7SGLv+cklEgVeIGCQs=
X-Received: by 2002:a25:e755:: with SMTP id e82mr22202599ybh.389.1638543705339;
 Fri, 03 Dec 2021 07:01:45 -0800 (PST)
MIME-Version: 1.0
References: <vP1lc8kicnycCBqlxWVypm6YKXzuMdT32sFghxopl0@lists.ettus.com>
In-Reply-To: <vP1lc8kicnycCBqlxWVypm6YKXzuMdT32sFghxopl0@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 3 Dec 2021 10:01:34 -0500
Message-ID: <CAB__hTR36rdijKguDHLF-YNL7g0SvH_TcPJ2g2pF8WneH9=crw@mail.gmail.com>
To: iw1fnw@gmail.com
Message-ID-Hash: MLNFAQV3SZLMOFTFRV3GXILQHU7BQ476
X-Message-ID-Hash: MLNFAQV3SZLMOFTFRV3GXILQHU7BQ476
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MLNFAQV3SZLMOFTFRV3GXILQHU7BQ476/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2124505543208203121=="

--===============2124505543208203121==
Content-Type: multipart/alternative; boundary="00000000000081bc6905d23f2f5b"

--00000000000081bc6905d23f2f5b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don't know exactly when, but Ettus changed from using XGS and HGS images
to XG and HG.  I think this was in between 3.9 and 3.10 so maybe you are OK
with the XG image. But, I would recommend using the "--fpga-path" command
line argument to specify exactly which image you want.  My guess is that
when you use Vivado to download an image and things "work", you are
selecting an exact FPGA file in the Vivado GUI.  What happens if you select
this example same file using the "--fpga-path" argument to the
uhd_image_loader program?

On Fri, Dec 3, 2021 at 9:15 AM <iw1fnw@gmail.com> wrote:

> I can try re-programming with new images (if not already done) starting
> from Vivado. Is this what you mean?
>
> I tried a flood ping. With up to 6000 bytes packet all is fine. With 7000
> I start loosing a bit. With 8000 it loose 50%. I=E2=80=99m not sure if th=
is is
> normal with such long packets.
>
> abusso@ttclabsdr:~$ sudo ping -s 6000 192.168.30.2 -f
> PING 192.168.30.2 (192.168.30.2) 6000(6028) bytes of data.
> .
> --- 192.168.30.2 ping statistics ---
> 147 packets transmitted, 146 received, 0% packet loss, time 2875ms
> rtt min/avg/max/mdev =3D 19.729/25.174/27.233/1.240 ms, pipe 2, ipg/ewma =
19.697/24.942 ms
>
> abusso@ttclabsdr:~$ sudo ping -s 7000 192.168.30.2 -f
> PING 192.168.30.2 (192.168.30.2) 7000(7028) bytes of data.
> .....................
> --- 192.168.30.2 ping statistics ---
> 119 packets transmitted, 98 received, 17% packet loss, time 2235ms
> rtt min/avg/max/mdev =3D 22.885/101.313/137.328/24.301 ms, pipe 8, ipg/ew=
ma 18.943/108.385 ms
>
> abusso@ttclabsdr:~$ sudo ping -s 8000 192.168.30.2 -f
> PING 192.168.30.2 (192.168.30.2) 8000(8028) bytes of data.
> .....................................................................
> --- 192.168.30.2 ping statistics ---
> 138 packets transmitted, 69 received, 50% packet loss, time 1799ms
> rtt min/avg/max/mdev =3D 26.077/111.479/130.336/20.520 ms, pipe 10, ipg/e=
wma 13.138/116.295 ms
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000081bc6905d23f2f5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I don&#39;t know exactly when, but Ettus changed from usin=
g XGS and HGS images to XG and HG.=C2=A0 I think this was in between 3.9 an=
d 3.10 so maybe you are OK with the XG image. But, I would recommend using =
the &quot;--fpga-path&quot; command line argument to specify exactly which =
image you want.=C2=A0 My guess is that when you use Vivado to download an i=
mage and things &quot;work&quot;, you are selecting an exact FPGA file in t=
he Vivado GUI.=C2=A0 What happens if you select this example same file usin=
g the &quot;--fpga-path&quot; argument to the uhd_image_loader program?</di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, Dec 3, 2021 at 9:15 AM &lt;<a href=3D"mailto:iw1fnw@gmail.com">iw1fnw@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><p>I can try re-programming with new images (if not already done) s=
tarting from Vivado. Is this what you mean?</p><p>I tried a flood ping. Wit=
h up to 6000 bytes packet all is fine. With 7000 I start loosing a bit. Wit=
h 8000 it loose 50%. I=E2=80=99m not sure if this is normal with such long =
packets.</p><pre><code>abusso@ttclabsdr:~$ sudo ping -s 6000 192.168.30.2 -=
f
PING 192.168.30.2 (192.168.30.2) 6000(6028) bytes of data.
.
--- 192.168.30.2 ping statistics ---
147 packets transmitted, 146 received, 0% packet loss, time 2875ms
rtt min/avg/max/mdev =3D 19.729/25.174/27.233/1.240 ms, pipe 2, ipg/ewma 19=
.697/24.942 ms

abusso@ttclabsdr:~$ sudo ping -s 7000 192.168.30.2 -f
PING 192.168.30.2 (192.168.30.2) 7000(7028) bytes of data.
.....................
--- 192.168.30.2 ping statistics ---
119 packets transmitted, 98 received, 17% packet loss, time 2235ms
rtt min/avg/max/mdev =3D 22.885/101.313/137.328/24.301 ms, pipe 8, ipg/ewma=
 18.943/108.385 ms

abusso@ttclabsdr:~$ sudo ping -s 8000 192.168.30.2 -f
PING 192.168.30.2 (192.168.30.2) 8000(8028) bytes of data.
.....................................................................
--- 192.168.30.2 ping statistics ---
138 packets transmitted, 69 received, 50% packet loss, time 1799ms
rtt min/avg/max/mdev =3D 26.077/111.479/130.336/20.520 ms, pipe 10, ipg/ewm=
a 13.138/116.295 ms
<br></code></pre>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000081bc6905d23f2f5b--

--===============2124505543208203121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2124505543208203121==--
