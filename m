Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F369219D44
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jul 2020 12:14:19 +0200 (CEST)
Received: from [::1] (port=52028 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jtTZF-0002BM-HP; Thu, 09 Jul 2020 06:14:13 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:38434)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <anthonyld508@gmail.com>)
 id 1jtTZB-00025e-1m
 for usrp-users@lists.ettus.com; Thu, 09 Jul 2020 06:14:09 -0400
Received: by mail-qk1-f172.google.com with SMTP id e13so1215314qkg.5
 for <usrp-users@lists.ettus.com>; Thu, 09 Jul 2020 03:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=1jpeBz9EJOU0xxi3izpnMaRS5+/fVSrUVbScBq6iSQg=;
 b=OsTKoZ6+oe00bUW5CdEGDMJ9ZFyn7je1px8U6tSF9u1sGoYRleI4jq5NpIyoYc+/mG
 gYk8QfXHiBcdebTAmf13qVRC8o4aRx+h56e7HcnnnL+T18exYj3ynboxKOWAgQN9wRlU
 KzXJ6fsJ6P2XV8CAReNqra+4dQT0YrIo7HM2sSTUoVovTRqOkG7kNSr1nX3iITkn9okU
 O116Ne08Hm+ic1msHJ5B8ZYErQX6CuLL2KE1Xf2KKUj4kkTqaOk1rA1RA0GOe4nHCrsb
 7YUFNos9N0EC9er3cyHHimW8ltiIZlH6WN47I7y9aw0e2GRp25F6sM7hFN3YcNYG2tdU
 lyig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=1jpeBz9EJOU0xxi3izpnMaRS5+/fVSrUVbScBq6iSQg=;
 b=owOKrUdpJhVwDz9PMyAMJ2ThZf/Nswg3TlQMp1qj7+NupKNre101Fmwr2OMnHlG6LX
 dFYfmVz9Qa48oZgw4mMBMOXxHidwlZye1yCGqi2eGpIRC+kiWyddrIVSRmkkQCMfDPQ3
 h+Kg4/1o8rsFnJ2EJeQhjB9/DeA0phgigK6qmk4zKTuUKrTc2HWXbOjAFcrT0X/MJjXG
 qUOkyHe9mSfADeSJNnwA3CXLe8fo9p8Lickgv095aIV3WqPWiwU3QfPpcsW64XWKqj+U
 G91ZdGdDXlBzoerUVq2E4DJ9EoD1S+5vOZXmy2umBdipyyDvgPa3kR8H/vCYoCC0eDcz
 Yd/g==
X-Gm-Message-State: AOAM532jH7m3FM8GbpM1vofNSK52DNdXMdVP4p5AtIQhNNTddPP9c0jg
 48tBq4fqGPhxh8bxftQfKe1UG8gTw+EMU//nBshBizQ1KfI=
X-Google-Smtp-Source: ABdhPJzo05+CRb1DgUuZzrBMVXzsmtISr3S56T1LCSXWKy9bRF8gLpwuR535TKthf2szZkKD6Ea+Bv34P/mn8VDdIOc=
X-Received: by 2002:a37:4289:: with SMTP id p131mr31873106qka.28.1594289608299; 
 Thu, 09 Jul 2020 03:13:28 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 9 Jul 2020 12:13:17 +0200
Message-ID: <CAP+KAYD2iLMbouG_ZMdb6XAT-tnYauU8BTH0E5vtEv-ahSa_CQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Output a PPS signal from time registers
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
From: "Anthony B. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anthony B." <anthonyld508@gmail.com>
Content-Type: multipart/mixed; boundary="===============1089503412321203709=="
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

--===============1089503412321203709==
Content-Type: multipart/alternative; boundary="000000000000c5987b05a9ff79a2"

--000000000000c5987b05a9ff79a2
Content-Type: text/plain; charset="UTF-8"

Hello all,

I have studied clock architecture in the USRP range.
I have enslaved the time registers to my application.
In order to debug, I would like now to output a PPS signal from the time
registers, and then get it on a specific on-board connector (e.g  J504 on a
USRP B/210 board).
Has anyone already done that or has an idea on how to first proceed ?

Thanks for any suggestions!

Anthony

--000000000000c5987b05a9ff79a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello all,</div><di=
v><br></div><div>I have studied clock architecture in the USRP range. <br><=
/div><div>I have enslaved the time registers to my application.<br></div><d=
iv>In order to debug, I would like now to output a PPS signal from the time=
 registers, and then get it on a specific on-board connector (e.g=C2=A0 J50=
4 on a USRP B/210 board). <br></div><div>Has anyone already done that or ha=
s an idea on how to first proceed ?</div><div><br></div><div>Thanks for any=
 suggestions!</div><div><br></div><div>Anthony<br></div><div><br></div><div=
><br></div></div></div></div>

--000000000000c5987b05a9ff79a2--


--===============1089503412321203709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1089503412321203709==--

