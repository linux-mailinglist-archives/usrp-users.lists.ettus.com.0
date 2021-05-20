Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57192389ADE
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 03:24:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2566B386304
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 21:24:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WM36Ksny";
	dkim-atps=neutral
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id A5D87385E09
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 21:24:02 -0400 (EDT)
Received: by mail-qv1-f54.google.com with SMTP id 5so7892582qvk.0
        for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 18:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=kIal1Cx2zQjCFd/lueupZixmqL2/ba9lumFpku/oCJA=;
        b=WM36KsnyXsXSVqFq2l3Jk1fhGuRHa3efF/ndz04i02PqijK6YwaARcY9Fg+ISfElbM
         Sw8J8ZoVxqr5BtrVMAy5zeWTw1a+S58rpZmJz3usA/pS6rguPO8cHE8VHQloeMPHJ2xF
         7X+Kbs+Xi/7+vlClyAzi2c1qxOMzj2QdOEbAn0x+OhTHoIx04JIw77JWNCgFlcq4fkoS
         TpI9MOfr93246lgK/fs6V+Uz5KAF3LYSU71wl+rOozGxdTwIsmN/wBkiQaH+E+0R0ICP
         L1GZSCeWBacQxzXdcKvu5GUwkpKs/GIxaLpjH6xbsmtoooDFJ+X17R4VsFauOwmCI5OS
         J9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=kIal1Cx2zQjCFd/lueupZixmqL2/ba9lumFpku/oCJA=;
        b=Ov0VmR1wMPgGEA+oyumgd7HShmP8gV6WXZ1QfKXgXG9cn6/yw38M9EYI/bI3fdOgA1
         fLZy5ussczr1IZYRjeJCm8Mm9HKdRkHEbPSXPE3vLNEGiky5jyOiZwG0j8rTYUMWpAbH
         Cs8MXo3qhB/VCUVS/X3M9FawUoGRt2mFof9Jn2U+NVnDYPGLV/IuZpOPaONlVzTXyIvP
         eBs25vHj96nZPwIzAmFaFjm6wSCQagIhvwqVe9P4UgS15fvxKyh7yCRvEC097uq60Egb
         vaLbcMSH+naKfil4kr28RLjMI2AkP67Y3OLqgFsTq8J+vAoPJNHEB3m/3zXwENxK0Bpq
         JwPQ==
X-Gm-Message-State: AOAM530KXL3vgxJjJprdeVqh/9T0WDHJeHkLvl1RMdh+dlB9KXuxagzB
	LPRelYmLaxX9xdQOBpDhYTMD7eETjM8=
X-Google-Smtp-Source: ABdhPJy599U1FDgnzM12mUCjw72S+qakX3spqmwQe7YXaXsCt3Q/KQcQXwGvVI3BXDK3OLhnX8z4sw==
X-Received: by 2002:a0c:e14b:: with SMTP id c11mr2661112qvl.56.1621473841932;
        Wed, 19 May 2021 18:24:01 -0700 (PDT)
Received: from [192.168.2.132] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id r72sm1071378qka.18.2021.05.19.18.24.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 18:24:01 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 19 May 2021 21:24:00 -0400
Message-Id: <355D7A4C-58FF-4540-8CC0-0E4703552511@gmail.com>
References: <CAL7q81vnp4zTY9+TooSiJNDyDtipWaCtuvVA_xfF6HO2qbQ0Xg@mail.gmail.com>
In-Reply-To: <CAL7q81vnp4zTY9+TooSiJNDyDtipWaCtuvVA_xfF6HO2qbQ0Xg@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: PG7SLYVL7V2IGXHQMC3HZNJY7Q2RMEK7
X-Message-ID-Hash: PG7SLYVL7V2IGXHQMC3HZNJY7Q2RMEK7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: thebouleoffools@gmail.com, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting network configuration (MTU) on the N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PG7SLYVL7V2IGXHQMC3HZNJY7Q2RMEK7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8681549724712675817=="


--===============8681549724712675817==
Content-Type: multipart/alternative; boundary=Apple-Mail-0E4A3102-9F7D-4738-97AE-D90AB75EDEDE
Content-Transfer-Encoding: 7bit


--Apple-Mail-0E4A3102-9F7D-4738-97AE-D90AB75EDEDE
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The referred to documentation doesn=E2=80=99t make that at all clear.=20

Sent from my iPhone

> On May 19, 2021, at 9:01 PM, Jonathon Pendlum <jonathon.pendlum@ettus.com>=
 wrote:
>=20
> =EF=BB=BF
> The configuration files for the network interfaces are on the data partiti=
on in the network directory.
>=20
> Jonathon
>=20
>> On Wed, May 19, 2021 at 4:02 PM <thebouleoffools@gmail.com> wrote:
>> Did you ever get a solution to this? I ran into this issue today, and the=
 solutions I found after a search were somewhat convoluted. As a quick worka=
round, I connected to the radio over a serial connection, brought down the n=
etwork iface, then brought it back up with my desired MTU. This isn=E2=80=99=
t ideal in any way, but I can=E2=80=99t get the MTU settings to stick either=
 in the systemd config.
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-0E4A3102-9F7D-4738-97AE-D90AB75EDEDE
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The referred to documentation doesn=E2=80=99=
t make that at all clear.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone<=
/div><div dir=3D"ltr"><br><blockquote type=3D"cite">On May 19, 2021, at 9:01=
 PM, Jonathon Pendlum &lt;jonathon.pendlum@ettus.com&gt; wrote:<br><br></blo=
ckquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D=
"ltr">The configuration files for the network interfaces are on the data par=
tition in the network directory.<div><br></div><div>Jonathon</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May=
 19, 2021 at 4:02 PM &lt;<a href=3D"mailto:thebouleoffools@gmail.com">thebou=
leoffools@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><p>Did you ever get a solution to this? I ran into this iss=
ue today, and the solutions I found after a search were somewhat convoluted.=
 As a quick workaround, I connected to the radio over a serial connection, b=
rought down the network iface, then brought it back up with my desired MTU. T=
his isn=E2=80=99t ideal in any way, but I can=E2=80=99t get the MTU settings=
 to stick either in the systemd config.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-0E4A3102-9F7D-4738-97AE-D90AB75EDEDE--

--===============8681549724712675817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8681549724712675817==--
