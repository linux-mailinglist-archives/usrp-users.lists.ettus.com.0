Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD8D83D6D
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2019 00:41:33 +0200 (CEST)
Received: from [::1] (port=41384 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hv895-0004uo-Qb; Tue, 06 Aug 2019 18:41:31 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:33131)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <edwin.barbosa@usantotomas.edu.co>)
 id 1hv892-0004pQ-Jh
 for usrp-users@lists.ettus.com; Tue, 06 Aug 2019 18:41:28 -0400
Received: by mail-oi1-f180.google.com with SMTP id u15so69086887oiv.0
 for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2019 15:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usantotomas.edu.co; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=uCd1Hxrx8UQkCD+hydqz5FbglOfsz+Fb9uHyjMSEb+Y=;
 b=GyPFjm5nONHY4kJmUlpn1Ij9JmrlnQEElLd9H/HcxRWyoXauwZ7kl0/bREdCfl4lnt
 OMxE0Tk+ggMPc0Ecw20BcNLswLOQ/qSGfUS4C0D9oCorUdn3avTuRXXas8GOBC0ARuGd
 S2yyzsumuWVjbjqULnh3ymG2Ej7mZ/mndsGezOr9ur33FvqcrMZAac/U++1x1kR4nlDt
 ufAZFhADP+VS6AeUxgZsLhww9CDt1bRiyC0ncQa2i2mvd8yv1UNvbauYHbcsHgFESkuG
 WNEjx6Wo934o7P5fQ1ZrsIFuKxoniUGgqb0zYMf0Chvc0tMk34CNAlZdERpqMYJzsEV2
 VLuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=uCd1Hxrx8UQkCD+hydqz5FbglOfsz+Fb9uHyjMSEb+Y=;
 b=IwJ787h9SKpJ7VmNapu2xu9wTCeXddLWInfBiLg7H+MzS69jpLiGjorzhGifwNv9pb
 scNNA+M8SipitWMSJfd7ob4VF3BXZn8H6uHbrwxnRsNBc9N2IOdYF1HlT6QUdzCYiTf/
 lrSbAi4wLIdjcD+6Yu9yMclc8bD2VKdDNt3kMurImLMof2kJjIvIwb0Vmfv9fjqHC636
 +gW/wYX2Q4ITD+NlOmT7kbGrGWnzFgIHLsAAI6ur2qt4sN13zOsH6ssxdsXG9W7V4S82
 5bx8F0wxPdAw6Pp0nw/o0KA86eRo3nEZ2xVtyuH4w2mg8K6RtzRfOslwWGwvQFOoUH/Z
 xOlQ==
X-Gm-Message-State: APjAAAVEgS6KrchGZbYSqEcLBjcuFWB3+s/VXkSgJkDBtQzqx3oaZl9Z
 bNtnLcbvKn0+dfCeuTqq5E+yWe+SqePOZNQ6BzBgDX1V
X-Google-Smtp-Source: APXvYqzizMSrmeyZqhHm0Dzw0Jg0NcmoOYOGrdJ1Df8p9bx8EMVFp085/xbYss8wEZgmgxjYvNPJw5FU/lVgIGS8MLo=
X-Received: by 2002:a05:6638:52:: with SMTP id
 a18mr6831614jap.75.1565131247200; 
 Tue, 06 Aug 2019 15:40:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAC5Qad6y-8YJ68q70rFZaH7Og-BvCs3yVJNTs6AFg093q84++A@mail.gmail.com>
In-Reply-To: <CAC5Qad6y-8YJ68q70rFZaH7Og-BvCs3yVJNTs6AFg093q84++A@mail.gmail.com>
Date: Tue, 6 Aug 2019 17:40:36 -0500
Message-ID: <CAC5Qad5jUm=+GvOS1_CjTYH3Arr=19vFYKcYX924sdo9WeYfPg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Fwd: Configurating X300 "uhd_find_devices" No uhd
 devices found
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
From: Edwin Mauricio Barbosa Salinas via USRP-users
 <usrp-users@lists.ettus.com>
Reply-To: Edwin Mauricio Barbosa Salinas <edwin.barbosa@usantotomas.edu.co>
Content-Type: multipart/mixed; boundary="===============7793307457679547919=="
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

--===============7793307457679547919==
Content-Type: multipart/alternative; boundary="000000000000044b62058f7a8425"

--000000000000044b62058f7a8425
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
De: Edwin Mauricio Barbosa Salinas <edwin.barbosa@usantotomas.edu.co>
Date: mar., 6 ago. 2019 a las 17:37
Subject: Configurating X300 "uhd_find_devices" No uhd devices found
To: <discuss-gnuradio@gnu.org>


regards,
I am currently working with a USRP X300, following its UHD and GNURADIO
installation guides, I am making the configurations from Ubuntu 14.04 with
a VM VirtualBox virtual machine, when I execute the command
"uhd_find_devices" it throws me a message saying "No UHD find devices" but
when I execute the command "uhd_find_devices --args =3D" addr =3D 192.168.1=
0.2
"" it executes it successfully, I want to know how to do so that when
executing the command "uhd_find_devices" it is executed successfully.


root@edwin-VirtualBox:/home/edwin# uhd_find_devices
linux; GNU C++ version 4.8.4; Boost_105400; UHD_003.009.005-0-g32951af2

No UHD Devices Found

root@edwin-VirtualBox:/home/edwin# uhd_find_devices
--args=3D"addr=3D192.168.10.2"
linux; GNU C++ version 4.8.4; Boost_105400; UHD_003.009.005-0-g32951af2

--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    type: x300
    addr: 192.168.10.2
    fpga: HGS
    name:
    serial: 3124ED5
    product: X300


--=20
*Edwin Mauricio Barbosa salinas*
*Cod. 2172800*
*INGENIER=C3=8DA DE TELECOMUNICACIONES*


--=20
*Edwin Mauricio Barbosa salinas*
*Cod. 2172800*
*INGENIER=C3=8DA DE TELECOMUNICACIONES*

--000000000000044b62058f7a8425
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>De: <b class=3D"g=
mail_sendername" dir=3D"auto">Edwin Mauricio Barbosa Salinas</b> <span dir=
=3D"auto">&lt;<a href=3D"mailto:edwin.barbosa@usantotomas.edu.co">edwin.bar=
bosa@usantotomas.edu.co</a>&gt;</span><br>Date: mar., 6 ago. 2019 a las 17:=
37<br>Subject: Configurating X300 &quot;uhd_find_devices&quot; No uhd devic=
es found<br>To:  &lt;<a href=3D"mailto:discuss-gnuradio@gnu.org">discuss-gn=
uradio@gnu.org</a>&gt;<br></div><br><br><div dir=3D"ltr"><span class=3D"m_1=
713948548094287309gmail-m_-4217130011147887590gmail-tlid-translation m_1713=
948548094287309gmail-m_-4217130011147887590gmail-translation" lang=3D"en"><=
span title=3D"">regards,</span><br></span><div><span class=3D"m_17139485480=
94287309gmail-m_-4217130011147887590gmail-tlid-translation m_17139485480942=
87309gmail-m_-4217130011147887590gmail-translation" lang=3D"en"><span title=
=3D"" class=3D"m_1713948548094287309gmail-m_-4217130011147887590gmail-">I
 am currently working with a USRP X300, following its UHD and GNURADIO=20
installation guides, I am making the configurations from Ubuntu 14.04=20
with a VM VirtualBox virtual machine, when I execute the command=20
&quot;uhd_find_devices&quot; it throws me a message saying &quot;No UHD fin=
d devices&quot;</span> <span title=3D"" class=3D"m_1713948548094287309gmail=
-m_-4217130011147887590gmail-">but
 when I execute the command &quot;uhd_find_devices --args =3D&quot; addr =
=3D=20
192.168.10.2 &quot;&quot; it executes it successfully, I want to know how t=
o do so
 that when executing the command &quot;uhd_find_devices&quot; it is execute=
d=20
successfully.</span></span></div><div><span class=3D"m_1713948548094287309g=
mail-m_-4217130011147887590gmail-tlid-translation m_1713948548094287309gmai=
l-m_-4217130011147887590gmail-translation" lang=3D"en"><span title=3D"" cla=
ss=3D"m_1713948548094287309gmail-m_-4217130011147887590gmail-"><br></span><=
/span></div><div><span class=3D"m_1713948548094287309gmail-m_-4217130011147=
887590gmail-tlid-translation m_1713948548094287309gmail-m_-4217130011147887=
590gmail-translation" lang=3D"en"><span title=3D"" class=3D"m_1713948548094=
287309gmail-m_-4217130011147887590gmail-"><br></span></span></div><div><spa=
n class=3D"m_1713948548094287309gmail-m_-4217130011147887590gmail-tlid-tran=
slation m_1713948548094287309gmail-m_-4217130011147887590gmail-translation"=
 lang=3D"en"><span title=3D"" class=3D"m_1713948548094287309gmail-m_-421713=
0011147887590gmail-">root@edwin-VirtualBox:/home/edwin# uhd_find_devices <b=
r>linux; GNU C++ version 4.8.4; Boost_105400; UHD_003.009.005-0-g32951af2<b=
r><br>No UHD Devices Found</span></span></div><div><span class=3D"m_1713948=
548094287309gmail-m_-4217130011147887590gmail-tlid-translation m_1713948548=
094287309gmail-m_-4217130011147887590gmail-translation" lang=3D"en"><span t=
itle=3D"" class=3D"m_1713948548094287309gmail-m_-4217130011147887590gmail-"=
><br></span></span></div><div><span class=3D"m_1713948548094287309gmail-m_-=
4217130011147887590gmail-tlid-translation m_1713948548094287309gmail-m_-421=
7130011147887590gmail-translation" lang=3D"en"><span title=3D"" class=3D"m_=
1713948548094287309gmail-m_-4217130011147887590gmail-">root@edwin-VirtualBo=
x:/home/edwin# uhd_find_devices --args=3D&quot;addr=3D192.168.10.2&quot;<br=
>linux; GNU C++ version 4.8.4; Boost_105400; UHD_003.009.005-0-g32951af2<br=
><br>--------------------------------------------------<br>-- UHD Device 0<=
br>--------------------------------------------------<br>Device Address:<br=
>=C2=A0 =C2=A0 type: x300<br>=C2=A0 =C2=A0 addr: 192.168.10.2<br>=C2=A0 =C2=
=A0 fpga: HGS<br>=C2=A0 =C2=A0 name: <br>=C2=A0 =C2=A0 serial: 3124ED5<br>=
=C2=A0 =C2=A0 product: X300</span></span></div><br clear=3D"all"><br>-- <br=
><div dir=3D"ltr" class=3D"m_1713948548094287309gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><b><i>Edwin=
 Mauricio Barbosa salinas</i></b><div><b><i>Cod. 2172800</i></b></div><div>=
<b style=3D"font-size:12.8px">INGENIER=C3=8DA=C2=A0DE TELECOMUNICACIONES</b=
></div></div></div></div></div></div>
</div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr=
"><b><i>Edwin Mauricio Barbosa salinas</i></b><div><b><i>Cod. 2172800</i></=
b></div><div><b style=3D"font-size:12.8px">INGENIER=C3=8DA=C2=A0DE TELECOMU=
NICACIONES</b></div></div></div></div></div></div>

--000000000000044b62058f7a8425--


--===============7793307457679547919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7793307457679547919==--

