Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E316B77CAAE
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 11:43:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE9D63849D1
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 05:43:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692092630; bh=bcAC2tyhzdiyVvhQeO/3pajE/K23/MaShdUB6p1MFsM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DTmxHJpsuWmUrTG3Tg/XPXM/GfkjxGtuOKDYUvk+8Y7zURemGg8+Q3bnF8ozm0TcL
	 jmEepzLi9UFuyUfdHwCeoPCoIvEQFEXYcedefGrC9Q9NysTT18JTOGcTSpgOU8CJPC
	 MFZD05JkjsHVCmDSaO7jiv03lh9N97aoULUvaOTYKG0Ir6ckgDMUxTmUQtcPn9Ady7
	 bsz5UDlCe/ZIhe12rZPeb9CuF55xMiExwACUHkDTvHlNoYcj0DKPx6uPeLsEtwD6A1
	 fi354GA7pw9F2XN4JnnMa9mRF9l/CgvBB4Tn38HEPRrFX20aq8rrRpI5bFeHwuchOX
	 KftE7XTp64S5Q==
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	by mm2.emwd.com (Postfix) with ESMTPS id CE8D0383FAC
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 05:43:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hnW6J3Yx";
	dkim-atps=neutral
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-48727371106so2582902e0c.3
        for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 02:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692092599; x=1692697399;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ytrAYx8/pXxR1YCYZJwUgqFdy1xtcHF03OEbUbrRzq4=;
        b=hnW6J3Yx776ACXJ4fAiStCzAwzymz1pOJTraDpxePzN0UmO1IfQadqNT48iKX4IE+r
         dlBikxDcHpiapKSHFpLMv/1PdWmuMazNS/+x+wy+d0NysG4W5dBP/kXYMH/tIkuIplTQ
         mE7tA1csUHAhUpje9d+TK4rJxbCGrU9bcfmtdff6cZv13rPOUEUDWAsR21rLQ9zgwEtU
         NnoO2ZdTzSTqzmQjia5d7jlA2GZJOvaTBxFO96bmo+LgZFIc0UxypuawPyQQwRGjHJ89
         zEOlis0ovLbMvWdtN3G5ndRBGoEwjWcauIYgR9Wk73xJWb3cdnebbFSoBVNP3scy3lN7
         1hOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692092599; x=1692697399;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ytrAYx8/pXxR1YCYZJwUgqFdy1xtcHF03OEbUbrRzq4=;
        b=eO5AcOO5RYWry6N2s1UTV+7jp4bkDmohPaIQ2d1ZMKQCjzAqDMZpusgUi6JqhgzYMq
         Ln/5hns16nmWGI3NmjfLJElQK1w8xWfaMvQ1tW6bXcIrGeVt3NZ6axda5iD1USLaqYLE
         lzkKTqhd5TUN2xygIl2m6A1oZKP8xGZ5k9L9C3bwpphM8ruC9qH4KiXkmu437USvEQJd
         H8ba1cW6rOAfyTQ0cVMuD7OPAOCWIsLk/97tkthwCyaYzb3YMOYhQUEK9NrFT9ba7FV3
         Y34qFo7tng/KkeiNqBN138BJZjI5jSZDMmz2XSpJI5Mt06L7Lhkx73A0b1gSgwRGdgSU
         hB9g==
X-Gm-Message-State: AOJu0YyNEmENVleR2I4iQ7PnPs84DaWfrMgzhNzZBAbXGG/BL+LQtvVF
	Wi/zMQiNOFK0FxbmUXUWb4vqXfkOy1mAkHfVi2TwIcBn
X-Google-Smtp-Source: AGHT+IFNsU84dC+e7l/5IwmGTx4O0z13XkQNclQdIhopErX9Eagym7TPFDx93vqw3KUk6ogQg2dV+9UDeopn68I78mI=
X-Received: by 2002:a1f:5c15:0:b0:488:23bc:6d0f with SMTP id
 q21-20020a1f5c15000000b0048823bc6d0fmr172551vkb.16.1692092598988; Tue, 15 Aug
 2023 02:43:18 -0700 (PDT)
MIME-Version: 1.0
From: "Ali G. Dezfuli" <ali69550@gmail.com>
Date: Tue, 15 Aug 2023 13:13:07 +0330
Message-ID: <CADDf8danBBvZkGBxyWGu+8Gk=OVugkVc5=erFR3b4ZJ4regZwA@mail.gmail.com>
To: usrp-users@lists.ettus.com, discuss-gnuradio@gnu.org
Message-ID-Hash: 2V2EEJMJV2F2N4G73DDMLUIWDAQ3LMUU
X-Message-ID-Hash: 2V2EEJMJV2F2N4G73DDMLUIWDAQ3LMUU
X-MailFrom: ali69550@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] phase maintenance in a USRP loop
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2V2EEJMJV2F2N4G73DDMLUIWDAQ3LMUU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1814101018672202442=="

--===============1814101018672202442==
Content-Type: multipart/alternative; boundary="0000000000004a33f20602f30228"

--0000000000004a33f20602f30228
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have two transceivers A and B each one is connected by cables to a USRP
B200mini (TX/RX for send and RX2 for receive)

Using GNU Radio, for each iteration, transceiver A starts to send a burst
of RC-filtered, BPSK-modulated PN sequence.
Side B waits for the burst and as soon as it gets that (by correlation),
detects the
phase ramp (because of the carrier frequency offset (CFO)) on the PN
symbols
and makes a new burst with the same phase ramp, and sends its burst back to
side A.
Then I observe the phase of the received symbols at A.

As far as there is no sample loss/insertion, I suppose the phase continuity
is held and
should receive a constant phase on the received symbols at A whose value
depends
on the delay between A and B which is fixed.

I observe these issues:
1- in some iterations, the received phase at A is not fixed.
2- in some iterations, the received phase at A is fixed but does not equal
other iterations.

Would be grateful if anyone could help me with this.
Thanks!

--0000000000004a33f20602f30228
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I have two transceiv=
ers A and B each one is connected by cables to a USRP B200mini (TX/RX for s=
end and RX2 for receive)</div><div><br></div><div>Using GNU Radio, for each=
 iteration, transceiver A starts to send a burst of RC-filtered, BPSK-modul=
ated PN sequence.</div><div>Side B waits for the burst and as soon as it ge=
ts that (by correlation), detects the=C2=A0</div><div>phase ramp (because o=
f the carrier frequency offset (CFO)) on the PN symbols=C2=A0</div><div>and=
 makes a new burst with the same phase ramp, and sends its burst back to si=
de A.</div><div>Then I observe the phase of the received symbols at A.</div=
><div><br></div><div>As far as there is no sample loss/insertion, I suppose=
 the phase continuity is held and</div><div>should receive a constant phase=
 on the received symbols at A whose value depends</div><div>on the delay be=
tween A and B which is fixed.</div><div><br></div><div>I observe these issu=
es:</div><div>1- in some iterations, the received phase at A is not fixed.<=
/div><div>2- in some iterations, the received phase at A is fixed but does =
not equal other iterations.</div><div><br></div><div>Would be grateful if a=
nyone could help me with this.</div><div>Thanks!<br></div></div>

--0000000000004a33f20602f30228--

--===============1814101018672202442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1814101018672202442==--
