Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7411CE2877
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 04:54:42 +0200 (CEST)
Received: from [::1] (port=34586 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNTGr-00086V-0q; Wed, 23 Oct 2019 22:54:41 -0400
Received: from mail-qt1-f178.google.com ([209.85.160.178]:45189)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iNTGn-00080V-8e
 for USRP-users@lists.ettus.com; Wed, 23 Oct 2019 22:54:37 -0400
Received: by mail-qt1-f178.google.com with SMTP id c21so35516647qtj.12
 for <USRP-users@lists.ettus.com>; Wed, 23 Oct 2019 19:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=DkcUyCGbRCagtoHCH+gACSx7bbfbXfMXf3kTjpx+Hwo=;
 b=Dmz7jRLy/9hTga9c2KAzHg2Xjq/aL6j14eMMY3AMCnf7xCqm6dLWu6TzmnVpSojyON
 KfkqJafEA7sDUARWwUOGTwY6g0qUTtxEfMxO5G3002rYpXnOhAl1sekeCncwZQMDRiEI
 Byg0FanrkVNEVdd8JaQcZdNxEqncruswSHQO76pclYRBZDZqsf53I2GY6QRAMxQFMtuh
 OsImSJUTTQ/GOD1sRhd/AU10qF0/H+thud1PUFo66LQ1xjSz0HTBDqQis9a4YR/pECPL
 x0kFIICa/NafmhuC7nnooJGyk5rUc/Z3r3hb0gqTkxI7j0wRaUoIrAcovl9DNihz/Mht
 M1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=DkcUyCGbRCagtoHCH+gACSx7bbfbXfMXf3kTjpx+Hwo=;
 b=lMo+M0WtSHd26xzOqWLe/FmnEPx2d9p6Bm3A1SZCDR1+/tRF9ORrjLEZgddaLXypJB
 d2Z65eZo2vGYdnexK+UxE/jTCWFvxD0WLuQkGAzvOThx0p4u4q0Wu4VN+UwHKBiVHvNT
 pLsnD19LXwfx5D1q2PZDcqU1nWHeEGeQydNZeG9V3mdsRDOWZGs8wItJerz8scdPaYkI
 RWM9pOETtOf4yCn34QUMrBXI8x2QKCaZFN4ZxZu72epsl8aJHnNKW6EuvuAAZXDaMDTq
 aAwnRR4ytST7NNo3N+GJAbYvJt/L9949Gcldkf26PIqNAsGFLg3G6GqZrUc/NoM5bZaN
 ttrw==
X-Gm-Message-State: APjAAAVs0mF7gu6l+qm52csFPztx3VsUz7LiRjlLX75sQnSMEgrOFCKh
 NdeKHgVJlo1rFaIhnWkT+Vo=
X-Google-Smtp-Source: APXvYqx6btFhWBzKIUe03ChTiQOIvVjzX+2iK6DzTspf391SWeSIbpmuI8mIkKH+Lek0gqyKZcOInA==
X-Received: by 2002:a0c:e612:: with SMTP id z18mr12665540qvm.147.1571885636446; 
 Wed, 23 Oct 2019 19:53:56 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.gmail.com with ESMTPSA id i185sm12209620qkc.129.2019.10.23.19.53.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Oct 2019 19:53:55 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Wed, 23 Oct 2019 22:53:55 -0400
Message-Id: <FCEC6A68-6E5D-4EA7-BD3A-E314F11F39FE@gmail.com>
References: <CA+JMMq8N1EzMBbAU_KUMn27G7ya0qOjPfv_F7F5pR-Vopda5nA@mail.gmail.com>
In-Reply-To: <CA+JMMq8N1EzMBbAU_KUMn27G7ya0qOjPfv_F7F5pR-Vopda5nA@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
X-Mailer: iPhone Mail (17A878)
Subject: Re: [USRP-users] Controlling an X310 from embedded devices
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "Muri, Richard - 1002 - MITLL" <Richard.Muri@ll.mit.edu>,
 "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2695961356993219863=="
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


--===============2695961356993219863==
Content-Type: multipart/alternative; boundary=Apple-Mail-869D6FDD-F8C2-481C-9A23-5C27B6BC1DB0
Content-Transfer-Encoding: 7bit


--Apple-Mail-869D6FDD-F8C2-481C-9A23-5C27B6BC1DB0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I run B210 from an Odoid XU4 platform and can get up to about 12Msps out of i=
t, depending on what I=E2=80=99m doing.=20

But no way you=E2=80=99ll do the 10s of Msps that the X3xx series is capable=
 of.=20

Sent from my iPhone

> On Oct 23, 2019, at 8:35 PM, Nick Foster via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> You should have no trouble running UHD on an ARM architecture. The Ettus E=
300 series radios are ARM devices. UHD does a huge amount of initialization a=
nd configuration for the X310, and in any case the X310 doesn't use VRT in a=
ny real capacity. You won't realistically be able to divorce the X310 from U=
HD.
>=20
> Your biggest headache on an embedded machine will be keeping up with high d=
ata rates, and waiting for UHD to compile in the first place. =3D)
>=20
> Nick
>=20
>> On Wed, Oct 23, 2019 at 4:59 PM Muri, Richard - 1002 - MITLL via USRP-use=
rs <usrp-users@lists.ettus.com> wrote:
>> Hello,
>>=20
>> =20
>>=20
>> I=E2=80=99m looking into controlling an X310 from an embedded device. I w=
anted to probe the users list before I bury myself into a rabbit hole.
>>=20
>> =20
>>=20
>> Is it possible to control a USRP directly from an FPGA? I noticed that UH=
D use VRT as the transport protocol (http://files.ettus.com/manual/page_rtp.=
html). If I have an FPGA that speaks VRT over Ethernet or Aurora can I contr=
ol a USRP, and are there examples/documentation of controlling a USRP withou=
t running an instance of UHD? In my use case I need to send timed transmit c=
ommands and data packets, and timed receive commands and receive data packet=
s.
>>=20
>> =20
>>=20
>> In the case that running without UHD is a headache I don=E2=80=99t want t=
o brave, are there examples of running UHD on ARM cores?
>>=20
>> =20
>>=20
>> Any insight is appreciated.
>>=20
>> =20
>>=20
>> Thanks,
>>=20
>> Richard
>>=20
>> =20
>>=20
>> =20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-869D6FDD-F8C2-481C-9A23-5C27B6BC1DB0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I run B210 from an Odoid XU4 platform and c=
an get up to about 12Msps out of it, depending on what I=E2=80=99m doing.&nb=
sp;<div><br></div><div>But no way you=E2=80=99ll do the 10s of Msps that the=
 X3xx series is capable of.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhon=
e</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Oct 23, 2019, at 8:=
35 PM, Nick Foster via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<=
br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr"><div>You should have no trouble running UHD on an ARM archi=
tecture. The Ettus E300 series radios are ARM devices. UHD does a huge amoun=
t of initialization and configuration for the X310, and in any case the X310=
 doesn't use VRT in any real capacity. You won't realistically be able to di=
vorce the X310 from UHD.<br></div><div><br></div><div>Your biggest headache o=
n an embedded machine will be keeping up with high data rates, and waiting f=
or UHD to compile in the first place. =3D)<br></div><div><br></div><div>Nick=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Oct 23, 2019 at 4:59 PM Muri, Richard - 1002 - MITLL via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-7992240679112399471WordSec=
tion1"><p class=3D"MsoNormal">Hello,<u></u><u></u></p><p class=3D"MsoNormal"=
><u></u>&nbsp;<u></u></p><p class=3D"MsoNormal">I=E2=80=99m looking into con=
trolling an X310 from an embedded device. I wanted to probe the users list b=
efore I bury myself into a rabbit hole.<u></u><u></u></p><p class=3D"MsoNorm=
al"><u></u>&nbsp;<u></u></p><p class=3D"MsoNormal">Is it possible to control=
 a USRP directly from an FPGA? I noticed that UHD use VRT as the transport p=
rotocol (<a href=3D"http://files.ettus.com/manual/page_rtp.html" target=3D"_=
blank">http://files.ettus.com/manual/page_rtp.html</a>). If I have an FPGA t=
hat speaks VRT over Ethernet or Aurora can I control a USRP, and are there e=
xamples/documentation of controlling a USRP without running an instance of U=
HD? In my use case I need to send timed transmit commands and data packets, a=
nd timed receive commands and receive data packets. <u></u><u></u></p><p cla=
ss=3D"MsoNormal"><u></u>&nbsp;<u></u></p><p class=3D"MsoNormal">In the case t=
hat running without UHD is a headache I don=E2=80=99t want to brave, are the=
re examples of running UHD on ARM cores?<u></u><u></u></p><p class=3D"MsoNor=
mal"><u></u>&nbsp;<u></u></p><p class=3D"MsoNormal">Any insight is appreciat=
ed.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p><p class=
=3D"MsoNormal">Thanks,<u></u><u></u></p><p class=3D"MsoNormal">Richard<u></u=
><u></u></p><p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p><p class=3D"MsoNo=
rmal"><u></u>&nbsp;<u></u></p></div></div>__________________________________=
_____________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-869D6FDD-F8C2-481C-9A23-5C27B6BC1DB0--


--===============2695961356993219863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2695961356993219863==--

