Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B37258519C1
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 17:42:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76E96384C3F
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 11:42:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707756144; bh=E9YL1YIRdM7fnqkQ2vbbe6tW2z1CV0AlTFv63GT+Ft0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xFl9Fc0gD4yo33EhTptf9tfgeaX1bPkiORJcrB7ZY/o9VZbmX/6cbPh2XrYqLzxbg
	 fB9CHO00oEbd6MLrKcU9VP438dPWhgRyWXcqar7f0EEFV172xkm4sWD1RXLHwRk3Ia
	 BwUlsQ1Y7yghTOjnl18dQyOed9E3Lqbn4r0byAudc5H5KAUEZ8uiWukC+Yb2HQMfZy
	 fIgPwSOOBPA0CluACW4J+/EgHj1DQlkBISuodQ3lWhxLJfKHvL4VHjbgFeUfV6J7IZ
	 4Qvit9aY9jZd2JATMtTE/oMeytIZl77uoSlM7UDwaCxKwjleejz/7rKSz/ucwWN7AK
	 +iY3kjFeytkrw==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 98DA9384AC3
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 11:42:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Mtb3bwrd";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-558f523c072so5259488a12.2
        for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 08:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707756137; x=1708360937; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RWx/jYlLk+H03V5jEi9GuX37W0shLwPpAbtrR5y93cE=;
        b=Mtb3bwrd6G/7u3QBapUhse2zvm20xKWeqSbFwjYkD3xCR6vNGgzxvcEkh8b3BubBeJ
         R6Bb4f8C55xy6Tbs7V2EwLBIP5LYgdC4H/C3O1a3MpcVkaiRgRzU0xE/jw43MUzq87k1
         Pfc4Gov679AUBWCWol4HckYL8sOQxjW6vYmSWFF+ammVUdnmn0WhaGvBKG9Lo9wyFfIv
         Ro/ERbv08/Z/+titd/BAPxyZ2eayUW5IzWV3JFxphAAkIb2ABTC4jv+NA4w0CuKsycVQ
         sgbOH8kghtA6oXAUBZiv6pkcnmE8B5Fzzwb52/EGxS7k6TdK/hBpp9oxiuRgzhvONe7F
         1hdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707756137; x=1708360937;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RWx/jYlLk+H03V5jEi9GuX37W0shLwPpAbtrR5y93cE=;
        b=T4+YCJVw06vETjIfjSL36t6wHHV+kV8k6uASUxTmuo6w4bo/kLBNiV2N7qC5jp7QQI
         T8AfhHD/1YKHgTLH5XlxrmG7d6eT3hCQfag3erz+POEmgJEfyXKsTkWRRebHD303oQVk
         LvpaPMWDT+ZXTt3YDRDNxZjcfoQbpu/6Pdti2whHoYYPg8Kf/Oy2UU1YNiQlWZ8Wmez5
         1AsB/HducRhYydPOE5U0ms0/BB5FutnRVn+uFUHxU4YCSDTiDn0DaUIMY8vJiRHQjlWp
         CNzsAMRQsng4v66+I3qARkXH+s/ZKkR9/HLDQflKA9pU2CCNdyIrJch0f+pbFlJSvgl5
         KRDQ==
X-Gm-Message-State: AOJu0Yz5LtDtvAyjYHwBQTS0KKaLxk1ZFScMchmAylCRF9SPNUzNZtfz
	FsDJm3mMQtF8//KahlMC/0IGAH/rFT1r60DMl12J35vqYSuzl8sFij6HwonuztelAwMH0DhN706
	m/295xmlPgHIk8a4SU6AXvY/H3NFkVSX7GCs=
X-Google-Smtp-Source: AGHT+IEbpo4QcLRZjD3M5XRuRTZOSnjGztJE0ecEzc+6ba/cDgNQHQrTPzcyaSug9PBnbtYJ03M1AaEXRvIa3vXiIT0=
X-Received: by 2002:a05:6402:281:b0:560:4e74:20a4 with SMTP id
 l1-20020a056402028100b005604e7420a4mr5469567edv.34.1707756137073; Mon, 12 Feb
 2024 08:42:17 -0800 (PST)
MIME-Version: 1.0
From: Muhammad Hassan <engr.muhd.hassan@gmail.com>
Date: Mon, 12 Feb 2024 16:42:06 +0000
Message-ID: <CACDPEcM6_ypEBhJG0mPAGUTFAKjESbEYCsk6QNnOQGVhW1Syxg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: UC2LFMFZAFMBSDIPLN2UU5XXLG2HJDUB
X-Message-ID-Hash: UC2LFMFZAFMBSDIPLN2UU5XXLG2HJDUB
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B205 mini as a transmitter
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UC2LFMFZAFMBSDIPLN2UU5XXLG2HJDUB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8312128732679883246=="

--===============8312128732679883246==
Content-Type: multipart/alternative; boundary="000000000000e9d420061131f52e"

--000000000000e9d420061131f52e
Content-Type: text/plain; charset="UTF-8"

Hi everybody, I am using SURP b205 as transmitter. I am trying to transmit
pulse. I get following error. can anybody help. I am new user.

Error:Error reported by S-function 'usrp_interface_sfuntx' in
'untitled/SDRu Transmitter/usrp_interface_sfuntx':
Could not execute UHD driver command in 'createDriver_c': Could not create
a UHD driver using IP addr '3136D21'.  Attach a device at the specified
address, correct the specified address to match an already attached device,
or continue to work in off-line mode.
Error from UHD: LookupError: KeyError: No devices found for ----->
Device Address:
    serial: 3136D21
    recv_frame_size: 20000000
    master_clock_rate: 32000000

Regards
Hassan

--000000000000e9d420061131f52e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everybody, I am using SURP b205 as transmitter. I am tr=
ying to transmit pulse. I get following error. can anybody help.=C2=A0I am =
new user.<div><br></div><div>Error:Error reported by S-function &#39;usrp_i=
nterface_sfuntx&#39; in &#39;untitled/SDRu Transmitter/usrp_interface_sfunt=
x&#39;:<br>Could not execute UHD driver command in &#39;createDriver_c&#39;=
: Could not create a UHD driver using IP addr &#39;3136D21&#39;.=C2=A0 Atta=
ch a device at the specified address, correct the specified address to matc=
h an already attached device, or continue to work in off-line mode. =C2=A0<=
br>Error from UHD: LookupError: KeyError: No devices found for -----&gt;<br=
>Device Address:<br>=C2=A0 =C2=A0 serial: 3136D21<br>=C2=A0 =C2=A0 recv_fra=
me_size: 20000000<br>=C2=A0 =C2=A0 master_clock_rate: 32000000<br></div><di=
v><br></div><div>Regards</div><div>Hassan</div></div>

--000000000000e9d420061131f52e--

--===============8312128732679883246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8312128732679883246==--
