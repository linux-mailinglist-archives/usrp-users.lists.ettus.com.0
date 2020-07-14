Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE5A21ED0E
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jul 2020 11:39:36 +0200 (CEST)
Received: from [::1] (port=47786 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvHPP-0006BU-Qc; Tue, 14 Jul 2020 05:39:31 -0400
Received: from mail-lj1-f175.google.com ([209.85.208.175]:44408)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <arash.jafari.telecom@gmail.com>)
 id 1jvHPK-00060c-EK
 for usrp-users@lists.ettus.com; Tue, 14 Jul 2020 05:39:26 -0400
Received: by mail-lj1-f175.google.com with SMTP id s9so21633041ljm.11
 for <usrp-users@lists.ettus.com>; Tue, 14 Jul 2020 02:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=NrOfIQtjXCMMTDstrrkAumCw0HbiEnwSnk9PQYFiMNg=;
 b=pTivjuzUXa3k+KT3Ie98OX6ygMXBViji1XxhchOxmVC10yB3ARGbyJ2zAPD/+p+n9m
 W6ZmbKb+pTTiK1ySXeLdThN2SOxYYGryxy/l6Fry63rG/HU26CS6WjTQmdiMs60CL68d
 azJc8Q5wHfJ0ttcVeWwHaOhz7BlcY9aFMGIzuUim11/i0MDiRneThYIZ17tF99TjWNzo
 LD6KOTmNgPKKj8x4wCzVM/OHTLWRY9yAwuIsQoiMhlmPoTtHw5Fq390hkqNgdbJL8K1z
 rtsLbt/iGMjkySjaynn9SjFRBiculHk5dAJopDIbJSQ+ilcTTCnr3xKLvqZUAPDgPGUC
 7Q9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NrOfIQtjXCMMTDstrrkAumCw0HbiEnwSnk9PQYFiMNg=;
 b=Bt1uM8ewGPweJC+QDYzQvTqwbtTdoeSlmKH3/hQtLOKK5AG4EJ0B0VER+H+tm3nLpr
 XEpeWL7i2ljcd4TmunvQsq4tIGl9Nq3w6jZ3MJtNXDaLOTyf+47Y75PhRaLqzi5PXcIK
 6iKpdmMNExunILQr0H1EcfpRP7lcTot4ca7glZdSG9cJVre0+05C16fMiXizs5m7eByg
 3Qoc/Nw89Wr6IvkfkPg1DceN9yppRqPxY2DC9U4m+RLOUmHvk4jcrw0Ar5w751DhnoI4
 1bP2tWUg/vclv/sqbKdPrMoOQKbJsZpnMPRQ3nfLGKq2Durh7LFkQCBn9ZbQn41aLui3
 d43g==
X-Gm-Message-State: AOAM533A0DpWsDJCEJ4HSC7Wlw/WTlxBkgFT9QJJPOIXYXynY1ZSFyC/
 nHLvBGVfwLF7AM4n7pQ/GFDPftElb0Wq6nz3TkgytWSb
X-Google-Smtp-Source: ABdhPJyd+Tox81bARnd5ON8U5ehELGL43hWQJw3AKqT96I+wk2BsINrkbEtIWk1xRBZKfWfeFMfI1BzEuUmzZNM+VWg=
X-Received: by 2002:a2e:7816:: with SMTP id t22mr1739261ljc.373.1594719524805; 
 Tue, 14 Jul 2020 02:38:44 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 14 Jul 2020 11:38:34 +0200
Message-ID: <CANzM3hxAfQDHM4xfJiWO9mdaRUbOP3c-+sksV85wgD=ZwzX6bw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP X310
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
From: Arash Jafari via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arash Jafari <arash.jafari.telecom@gmail.com>
Content-Type: multipart/mixed; boundary="===============3426200111436597379=="
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

--===============3426200111436597379==
Content-Type: multipart/alternative; boundary="000000000000cadfb805aa63925a"

--000000000000cadfb805aa63925a
Content-Type: text/plain; charset="UTF-8"

Hello everybody,

Does anybody know what is the maximum input power level of USRP-X310 in RX
modus?
National Instrument congratulation!! very bad documentation.

Kind regards,
Arash.



-- 
Dipl.-Ing. Arash Jafari

Phone: +43 650 844 3617
E-mail: arash.jafari.telecom@gmail.com

--000000000000cadfb805aa63925a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everybody,<div><br></div><div>Does anybody know what=
=C2=A0is the maximum input power level of USRP-X310 in RX modus?</div><div>=
National Instrument congratulation!! very bad documentation.</div><div><br>=
</div><div>Kind regards,</div><div>Arash.</div><div><br></div><div><br></di=
v><div><div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-fam=
ily:monospace,monospace">Dipl.-Ing. Arash Jafari</span><font face=3D"monosp=
ace, monospace" color=3D"#000000" size=3D"2">=C2=A0</font><div><br></div><f=
ont color=3D"#000000" size=3D"2"><span style=3D"font-family:monospace">Phon=
e: +43 650 844 3617</span><br clear=3D"none" style=3D"font-family:monospace=
"></font><div><span style=3D"font-family:monospace"><font color=3D"#000000"=
 size=3D"2">E-mail: <a href=3D"mailto:arash.jafari.telecom@gmail.com" targe=
t=3D"_blank">arash.jafari.telecom@gmail.com</a></font></span></div></div></=
div></div></div></div></div></div></div></div>

--000000000000cadfb805aa63925a--


--===============3426200111436597379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3426200111436597379==--

