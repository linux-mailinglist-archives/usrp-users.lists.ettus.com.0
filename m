Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1B99DFF10
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 11:35:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54D42380BE1
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 05:35:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733135745; bh=e27JXYXV3s2i/F55fc/QXXvl94C+UTPOpEJgMZb2/Gg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CuwKo5XWAToCE/XqsszFAdgdxpXE4m2d0VKdL92+az+IlVfYCBUV3ZUIQGSwHmYww
	 kq0+8uQPpk49C9hEwD6uGz/OASyEugBecUHk3ahwM7tIqFi9rAzoz9bMAZ9Zn70bbG
	 cqaxJg4bwW+l5OE22My6QMUXDA5M3/7qNC3xbAmefPHuh3Ox+/5phabzGVOgGOsiXv
	 maudOyKxRo9Qa+oIL+1T7yqrWuFc9ggm0IvL1Sts0/aVuAKtydKJSvty5BW4F8An5G
	 Ta+8Bi2c2pdCAfDM11YmWPX3ghKxHQrXhUfXaAJnspZPp7RLH6AqOGos+2So+P5bD/
	 1jui49B8hE6cg==
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 0548838518B
	for <usrp-users@lists.ettus.com>; Mon,  2 Dec 2024 05:34:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=accelleran-com.20230601.gappssmtp.com header.i=@accelleran-com.20230601.gappssmtp.com header.b="HN6ikKH/";
	dkim-atps=neutral
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3a7dd54af4bso10738165ab.2
        for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2024 02:34:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=accelleran-com.20230601.gappssmtp.com; s=20230601; t=1733135699; x=1733740499; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iFAaelA5JtlkRkHmQK0e4t1Kt76X9sajII9pXkEV+8U=;
        b=HN6ikKH/NSBFDBdVmn6rKv2b5dGKRMzZR9J8qPmckVBCsPVVsvs6anT7no2WWdHkXl
         AbWDN21oRyH555xmwsZRfrDpJUEfUg8ZL2N5/FSU3r5wToKFd30SVV76Vz70ZaPB8/fi
         6JsllryOqsFPEO7SaLWkpvm0yCrrxF2ha7p/ONso/yvjOy78Adnj+vzWoSOxEmglt6js
         aW6HH/LvOWlYKFY0lsEk1/ANYtkz5vThpkny8fwIRJpH5qlJjkquQnLJyndtWnedlsnC
         lNyFM6HdevnQCsVyjUbb1jrhGRVIhQMj/EsRUCR4MNh8Z2vwiA+bTZ8+iunr9947FnTl
         n1NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733135699; x=1733740499;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iFAaelA5JtlkRkHmQK0e4t1Kt76X9sajII9pXkEV+8U=;
        b=BEpySfTGHKqfIcv9651q8YU746GxtjA0zVp7aUxDj/HynXdWlc8TlTWacoZf8q0lYz
         7NFfrixLsyWXrGTiink934angC8bMa9FBpRrlrN9oPhDjkuuX4dYINcjKhlKfA5rHgUU
         gYqMzMJ+0HVENDA668AT4okd+JJj/JtFDEfttFCo6j+HItrGZyBNbSp99OmY9xHOGt8V
         xnlrhwKs/sjjjDy6DP+Ht27/oZ8WL9VvGHaGa52ICyESLSbS9YVjk34mPYz5/XExyuZw
         UJHG336YRZOSpeF3cPEKqlPjpmod91u3QJ4WExoC/dPOVnA5d471Db9dNZN0U2r1YZOX
         xIFg==
X-Gm-Message-State: AOJu0YxdWTO7JTqTlPWsqU++JngaX2XxUqrJSFox3xzCfReHTiMAeQ3v
	70NrtfhZMKlXuoc4Adpe6VVUECzNaUQ3MsTY1WcVp9nuSBqnhkdMZSmFcIJkHhLBpYTkK/R3VvB
	pszvqQX281dnlEP+BfRKSHHuAP/r41nEWO7UHnlosxeDuoijgAS/RuQ==
X-Gm-Gg: ASbGnctpg+PvDSRfcPrQ2fmaMpt6Q9UAxT0fcVjzWkXJCOX68dBzL4rEEBjZ7rW7XXD
	yN9T1372646rcVYXT/onnd8KSU69hBpKv
X-Google-Smtp-Source: AGHT+IGSzqSleujSw2oh+gWm03jqr/E5fVmR7+KZtZPCtbu0YiUwAS9ZhAO2Fx8yNk17xGpgdqCCVpPeYcCZ3sPk87E=
X-Received: by 2002:a05:6602:6d82:b0:83b:28e2:4985 with SMTP id
 ca18e2360f4ac-843ed0b6112mr2332744939f.12.1733135699277; Mon, 02 Dec 2024
 02:34:59 -0800 (PST)
MIME-Version: 1.0
From: Houshang <houshang.azizi@accelleran.com>
Date: Mon, 2 Dec 2024 11:34:48 +0100
Message-ID: <CAO=xj9VQiDaA2u3mtQ+RLEqSWf6ZQf04qJBPsBNT_mWB9Bz=Uw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: GYEXWN2FDSRIQVSP53FFJ3PXEIUG2PUC
X-Message-ID-Hash: GYEXWN2FDSRIQVSP53FFJ3PXEIUG2PUC
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD, DPDK compatibility question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GYEXWN2FDSRIQVSP53FFJ3PXEIUG2PUC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3915099841005539307=="

--===============3915099841005539307==
Content-Type: multipart/alternative; boundary="000000000000b41b2b06284719f7"

--000000000000b41b2b06284719f7
Content-Type: text/plain; charset="UTF-8"

Hello

Does anyone know if UHD_4.7.0.0 is compatible with DPDK 21.11.6? If not,
what version should I use?
Thanks
Houshang

--000000000000b41b2b06284719f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello</div><div><br></div><div>Does anyone know if <s=
pan style=3D"font-family:monospace">UHD_4.7.0.0</span><span style=3D"font-f=
amily:arial,sans-serif"> is compatible with </span><span style=3D"font-fami=
ly:monospace">DPDK 21.11.6</span>? If not, what version should I use?</div>=
<div>Thanks</div><div>Houshang<br></div></div>

--000000000000b41b2b06284719f7--

--===============3915099841005539307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3915099841005539307==--
