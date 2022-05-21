Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E44652FA52
	for <lists+usrp-users@lfdr.de>; Sat, 21 May 2022 11:33:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63DFE384AEB
	for <lists+usrp-users@lfdr.de>; Sat, 21 May 2022 05:33:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653125590; bh=DIojoPnEhTxrTz2HpYBaIEfR+3poYVZx/MlMMl3T7Es=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BzcHAQseqVt851BX8Nv9vnvK6PU47IBCG+PNcYV8j/O6tfIBLsZc/TdbC7kWv/a/5
	 qNcS7zevKUELEKBJV4wxf1CkmvPj9Jal+vkMKm7z+Ho0iJZhMZ2XMlpZSiLAUFid1g
	 rMDE89YjU1/EYMa3itt7Nl8Ta6H8/msRLSNv2v0opJ2qSP2/PL/wUopLn4OrkBsZAz
	 r5ObAu/F6llR0U6BDjfD4JbTbgVaHmtQGxpd5sJWnpMT+j78vw8t0gUEOhS/ya2XVS
	 sSpPiYhhv0MP9Uqy6A7JWEhUuV8WHAGQ0AaHNdjgP9P8Erh5brmIL3ISNvnayffdM7
	 50OST1r15iuYw==
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DF5038423A
	for <usrp-users@lists.ettus.com>; Sat, 21 May 2022 05:32:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cXwDP42Y";
	dkim-atps=neutral
Received: by mail-yb1-f172.google.com with SMTP id p139so17714105ybc.11
        for <usrp-users@lists.ettus.com>; Sat, 21 May 2022 02:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=qDGkGS5yQnJz6OcD7atVG0I0ZlOy8hQNxstyaBKQHzY=;
        b=cXwDP42YW+RLGXGvMJStJrTv6MMtlzs/zUpRYLz8m9kLCbfxS+lc/XZIFOpe9YqHHz
         lnEt2R/phlBYORlv1KwxfIP7qxasqE2Gp13HvCD46B81Wac++sYNUibQzKyxLefh+v4r
         pLYkutZytjE/JulEdkESdUoKaDHvIT74708T1znIhQxg7yDRBTzOTBfabcxS+2Rk8bT1
         cRgV2MWZFM52ml+ES3ZRvk/X55J1gMsD0cP3oy7r/h/tw7jtWYSYZ17YnVLnB8mbRXEb
         JL8p5AaTpxTHEeu0d2aG98o/kFiH2BWHGJ8tsfv0ZX0QdKLQ8v6yqFMMoppnWUcTDT24
         BEgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qDGkGS5yQnJz6OcD7atVG0I0ZlOy8hQNxstyaBKQHzY=;
        b=1VOs/h1QHrM78/TncjIATs3R4x/p7yip/fsuaWH4lNCGRA3IfrtI5zByO/FlA3wx8o
         hiMNsK48JPdbUKgR90kIylhqVfN06U0sK9XVMJNKjEbtar0cYRGqDBsQzyDkzgO6Ao7h
         70u86saXF/5WqkEpOnsIfF/tRMjXOATQlhZapxvNu6bYX3ieIL7nnulMqs1puqoIuLBR
         VTUz5tfkIizXDNx30G75LtJUM6CmWxPEs92GrhZBwj2YITiHygZKWpV6LadETZFUmwXB
         sAaFH4m9cwaznHdGllHI6Vicy6iDGjye3jCR3AZYEyIQlCV+Wb6QKvUnZMbPdheK6dma
         EURg==
X-Gm-Message-State: AOAM533JXYshow8UiqajGYMgeA5zoBafjySz2K57E0X3ZanVeNdte3+r
	WxWuo6TUDTdTFxgJkK8+bsxsqxG9MAeYdIZeGYwxowhGxVV8R/IDNVc=
X-Google-Smtp-Source: ABdhPJwk+nKQKoMIu32fDaHBCYSlwPRjs87uvytrYu97xkI3s84GnTFFXKQnU2Uk+q7NCOG9uIsMmHE9II9Q49V4fa4=
X-Received: by 2002:a05:6902:54d:b0:64d:cc4f:111 with SMTP id
 z13-20020a056902054d00b0064dcc4f0111mr13672012ybs.148.1653125525089; Sat, 21
 May 2022 02:32:05 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sat, 21 May 2022 14:01:53 +0430
Message-ID: <CAA=S3PubV7v=UPCXCJrYfApoZ=KXuhbOQRneeeJA6GZsP5A9Zw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7635SR5K7QXNVV3KBUPRWY76S42KJAFV
X-Message-ID-Hash: 7635SR5K7QXNVV3KBUPRWY76S42KJAFV
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] What's means ce_clk in orginal USRP blocks? as it is not in rfnoc-example ....
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7635SR5K7QXNVV3KBUPRWY76S42KJAFV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1045278868303593418=="

--===============1045278868303593418==
Content-Type: multipart/alternative; boundary="000000000000b1339405df82478b"

--000000000000b1339405df82478b
Content-Type: text/plain; charset="UTF-8"

when I examine RFNOC block that is in the below path, I am faced with a
wire ce_clk and ce_rst, but in rfnoc-example there is not a ce_clk.

uhd-4.1.0.5/fpga/usrp3/lib/rfnoc/blocks

Can anyone guide me ce clocks?  why instead using rfnoc_chdr clk,
original blocks uses ce clock?

--000000000000b1339405df82478b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">when I examine RFNOC block that is in the=C2=A0below path,=
 I am faced with a wire ce_clk and ce_rst, but in rfnoc-example there is no=
t a ce_clk.<div><br><div>uhd-4.1.0.5/fpga/usrp3/lib/rfnoc/blocks<br></div><=
/div><div><br></div><div>Can anyone guide me ce clocks?=C2=A0 why instead u=
sing rfnoc_chdr clk, original=C2=A0blocks uses ce clock?</div><div><br></di=
v><div><br></div></div>

--000000000000b1339405df82478b--

--===============1045278868303593418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1045278868303593418==--
