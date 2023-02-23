Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BFA6A029A
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 06:55:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFA5B383D8C
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 00:55:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677131701; bh=uuIvdb2kcmbp2wMl3fS+Xxbg9d8+OdP4bSXdcvD1qVo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EpvEzWqyOf3TE0AZ/FkHz99kuGGgT0yd8j2WFRoAFykInfeSoJsckcA4WAe+nyj2J
	 J6Bubiy0JoGpG/5AYFcaFVlr0oXw3jHg7vmIKVHVwPiqNNHJTLWQ76Hxr+y3fsK4Cj
	 nrRX0FfSeQXp5LufkQef8FuFOtZbF4HRFwwHUTiOO+ZxfAZLWDkHVqDD30DldBU4cn
	 isKVDvTkshgHBaJe3pRaXPh+1ez3gXR/fjoTFfUjYwKerGlQ9LeI8DJ/SexxPQ99wp
	 eSB2eIPRBJqQaopA1MFpB0dhrFT0FkHVmP3V1AyOdJwKhWLKC5spr6IzIz/f+jASy/
	 dm9vjmQCLCaSw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F08BC383D8C
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 00:54:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677131695; bh=77Qh6F0J3Clb6ktKKjK+GICibWT6xZe5ROYN4vyJiGY=;
	h=Date:To:From:Subject:From;
	b=iLblMdciuWaAR956PEyR8QZOQXETd09gl3IVHtmlqBqbLfH+nvzglEi1/sgl+mFBt
	 ca+oD4xUJcVqzv9AU3vkmXNhNTGkk6E8zyq7nC17Cl2cpAa1Trk6fKebKgZwlhw45U
	 5D1JvFqDSsEFJc/dtKXG3JcCp2bxlx1ANG24nObpTe6JNMSRhoAgvhjfSBJ/c3W+mD
	 8nyV268lTEAcCTeoapBLAqhXf9/ZBMBCdNHq8P8mEEVvDsqX8IWRUQiPpBeXsVjyzT
	 c/A6GxJk/0Mb8wNhgQwBwOU0rbInZRExXyCV0dIWdVNA7acnA39Uqndtd1gWs/lHBY
	 EPFnhM/qRVimQ==
Date: Thu, 23 Feb 2023 05:54:54 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <BWMe9WEUqFt0F5ek40GaAZXxKAvTyVsq5MsADnQdB8Q@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HWANNWWEWKKBQCOLBXTXBJSBNAQJ3D2Q
X-Message-ID-Hash: HWANNWWEWKKBQCOLBXTXBJSBNAQJ3D2Q
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HWANNWWEWKKBQCOLBXTXBJSBNAQJ3D2Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4534491020515366175=="

This is a multi-part message in MIME format.

--===============4534491020515366175==
Content-Type: multipart/alternative;
 boundary="b1_BWMe9WEUqFt0F5ek40GaAZXxKAvTyVsq5MsADnQdB8Q"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BWMe9WEUqFt0F5ek40GaAZXxKAvTyVsq5MsADnQdB8Q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I connected 2 Horn antennas to USRPs ports as TX and RX. I made the diagr=
am on GNU Radio. I think diagram is okey. And I measured the coaxial cabl=
es in VNA. There is no problem.

When I rotate RX antenna 45 degree in roll axis, I see 3 dB decrease and =
this is right.

But the problem is starting 180 degree. When I rotate the RX antenna 180 =
degree, I can=E2=80=99t see the same value as at 0 degree. It should be t=
he same value as at 0 degree. But there is 3-4dB difference for example T=
he value at 0 degree is -17 but at 180 degree like -20. I align the anten=
nas with laser pointer. I made the same measurement with VNA, VNA shows m=
e exactly the same values at 0 and 180. But with SDR, I see the meaningle=
ss difference.

I tried it in Windows and Linux. My usrp is USRP B200.

--b1_BWMe9WEUqFt0F5ek40GaAZXxKAvTyVsq5MsADnQdB8Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I connected 2 Horn antennas to USRPs ports as TX and RX. =
I made the diagram on GNU Radio. I think diagram is okey. And I measured =
the coaxial cables in VNA. There is no problem.</p><p>When I rotate RX an=
tenna 45 degree in roll axis, I see 3 dB decrease and this is right.</p><=
p>But the problem is starting 180 degree. When I rotate the RX antenna 18=
0 degree, I can=E2=80=99t see the same value as at 0 degree. It should be=
 the same value as at 0 degree. But there is 3-4dB difference for example=
 The value at 0 degree is -17 but at 180 degree like -20. I align the ant=
ennas with laser pointer. I made the same measurement with VNA, VNA shows=
 me exactly the same values at 0 and 180. But with SDR, I see the meaning=
less difference.</p><p>I tried it in Windows and Linux. My usrp is USRP B=
200. </p>


--b1_BWMe9WEUqFt0F5ek40GaAZXxKAvTyVsq5MsADnQdB8Q--

--===============4534491020515366175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4534491020515366175==--
