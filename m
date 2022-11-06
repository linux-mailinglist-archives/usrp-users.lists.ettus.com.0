Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1CF61E571
	for <lists+usrp-users@lfdr.de>; Sun,  6 Nov 2022 20:06:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C43303838FC
	for <lists+usrp-users@lfdr.de>; Sun,  6 Nov 2022 14:06:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667761585; bh=+jU8LpR6q9sTuHTWmPxL214ytN7foqczD97dMTusNKY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AZ3uaWL+BowK15qEZf6As/K9pLov47xJSj9J0tPf8uCS4F4MfuNmnGm/1EjfQxFfR
	 AdqLBWIPrWdoZOnZAHS3nWKaq5ExWEEbNHgcyW5ZeborMeGZ+6r9sIfh64WpVkb0ph
	 R3Kd8CSiqziWZ3ZLuJM7PCwmtkyyM1dSgGHSIJ8REeuD5q/+r1p7HhavH3kt9PtNcU
	 oXLtqF229eUVe5oA0DSEhaE/7LhIHtfz4cYYysVgSC5uET26MV1fVFK8AnKWCySJ4M
	 qUTxw8VM38kOklaKAdJeJN7jIfPT5drLsnuTeDhQQmvTnvKjjSAmroRftQQB7WdMFU
	 2bwrj1KyoZUKQ==
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 7398638308E
	for <usrp-users@lists.ettus.com>; Sun,  6 Nov 2022 14:05:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="axu+kKy5";
	dkim-atps=neutral
Received: by mail-yb1-f181.google.com with SMTP id 131so6961105ybl.3
        for <usrp-users@lists.ettus.com>; Sun, 06 Nov 2022 11:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iK8xiesgUaTOHeUK8iT2ZUWDqP6vUmbN5i5Czin5MMA=;
        b=axu+kKy5ZzOqhwfOQcBnlFzn9GFs0DbWu2+iiR7rcB1YGoIaudzXdx+hFDZvIsXWUF
         hwhmRuWr6n0OW81HMhUnRosk7GuwY6ywDItzwuhAad1yJpK5bB7dpXYIsu77zWaR6t16
         w0TvLbND/cDA4dg9Gxo4empv8DiYK03NJShI9/epioSvgz4Z21jiryNmua1X/BQSxLhx
         1vS0se3ymKAXDpibQfh8L2hee54q/6rwEzkMNXgVro/BHSjWtZzaXDMBAfdLaG98v798
         sdSGdHGAWseKhypZxrQmSe1DDFjnu20z02lk/VXXFVafcxYsKhsRLRgiQNPBuXJJr1l8
         r1Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iK8xiesgUaTOHeUK8iT2ZUWDqP6vUmbN5i5Czin5MMA=;
        b=G4mxf6ZX4hVt7kzaG/NWMoA7G6k7qXmW2CzmF/H7ScCL0rwuBMh2eZGswzYQ7d5mTP
         okEck6rgH2+RcIMur+vfThJA92ksQasvWrJT80xlqrSfTG/meZf6xEOVolkKtTgopPrc
         HQjSwDEpte8F+nMZnFt/s5ly+/NZdcvXknxralUNIH5iLumLqjkedxh2X/FcpcBfBIxd
         3S6my4M8j2YqSbywD7nk9wYZ5Nj9u/vnPu07cEt97e0hSliBBnVl4sVebUwJaX9Toc02
         gQxyhb+pnbsGbOmzqY07fOfRlyF7MFdsDlmAK5kbX5yEvDYnh5QA4aQMKFuGV3SJcuOp
         f+Lg==
X-Gm-Message-State: ACrzQf0CH9dUQTkLxpcaQtT2vEwACg6bEZztCnIx507LQEyzjqoD3mvS
	MrotWTcvvNlrAtqcTcsKbaoF5TFyNOWHL5cZ92DcqMcK32ljNenf
X-Google-Smtp-Source: AMsMyM6S0DQbZYlCGlu1isjVdzoK/jNduFmbiA7IBSFjgw5241t379oSRaZq7QBl5826r5r229OYsyLk4EyYwVhL5/A=
X-Received: by 2002:a25:6e07:0:b0:6ca:22bd:761b with SMTP id
 j7-20020a256e07000000b006ca22bd761bmr44518596ybc.229.1667761537123; Sun, 06
 Nov 2022 11:05:37 -0800 (PST)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Sun, 6 Nov 2022 19:05:26 +0000
Message-ID: <CAA=S3PsBqq0vQjU-joEsa4Bkx75xvZUxOhk_r93tkMaRffpwyA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: A65LFSBUISOLPBGIRJWSJYBESRPMPEPC
X-Message-ID-Hash: A65LFSBUISOLPBGIRJWSJYBESRPMPEPC
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How can we develop two RFNOC block that there is a reg relation between them?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A65LFSBUISOLPBGIRJWSJYBESRPMPEPC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1472074745803288630=="

--===============1472074745803288630==
Content-Type: multipart/alternative; boundary="000000000000fd87fd05ecd1fda5"

--000000000000fd87fd05ecd1fda5
Content-Type: text/plain; charset="UTF-8"

I am developing two RFNOC blocks, a gain block, and a multiplier block...
But I need there to be a reg relation between RFNOC blocks...
for example, a multiply_const is calculated in multiply rfnoc block and it
is used to block gain...
when I add the reg in rfnoc block and I define it as input and output
.......
I redefine rfnoc block in this file........x300_rfnoc_image_core.v
when I build again, x300_rfnoc_image_core.v will be deleted to the previous
state. How can solve this problem?

I ask this problem in this link but my problem is not solved yet...
https://lists.ettus.com/empathy/thread/R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO?hash=R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO#R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO

--000000000000fd87fd05ecd1fda5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am developing two RFNOC blocks, a gain block, and a mult=
iplier block... But I need there to be a reg relation between RFNOC blocks.=
..<div>for example, a multiply_const is calculated in multiply rfnoc block =
and it is used to block gain...</div><div>when I add the reg in rfnoc block=
 and I define it as input and output .......</div><div>I redefine rfnoc blo=
ck in this file........x300_rfnoc_image_core.v</div><div>when I build again=
,=C2=A0x300_rfnoc_image_core.v will be deleted to the previous state. How c=
an solve this=C2=A0problem?</div><div><br></div><div>I ask this problem in =
this link but my problem is not solved yet...</div><div><a href=3D"https://=
lists.ettus.com/empathy/thread/R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO?hash=3DR7N2=
7SR37EPZKMJLG7K6FR3FKBXOMBNO#R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO">https://list=
s.ettus.com/empathy/thread/R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO?hash=3DR7N27SR3=
7EPZKMJLG7K6FR3FKBXOMBNO#R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO</a><br></div></di=
v>

--000000000000fd87fd05ecd1fda5--

--===============1472074745803288630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1472074745803288630==--
