Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 565B01D00E
	for <lists+usrp-users@lfdr.de>; Tue, 14 May 2019 21:39:40 +0200 (CEST)
Received: from [::1] (port=46964 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hQdH0-0006Ar-Mx; Tue, 14 May 2019 15:39:38 -0400
Received: from mail-lj1-f175.google.com ([209.85.208.175]:39083)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <anro4002@colorado.edu>)
 id 1hQdGS-0005zE-Hu
 for usrp-users@lists.ettus.com; Tue, 14 May 2019 15:39:34 -0400
Received: by mail-lj1-f175.google.com with SMTP id a10so334727ljf.6
 for <usrp-users@lists.ettus.com>; Tue, 14 May 2019 12:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=colorado.edu; s=google;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=rbcZbuzY38b63fXuBReobEVY+uiCXpUqh5MG9bTK7DQ=;
 b=dVI9aavI57rKdVid8bwVsuQnsB3oKzQc0YuCnWukCnfnRwGgJrG1TUd9DFmvP5RSat
 GeDp94FWjSPGDdpFWmp2gqY6CYtuMKBWa1Faw11dzQr9Ky2xa2qZdpNk7EcDGnyjOaW+
 SUllsHjj4QwM+e5e/yG8ZaBAsxk//0zKZ180lrh/Z4s0CT3RdAp6nOqkUwYkz1Qei5/t
 sv/dvFX6R4zGqXAr5KWNavkY9FtV4jFpGuaEFi5AHb9/MChlv4Lwlgx0gp9J2aSqM1EY
 2380c8FHsthbrpnp2bzo+1oJ/xC3iKyCpwTuiJYhq4AOG2E6nX4Deui/PPGlr7HmQJm1
 rtRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=rbcZbuzY38b63fXuBReobEVY+uiCXpUqh5MG9bTK7DQ=;
 b=h59YftRLzchauMAngQGH9r6wzho6rbffn3pZ2NIQJ18vYyrkWj0XSbJ7f/HYKg/Zjn
 1M8q1eXyXaIRBWCb53VKxc7Aia64Sp/q6oLRv/KdaD2ROfQehQmLl6zxjsMkx0e6UV/C
 xTXVTmU0/U1pTkyk6+QvEHJc2AYmMar5BKSHKAEw+9Po8NrwJlEffGZuOLw1K0Vkray1
 PhIBl7vc7BrmKADxmHq0y4JgiMbqZIu9V+rrahIsTl1N6kZCTJzX1gVlABEj9UGVPaRi
 cSjhykpSOtkjON8xyg6RAxvyPW8riXnU+CzwCCjYH64UG4QW2k0V8CAwnDNWdb3IAAGZ
 gK+A==
X-Gm-Message-State: APjAAAWLQ/EezxgdJDCARUiLZiqYacCbdlw2o/xcak7IRxIeNdseN4n0
 UolW+micqhxgWlZZVExat7XEDixFtFIikg3stuLdkKGyVGc=
X-Google-Smtp-Source: APXvYqymGtIAVZqulNf/oxT/TDCpy1QB6HgUFXw93B/J+WA1FGGvsLDBROaUY6FY02jrN+fBQ1DQWiF4Qid/OtTE1/0=
X-Received: by 2002:a2e:6c09:: with SMTP id h9mr3122819ljc.37.1557862702868;
 Tue, 14 May 2019 12:38:22 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 14 May 2019 13:38:11 -0600
Message-ID: <CAMt1L-_=8FpQ1YAP8hTjq8bkY9t2z1V7UAp75UAahS81XFnA0Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Noise Capture with B200mini
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
From: Andre Rosete via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andre.Rosete@colorado.edu
Content-Type: multipart/mixed; boundary="===============3149137184165841061=="
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

--===============3149137184165841061==
Content-Type: multipart/alternative; boundary="0000000000000400760588de2d55"

--0000000000000400760588de2d55
Content-Type: text/plain; charset="UTF-8"

Hello

I captured noise samples (from an attached noise diode) with the B200mini
using GNU Radio Companion. I set the gain to 90 dB with the intention of
minimizing the noise figure. However, this caused the noise samples to show
correlation - as if they were samples of a signal, rather than AWGN, which
should be uncorrelated. I used 40 MHz of bandwidth and 40 Megasamples per
second, with center frequency at 5800 MHz.

Is this a known issue, and are there optimal settings that I can use to
minimize noise sample correlation? For example, with respect to gain?

--0000000000000400760588de2d55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<div><br></div><div>I captured noise samples (from an=
 attached noise diode) with the B200mini using GNU Radio Companion. I set t=
he gain to 90 dB with the intention of minimizing the noise figure. However=
, this caused the noise samples to show correlation - as if they were sampl=
es of a signal, rather than AWGN, which should be uncorrelated. I used 40 M=
Hz of bandwidth and 40 Megasamples per second, with center frequency at 580=
0 MHz.</div><div><br></div><div>Is this a known issue, and are there optima=
l settings that I can use to minimize noise sample correlation? For example=
, with respect to gain?<div><div dir=3D"ltr" class=3D"gmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div></div></div></div=
></div></div></div></div></div></div>

--0000000000000400760588de2d55--


--===============3149137184165841061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3149137184165841061==--

