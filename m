Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBE7A73CC5
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 18:51:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC305385B05
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 13:51:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743097908; bh=mer1pegwCe1IuGjWR6cRvsMgALk0nI9zA7/RaWhS92g=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=smtkYzdoZ0/OUBzAR4I6yRF14dAAHzAY/kvlGzZu45WNr3VMcOekX3E8MPHKvZuWg
	 UNbNRiBRMZDvAKs8uM0cQYTPiujIHbmqT5MJ+MEJs30KnUs+xePRA6GLTeSoXEa0UD
	 5TmLeuRUE/P5elU0ak4uRBzc10XtFqNqsvSm61dBMhksWz4C34sNzm0s+qQdLizs4w
	 PqEQ6QaEFbmKSAbBY/Q91uV8GUecFpZA2eW5Om+n6QEXQktY41S/F7lkYki1yGM61A
	 Obk3It4r+KjWbcWkUWxZEjRfSYwyRH50qu6LjQKN90tjT1EtTw6d62o7ePHFPGdR4m
	 MJnr8XliJLVmw==
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 9475B385979
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 13:51:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XD6brnE8";
	dkim-atps=neutral
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-72c0b4a038fso903127a34.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 10:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743097866; x=1743702666; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=99tz8W/k9inY/TISYkPt94Z6XfaMJZqapZzNkgX3nQk=;
        b=XD6brnE8oAK5o0BeO9lDfQz+0CwHJZnaPAV31eVpelap3x2gfFm+FCnMOU512SKhKy
         cNCp0dvfCSiWosQNokcxQtsFMWm2/ZkkF1bjlZbWiUVnlinz1jJYci8PMqGoqyJcI6Ga
         9sbUxCOht6TMSVWFLFGlCkHqdTWl+Mpd7irxmF7p9d7thEL4cWRt0O6QJuazdUCIs0yb
         dvr67nYA6a3x8BflICz3403ZtLuj2XIS+zjQM4uZxuJ3nLF5brV5lnsdK6CAYi+JtNi3
         aGOTfAGc9vabPmRTy8J0SA4FfCyohRo/Cw8rDuGXYSeFkpVN378vdzSW0Qidzkxs03iV
         pO+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743097866; x=1743702666;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=99tz8W/k9inY/TISYkPt94Z6XfaMJZqapZzNkgX3nQk=;
        b=t6Y01cD9ewZvJA1quJVwAskzHOsH1jMaYu0xw2Tf95ndc5wVKR0pXYmEhS8Lhs8BWu
         L2JA7VsRDx7609prVA/32W2YGmULG0bG9cz5VBbY1JR2Wgo2bbr+NfhgWXISI+UfgstG
         bFGM4LO5f0kKVuEVmbYphrnzQucavDAnUgCbltDDz1jg7aGS4bQIPIENUyodjmJmNDNT
         vPHSBsKluHdC2N2f7ItvMycOr/wKQXaNzXJl58VvB4RMM2uz/iBjLnByXcNvoqjIuTTW
         QcIVz1xweEXj/OA70XQbYrsf5ISFfmtEP0ak2U/FcBnoJrZiaQPBF5PPJ9HtwZ39rvxA
         5snQ==
X-Gm-Message-State: AOJu0Yyyxe1THgfEBE+5Uc8R1TUwZyGSz6JWzijdh7idj3xTNsz0aunv
	FkoaDVt3VRSYao+zpeCSCc25gWfSXrGSrBXhU67kycbO+0pT0DE7MgcsvmiGCTdNIKShy/A4XA9
	e3NbTAjXJYYHBTYO8Vs3lfzRWbmo=
X-Gm-Gg: ASbGncuEPNtAosXShJ7/kEcKpSaCnCQBYszyL35dpLKr/SibSvMqxNjYND0OXLB4KmN
	wlx46X/WZ0hk3Mu4VRIK+/DcMCqaGdK7HTCKwcdh8v5iAxln76dU5+6ZosmyPGxwuNJp5kiXzcO
	5omaUmS5RFH5zV7mndHIq2n1bI
X-Google-Smtp-Source: AGHT+IHJy5nA1jkUceF9+J1Pr8RNonVFr58R9PXu/3AEpgeLvZOYzpXi6O30q9rhnjYzaXAqSsYfMJ89QQ38l9I599A=
X-Received: by 2002:a05:6870:2427:b0:2bc:7e72:2110 with SMTP id
 586e51a60fabf-2c847f97fcemr2328342fac.13.1743097865739; Thu, 27 Mar 2025
 10:51:05 -0700 (PDT)
MIME-Version: 1.0
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
 <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com>
In-Reply-To: <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Thu, 27 Mar 2025 13:50:54 -0400
X-Gm-Features: AQ5f1JoyUy3DxMDoV_Foi3T2aY8-WgPR_1Os5Kb52sKdsFzAW0-2Hm2KvBVprE8
Message-ID: <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: S4NT3FDNM6DDGUTA2SCR5ORWIMZ6AUT4
X-Message-ID-Hash: S4NT3FDNM6DDGUTA2SCR5ORWIMZ6AUT4
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S4NT3FDNM6DDGUTA2SCR5ORWIMZ6AUT4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7062381396819281889=="

--===============7062381396819281889==
Content-Type: multipart/alternative; boundary="00000000000018a74d06315699ed"

--00000000000018a74d06315699ed
Content-Type: text/plain; charset="UTF-8"

Hi Heath and Marcus,

I was actually "R&D's plate" for this one. We worked through it and found
the issue. The root cause is the startup sequence in almost every example
UHD script is a bit out of order and had to be reorganized in terms of
clock setup and synchronized channel tuning. This problem is fixed in UHD
4.7+ if you look at the "tx_waveforms.cpp" example code... For your
application, just make sure to follow the same startup sequence.

Hope this helps,
Chris

--00000000000018a74d06315699ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Heath and Marcus,</div><div><br></div><div>I was a=
ctually &quot;R&amp;D&#39;s plate&quot; for this one. We worked through it =
and found the issue. The root cause is the startup sequence in almost every=
 example UHD script is a bit out of order and had to be reorganized in term=
s of clock setup and synchronized channel tuning. This problem is fixed in =
UHD 4.7+ if you look at the &quot;tx_waveforms.cpp&quot; example code... Fo=
r your application, just make sure to follow the same startup sequence.</di=
v><div><br></div><div>Hope this helps,</div><div>Chris</div>=C2=A0</div>

--00000000000018a74d06315699ed--

--===============7062381396819281889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7062381396819281889==--
