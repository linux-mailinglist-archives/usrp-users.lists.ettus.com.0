Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E1620552489
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jun 2022 21:24:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7E988383AFC
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jun 2022 15:24:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655753064; bh=UEtSlLRHAMTulZIVTEzvCwPRlRfwMcEwe7UCO/S8nqc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=R9deGGg+ZVejKMR4VcEFbrAzXEpKwdRurvBfPrgoe5rw5bucX90q5riFql0PphQtm
	 /wxPZclsvpCg4ofswo6V39j3jFaMPFzQqPr+KdU1gVwRLU8E75gZMBonz5HqtdcrbB
	 W1FjXz5B7CiIo0YcaWqdOYON+JXxhStI5ijuZ61ikPrCSDhV108mUvgcfKZ6pYWKgq
	 Xk1uA55f7PSMdIE1urFvwacoZcah5c3kJzkf4maHw/RF3jkXAdnT9lmK1FkReV+Oou
	 oSWYCVUx/gSslc0TSW6Lf8cGZDhldYo8pUIXolVQKfHlzcacbzjKaQuFGRkIap/UO6
	 zg6E/QfypRqhw==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id EA665383BCE
	for <usrp-users@lists.ettus.com>; Mon, 20 Jun 2022 15:23:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eql6nswa";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 88so13739344qva.9
        for <usrp-users@lists.ettus.com>; Mon, 20 Jun 2022 12:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:message-id:date
         :to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=eql6nswa/j0gHh+sCtU+EjeQ0gn0TCYOV8v2+qyFvN5zPZNr4OnELmmrz+oKC0ElWa
         gRZ1e6FP3rQnIZy6R4FfPyKquDOzhZJnYkKRHl1aHRRV1b5aa4T/Z6HwZhREkFfyUbka
         pwGSnQrYa7DtOn4vyrZ23q5Pf+6aKUOEZ8Ww4w8lu28RnXUaMKqXd95Uez2xbO8qnmof
         +9H8C7XwH84yW4qDtNe+TVIBChR3loWNuB0zbwNt0fY0zMpZToElkWPShBS0jJkYLo/t
         YAcM/Cm9Tux8Nfb3qQL2OLMEL8g7jVb+qZI2shOpEwTF10SmKdh5HLomlaszit5Zj1pm
         EZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:message-id:date:to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=fkqAVpYM6A1/E0nzS8oRWv3oYGKr2K0gTO7lNaxSiMoELTHfgY9o3ywH+n3ubQIIUp
         iO+GBKlHstb6csOKcgiWcI5Ihx+IX3Ij36DKjRkx7mmmEOPDJdGLH2jhR2+EjNk0LkJd
         1bnRLTDduL8SJeG8D/MVkqDiPDiZrSyAwkBpXk7+sfEogt//UDUeJS3SyPyEHDktAbVT
         D2quq6YNZmAgZ08pzNuUDrX9r2trW5/VMtNMLUiTND2o33AeNpnjtWDfyqRvuO1A2LsV
         Y1YDg3y5waPc/CXaGkIMTpkEpGCK2+PlDEB/zl5SoKpI1EEcKKH+gmrdi2bvi5AzDcG1
         1UIg==
X-Gm-Message-State: AJIora/Yj30uCqn1w7KX8ttdo9Y52K6dMMX8ypaYlrzr9tAqxx/nnvtV
	+2J947FGFC1sofdU1y42Nak=
X-Google-Smtp-Source: AGRyM1sPBDXtLwe9OqVi5liJBzbEGtVldtaP8DG9MgY/1/cilH/L7EAhYMWGfUQEHE5yuS8ZeIsvAw==
X-Received: by 2002:a05:6214:19cc:b0:46b:9918:2225 with SMTP id j12-20020a05621419cc00b0046b99182225mr20334184qvc.77.1655752990401;
        Mon, 20 Jun 2022 12:23:10 -0700 (PDT)
Received: from smtpclient.apple ([69.85.98.46])
        by smtp.gmail.com with ESMTPSA id m22-20020a05620a291600b006a370031c3esm12894145qkp.106.2022.06.20.12.23.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 12:23:10 -0700 (PDT)
From: Larry Dodd <101science@gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <45597E66-BD30-4EDB-9DD3-49D303645AE8@gmail.com>
Date: Mon, 20 Jun 2022 15:23:08 -0400
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: QTVZ6RHQYZMG2CLIIL44AFJLTSPZTLMS
X-Message-ID-Hash: QTVZ6RHQYZMG2CLIIL44AFJLTSPZTLMS
X-MailFrom: 101science@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] BasicRF Daughter Card
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QTVZ6RHQYZMG2CLIIL44AFJLTSPZTLMS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
