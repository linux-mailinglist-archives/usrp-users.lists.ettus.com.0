Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2900217352A
	for <lists+usrp-users@lfdr.de>; Fri, 28 Feb 2020 11:19:41 +0100 (CET)
Received: from [::1] (port=56088 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7ck2-00008D-Dn; Fri, 28 Feb 2020 05:19:34 -0500
Received: from mail-ot1-f41.google.com ([209.85.210.41]:38430)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cogwsn@gmail.com>) id 1j7cjz-0008HL-6Z
 for usrp-users@lists.ettus.com; Fri, 28 Feb 2020 05:19:31 -0500
Received: by mail-ot1-f41.google.com with SMTP id z9so2096789oth.5
 for <usrp-users@lists.ettus.com>; Fri, 28 Feb 2020 02:19:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=GJbpK/I3VaAi+Ulhy0VlOAtOQVVDAkrzeEABC2I6ajI=;
 b=T7wCmyq0YsGcL6SSTjzg4GgCsq41Vwapk/MXUcLM3rIWzd74qzOvkr9Zl/ReDXLBAv
 mYyaaLOkPM4hRpNQK5Vsyzdttvwa7FnYRnU9WBR900VGdge1s6c6dCuCnx48RMZEZ5WI
 qCexu1y0QajQF5gCIUw3TLb25RoyZCzDI4pf/k/TCrNza17GxqqzKY1w81BYhkEZ2l0P
 b+lveIbgZ0tmBSkFXza5tUMT+dWsIZn/2MXcK409VyLSPgLfWq5/zPXh68KNNtYKN1DH
 56ODkPLywOj3jFGzucUywA3gB3p2xhoTnEWacc5aOiXdhlVx8F38RxQiKUxZjgVFdzAp
 vBfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GJbpK/I3VaAi+Ulhy0VlOAtOQVVDAkrzeEABC2I6ajI=;
 b=FhYmEY2Zo4uZHWY5tFt3B/5hz+ZhSzvEgXB8Qs0BQF67hxpwHk8+IRzLYB0HFk03RC
 pcalX3xUTZn2tc5WP8ryEA0P67stU7gs+vY5xL8GGAXsN/TTEo4C+IPUssKHt4oJFyvN
 BdbvTkgr74m5gZF2A8yZaOtSFP39erWiKBGocq0qG0q/WNBq1ejgRCojZxXBHbEr95fw
 EdKr5NJhwkm3YY35jryz0KcIKCbLZrlREOYWGc1eovLMdBhF6qW/54mGasr6NN/bbRRh
 O94uHadfi+OeEPQ7Jg92lIsChLfU+Gut2a7tENlGycclIeATrykqPQ9nwBiQ6faWb5GE
 k7Kw==
X-Gm-Message-State: APjAAAUl7pP0QgRLtA/9F4GHA7R7Nw9eT6AGrjQLjNv4ncV3XfXP4BQi
 AR4rOJ4ccHkrBq1W8fULcyXxEAOrbXidsFpBz3gSlntb
X-Google-Smtp-Source: APXvYqyht+MdfQMcla8UC/xRQgxn4gjj1P/4zusz/2s4AArr7fS7IK4yWwh1Cvre5IXUurWeWTxHQ09ArSGSDcM5MNo=
X-Received: by 2002:a9d:7309:: with SMTP id e9mr2830097otk.260.1582885130433; 
 Fri, 28 Feb 2020 02:18:50 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 28 Feb 2020 11:18:39 +0100
Message-ID: <CAOExtcQvFTexKtz9HE84-0PU2NoGDN89cmQpEjr7XPedNSCGyw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Device Recovery N210: JTAG programmer
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Content-Type: multipart/mixed; boundary="===============2321425112516807338=="
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

--===============2321425112516807338==
Content-Type: multipart/alternative; boundary="000000000000eb76da059fa0290b"

--000000000000eb76da059fa0290b
Content-Type: text/plain; charset="UTF-8"

Hi,
I have 3 bricked N210 to be recovered. I was following the post
https://kb.ettus.com/N200/N210_Device_Recovery

It says JTAG programmer and in the picture I can see the model no. is
DLC9G.

I found something on Amazon which has the same model number but does not
looks the same. Can anyone confirm if this is correct.
https://www.amazon.fr/Plate-Forme-Compatible-lautolaveuse-programmable-XILINX/dp/B07Y7PBBGQ/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=DLC9G&qid=1582884943&sr=8-1


Regards
-- 
-- 
Sumit kumar
Postdoc
SnT, Luxembourg

--000000000000eb76da059fa0290b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div>I have 3 bricked N210 to be recovered. I was=
 following the post=C2=A0</div><div><a href=3D"https://kb.ettus.com/N200/N2=
10_Device_Recovery">https://kb.ettus.com/N200/N210_Device_Recovery</a>=C2=
=A0</div><div><br></div><div>It says=C2=A0<span style=3D"color:rgb(0,0,0);f=
ont-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-s=
erif;font-size:14px">JTAG programmer and in the picture I can see the model=
 no. is DLC9G.=C2=A0</span></div><div><br></div><div>I found something on A=
mazon which has the same model number but does not looks the same. Can anyo=
ne confirm if this is correct.=C2=A0</div><div><a href=3D"https://www.amazo=
n.fr/Plate-Forme-Compatible-lautolaveuse-programmable-XILINX/dp/B07Y7PBBGQ/=
ref=3Dsr_1_1?__mk_fr_FR=3D%C3%85M%C3%85%C5%BD%C3%95%C3%91&amp;keywords=3DDL=
C9G&amp;qid=3D1582884943&amp;sr=3D8-1">https://www.amazon.fr/Plate-Forme-Co=
mpatible-lautolaveuse-programmable-XILINX/dp/B07Y7PBBGQ/ref=3Dsr_1_1?__mk_f=
r_FR=3D%C3%85M%C3%85%C5%BD%C3%95%C3%91&amp;keywords=3DDLC9G&amp;qid=3D15828=
84943&amp;sr=3D8-1</a>=C2=A0</div><div><div><br></div><div>Regards</div>-- =
<br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_sign=
ature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,=
136,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,13=
6);font-size:12.8px"><div style=3D"color:rgb(136,136,136);font-size:12.8px"=
>Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(136,136,136);font-size=
:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(136,136,136);font-siz=
e:12.8px"><br></div><br></div></div></div></div></div></div>

--000000000000eb76da059fa0290b--


--===============2321425112516807338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2321425112516807338==--

