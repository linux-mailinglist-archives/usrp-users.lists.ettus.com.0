Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5077F48F65E
	for <lists+usrp-users@lfdr.de>; Sat, 15 Jan 2022 11:22:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EE8D384EA6
	for <lists+usrp-users@lfdr.de>; Sat, 15 Jan 2022 05:22:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Hn7tMfqS";
	dkim-atps=neutral
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 865E4384AD7
	for <usrp-users@lists.ettus.com>; Sat, 15 Jan 2022 05:21:28 -0500 (EST)
Received: by mail-pj1-f48.google.com with SMTP id d10-20020a17090a498a00b001b33bc40d01so8346437pjh.1
        for <usrp-users@lists.ettus.com>; Sat, 15 Jan 2022 02:21:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=J5mu0WLkqfF4SibuEaOR3rH/q3eCq+qA8FpSVy2l/lQ=;
        b=Hn7tMfqSMWfOZbRofgnH/xqEIIxeRBaZcNEAcqyrd6Ozw2gIEw7rqzeQXpUiAfcQ0Y
         5fDdqlUnnki1dGzUnAOhHEJxRTbTElzZYqFQSTnQAbPYXzeBeJ+N7lbpAJEh+Av56gXE
         5AcyjXe9s2ujv1Vudz2sbSsmm/8pgIMOCsNUhYnEnbSWUoBi2cwbbHEcWllmMrNWgikd
         +0+Z31g95rxiL2bYD7L8fHvE391iZLfF+bOJHjRV5MDo9JNoJoI2NZ+SN6kmHLqSzloV
         fusBG21mgIQhPqNjvajsvG2x8QeWqqDFv9c3khETo2CVLb2Tx3zVejVu/6vN6XJ3iZuN
         vXUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=J5mu0WLkqfF4SibuEaOR3rH/q3eCq+qA8FpSVy2l/lQ=;
        b=NjB1P1r1MzSilgbc8NVilcYvda3xINldCGTfp//paKfwZXF+GK9SEEbXH1oEeBaQel
         mSZQLm+11XCqD3vtU/NcxrggxFoMkd89MNH6aJWxPMedC5+b3vAs4YLBmHmjU7SijWVP
         XiH2sP7Tpe3A8eEdzpMigGW/8ic8d0EKGIYGPfR2DbuZMJy9T/abG25+ieg3kG/72XsM
         9Qnuefn1ora5KysG8Ps+PWi5h4acW3XJ8z52tPbdzLE4GbO24/dVdG+7v0dOf857t0Zg
         G83jN0Uwy/k+pGIbJk4wpqh/IqhL0sn+PQJdqzNdOsnHkeTv7LtwJL05UY+qX3SVTgQG
         oYUQ==
X-Gm-Message-State: AOAM533VgugBiIqG2WClBEjnT0uejcd2Grf3vURRqyEaPnfpXFAJO+YR
	BsxqF+T5tW/MYk/rQ2UlCrWplEQy4G3JIa/QFvpE8NrrwRE9ng==
X-Google-Smtp-Source: ABdhPJwsTGdnnqYCgTvSO38qfTj3usDj74fq37LuwzSeuaRjMANf/8bSg6hbpXTJTMNBd6qiVACxMSrb+qf9r2RO74g=
X-Received: by 2002:a17:90a:2843:: with SMTP id p3mr14941586pjf.134.1642242087319;
 Sat, 15 Jan 2022 02:21:27 -0800 (PST)
MIME-Version: 1.0
From: "Ali G. Dezfuli" <ali69550@gmail.com>
Date: Sat, 15 Jan 2022 13:51:16 +0330
Message-ID: <CADDf8dZe-9uP5Wzzaa14xjZ6vT9fNXpKUSy9QQXLooLGkG7DXw@mail.gmail.com>
To: discuss-gnuradio@gnu.org, usrp-users@lists.ettus.com
Message-ID-Hash: 726WO2ZVXANGPDZS7SKEK5NKL7OPN7D6
X-Message-ID-Hash: 726WO2ZVXANGPDZS7SKEK5NKL7OPN7D6
X-MailFrom: ali69550@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] time division duplexing (TDD) with USRP B2xx
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/726WO2ZVXANGPDZS7SKEK5NKL7OPN7D6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1946509981624663692=="

--===============1946509981624663692==
Content-Type: multipart/alternative; boundary="0000000000003ffad805d59c48a6"

--0000000000003ffad805d59c48a6
Content-Type: text/plain; charset="UTF-8"

I am going to implement a real-time TDD link (in the order of
one-millisecond burst durations) using two laptops and two USRP B2xx (in
either single antenna or dual-antenna ways). I searched a lot on the net
especially GNU Radio's mailing list but could not find any clear techniques
or tutorials to deal with it. So, I wonder if someone helps me manage that
in a step-by-step way. Thank you!

--0000000000003ffad805d59c48a6
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">I am going to implement a real-time TDD link (in the order of 
one-millisecond burst durations) using two laptops and two USRP B2xx (in
 either single antenna or dual-antenna ways). I searched a lot on the 
net especially GNU Radio&#39;s mailing list but could not find any clear 
techniques or tutorials to deal with it.
So, I wonder if someone helps me manage that in a step-by-step way.
Thank you!</div>

--0000000000003ffad805d59c48a6--

--===============1946509981624663692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1946509981624663692==--
