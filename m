Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0BA799DF2
	for <lists+usrp-users@lfdr.de>; Sun, 10 Sep 2023 13:56:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 978C9384BBA
	for <lists+usrp-users@lfdr.de>; Sun, 10 Sep 2023 07:56:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694347006; bh=+5AlTNJ96Ufo4SsoLki28RmZwvkDyxX7/1S9zXA4faM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XiB0+vpgsZ4mNftuvdGpwtHzgq1cTy5ds74LVrRltoZiGWjPylRNRcQd0e2Fpr8mQ
	 2yuTJm+PRnKX9kaRcGCcAsJ1trdFxbU4QtYmy1Il3Do5KYOKW+GcEMRW75JIrUaCzc
	 N433jVu8h+oS8FWN6wHOgDYxQCiq1q5aS1ETsXzb1bHDhsf7Qp6jK70iMK87xmzdM4
	 VLT4tvCIoz7hObb19BbpvN63Kf7C6AMSM/Y9CobSeRfVf6aG6VH6UlYUSTdQjr/vUC
	 ZQIzfLwuJB0U6qKEHbQQFCkEY/s8qBkYF61MZ5ZPQPGuNL2ZTr6B5HW4Qem/4PMxsd
	 hLTRsiH38ihvA==
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 7C6093809BE
	for <usrp-users@lists.ettus.com>; Sun, 10 Sep 2023 07:56:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20230601.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20230601.gappssmtp.com header.b="X7MWQmUh";
	dkim-atps=neutral
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1c1ff5b741cso32250125ad.2
        for <usrp-users@lists.ettus.com>; Sun, 10 Sep 2023 04:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20230601.gappssmtp.com; s=20230601; t=1694346988; x=1694951788; darn=lists.ettus.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QyRlCs5LYLWexK1TjLjCcXSz6RIjR5TLynqMxdb2hG0=;
        b=X7MWQmUhc9ZbtE4Qx7Z8/iuCJlLpDyLP/YSCdMtcTPkGOTuBKeFNzAqP0+CQAtYHpg
         3KHFf5xZyHKddjrIsBjuJVhjZveXMhmTZGdtx8DksoMYt3ZDXZEDJcg3xiESyOfL10Ze
         E6XWMLTE8j+8vwEpyqrdzCDAgYXC7Bb3bZYusuy6uLVD4DB9CUo9UG0ElbUDUESRXDEc
         nOjLqhh0SlIYRI3/G/D9D9PkhTjD9f75mWRyjRR9+t/lDIsscR64IIdvPPOt2RP4pG0t
         kNR3eXhiPR7oVTvKjHkp/I5XYhzaRdbndSL44DcXFCnZvHPsLdYKMgqNPlYQ3W737ON7
         g4ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694346988; x=1694951788;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QyRlCs5LYLWexK1TjLjCcXSz6RIjR5TLynqMxdb2hG0=;
        b=INfhS2B0Q1VMc8sRHu53jYp2Hy05VpSNb6OdS6l6Ze/6h6zhRsLkwTwHAXQpynOkmT
         IsHiG5QaonqwMGj/kmk6NdDQJO6GMxJHw2QdVhE0N6Yf0Fv0igav4d/cofDqZuId8tCn
         9/+09fpCz8td43LcO2CaEYG1iOlYU1KMR/iasy1tQs/Y7QDpA43kOUKT/16vcfJgnvNu
         xYul1urKnOD+ZPUos9sYn6pW5Oplvp/2QSzQ1JtUSzHudrNvZsLuKuVtCjUzjiZNoBEV
         ZFePVPhs8ktArX/KSHM5+c/nq2vKS1PBrjyg+RxVIf0L2VwpWaZOSX3uH1D3xM7dfQS4
         W0hg==
X-Gm-Message-State: AOJu0Yx0w2GkcjJS8v1zXFmJ/quAodW48lazuGLmwCyq/5pcGnBJ+akT
	xUEMtgkIhgxWSeC/tL1KGtm+K7ovCDR8kPQh5FkJjw==
X-Google-Smtp-Source: AGHT+IFUCVpQmuzDdvYtB9Uow5E3XaF/TvQfCihM/wdti0rs5n0aGwepd9OwBrD21l4MP/qmMXoVVQ==
X-Received: by 2002:a17:903:2605:b0:1bc:2d43:c741 with SMTP id jd5-20020a170903260500b001bc2d43c741mr7062789plb.66.1694346987812;
        Sun, 10 Sep 2023 04:56:27 -0700 (PDT)
Received: from [2405:6580:ae00:c200::ffff:ffff] ([2405:6580:ae00:c200:3ddd:fd13:9a3:3cc7])
        by smtp.gmail.com with ESMTPSA id iz2-20020a170902ef8200b001b5656b0bf9sm4494104plb.286.2023.09.10.04.56.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2023 04:56:27 -0700 (PDT)
Date: Sun, 10 Sep 2023 20:56:18 +0900
From: ". AERMAN TUERXUN" <armantursun@g.ecc.u-tokyo.ac.jp>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <14fd1c4a-4718-4cb9-b3ae-df3026a939e7@Spark>
In-Reply-To: <11048ae3-acad-4c8e-bce2-a30a31d45dec@Spark>
References: <11048ae3-acad-4c8e-bce2-a30a31d45dec@Spark>
X-Readdle-Message-ID: 14fd1c4a-4718-4cb9-b3ae-df3026a939e7@Spark
MIME-Version: 1.0
Message-ID-Hash: ZYTZIYANQC7WN7IURWW6LOJAH6JC3ATI
X-Message-ID-Hash: ZYTZIYANQC7WN7IURWW6LOJAH6JC3ATI
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Parallel streamers on two 10G ports using X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZYTZIYANQC7WN7IURWW6LOJAH6JC3ATI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1904433193338747477=="

--===============1904433193338747477==
Content-Type: multipart/alternative; boundary="64fdaee9_36780cd6_181c"

--64fdaee9_36780cd6_181c
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi USRP users,

I am using USRP x410 with two 10G ports.
And I am wondering is there any way to configure R=46NoC streamer so that=
 we can use two ports for streaming parallel=3F
=46or example, if there are two R=46NoC blocks in X410 and two streamer t=
hat can stream data to those two blocks in parallel, how should we set st=
ream=5Fargs=5Ft in create=5Ftx/rx=5Fstreamer API=3F
I tried to add =E2=80=9Cport=22 args to it, but seems it doesn=E2=80=99t =
support on USRP X410.
Is there anyone tried to work it done=3F Or anyone know whether it works=3F=

Thank you in advance.

Best regards

--64fdaee9_36780cd6_181c
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hi USRP users,<br />
<br />
I am using USRP x410 with two 10G ports.&=23160;<br />
And I am wondering is there any way to configure R=46NoC streamer so that=
 we can use two ports for streaming parallel=3F<br />
=46or example, if there are two R=46NoC blocks in X410 and two streamer t=
hat can stream data to those two blocks in parallel, how should we set st=
ream=5Fargs=5Ft in create=5Ftx/rx=5Fstreamer API=3F<br />
I tried to add =E2=80=9Cport=22 args to it, but seems it doesn=E2=80=99t =
support on USRP X410.<br />
Is there anyone tried to work it done=3F Or anyone know whether it works=3F=
<br />
Thank you in advance.<br />
<br />
Best regards</div>
</div>
</body>
</html>

--64fdaee9_36780cd6_181c--

--===============1904433193338747477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1904433193338747477==--
