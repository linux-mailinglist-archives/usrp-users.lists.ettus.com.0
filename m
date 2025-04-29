Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10000AA05FF
	for <lists+usrp-users@lfdr.de>; Tue, 29 Apr 2025 10:42:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8D6F3860F9
	for <lists+usrp-users@lfdr.de>; Tue, 29 Apr 2025 04:42:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745916167; bh=MH32LJVmmhVZljfHgcRU3jT6fiMKvjVC3dQVKfNz/vI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=g2peQara6bXmNSrfdCJ+OKDXM0v88K6vCn2XphoT/Vezpi68M9hdqEbkN7iw+BhV1
	 mrCw+mmXsEJvQ9WzUFrcp1l8k5wGSCbo+zlFaTkK4BPz7EnjiJRkA6U/PUqGcsq8TW
	 7/uQKVUkJn04agPCWrIm3NXJvm9+V78lzuaE/OdIQnL/Kuel1KcUJnAGfk0K2r1pMt
	 qovLNJxTGJ2in+xGKYMZZzuDSHgfmXfcV5NshqQZqcLvlVRHW7HVb4ZgySM9CjaN0w
	 mlH1L0gqeEPT5rhJHYz1FIEdD/F0ALwXcOL6uPgEo7pdpWP3kcTOtj3yKeFbS0VmZR
	 lgjBd6HmgPyvA==
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by mm2.emwd.com (Postfix) with ESMTPS id D305D38612C
	for <usrp-users@lists.ettus.com>; Tue, 29 Apr 2025 04:42:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Jrum1zum";
	dkim-atps=neutral
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-85e1b1f08a5so150673939f.2
        for <usrp-users@lists.ettus.com>; Tue, 29 Apr 2025 01:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745916156; x=1746520956; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GpRH4/j0+OfebjonNC7s37IFrSC2BJ8rv+ZhUvPBL+w=;
        b=Jrum1zumafEtGvqmjwiwqmJ2F35A7VHE6NmRa3FyxZjpG0anx74mhrHCsimN8YFvhb
         meVinC80lzAdk+EuwCDdfGs+qEX77bqr163+/Zc9PITJKBmVM53H3CvMxj3tE+USk4+s
         opouBaq6cVvU5qLvmyRWhd1TOiDD3XbTkrVcycQVS/1SR6iQTdubYTbBFTdBuuNZemUz
         BvwMYPNV7+BWXcpF2AehbJ7G/lGojSiLFTS7xloyPWMXQc3/YuH4McSZUVBcnqFk0NZ3
         2DHZsYiZehBvbCcEU8VR3XKVHbAJ7Qcc5HcZzz3IQLqOI5vSJ8Y6D/sH+1rWo3T6MRis
         IfWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745916156; x=1746520956;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GpRH4/j0+OfebjonNC7s37IFrSC2BJ8rv+ZhUvPBL+w=;
        b=HVmho6vinCJF2gdYx09YY6JtS4vP4EOkwV6xwUD7jC++tCkIf4ywXpzkYuMLH7H01n
         XF+4tTk1ZauLWfzFPWTahKdrJe+EX91RBq5XAM/zuV9/N5UTcstiJcZhPifTe4cvGzjv
         a1CTrcSFmmu48vAhH19QjLn2M4rS5/DVotrGNJIAFCt5vQ6qQc/lCEblPyTk5t5Gz93P
         1pAvSMtdyHIoJAfkrY+BI0JdNNags/RcZq2qqVmwndhqe5nrQ3IXXizOCDSuhftN1T8K
         rpAREq38VKXYaK1nHe4UejsHteAM76dNqYZYE0XqP6eJORs0OJor0XWJgOtuMuwGAxrs
         EewA==
X-Gm-Message-State: AOJu0YzFXFl4rgDUgWelo7Pno/JOow+vuO5qCXd6wTbHE/ZjNgrZm+Rb
	eBQZ7nSYp4KnPvKh0gCa4aslVgQhLxsyEX8NDwvC+nEIbiDXfUpEJdZx7+AVIf/A2grwro9cmS7
	hAmMc2Zv9zdZGJIH7pUxXDYSXCVlDBJx3/mM=
X-Gm-Gg: ASbGncsUdDo8nslPC5d23utt4UD7/8ArP7DAgbVw0szVDeFbM8L3n1FQu8MHi96cP4P
	kJGrkCG4hVuJbwTTaqB5/iZxo278yxnG3pwM4Ty8sKRV6IZ1oK4DuKxSa6SqS42YmKYvZG0o4Gc
	52SCabyydeEbF/8Ez27w==
X-Google-Smtp-Source: AGHT+IFZM1vmmfBl1BuqmbnBDyvMIT00Al5eHaU3ISUUKZmRKYT/8fIg+dGn9w4eHdh4mswvvTJHVJkZylPDxVfchXU=
X-Received: by 2002:a05:6602:3a12:b0:861:c744:5a4a with SMTP id
 ca18e2360f4ac-8648ae5fff5mr248962139f.5.1745916156161; Tue, 29 Apr 2025
 01:42:36 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Tue, 29 Apr 2025 11:42:25 +0300
X-Gm-Features: ATxdqUFOdRELyDeqXf4EzAhM8iX5hFGyLO7mc3-8r9KyEtKeJYiLtMTS2QCUD80
Message-ID: <CAAxXO2F=XeLvdfTdZzReTbzQwtubf6g9ayB255ZASHj5ORPvVg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: T7NO4NFL3BLTX2VANF35HQ3FFJXOUWR6
X-Message-ID-Hash: T7NO4NFL3BLTX2VANF35HQ3FFJXOUWR6
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Restarting the streamer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T7NO4NFL3BLTX2VANF35HQ3FFJXOUWR6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6272428352460138872=="

--===============6272428352460138872==
Content-Type: multipart/alternative; boundary="0000000000004bbea50633e6c884"

--0000000000004bbea50633e6c884
Content-Type: text/plain; charset="UTF-8"

Dear all,

Can i restart a streamer with  UHD_STREAM_MODE_NUM_SAMPS_AND_DONE after it
is done?

TIA
Nikos

--0000000000004bbea50633e6c884
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Dea=
r all,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></di=
v><div class=3D"gmail_default" style=3D"font-size:small">Can i restart a st=
reamer with=C2=A0=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE after it is done?=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small">TIA</div><div class=3D"g=
mail_default" style=3D"font-size:small">Nikos</div></div>

--0000000000004bbea50633e6c884--

--===============6272428352460138872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6272428352460138872==--
