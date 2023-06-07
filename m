Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F18077256B7
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 10:02:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 314E3383C7D
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 04:02:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686124967; bh=kC+6G8NMe27rHih/0rjp+8zsMVzMorOraB9UicD2KyQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ifRmiMV7HwSwdmXKM1sUGU0ZMcwlr1SW7TnUlheu8FOK0RU7l1Oe3wKdIpZAMZNuw
	 5G2bgz1riwrqoBCXnOxX+hes/+eYdPyCLOgsF/WTkX6pfxHjV/0zntIS5qUJknYQj2
	 JczzClloyLfXhRN/lV5hOLDd95KQcnMSxSg9njFTRj9liW3lhwQrzurSic/WzFt6IP
	 0wM1PEmlD5eF5tWqdjTPVUiMGP7/BIQ1uZpNGf2lDRIP0PHRQKWTQ7UbSPa6xg17xO
	 vjy0PNsGiyQl5mzDCXm4PMLqMWri5WsQ8xVnKrOwyLBLcclFSkg8naQBufe41Le3G6
	 4COO0OK52y2yQ==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 42341380C95
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 04:01:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Lu+ewLLD";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-9787d11a410so12329166b.0
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 01:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686124903; x=1688716903;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VqwYHsDMTm4yPHa1CW+nqnqG3RUVHbgw4MuXLh+R+CA=;
        b=Lu+ewLLDi4CB4zjuiN/cDJTZH/oOkqatNBuIiDkw1yqNisy4egKOqcrbg4OCftm+2K
         GECzqIeK7viW6zzDCnbNDFDSQfyByQNUTNzAIRVD6+XSyU2DNv4UDVcMVxKvJXAP68qY
         3IDys8E3cTLt8yrzeY1Q1s2NqDHRR5HT2yS5gWL3BrgqpLfIboaoHI9RFYRCT6XeJ/zu
         dAvhujdNvEwOKR/wrk6ltrOQUYIg2BRuh7ixLU5wEqqqCqMCs2iNt3/BGUlHRODeMiDg
         tyPN/BVGiv4k7X7FZOlsFp/zVk59ycrkp51bOgSZtp2Kxw6erIBPElOF4xenLUFBgmAD
         LPCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686124903; x=1688716903;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VqwYHsDMTm4yPHa1CW+nqnqG3RUVHbgw4MuXLh+R+CA=;
        b=WBtXBWO3NJVP1lVPtgUA9UkbmJcRNcKxBuQAXGmRgwJwHsjlMZeRVnSpHwhpssp1I7
         nBhWJk1jjg+6dBR5sYuh2EeA5r4ZHMrJldjl4JQgfW/Sub8MT/Lh3C5jQ8J4i/R3jr82
         gDffYzRw3cRX6BqSgUMNJb0m/ZB5xhUlarC3i9WpW31kIzhR3fy3Ij7wqNufLxq05jRu
         myMx9YhGPc6bzOIMXkMCDgna2/lCn3TGGxYlegSNWkA4CakcDFpxTxz0olBdHffuAd09
         pFbw3ntFR7+DZsPCF6WxrKBjHTFn6YzQJTtuabLZ7OSeBp1oFaJUeM+6wDlUe/N8LLAg
         Z8qQ==
X-Gm-Message-State: AC+VfDyjQvhCYasn8Yd9+bFXv2uZuroGzxZ1IZmY7zmj+kd2ccMfIN+r
	f+Anah4sU1tiFLBAwk3vD6PENJB5b4vtF9F+4f0f9kDwDj3+og==
X-Google-Smtp-Source: ACHHUZ6K2mpjVgbA9q7KeObNDIU1lWQaVvggU7CxzWpQcswAgVMII0u0dttj9ni0iRz6mEmv0ilR/C91YjuC1Gy3+t8=
X-Received: by 2002:a17:906:6494:b0:976:a7e9:e662 with SMTP id
 e20-20020a170906649400b00976a7e9e662mr889766ejm.2.1686124903275; Wed, 07 Jun
 2023 01:01:43 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Williams <zs1kwa@gmail.com>
Date: Wed, 7 Jun 2023 10:01:06 +0200
Message-ID: <CAJhOL6db=5EY9e6GTgm6VB-omxn1GTD=iFF3QYasa7S=ekjNuA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 6PGGXD4WNIQLNL3MXTGHEP3NTRDM6LU2
X-Message-ID-Hash: 6PGGXD4WNIQLNL3MXTGHEP3NTRDM6LU2
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] vivado 2021.2
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6PGGXD4WNIQLNL3MXTGHEP3NTRDM6LU2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2414321317289306006=="

--===============2414321317289306006==
Content-Type: multipart/alternative; boundary="000000000000e821f305fd858bce"

--000000000000e821f305fd858bce
Content-Type: text/plain; charset="UTF-8"

Hi,

Is it at all possible to use Vivado 2021.2 to compile the USRP projects?

I am getting an error "[Route 35-9] Router encountered a fatal exception of
type iN2rt13HDRTExceptionE" - apparently an internal Vivado error fixed in
2021.2.

I've changed the initial version checks to 2021.2, but there is some IP
that needs to be regenerated.

Perhaps if I could just get the project file created I could do this
regeneration manually?

Thanks

-- 
Kevin Williams, Ph.D.

--000000000000e821f305fd858bce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>Is it at all possi=
ble to use Vivado 2021.2 to compile the USRP projects?</div><div><br></div>=
<div>I am getting an error &quot;[Route 35-9] Router encountered a fatal ex=
ception of type iN2rt13HDRTExceptionE&quot; - apparently an internal Vivado=
 error fixed in 2021.2.</div><div><br></div><div>I&#39;ve changed the initi=
al version checks to 2021.2, but there is some IP that needs to be regenera=
ted.</div><div><br></div><div>Perhaps if I could just get the project file =
created I could do this regeneration manually?</div><div><br></div><div>Tha=
nks<br clear=3D"all"><div><br></div><span class=3D"gmail_signature_prefix">=
-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">Kevin Williams, Ph=
.D.</div></div></div></div>

--000000000000e821f305fd858bce--

--===============2414321317289306006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2414321317289306006==--
