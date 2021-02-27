Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5414326D71
	for <lists+usrp-users@lfdr.de>; Sat, 27 Feb 2021 15:51:45 +0100 (CET)
Received: from [::1] (port=55150 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lG0wZ-00077D-19; Sat, 27 Feb 2021 09:51:43 -0500
Received: from mail-pl1-f170.google.com ([209.85.214.170]:37166)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ali69550@gmail.com>) id 1lG0wV-00072w-2j
 for usrp-users@lists.ettus.com; Sat, 27 Feb 2021 09:51:39 -0500
Received: by mail-pl1-f170.google.com with SMTP id p5so6897751plo.4
 for <usrp-users@lists.ettus.com>; Sat, 27 Feb 2021 06:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=DB+wJybRoOUhre0Wr2wLMNp0lxH5geAZscqCUtHSrTE=;
 b=a5rJ4C0shtBeJfya+yl9ZEK8Hux+QV6/vxHY4pP44q+RMsYDRQDTGXS0x7jXaVD/B1
 aRyBa+9sC/NFYWvEG/nAVSUU1VyC6Bp6giJZCszOQnEUtKneMvtWCj7ESR3usGzFI5CH
 bow2mxSO4KQ/yHod67DtvW2xkldGdM3s5EObThxNgvpFTOn+ZprrK8yOLN+YU5mKti7k
 ofUmdbR/Oo46Zv+TqbLNYhpg4SzfuJz60Xui/ngGNfmbtMl6Wr2mGV2Y0R1VBa2IHpsk
 FUX2/NGYFJUthFRAd8Wc+gobQKWxcwq9A927N+EL7NdPL4LKXx269YTN21qkmAASz370
 BWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=DB+wJybRoOUhre0Wr2wLMNp0lxH5geAZscqCUtHSrTE=;
 b=Zz3pMgMcoYA2Nr/MTR1nH2P1Os0vNi5m24dOsja+96lyNS7VZGMCqyF5aGyP6NpaK2
 mPdGWTwl8G9TQ5OGBLii42nCtL/+rIF8E6oXz9ir/wWawyNy4bDXamBPPKQJZG18UpDD
 A/gJMuGDbgZwtDXIIGse5UBNasmgwDr4xLENHqRhh7YcanwM1jezr9G+p8EeQxU1Ei8f
 84hMDVlJhCXcdXyEFuIVYt/6KZnogm9jJoI8fjPKtdHXwPfkCSTtj40Ec5AqC8Jjx7/w
 73NJBkVIwOGrDU1ay/eWRyPfJmuh8DTyS7gAWLOOtx1Epr0NP3mUJAcJeIwKijswHx0k
 jW4A==
X-Gm-Message-State: AOAM531wGpVYeZF1+rzkzgA7ft3D728x2WX/SroZKSnP8CnwY/77I9or
 ZjUKGW2tfPDGFj0ru3je6qoHIdBgbK1TdEKf0iMKON2xny6KiA==
X-Google-Smtp-Source: ABdhPJzUUuFdDDJlGzsB0cl8nPMAorvxGJwC5OmpsSmFz4SeBgwHvokmyLmKQ8O+6gTJCyOUO48+nerUhRuFPbZIMcs=
X-Received: by 2002:a17:90a:6708:: with SMTP id
 n8mr2487059pjj.174.1614437457692; 
 Sat, 27 Feb 2021 06:50:57 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 27 Feb 2021 18:20:46 +0330
Message-ID: <CADDf8db1N1jjxtgfQWbtXdxcgbD1XaQ8T5HMB8JDo1=oxtf23A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] MIMO for X3x0 (AN-881 Table 4 may need some edit)
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
From: "Ali G. Dezfuli via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Ali G. Dezfuli" <ali69550@gmail.com>
Content-Type: multipart/mixed; boundary="===============4065596485227572060=="
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

--===============4065596485227572060==
Content-Type: multipart/alternative; boundary="0000000000002d8a7d05bc5283ef"

--0000000000002d8a7d05bc5283ef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
When USRP X3x0 is used with TwinRX daughterboards, we can have up to 4 rx
channels.
(ref: AN-244, Direction Finding with the USRP=E2=84=A2 X-Series and TwinRX=
=E2=84=A2)
But in AN-881 (Selecting a USRP Device) in Table 4, it says that USRP X3x0
needs OctoClock for 4x4 MIMO !!!
I wonder when X3x0 can receive 4 channels with TwinRX, why it can NOT be
used in 4x4 MIMO w/o OctoClock.

regards,
AGD

--0000000000002d8a7d05bc5283ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div>When USRP X3x0 is used with TwinRX =
daughterboards, we can have up to 4 rx channels.<br></div><div>(ref:<font s=
ize=3D"2"><span style=3D"font-weight:normal"> AN-244, Direction Finding wit=
h the USRP=E2=84=A2 X-Series and TwinRX=E2=84=A2)</span></font></div><div><=
font size=3D"2"><span style=3D"font-weight:normal">But in AN-881 (</span></=
font><font size=3D"2"><span style=3D"font-weight:normal">Selecting a USRP D=
evice) in Table 4, it says that USRP X3x0 needs OctoClock for 4x4 MIMO !!!<=
br></span></font></div><div><font size=3D"2"><span style=3D"font-weight:nor=
mal">I wonder when X3x0 can receive 4 channels with TwinRX, why it can NOT =
be used in 4x4 MIMO w/o OctoClock.</span></font></div><div><font size=3D"2"=
><span style=3D"font-weight:normal"><br></span></font></div><div><font size=
=3D"2"><span style=3D"font-weight:normal">regards,</span></font></div><div>=
<font size=3D"2"><span style=3D"font-weight:normal">AGD<br></span></font></=
div><div><font size=3D"2"><span style=3D"font-weight:normal"></span></font>=
</div></div>

--0000000000002d8a7d05bc5283ef--


--===============4065596485227572060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4065596485227572060==--

