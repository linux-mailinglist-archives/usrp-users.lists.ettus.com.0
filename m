Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B84B2CC5D2
	for <lists+usrp-users@lfdr.de>; Wed,  2 Dec 2020 19:48:33 +0100 (CET)
Received: from [::1] (port=46504 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kkXAz-0003Zb-2W; Wed, 02 Dec 2020 13:48:29 -0500
Received: from mail-ej1-f49.google.com ([209.85.218.49]:43775)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <venier.carlo@gmail.com>)
 id 1kkXAu-0003Ul-Vl
 for usrp-users@lists.ettus.com; Wed, 02 Dec 2020 13:48:25 -0500
Received: by mail-ej1-f49.google.com with SMTP id jx16so5909942ejb.10
 for <usrp-users@lists.ettus.com>; Wed, 02 Dec 2020 10:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=FOafUdBVdzqrHKupyR8Z3PTrlkdFQhrftlGeLOCLACE=;
 b=HQOBpk9DzLw4sQbMnRGVv2Aqdgr3HVu1nTmdbgebYR9T6V720GG/yfEO94aT7ExWjf
 tusRnK/jXWT/wBhSjA+kF1rmehpR5cBIexYWAnSdCEJ7wwo7SSu8wr+7quKYL53Ix3j1
 4oKyyO7tf0oj7ULsStRer7mGJAqw9Qyce/4waTv491jgX1hy4jkGz940zdmGog/qD/q+
 u9dU0n6dyzzkYefQ6tm6oE3r3Vl9Ra2Hk+V6HFofccXk05ZmuOejc0Seau2BKzjX2kiK
 Cb0209+wiXmqZ8HIh8ayOEmULxrz/dyxbsZ+g5t9MU6GiDK1qtwb6mZlCgV/xYEdKrQU
 NtqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=FOafUdBVdzqrHKupyR8Z3PTrlkdFQhrftlGeLOCLACE=;
 b=PQkotY3VVamYzrmZafTDRT+HwMfI7vmOuAlA+jZolkvXCGsHGh5yho8B3FyGbsfotE
 syED9GsRIEpTIUzvL1VvEa1qVdLQ+1nvU1G1omxYZeQ3OnkqDW+7VyqvrQi8fpvXza4c
 cxAIUInqM5eq5ZN/B5E/nTJoROTZ87c+8qHmrhY4wYHt6orowYX8MaGrLVPzBDiCx+jf
 N7XBoMrb/o1VVcebQBKTP53kNnYFVNrJQW+OuJGXPM7nqDJCOGh8ceQ/uoH358XmFMeQ
 QoaAMXVLGqKEGBKjzabeQgD7dzIDfQvhK33v8l/p54Lkc53jv5fJhv400aN/ZntqtDdC
 iq7w==
X-Gm-Message-State: AOAM532EY0mA4ZVEnwirVVzmuZUly6/bH7wepzh+xzYxEs5Dk7tPxMnw
 oWlglrqW8R2+B1woZH0zPo82FEdWkH9+xIrr5zJNKzqA
X-Google-Smtp-Source: ABdhPJw3f1wv6hvTcyOfr2DBEL6Hx3aH7G7Q1BilxUzoFcYxupIfEKZeuMjwVpEmD4dLfVRSofS+Z5usaaxnidvimog=
X-Received: by 2002:a17:906:12cf:: with SMTP id
 l15mr1102994ejb.540.1606934863375; 
 Wed, 02 Dec 2020 10:47:43 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 2 Dec 2020 19:47:30 +0100
Message-ID: <CAHRiTbmiFK9H9vF98TRJDbwXtzyk4f-rdUP3K+zNinAcq0k4mw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Questions regarding tx_waveforms
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
From: Carlo Venier via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlo Venier <venier.carlo@gmail.com>
Content-Type: multipart/mixed; boundary="===============7527653588933779473=="
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

--===============7527653588933779473==
Content-Type: multipart/alternative; boundary="000000000000b5725a05b57fadb2"

--000000000000b5725a05b57fadb2
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a few questions regarding tx_waveforms script.
I'm using an USRP B200mini.

How can I delete (or reduce) the DC component when using tx_waveform?

When I set --freq=f0, specifying --lo_offset=(df0), how do I remove (or
reduce) the mirrored replica at (f0+2*f0) that is generated? Do you have
any advice to suggest?

Thank you in advance,

Carlo

--000000000000b5725a05b57fadb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I have a=
 few questions regarding tx_waveforms script.=C2=A0</div><div dir=3D"auto">=
I&#39;m using an USRP B200mini.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">How can I delete (or reduce) the DC component when using tx_wavef=
orm?</div><div dir=3D"auto"><br></div><div dir=3D"auto">When I set --freq=
=3Df0, specifying --lo_offset=3D(df0), how do I remove (or reduce) the mirr=
ored replica at (f0+2*f0) that is generated? Do you have any advice to sugg=
est?=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thank you in =
advance,=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Carlo</di=
v><div dir=3D"auto"><br></div></div>

--000000000000b5725a05b57fadb2--


--===============7527653588933779473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7527653588933779473==--

