Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD84E5B4D75
	for <lists+usrp-users@lfdr.de>; Sun, 11 Sep 2022 12:34:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 833CB383EBE
	for <lists+usrp-users@lfdr.de>; Sun, 11 Sep 2022 06:34:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662892462; bh=spE+DVI4bYBF/zHdUTbbClyixugGWc6tITGa4kuYWDA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vj+/rGOGpNpwUH/N8Oq20vI440BNiJwGrpda6UIjXY7R2HZ96RJPyOZAI42kdcQar
	 5Gw3WnRcdoR/Rmyo0ErmuzxSZHtwl5kJuDTe8GQmBbHA1/2hSpV+spYewDGzqWO4ap
	 HaY3SNPw47ltCyP8GoOi28l9AhTcn+Iabei4LMRK0blv3j4HssTI3R+rcoJi3hX8hM
	 IdhsSD/4Lfgmst3mbLF0kAr5CAqZnPN0gU6cjFualpdShQSlWHnh174fxQQJAzaydq
	 slP4ykdRVaLSzHZIuVNfxWa9oec/Q3aG/cCyYKD6Egp3XwtXi8O+Kud8RzXeh5wK+e
	 QLbQysm2RXpzA==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id E92D5383E3A
	for <usrp-users@lists.ettus.com>; Sun, 11 Sep 2022 06:32:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nAp4kA3M";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id lz22so13963400ejb.3
        for <usrp-users@lists.ettus.com>; Sun, 11 Sep 2022 03:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=mJ5++9uKXlqT7iaEQ367XtXFkzbgEU2sz9hx+2iB3fE=;
        b=nAp4kA3M2pqrbuusy0AoNhuhnB/d1895FB5Lk1Q5FGDI0H+dM4iNRsT9sNKNGhgc/m
         GRzEVV8vubfAD79U1XyDYyAKqTEufMSn7E1bhTb1OSQKm+p7lwN/v6svNOWlF9HVdvMl
         VUrH+yVQB5Oeqkesc4SB1ee/S0oMjzgZd0Kfh8X6/AWNQxpj3fxMtWqM6QsZdhXDImJ7
         9IhiFEwY7UQtwbR4W6fMCWOTOBkqXiVXZeBHEHACJ+4NyB3Mjae5abmaCP8aj2NcOhFY
         AplVFXg2XhxLDLzNL7jxkt9JgXFVUzJnhaxpsG7lhsr/Ure/UcINYuMyhpf1YlABUHWT
         o88g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=mJ5++9uKXlqT7iaEQ367XtXFkzbgEU2sz9hx+2iB3fE=;
        b=avrFysA2KfGxKAUdfHMjtjaAoN4iNMV5JUFmthooj2EGAZKOqi6wH6h4E4B5jCYAb+
         +/YcnzC8Uh/bPML0+47JAwLtR8vGUa9Em0+04IxxQn2rTqLibC5MlvzJ834ndcFEWyap
         mVw6nN7uEyq6EXf2zCcdJE5MT5gUI54XznJ9lBiXvAx07Dr9iCv/JFuAnp6c3dlsaAvA
         PO4nWU+mzFpesY8k8XU08CA6vaZdqWQF5k60CH6zsWY6SM1h8WkDxxHRc7oza6iJq5nw
         DN9rkB0PWgm5LXJfE536hwWYxfG4l30G310Tr2ZFArYlCSQEb+j2sb4EoGxOUVXzy1qL
         Lugg==
X-Gm-Message-State: ACgBeo3/+T2HYHF/BaN8L5f1CWedrw+4WG+4b5PrMlz9rTAKU2uiGBGc
	DWYLXx5xGwR3YqO4TutepvVd4lF7uf/a7VXSEO0PZhVT
X-Google-Smtp-Source: AA6agR6xDULenOouMvUCfXmxEZtggNg7ts7JFdt6/V45Boi3HnzaVAPgNmBalCi/86E/c81JPeicpjqRTxmxAd+0BXg=
X-Received: by 2002:a17:906:d54d:b0:77c:d4ac:e8f6 with SMTP id
 cr13-20020a170906d54d00b0077cd4ace8f6mr1235625ejc.99.1662892360868; Sun, 11
 Sep 2022 03:32:40 -0700 (PDT)
MIME-Version: 1.0
From: YENDstudio <yend19@gmail.com>
Date: Sun, 11 Sep 2022 13:32:29 +0300
Message-ID: <CANgrtSUhV0LyJoxnzjFXJi9W_OyD2p-cU=Q_6bcUC-qjKw1JEQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: TFHOEHRWC4Q445PT3CEJKCRTSC2LMBVW
X-Message-ID-Hash: TFHOEHRWC4Q445PT3CEJKCRTSC2LMBVW
X-MailFrom: yend19@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] External reference clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TFHOEHRWC4Q445PT3CEJKCRTSC2LMBVW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4662721009328251621=="

--===============4662721009328251621==
Content-Type: multipart/alternative; boundary="000000000000782a9205e8644c18"

--000000000000782a9205e8644c18
Content-Type: text/plain; charset="UTF-8"

Hello,

I wanted the usrp to use the external reference clock whenever possible.
When the external reference is not available, the usrp would use the
internal clock. Is it safe to call usrp->set_clock_source("external") even
when the external reference is missing? Or, could it impact the performance?

--000000000000782a9205e8644c18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">I wan=
ted the usrp to use the external reference clock whenever possible. When th=
e external reference is not available, the usrp would use the internal cloc=
k. Is it safe to call usrp-&gt;set_clock_source(&quot;external&quot;) even =
when the external reference is missing? Or, could it impact the performance=
?</div></div>

--000000000000782a9205e8644c18--

--===============4662721009328251621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4662721009328251621==--
