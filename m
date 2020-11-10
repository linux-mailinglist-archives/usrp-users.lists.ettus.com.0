Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E202ADC5A
	for <lists+usrp-users@lfdr.de>; Tue, 10 Nov 2020 17:44:27 +0100 (CET)
Received: from [::1] (port=39756 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcWkp-0003k9-6A; Tue, 10 Nov 2020 11:44:23 -0500
Received: from mail-vk1-f174.google.com ([209.85.221.174]:41814)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <j.cabezad@gmail.com>) id 1kcWkl-0003fL-SY
 for usrp-users@lists.ettus.com; Tue, 10 Nov 2020 11:44:19 -0500
Received: by mail-vk1-f174.google.com with SMTP id e8so2378535vkk.8
 for <usrp-users@lists.ettus.com>; Tue, 10 Nov 2020 08:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=48aZV9dSmdj7LvLPd/h12GOpXpkqy2iXV5LIObdy7vE=;
 b=KUHGBtGv3o24RYS7v1rfcPYQEOc5DGSkevfWzGSpyKVGYUNiMrYIHhJ8QvyT11F2Hn
 ynKlQuMEqNsBhWJXly+WqmTxy4tAmNsQK9pH5cNd507MKI4V//0dq4jXw3MIQRobj//S
 TqWAvXQNyRvsIYwYXwg8psqZ329YKNcAWr62bfIQZaOU8PMsMTjO7B0C5bTyWtcrmkar
 ZpEsY5PP7WFahcV2DvfYWpw6gj2p7QO/akKOBThzlLY+IXvNUAucl6LBJGkMSMhJp5t6
 Ymrlyxcrj0dTItQAQA1Sh12J5rVsze1L7uIUHQZ/Z5QfG/dZfnnkkzitVGnw78AE/CpJ
 OiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=48aZV9dSmdj7LvLPd/h12GOpXpkqy2iXV5LIObdy7vE=;
 b=QorFDi6/qofchRi95OYwBB3j7LtD4nKUoeWdNyH8OBsmKGPG0X+M+uoHoybH27MoK6
 xDl6vXogXuUxUnG3skw433bYZDRW3/KiDwaDKBH2I4dbXgH7YyEPgUht8/pceaSpGTw+
 ROs5sQU5ipCUDfWQ694BDwwWyAuS58oLYqA3jUHsAn1ZRkPRYF8x5pH54cXHS77Fe+Kt
 0HU2HUzSrCCDhwCYLgZoXvZH/e19ciOKoi1/0qhoXTtDMwG0omTAdfzwpb2jXCxcWKjR
 BxvnoTOKs00JTLakHEx02O16gXPY5ILTdmRfKQcdqvrUJ3WsIpZRkYbpRsdsEgNUlyZX
 uN0g==
X-Gm-Message-State: AOAM532szw0eor4iHl4YWs4QN4y9CFdXpfj9yZ1Wf5QoaRtKEP2ELx9X
 vpeUxwM+jGQ69g5xP497ia/QTw7gOJ+CLNP1I3qSkDXVFmGgl4Uj
X-Google-Smtp-Source: ABdhPJwpEMORawcTkyqtzOO05yLd+GkcVMzrx3nnVVMmSYSVJ3kwYBRd5F14fAv80QT9hfEIwbHN79WZF1DLFuNkMTw=
X-Received: by 2002:a1f:4601:: with SMTP id t1mr10704313vka.6.1605026618924;
 Tue, 10 Nov 2020 08:43:38 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 10 Nov 2020 17:43:27 +0100
Message-ID: <CAJja+z3xb3-s_uT-1J=CWdRdbT-32WNE4kNAc6KHgXWdDqGvQQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP get_device() and get_gain () called from GNURadio
 OOT block function
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
From: Joaquin Cabeza via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joaquin Cabeza <j.cabezad@gmail.com>
Content-Type: multipart/mixed; boundary="===============1377174485799521364=="
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

--===============1377174485799521364==
Content-Type: multipart/alternative; boundary="00000000000079e1a105b3c361ff"

--00000000000079e1a105b3c361ff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to get some USRP configuration parameters by calling the
"getter" functions defined in gr::uhd::usrp_block. I have already read the
following thread
<http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-August/04=
9462.html>but
I could not apply that fix to my use case.

For the moment I've unsuccessfully tried to get the device and gain
settings by calling the corresponding functions from another function
defined in my OOT block:

      double gain;
      size_t chan=3D0;

      ::uhd::usrp::multi_usrp::sptr usrp =3D
gr::uhd::usrp_block::get_device();
      gain =3D gr::uhd::usrp_block::get_gain (chan);


When compiling, I get the following errors:

error: cannot call member function =E2=80=98virtual uhd::usrp::multi_usrp::=
sptr
gr::uhd::usrp_block::get_device()=E2=80=99 without object
       ::uhd::usrp::multi_usrp::sptr usrp =3D
gr::uhd::usrp_block::get_device();

error: cannot call member function =E2=80=98virtual double
gr::uhd::usrp_block::get_gain(size_t)=E2=80=99 without object
       gain =3D gr::uhd::usrp_block::get_gain (chan);


I guess this error could come from not instantiating the class properly,
however I have not yet found a proper way of fixing it...

Any suggestions?

Thanks beforehand,

Joaquin.

--00000000000079e1a105b3c361ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m trying to get some USRP configuration paramet=
ers by calling the &quot;getter&quot; functions defined in=20
gr::uhd::usrp_block. I have already read the following <a href=3D"http://li=
sts.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-August/049462.html"=
>thread </a>but I could not apply that fix to my use case.<br></div><div><b=
r></div><div>For the moment I&#39;ve unsuccessfully tried to get the device=
 and gain settings by calling the corresponding functions from another func=
tion defined in my OOT block:</div><div><br></div><div><span style=3D"font-=
family:monospace">=C2=A0 =C2=A0 =C2=A0 double gain;<br>=C2=A0 =C2=A0 =C2=A0=
 size_t chan=3D0;<br><br>=C2=A0 =C2=A0 =C2=A0 ::uhd::usrp::multi_usrp::sptr=
 usrp =3D gr::uhd::usrp_block::get_device();<br>=C2=A0 =C2=A0 =C2=A0 gain =
=3D gr::uhd::usrp_block::get_gain (chan);</span></div><div><span style=3D"f=
ont-family:monospace"><br></span></div><div><span style=3D"font-family:mono=
space"><br></span></div><div><span style=3D"font-family:arial,sans-serif">W=
hen compiling, I get the following errors:</span></div><div><span style=3D"=
font-family:monospace"><br></span></div><div style=3D"margin-left:40px"><sp=
an style=3D"font-family:monospace">error: cannot call member function =E2=
=80=98virtual uhd::usrp::multi_usrp::sptr gr::uhd::usrp_block::get_device()=
=E2=80=99 without object<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0::uhd::usrp::multi_u=
srp::sptr usrp =3D gr::uhd::usrp_block::get_device();<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>error: cannot call member function =E2=80=
=98virtual double gr::uhd::usrp_block::get_gain(size_t)=E2=80=99 without ob=
ject<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0gain =3D gr::uhd::usrp_block::get_gain (=
chan);<br></span></div><div><span style=3D"font-family:monospace"><br></spa=
n></div><div><span style=3D"font-family:monospace"><br></span></div><div><s=
pan style=3D"font-family:arial,sans-serif">I guess this error could come fr=
om not instantiating the class properly, however I have not yet found a pro=
per way of fixing it...</span></div><div><span style=3D"font-family:arial,s=
ans-serif"><br></span></div><div><span style=3D"font-family:arial,sans-seri=
f">Any suggestions?</span></div><div><span style=3D"font-family:arial,sans-=
serif"><br></span></div><div><span style=3D"font-family:arial,sans-serif">T=
hanks beforehand,</span></div><div><span style=3D"font-family:arial,sans-se=
rif"><br></span></div><div><span style=3D"font-family:monospace"><span styl=
e=3D"font-family:arial,sans-serif">Joaquin.</span><br></span></div><div><sp=
an style=3D"font-family:monospace"><br></span>=20

</div></div>

--00000000000079e1a105b3c361ff--


--===============1377174485799521364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1377174485799521364==--

