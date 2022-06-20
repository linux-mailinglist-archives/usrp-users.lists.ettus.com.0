Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FD755248B
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jun 2022 21:24:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 773BC383B5D
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jun 2022 15:24:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655753090; bh=56hZ1KPjKYz519FtoDDZ9CEh0DcQQoe3ZjTS7+v6nxY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=pA2vBgHAOtiyv6cLcLBLufs1SFizDzFZRbmFAgPYZpb+EiyC8d/FbkA/9nKMjJCFE
	 NopJ1iQLI5wBgZgFTfxyvIbGy0qMVyX2iGIIPzluISk1WD4egEkafhdye3dLe5NnAX
	 5XCGivxZsIu0k42pSnHni3xS7/Y0mw1ICPG+R3pdyPkQdmahDgN63oLxMh2SXt5IWe
	 RxXSb42bRHxg+HFhuxmgfdfDpmaGrCrbAmrOi174mmq99zqpaatq0wXnsYgyfkqdDi
	 HxSc7IBD+U3TqpSyZX03MEsfdksywBBZjBy1YS6Z8/RGGK5yZ+zyCI4p6MS/uHgHN1
	 JQuxv8AQ3scHA==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id D5015383B39
	for <usrp-users@lists.ettus.com>; Mon, 20 Jun 2022 15:22:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="my3ddlmg";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id c1so16895094qvi.11
        for <usrp-users@lists.ettus.com>; Mon, 20 Jun 2022 12:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:date:subject:message-id
         :to;
        bh=vg7fBn6uzcvM2m5lF5O7Lbp7cKRhR3r3mkVrHo8Ejtc=;
        b=my3ddlmgFGnY5KJTLFcNds8WHAlguaXykH+h3JfxTGZ2D7iClFG7QSgd3bNz5lGgYR
         jzVbiM/SG1fjtPqghxfK+V/CkOKnIZKqAprxi/MYa9BGjkNzVi7V534U2MyskcD4FWB1
         UhZIjCLUyO0Vw7SDY6Hmnt1yrjZIYTYzjG/yllzaTUoTm2O/iCBxA3XFjtjimkwr16R0
         SqhbbeBXebiuJJHR8HnwCKQMRTDnxGUrq/sk0ypcA9JCqj5BKOmq8I/mPTLZ3Wl4psYL
         r0uKYKHIkYB9HBe9kMVwS1tjuEEZvNvyEPvPCmKX8mIbgvxoOGXDSZQ9ZTcAIQA2ioE6
         sSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
         :subject:message-id:to;
        bh=vg7fBn6uzcvM2m5lF5O7Lbp7cKRhR3r3mkVrHo8Ejtc=;
        b=Xvu7/5XYF4kEHRgWVG1ip2yEVtp94nMbrOaisVmyjhK700PuWzDQqF+FIefFhymh4E
         WoERqfjgGXW8yisIiiv/B5GzCKCOcXpQAsQNESQ/elEI+i+ewsDeTOLhVBl5C5gqrAZL
         gpFzYvrD1/yS05IMLv3QxvpAA1iUPvi1PcfNAWm1yPTOGsorC2CBHrysggVCXRujNK0l
         2vc9NU/4MrmlQWERxNCTY4bruFio+edVslq8gNkDJXlbfZV65Wu3v/ptZOAkcwd7E2m3
         tXzfyUCywSqaQhkB4f9eh6aJ57yN9nue8KB7q3ifGvyLKrc8TjzM1lOtsVyUHSASJsXh
         VpEg==
X-Gm-Message-State: AJIora+DJxxVZN8keVvMDbmJM7y6huDSbeD0ienSse1DKdZz8az0DuRN
	jYGqWhr8X5vtQGzSmaP4Q8Q=
X-Google-Smtp-Source: AGRyM1stIkTvn820TgQHAq5OZmLyF9tgIUwA1zHfPveKhoKuA7kEXM0VhqtBid1HycW7ya/B/V/Nbg==
X-Received: by 2002:ac8:7d88:0:b0:304:ec4a:91b5 with SMTP id c8-20020ac87d88000000b00304ec4a91b5mr21235179qtd.500.1655752977263;
        Mon, 20 Jun 2022 12:22:57 -0700 (PDT)
Received: from smtpclient.apple ([69.85.98.46])
        by smtp.gmail.com with ESMTPSA id b64-20020a376743000000b006a5d4f32e5dsm12141716qkc.128.2022.06.20.12.22.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 12:22:57 -0700 (PDT)
From: Larry Dodd <101science@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 20 Jun 2022 15:22:55 -0400
Message-Id: <9FA630C9-DCBE-409E-9E54-AF3AC8D7B9BD@gmail.com>
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: V77CLDCGLT4UZO5WWD7YBHHK6SVJJ34Q
X-Message-ID-Hash: V77CLDCGLT4UZO5WWD7YBHHK6SVJJ34Q
X-MailFrom: 101science@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] BasicRF Daughter Card
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V77CLDCGLT4UZO5WWD7YBHHK6SVJJ34Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8598180412120049164=="


--===============8598180412120049164==
Content-Type: multipart/alternative; boundary=Apple-Mail-7EB53286-EE11-4BAF-BB0C-E47035CC7F32
Content-Transfer-Encoding: 7bit


--Apple-Mail-7EB53286-EE11-4BAF-BB0C-E47035CC7F32
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit

Can a BasicRF daughter card be used with an Ettus N210?
Thanks,
Larry K4LED 

_______________________
Click for K4LED Reference Links:
--Apple-Mail-7EB53286-EE11-4BAF-BB0C-E47035CC7F32
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head><meta http-equiv="content-type" content="text/html; charset=utf-8"></head><body dir="auto">Can a BasicRF daughter card be used with an Ettus N210?<div>Thanks,</div><div>Larry K4LED&nbsp;<br><br><div dir="ltr"><div><span style="background-color: rgba(255, 255, 255, 0);">_______________________</span></div><div><a href="https://101science.com/Reference%20Links.pdf" style="caret-color: rgb(0, 0, 0); background-color: rgba(255, 255, 255, 0);"><font color="#000000">Click for K4LED Reference Links:</font></a></div></div></div></body></html>
--Apple-Mail-7EB53286-EE11-4BAF-BB0C-E47035CC7F32--

--===============8598180412120049164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8598180412120049164==--
