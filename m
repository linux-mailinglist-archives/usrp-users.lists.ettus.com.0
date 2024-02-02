Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B971B846B6B
	for <lists+usrp-users@lfdr.de>; Fri,  2 Feb 2024 10:00:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B24BB384A90
	for <lists+usrp-users@lfdr.de>; Fri,  2 Feb 2024 04:00:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706864429; bh=LXWyfBIvq0Dn3ntiiv8O0Fqnmmv+uQ2vukadfSPR208=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HtkP4lS8RiPGUNgyJ/+s5d1ybUbMFBXQwk9dJdW1kj+EI8hm2qWFhgLMJA7DSInoJ
	 yqYo0XZT+pAjNZWfgUDxLyrI5xDEa65iFfKocHfpuccv8EFbjrkELw39cjNM9EOnFW
	 PKvLJqiDZlpTU23rEIzJhuIVcdp3NIO9dapsbkPDiCCUQgRblBGw3H92ncdlHKka+A
	 3QtB80pT2KNmD6pRgX5cESHQhZNbWKpLk/zy0vuDYfAevrt3MDuyDKBpNYVxNWA+79
	 o7beMt1IBC++P8z2YOj6cmioZKNO4E5iTC9eloXukQ8U3tkiNCL+rpUxVy+YMgpK/9
	 ZnL/2Rw6Uzqkw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mm2.emwd.com (Postfix) with ESMTPS id 557E5383D2C
	for <usrp-users@lists.ettus.com>; Fri,  2 Feb 2024 04:00:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20230601.gappssmtp.com header.i=@dolphinsystem-jp.20230601.gappssmtp.com header.b="22IK/QPs";
	dkim-atps=neutral
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-295b119823aso1610345a91.1
        for <usrp-users@lists.ettus.com>; Fri, 02 Feb 2024 01:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20230601.gappssmtp.com; s=20230601; t=1706864400; x=1707469200; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sHeMGiIJxn2PxB+oWkdG8bdw/IeyO5ueKx/RwG8GdBg=;
        b=22IK/QPs42fnllach6A6VMWPGvUXkhQGGwWOyOFdCvchWuhtwGzP/sDz4mKnvzgsYT
         1vKuwmEMyCZHd/oe97b/YNWaTFF1hTRLn7Ib2QpclSlhAynsgQMV9Vxk3zaWj4zOPq5P
         aYuVJ/lRfRUVEaSgaYQkFOpyxnm2X4/hqhod0PTzznco5PV28Ns5tJW4Fs+Nl3M4SwmX
         tS0t8R2KBIVOnORztRBC4+iT6OulZ0ElIMfG13n9WVtk9c39Q/AsKkRzAiiOmDp5NxBj
         D4XWc8moDMfGhP8SwXxfbzNJpD47aCCxQo9VWekzrMH2yb1lHSm8u4zwnK+6vakP4Szh
         mHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706864400; x=1707469200;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sHeMGiIJxn2PxB+oWkdG8bdw/IeyO5ueKx/RwG8GdBg=;
        b=fQRLK3eUk13zbGwsZGmMitAHBA9McP4CJdG+6l7vLmWtFzxHbTK8KSzUuHUZPTsj+O
         euzKgRSW/iki7FpykDMTIumM4jRFMGi9aND2SP5Xy4UsSH7jJXvhGo7MRVGPl3pk76gJ
         NR89usGit9mpZCHPmFXb3ab2hkRUtvgazp1l8j5adtLB6BKTsUhHlIyzlvrD8UkeMFdg
         8PboVXF9m2DljUkkY7BtW4Gr7TZoMMMoa0kN3ZAEg1LGlX4H9Q+V3M3ZMdFfxizfFyvA
         JR20N9tHq+/J2srqoN/LeDBWhCi2uV+vP0WjMygeVCdyAaWWDO2VR5wIEJDEQR/YcSAa
         8gqw==
X-Gm-Message-State: AOJu0Yy71iv2Edy+bsySTakKE51BMNOEMixTxWsBTFyRcgwpoEpllbZ8
	9Aj1Ej+O66mcIGvcKTPZyZsc/rUnSEYMjMZvmQ/WGk3kSDbs8hCah9IKHQiTnlom+uWPihMeucK
	H0CY5d6vk03OlTMFOwCKEZQWy26vV+iPujCXHKhyw/BUv2W3N5kk=
X-Google-Smtp-Source: AGHT+IGYFzR5NwA1HC+bOMJrieQ9rZbPEZLglFQyiLZTdds2j49Htg96S8SKS0HRgfcPmPvoi6tUxRnWztzNVdak4gc=
X-Received: by 2002:a17:90b:104a:b0:295:b003:45fd with SMTP id
 gq10-20020a17090b104a00b00295b00345fdmr1532580pjb.23.1706864399956; Fri, 02
 Feb 2024 00:59:59 -0800 (PST)
MIME-Version: 1.0
References: <0pxXn61blHnbsMbyqjZ6C9ITSw2lVrTPeJJewdRZX0@lists.ettus.com>
 <CABfZwcdVqmG+qDOUdTJCUNgWAr_qBGqydxKwdp7nki0rMAYJBw@mail.gmail.com> <5d1b0bac-347f-47f8-8af2-0b27c05ec72d@ifac.cnr.it>
In-Reply-To: <5d1b0bac-347f-47f8-8af2-0b27c05ec72d@ifac.cnr.it>
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Fri, 2 Feb 2024 17:59:23 +0900
Message-ID: <CABfZwcf5z26vaFTBVHDxh9gBTjvh28Y=Rg4oeg49n2yN0AqC7A@mail.gmail.com>
To: Alessandro Lapini <a.lapini@ifac.cnr.it>
Message-ID-Hash: VNNYVP27NJJIPSFG5MLPIO2G3WS645QA
X-Message-ID-Hash: VNNYVP27NJJIPSFG5MLPIO2G3WS645QA
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Python API for timed GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VNNYVP27NJJIPSFG5MLPIO2G3WS645QA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0314132776769310316=="

--===============0314132776769310316==
Content-Type: multipart/alternative; boundary="0000000000003d551706106256f9"

--0000000000003d551706106256f9
Content-Type: text/plain; charset="UTF-8"

Hi
Any rfnoc block implements set_command_time() method.
I have no experience with this method.

https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1node__t.html

mikio

--0000000000003d551706106256f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<div>Any rfnoc block implements set_com=
mand_time() method.</div><div>I have no experience with this method.<br></d=
iv><div><br></div><div><div><a href=3D"https://files.ettus.com/manual/class=
uhd_1_1rfnoc_1_1node__t.html">https://files.ettus.com/manual/classuhd_1_1rf=
noc_1_1node__t.html</a><br></div></div><div><br></div><div>mikio</div></div=
></div>

--0000000000003d551706106256f9--

--===============0314132776769310316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0314132776769310316==--
