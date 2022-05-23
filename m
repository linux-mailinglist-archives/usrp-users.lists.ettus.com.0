Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD88530EBE
	for <lists+usrp-users@lfdr.de>; Mon, 23 May 2022 14:56:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51B3D3844D2
	for <lists+usrp-users@lfdr.de>; Mon, 23 May 2022 08:56:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653310601; bh=ZCfIdj0wyTxCM9GTl9pgpfuRZHabofGUpRcBEp7MKHE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DW6Jdr3S+asBvFsejAMRUm/gQyJ0ITMOGjScPMdSqtxxa0rQ6i0bWCZjQr28d6jNE
	 3Sl1ecwDpgfVHpSUwu9rAVu8qw1rIcpvJgMorkwaD0VNxlRS7XShKRAjFkEs7iOiRa
	 shJBvaFtoDdh4MF8nC9F/dRxLBfns7a+X6XxybsX1pY5X+BqTowBqVnw4ADY7mQ1+5
	 Dg2c/YKA2kar1YIlIKS8noHJhT1hSWjA7WUCeGbgqu43NqwDqcYMDQp4Ng0avlcaYC
	 xP2+kvzJrG2PQzh93xR7SAbZa/VnJQrVo2DUMjNxEoTrcWW8vBcLLHhFuzhypIW6h3
	 4C41bF1PqTBDg==
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id BB711384640
	for <usrp-users@lists.ettus.com>; Mon, 23 May 2022 08:55:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fcp/aYDp";
	dkim-atps=neutral
Received: by mail-yb1-f179.google.com with SMTP id q135so25226475ybg.10
        for <usrp-users@lists.ettus.com>; Mon, 23 May 2022 05:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=3PInraY/zPlzZAzqv7oEW5fqSh2Ju7uYPfoGz1anMiI=;
        b=fcp/aYDpXQ6KUHrWslHKryTwe7FSQqhcW0zuOrZAt4bBbMFvidsjBPeab/rgifuNXD
         uEsJJAkUytAEcixzNJGSeQWCGmlQJkxlM1ovkkmn0WTH3RNqyGJXFN5OFlzCu3TgleJZ
         mwOT7+B7riKEeEB/mKsLnDnxlTzkbE3biwG0WEIN7Zc0EKHXHqANosY3d3b3I7+jC31D
         pNM06/h7allStze0gEYC6dvAytLcQri7QJ8R6zm9JEqBAt86HU3QUPED6QPWZm842Udb
         HNUY1/Lxmjh2dn+UwCyQ59QFYBaa1kwRIg/pVL9p4/j6If38THPvQjOrWp7YhesViROD
         0o3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3PInraY/zPlzZAzqv7oEW5fqSh2Ju7uYPfoGz1anMiI=;
        b=bp4U9Jwe0xIO97eVXkSJlK7ZY9fLhiTvgPra4oLzXq8DSGDgBlujsC6HSTZym0zu2m
         AeHaSduuie4O8Wg2P+RJeOmxovvsODm/otW91MBOHcyoTvy0p8RKiXwqKyVSXYWbLcQn
         bMTRtgW4sCHmUZXHv7TCLHLShmwqeVTfGG7rpKOplPSmuCNZq9oJWUqdF+qYGNOJe1wF
         JrG9iYjcBDDwZOdk5hcC08n61TYJtPzSNN/LUCzXGYpMdVe3L334Dx/ZFUlD6gf7UC45
         QyrcvquWVN9sqARWdi1smHQp5cx8Fa3YO4OthWBIdgJ48paK+hk4eEAfKo5VrxreElxJ
         4g9Q==
X-Gm-Message-State: AOAM531wew7BcXH/P71xBkIBlzO5WV/vfZplRleKtqSkMtd0DfFSJnGO
	xkCXYi5EkX+uCelYguEQ8eRaqzFtTn5N0Hed/oDUzuz8
X-Google-Smtp-Source: ABdhPJynz8WzCDMW6Th/Evciv97l4F2Maq5qvhLJ1Jl9fbL5NsY7fAqis1b5+bDbzvhaUYnsKDRk6ipCDoy3c4NT+Dc=
X-Received: by 2002:a25:ba91:0:b0:64f:5f75:b6b1 with SMTP id
 s17-20020a25ba91000000b0064f5f75b6b1mr15180901ybg.368.1653310537008; Mon, 23
 May 2022 05:55:37 -0700 (PDT)
MIME-Version: 1.0
From: rouba zeitoun <roubazeitoun@gmail.com>
Date: Mon, 23 May 2022 15:55:26 +0300
Message-ID: <CAHqKquxY=JJN+foCxXd013ONd7gBxxO40FZ=AEFyKE_btJETAg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FHFWK2AIEEW4PPDZ6HSKS5RA2ZF2PJHX
X-Message-ID-Hash: FHFWK2AIEEW4PPDZ6HSKS5RA2ZF2PJHX
X-MailFrom: roubazeitoun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] install usrp n210 packages
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FHFWK2AIEEW4PPDZ6HSKS5RA2ZF2PJHX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8790732530005629933=="

--===============8790732530005629933==
Content-Type: multipart/alternative; boundary="000000000000430a6505dfad5b85"

--000000000000430a6505dfad5b85
Content-Type: text/plain; charset="UTF-8"

Hello USRP Support

I hope this email finds you well

Is it possible to install USRP N210 packages on an odroid? if so, please
could you support me with the needed steps.

Regards,
Rouba Zeitoun

--000000000000430a6505dfad5b85
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello USRP Support<div><br></div><div>I hope=C2=A0this ema=
il finds you well</div><div><br></div><div>Is it possible=C2=A0to install U=
SRP N210 packages on an odroid? if so, please could you support me with=C2=
=A0the needed steps.</div><div><br></div><div>Regards,</div><div>Rouba Zeit=
oun</div></div>

--000000000000430a6505dfad5b85--

--===============8790732530005629933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8790732530005629933==--
