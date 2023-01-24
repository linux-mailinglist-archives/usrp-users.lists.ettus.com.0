Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1091D6795D7
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jan 2023 11:57:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5F64383F95
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jan 2023 05:57:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674557846; bh=qtMjbzjEPl6FZrDzm+MZ8fx/deCTgtJiW1uMYCZvgWc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=S2rndM8bP4BrQmLEq4A/ZCcR1dOrtdcngY/p3ynx+ECL6eR/93H56pyaXW+6OMNWK
	 Wjxln9SUtp1b00vU1DSToGkCpo1AkC29SqZ4CjBIAf7UrqDYug/XkKhDRQ0MDy00Kv
	 afbeusnSksq+wQwYBaWoiXupSUWyjyJZBZXFsTAcJ8+8SaF2PWvsym1CnzqJfy8Gnb
	 QQ+ITwM3WyLWQPNrL/sAokU2zRqy05RE3HdEYZYrIQWOlcvj24Anj13pxNmaxE1Oua
	 cmYoJ5R/0phgjLZ8XRAu2OEJpG4GJnmavr7NcwNO2FKRe/3zWFKo8+g/LGEsaR3nQd
	 wg0s7sMaPDsnQ==
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	by mm2.emwd.com (Postfix) with ESMTPS id B5D8C3817EC
	for <usrp-users@lists.ettus.com>; Tue, 24 Jan 2023 05:56:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M9pc7fG7";
	dkim-atps=neutral
Received: by mail-io1-f45.google.com with SMTP id h184so6883052iof.9
        for <usrp-users@lists.ettus.com>; Tue, 24 Jan 2023 02:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7muODeb+hL8wq9LRfTQwKW9HAR5uJQD4UL62grEMFZQ=;
        b=M9pc7fG7V4P8cGemY+k6WF0Z57Kv+YtW516uIRA6NqEL/vqp0a0Q9HqVwMcw2dEVST
         Mm8iJ3L7SvrqrYN62+d5yQMRZUZKQa58KNWTqS24QGqrZmFSWyFZAbUWydcmf2qh2oXJ
         PcNSu6NK4GUQprHgjiVctDM92Na1NfCfwGhqoJlY4QnkRcS1ckWnRAW3yxn5QxSURlMs
         ZklkO9rQXQcneadSqrZ3RxJECDhFndWnkWEYhx6dXXhNOIGIcieUGA1E+NbFHk5YAVtv
         SahJyEHiGAep5/fddnwwkNJ5+gd2iYP2jZDFJhgbTSxzb4z1gOnuAcvc8MuoABqRLhu8
         vLuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7muODeb+hL8wq9LRfTQwKW9HAR5uJQD4UL62grEMFZQ=;
        b=aBqNxG6SqnJyuj8Z5Yu9mxcPKtfpg/jqelWcw+fHgqqcy6IvASdWNnBIwRHLz7rtk6
         Jm6ND5KdW5BcJnV6Cu9yMDV0iDzhWHA7ccpQt4cWmRX66ZPfBHx34QZAfJVUrT42enN0
         19eC9fbPJR66P/hLveZNSVbRmpfnqToqnewDfY2vbmmnDX3xlDpDVyYDGC1bb60HWj0s
         CRw5G2MyqKyb5CYMPaYnH6Sr1rYCwy0qm3idyWIoasJkF3IW7t5aPoz8BPX6VRZV8374
         u/GIQ1au9ev0Zl1emDczxciedTyPdMjhWMZ3SpBKUU9sD4lI7FMZqz8SsWCM7SMh9hGK
         HYfA==
X-Gm-Message-State: AFqh2kqDXc0YidxaJR3RpqTUUqsDEbhIj/aWsx9os7jXMn8yV05xR2fc
	uZN6tlQN6S8BnQd5Ti2Yal57jxzs2duMFP9FmGFy1cWInSg=
X-Google-Smtp-Source: AMrXdXuoFAMwPBDGwKhatDXQA1rh+bRpXe/hychGza1/6VIo9a85DEjrN0gioite2Tw5y+4lDlxlJRAZZ0oXMd7QWTo=
X-Received: by 2002:a02:bb14:0:b0:38a:b267:8900 with SMTP id
 y20-20020a02bb14000000b0038ab2678900mr2460656jan.151.1674557769970; Tue, 24
 Jan 2023 02:56:09 -0800 (PST)
MIME-Version: 1.0
From: mychk1 1 <mychk2@gmail.com>
Date: Tue, 24 Jan 2023 12:57:39 +0200
Message-ID: <CAEygNrYrtJXcbwyPZuky+fZjvfiOZQmeN3uMG0A2gdK1fwMSCg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: U3QW2EVSVL4WDXNTCC6VUOBZ5NIZMQS7
X-Message-ID-Hash: U3QW2EVSVL4WDXNTCC6VUOBZ5NIZMQS7
X-MailFrom: mychk2@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Dears,
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U3QW2EVSVL4WDXNTCC6VUOBZ5NIZMQS7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4695905512100360608=="

--===============4695905512100360608==
Content-Type: multipart/alternative; boundary="00000000000008f98705f3005d39"

--00000000000008f98705f3005d39
Content-Type: text/plain; charset="UTF-8"

I'm using USRP N310. I observed that the fans is regularly speed up down
without any streaming. I just connect SFP0 and the ETH. Is there something
wrong?

BR,
Marchin

--00000000000008f98705f3005d39
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div><br></div><div>I&#39;m using USRP N310. I observed that the fans is regularly speed up down without any streaming. I just connect SFP0 and the ETH. Is there something wrong?<br><br></div><div>BR,<br></div><div>Marchin <br></div></div>

--00000000000008f98705f3005d39--

--===============4695905512100360608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4695905512100360608==--
