Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 649DAB04AF8
	for <lists+usrp-users@lfdr.de>; Tue, 15 Jul 2025 00:47:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FC58386EE7
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jul 2025 18:47:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752533244; bh=UL3unZ84Zu5QVBGpFFzwQRsciSQmfezxkzuZxryz6Y4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LfhTKhMEKrmEWvOixLFcz1U2yFP/GQDCIxIGotHwKgOPaOFLpMrt6p5InyKkovMDf
	 /Hbeb56hNrmBnKKjGi8R/VTJKA3A2av+VQstCNGfcCx2gFrAk6iIWTANZn5BLFiadq
	 58M3jqW+k4PIt372tz6ogjhpYjKnqp0H41kUdKCdwy6l/CBdxWt7S9QhkUQvNbqdUV
	 QoaSV314ZXme7y1qLUu3IM/t91AAPClkhJ3c3UzqoAsVPE6O6UYbuTabGaC1jSvz4v
	 ku6d+xS+7DVMCisMWt3XBa7npoH4aq9pFdM5LKbK4fcsilmCpubtxcr3mypscR2tSr
	 dkNZhjerp5HiA==
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 11D3C386E40
	for <usrp-users@lists.ettus.com>; Mon, 14 Jul 2025 18:47:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XQHc98YG";
	dkim-atps=neutral
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a575a988f9so2770706f8f.0
        for <usrp-users@lists.ettus.com>; Mon, 14 Jul 2025 15:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752533226; x=1753138026; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iROWbf+dFFgFCTb03hCPlKJYL+Fq2OWNos29rffDM1Q=;
        b=XQHc98YGFn1bLQFr8MT/8MSAmFjvEtb+BEgdQhl1363f+XVdluIaMNyqHbUbRTCuVs
         VUwS6WOe8dU5ZfprI3VDuLIkGhjSkwcIlwPZCi9Y/QD6z2Uttc1F/TYOWeQZXdfqrF+a
         4lZnybiz//XD5ocBCZiXgYX3HJmEPX3wgtqyK33SAj9GZQ4TqkFcu2i7P9NRzbo/TnCs
         X7SLKDTpq7C4lrzZj9HoVng7fLRWniodDC81mTSl0zp1mYJwhsDygrIqo86nsyq1yY4U
         ZA0TQzugCUauGnc4Q3ec+hl5FacL8EQ3n5DG5SFu4L87rPT8buw+Ol0wpvcBaCFC7szb
         Xd5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752533226; x=1753138026;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iROWbf+dFFgFCTb03hCPlKJYL+Fq2OWNos29rffDM1Q=;
        b=ONnOQRkYXfxvON2+aorj9PsZPLhxOr6sRxhQsr0JpEfZsFc7IN3/huWbCFhi6B+qBG
         1egW3xck0Rqz+MXwZXc2ltJRC6LoGp/J3sYGhalfIk7Y7ZcvKqmN7vY5nQLOlwitE+Hu
         HCLP7DZdXjiD7/GHZfs6fA/UyLp18cxqX+2SundtD2iY68hVcTWPhKduwdPf+ZwhwzvM
         gMWdLmIGCJBNZEle8RA0h7YCxJVZVUfunZCGpXF6BtwcVOQkqMTN3NN0oWWZgRbWCTZI
         Bx7kM5IesTQNq/xKJcaep9W77sgYhINjw2XbfQFns4RhYlrlFh/Gbgvx9X7oAYl8AkxW
         yFkA==
X-Gm-Message-State: AOJu0Yw2Up0TRu0Le3IlGmdX7lq0ez0B1Gj8gWGzmjuABkp0I+bvRmhh
	/voDxoV5Y/ZZkouR85Bqkfz0Ou9JHAEUV14CBK+VlhsyimsJn5eMp+u7Wakuka0D+CpT6CUsr5R
	nESwKlbK8qnuNzZr+VCOacUhXFua3s6JZDA==
X-Gm-Gg: ASbGnctVQMxKifA9ETUtKB4L8e9YoahGkeN4YqqEaxmV8g2pGybSw39PPBkvGdY/wCh
	HXIHgUTd03pbXcaN5yf+9mLMjGoNiYwa14DSUwlOUDhMxLI0vFw/1AeJWRrfqru4CVzYLYyHm/4
	IWFqim0etmyLkCtQ43o0DNGFpJLTKvIVH+qn//STUE7g+fP051R+X7c+EVA7wvaKFXnEerkZQr/
	yqwJ2k=
X-Google-Smtp-Source: AGHT+IG7XYsQtMCh7L1x8LNEHimtmycluC0zUEGb+gETTHXb2gMShXZg8nmyV7YGiHSH6RvM/1CryY2Ti+ApfL4B0x4=
X-Received: by 2002:a5d:4389:0:b0:3a5:8905:2df9 with SMTP id
 ffacd0b85a97d-3b5f18cebf9mr10384634f8f.37.1752533226504; Mon, 14 Jul 2025
 15:47:06 -0700 (PDT)
MIME-Version: 1.0
From: David <vitishlsfan21@gmail.com>
Date: Mon, 14 Jul 2025 15:46:55 -0700
X-Gm-Features: Ac12FXyqoR359tHIi6gJFqGRxzTA_Hd8nLAXC5CxRK3vlCH3wxrx4EJLVobI6Co
Message-ID: <CAE=q3UOip8_jiUiozNZ35TcgL3MmnJxVjzAtFn01442OWUU7rA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: YMMO7KPHJNEQGUXSMUT2O63OZJK6RDBL
X-Message-ID-Hash: YMMO7KPHJNEQGUXSMUT2O63OZJK6RDBL
X-MailFrom: vitishlsfan21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] OOT Python Bindings in UHD-4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YMMO7KPHJNEQGUXSMUT2O63OZJK6RDBL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0471081326475773939=="

--===============0471081326475773939==
Content-Type: multipart/alternative; boundary="0000000000006c481c0639eb701c"

--0000000000006c481c0639eb701c
Content-Type: text/plain; charset="UTF-8"

Hello all,

I want to use my C++ RFNoC block controller in python. I am on UHD4.6 with
Ubuntu 22.04. My goal is being able to use my setters and getters for the
block user registers from C++ in python.

I see that in the UHD-4.7 release the rfnoc-example module started to
include the python bindings for OOT modules. Can I use that as a reference
point for UHD-4.6, or is there another method that is preferred?

I am not using GNURadio, besides having gr-ettus and GNR installed, and
would prefer to stay away from those python libaries if possible.

Thanks,

David

--0000000000006c481c0639eb701c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I want to use my =
C++ RFNoC block controller in python. I am on UHD4.6 with Ubuntu 22.04. My =
goal is being able to use my setters and getters for the block user registe=
rs from C++ in python.</div><div><br></div><div>I see that in the UHD-4.7 r=
elease the rfnoc-example module started to include the python bindings for =
OOT modules. Can I use that as a reference point for UHD-4.6, or is there a=
nother method that is preferred?</div><div><br></div><div>I am not using GN=
URadio, besides having gr-ettus and GNR installed, and would prefer to stay=
 away from those python libaries if possible.</div><div><br></div><div>Than=
ks,</div><div><br></div><div>David</div><div><br></div></div>

--0000000000006c481c0639eb701c--

--===============0471081326475773939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0471081326475773939==--
