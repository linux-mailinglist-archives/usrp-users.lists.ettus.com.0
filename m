Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 877791F9B87
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jun 2020 17:08:48 +0200 (CEST)
Received: from [::1] (port=40138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jkqj7-0008BV-3a; Mon, 15 Jun 2020 11:08:45 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:45134)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jkqj2-0007pN-MB
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 11:08:40 -0400
Received: by mail-oi1-f171.google.com with SMTP id p70so16125734oic.12
 for <usrp-users@lists.ettus.com>; Mon, 15 Jun 2020 08:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eIu40y04Utqmzl3qd+kdpfe8C08GEyag+vcfzOBSCWY=;
 b=QC1KDS5XR8ywvmS/fl8CTJSj/gEE3d4PgRyMJuqOaqqwZ1rFDbRNQN6gN7m+icV3uE
 /fEONAwiLBajNZw3N0I2YkMzWKawvpxWEUQXNAafl6KH/ZS1AzdEq3ttJjPOPRH6N+v+
 KA8mnXw0JJuZdOWX9v73XBuKtxg2OFbbu88xgY75JhMZNXHqBhoAMMNR0kn8A+XLFVHk
 m3yfTbQCdlv42Dds+cJrI85fBlICdPZo5GJVvDz4sPrKaV6eZ0+THkXqE3cY2uFHJbzv
 dVqwWyqc7EiKKBEBbebOeegNpZGB6ont+5r+gE2g+Z95P+721dhH2FYqMf0NHHmBC6a0
 uGqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eIu40y04Utqmzl3qd+kdpfe8C08GEyag+vcfzOBSCWY=;
 b=iNSrWRTS6C0hvauzHy9Paovf0EHsimClLA6nGTPIGaz3zXrQ23MD/RhHXzRCy6n0O1
 bkLRe0ztldPzBjUtB73TjGDPAfKJJj1kQRTZCuFNj2nVaRj/WSYhEq3U48ZO66qvMTB8
 o6+hxhkUKTS6IAzWHUlsT/MpnqtmxOL91cIkct3t9yfKc/7QYfrzksqharPIab54igdn
 2DhClJ1HR2JpgrVy+04d1BZ9C6LQDOmPDjLdZMA4Bv0ryn1PzJ28oIysNulF4nLMFNR/
 k/Ly3bMCEPAQvSIas367PX6aUg8SnE3aBR3glfqQJeVawxGu536ztBCaUCrhovMh8WWz
 VLQQ==
X-Gm-Message-State: AOAM5300cz0cDfL2e74s3iJytfvNmkiXyI+OEb6Y0ZrDocsnX4TEFT0F
 ULo5HqI2foGNOojBXrlcsFPsMAb3dZT4RSl++3upQw==
X-Google-Smtp-Source: ABdhPJzZ3qr0wfNB+fXa7qzWQTdKd5j/5IYKAqOhQ8XunBCRpo9n0GNbhxYVai6m1d8CwOGLZdN+9vmNyEbejDZRDk4=
X-Received: by 2002:aca:ba03:: with SMTP id k3mr2837679oif.33.1592233679845;
 Mon, 15 Jun 2020 08:07:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZDN5+4-D150J1aWdkxM6-YKafqO=X43ViUfU81sRR9_+jNOg@mail.gmail.com>
 <5D9260B7-4E0A-4A53-AE01-EDAD04CB496C@gmail.com>
 <CAFZDN5LAj0XC3VNoY=OXfXuZHK5Ph6z2suKSt3rN8F3fNTokKg@mail.gmail.com>
 <CAB__hTR5LJOBDX=ki0=GEd_WP2bvGV89edn5n19Aa655aAR+3A@mail.gmail.com>
In-Reply-To: <CAB__hTR5LJOBDX=ki0=GEd_WP2bvGV89edn5n19Aa655aAR+3A@mail.gmail.com>
Date: Mon, 15 Jun 2020 11:07:48 -0400
Message-ID: <CAB__hTRvDyfrBzwVgLtJR88t+Bstvz+SupP2v86tUV-pCmY3Bg@mail.gmail.com>
To: Hai Nguyen <hai.n.nguyen204@gmail.com>
Subject: Re: [USRP-users] Phase calibration of multiple B210s
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3079525440896831883=="
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

--===============3079525440896831883==
Content-Type: multipart/alternative; boundary="000000000000e3360005a820ca27"

--000000000000e3360005a820ca27
Content-Type: text/plain; charset="UTF-8"

>>> Thank you Marcus. I feel it will be the same story if I use two X310s?
>>> I look a bit at the project gr-doa and as I understand it seems to just
require the calibration once. I'm not sure if there is a critical
difference between the WBX/CBX vs. TwinRX for this task though.
>>>

I forgot one thing. If you decide to use TwinRx, keep in mind that this
dboard has no Tx capability.  And, if you need more than 4 channels Rx such
that you need multiple X310, you may need to modify the X310 so that you
can share an LO among the X310 devices (see this link
<https://kb.ettus.com/Modifying_an_X310_Chassis_for_External_LO_Sharing>).

--000000000000e3360005a820ca27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>&gt;&gt;&gt; Thank you Marcus. I feel it will be the s=
ame story if I use two X310s?<br>&gt;&gt;&gt; I look a bit at the project g=
r-doa and as I understand it seems to just require the calibration once. I&=
#39;m not sure if there is a critical difference between the WBX/CBX vs. Tw=
inRX for this task though.<br>&gt;&gt;&gt;<br><br>I forgot one thing. If yo=
u decide to use TwinRx, keep in mind that this dboard has no Tx capability.=
=C2=A0 And, if you need more than 4 channels Rx such that you need multiple=
 X310, you may need to modify the X310 so that you can share an LO among th=
e X310 devices (see this <a href=3D"https://kb.ettus.com/Modifying_an_X310_=
Chassis_for_External_LO_Sharing">link</a>).</div>

--000000000000e3360005a820ca27--


--===============3079525440896831883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3079525440896831883==--

