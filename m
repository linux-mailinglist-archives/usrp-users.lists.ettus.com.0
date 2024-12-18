Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A96299F60A2
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2024 10:02:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43B37385ABA
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2024 04:02:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734512546; bh=ENL7mv6BkA+M0+DlO8MwEMQLHr6dryl97YxLrVK8bHI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=uTRrL2cOrPQ71y+/NnlxdSYCnGDfsmN6O5d+lMZiixcQMnFMFU0KOARdW3E7pdZOz
	 ZluHfvEHLvfQ7+ipRqc6b43UdbXCcbHqIzJTBlvxa8flLkXcyruqoy0pPsbqi5LdYT
	 SUg1DXqdBqIUNUlQpbqiHA83CkgrDInulaP8/4/CKXx3WBphJEMgs2N3IhzANAqHcl
	 lVWNriU4uMq6WRe6SPoRU3S8B1GSSPDI7D/2jw6siM2aI5skxLLeHts/jNYBVe6Kap
	 MmzMNWFysExxgeoLRcj4RDgY96Ra5r4N5zTPLUBX3SuiD/wwVe1Un1nhAf4vZu3Wx6
	 ADK8ZGoOms9DQ==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 2185238597C
	for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2024 04:01:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IlR1pu4A";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d3bdccba49so10679269a12.1
        for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2024 01:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734512489; x=1735117289; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uhRTjw4htB5bqYl4LCOBJ1gOWmNYHgPEt6aczT4EFEU=;
        b=IlR1pu4AhJ77M13f8WScjPz4xKM1S8zgW4+USYGOeJp1KJjS6FqR3dQQDs+oSW0gXC
         /bOfVtTcJDf2SpY9clckzpTF7tcWTc4YHI0iMpdON3vptIiF1vAz4pkGVRQssrBdNFZQ
         yfQMWYvwOUQjx+wWBU2qmmHNNNS8rSPIXryl8xZQU1BF11VjXXxRTXR1nIHE97gjtQVu
         5UwTe8NCcy1kfoWZQ/kHqoCY0w5nGuwuN4e0l/lUbhMVYpDeN+e5WMMgLeKP9zp5du8G
         fDH1Fv2SUtaQb5nfRmi1pyynHJwOMq5kqgBgH+WZhrgYwZLCOGRd4HDzE5j35vaImcId
         CIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734512489; x=1735117289;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uhRTjw4htB5bqYl4LCOBJ1gOWmNYHgPEt6aczT4EFEU=;
        b=naYJsDie45+DbSp2nt0YFomScLhuzRGbOpiuKanPuR2IbTTa/S4AxHAq3O1bRia2pH
         zEWRGKdIq8m/Hk4DglZ8VdiB7ewDeYFu9p8PzkGZlN3TNUlk+DhAFuHMQqJKUqEwKLr9
         RS667bjHOwnFx3wqyd8YIyfor07rhObEZLkrBPWZg3LeGu/Zo00objRMoM0G5e11EDX2
         uVRiDCE+yjHC09xfnaZq64LuGQ7fkTgYlNArkWiaVqnX8L/F/ofgk5orvWqko/GwRsAS
         Vwm+yRC6dLEg7o9flceUzaTkxs4y4UZwLDXdflnnwecC129iB88fu1IHa7Op9+tFAxw1
         tg4w==
X-Gm-Message-State: AOJu0YxIG8dOBVx1qiIdaOJ9jZYJhctJsrLSog7syWIxJ4NXwiZacDFb
	JzZmr74xbN4ZZiJlmGXh0QORgU29UJuWkWvetllZVBDWwtV5NBEnKmHDYN7L9CDkSckRJs4RSKU
	fgbUS3+GuvskDhJhrK2A0Xg0YidZFTg==
X-Gm-Gg: ASbGncscqHwcM/3o+C8OeVNNs0Sy5pZ93lr1I2Ce/X8xMajHMPisx7Cq/ysdnd8kAhL
	E9l1nwSzaKIZ4IRoERkSSYp06fbYZcuOzGgCMSbA=
X-Google-Smtp-Source: AGHT+IGQcB7qKRuzk6lvMwCrPaXP+RGe8JDG3X/qVYs/OoohKPR0W7BmbLFPdkX7v2krgcjME78h7+4Ub6VgjYSZoPk=
X-Received: by 2002:a05:6402:35c6:b0:5d4:34a5:e317 with SMTP id
 4fb4d7f45d1cf-5d7ee3ef4c8mr2164903a12.22.1734512488871; Wed, 18 Dec 2024
 01:01:28 -0800 (PST)
MIME-Version: 1.0
From: Muhammed Mustaqim <abacus82@gmail.com>
Date: Wed, 18 Dec 2024 14:01:16 +0500
Message-ID: <CAP=wbzPCCOD_cFR-Grtp0JsqR0JJLLOeDin3gGmbYkUEy6jzZw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: O7PFNOKWOYB6Y6T3734N3S3VLSTBAXDR
X-Message-ID-Hash: O7PFNOKWOYB6Y6T3734N3S3VLSTBAXDR
X-MailFrom: abacus82@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRPN310 not connecting
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O7PFNOKWOYB6Y6T3734N3S3VLSTBAXDR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0118059543582050415=="

--===============0118059543582050415==
Content-Type: multipart/alternative; boundary="000000000000c21bfc062987a8e3"

--000000000000c21bfc062987a8e3
Content-Type: text/plain; charset="UTF-8"

Hi Everyone,
I have USRP N310, when I connect it to my laptop/PC it is not showing that
it is connected, while the other One is connecting fine and I was able to
use it.

Is there a way I can reset MY USRP N310??


Best Regards,

--000000000000c21bfc062987a8e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Everyone,=C2=A0<div>I have USRP N310, when I connect it=
 to my laptop/PC it is not showing that it is connected, while the other On=
e is connecting fine and I was able to use it.</div><div><br></div><div>Is =
there a way I can reset MY USRP N310??</div><div><br></div><div><br></div><=
div>Best Regards,=C2=A0</div></div>

--000000000000c21bfc062987a8e3--

--===============0118059543582050415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0118059543582050415==--
