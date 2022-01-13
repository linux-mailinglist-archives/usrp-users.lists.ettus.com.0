Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9533348D774
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 13:23:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54376384B10
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 07:23:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kQmh0Fwg";
	dkim-atps=neutral
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 15296384B80
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 07:22:23 -0500 (EST)
Received: by mail-yb1-f176.google.com with SMTP id h14so14326413ybe.12
        for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 04:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=uR2BuI6om9zyXmNpD+syqxoWGjqOvL6r9Szfvq4coVA=;
        b=kQmh0Fwg+6IWZIwSFgVp+hAJplyWZLVItzUxN4rDgorHcJuTvUJDf0CP3hilsOa3GW
         AseEMin21Bv9q9UBKkBH8s/0zsEM8jPN4TDg5auA8ca33fYgphi6dKvy41p9TaxkuwSK
         YotZvPoIF1A4MVI0HUhswRni/yUZk2ByjkCvJPqaGf3m8+t/boAogm0DgcMZ2WEcOLu3
         KDNpf5q6F2yBKAgG+sDUG7Xq8RUzpKLKpzihcc+cGcMcRu19ET/AsCAF3KmsNNM2nJOh
         OM/mcnhJFfcuhUJKX+dJWSSl8GFSpgvsOX34LzN16CrxxJhLnG+Y+GB/NYadMXsihzbJ
         xvKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=uR2BuI6om9zyXmNpD+syqxoWGjqOvL6r9Szfvq4coVA=;
        b=Utkb0bBrxUx/ge5YUFKzHHhNgSz/k+GQ7mRuILPzuRAKunKl/AeD5lVvysUFn6QR8T
         RQ0pHa8VewTJxoJcYEkSLNS7l73WL+W1B2eOwqQB6y4Q6paQ7jVxI6VYxaat4IIpL4Bs
         DZ8l+X/8iH6lw6u1l0CcLsxPXBMFVjLw4MikKFC3G5Kv0itvMJuxQdHRfyCb1FyVf/Nr
         sYRl4k0DTlymCbyH/JerDOhv1FFTJ4O63vZy5me7q3YxLaawWhm1P5iiAlxTu67NwHoE
         JQKeYP/7pmVJBzJBh7/kwcX/gAxRdyYdXtmYpbc1h35SBfuA/89SzNcVmE+UNFS4CDF+
         +1pw==
X-Gm-Message-State: AOAM531Ob5W5Rt6UEag8wEvXRn2D4XOQcKwEzE5e9f7pPv3fxqCSb/ku
	K15wfrv62UFkHSK6AYo67cRLgROsW+rxxmetlOPlrZjenvkxDZJ9x7g=
X-Google-Smtp-Source: ABdhPJx5S6vquR992+9uznV4SP0CvJJe/vkPTNgyPRLd/mCJ1xJSLZga9e6AbpzoTnm2c9kZUChhkrZgY5qvmollf8k=
X-Received: by 2002:a25:bb4d:: with SMTP id b13mr5503425ybk.368.1642076542243;
 Thu, 13 Jan 2022 04:22:22 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Thu, 13 Jan 2022 15:52:10 +0330
Message-ID: <CAA=S3Pt07rbZitdjHCZAe1qk0xv_y_JavpD4s92KCcHJ=nSKfg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: PW2KO2ZSYO44XGYPNYL2ANB3ROMGCLLT
X-Message-ID-Hash: PW2KO2ZSYO44XGYPNYL2ANB3ROMGCLLT
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UBX 160 transmit but only there is a small carrier....?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PW2KO2ZSYO44XGYPNYL2ANB3ROMGCLLT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5712881770402775522=="

--===============5712881770402775522==
Content-Type: multipart/alternative; boundary="000000000000fe967205d575bc7e"

--000000000000fe967205d575bc7e
Content-Type: text/plain; charset="UTF-8"

For USRP x310, I had UBX 160 daughterboard, but lately, however, RX works
correctly But transmit mode is not working correctly.
I had no data signal........
UBX 160 transmit but only there is a small carrier....?

For HackrfOne we had the same problem, we replace RF amplifier IC,  now it
works...
but for USRP can anyone guide me on which IC is probable is damaged??
any offers?

you can see UBX 160 schematic there...
https://files.ettus.com/schematics/ubx/

Thanks in advance

--000000000000fe967205d575bc7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For USRP x310, I had UBX 160 daughterboard, but lately, ho=
wever, RX works correctly But transmit mode is not working correctly.<div>I=
 had no data signal........<br><div>UBX 160 transmit but only there is a sm=
all carrier....?<br></div></div><div><br></div><div>For HackrfOne we had th=
e same problem, we replace RF amplifier IC,=C2=A0 now it works...</div><div=
>but for USRP can anyone guide me on which IC is probable is damaged??</div=
><div>any offers?</div><div><br></div><div>you can see UBX 160 schematic th=
ere...</div><div><a href=3D"https://files.ettus.com/schematics/ubx/">https:=
//files.ettus.com/schematics/ubx/</a></div><div><br></div><div>Thanks in ad=
vance=C2=A0</div></div>

--000000000000fe967205d575bc7e--

--===============5712881770402775522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5712881770402775522==--
