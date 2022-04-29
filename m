Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A1751456D
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 11:29:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E97F384816
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 05:29:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651224560; bh=PfjV1Jjon5iq0MMgAmgF3+8ZERBlU1bXhnqVf15hzmE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iqAFvuZ70d2XFZ5dvpssgLJL/oSlwR4Sajg+PU5kzWw39YGgZMkQpRRFnWx50hOGC
	 KigunZkIUa0sjGG7+vZzNPKk6Z8/PYAiDgAKkfIGKlJfMwTwSyW2ttGbp1T58STJ36
	 bGiZDU2k/IA8P6EPJg228kSBk+svtgbZug3dMhh69psnvgwkkYRKTtwqFUkA3ftyjZ
	 1VLQ9TiA+vZvRPY7U4HRog2KZGvsiaOIey7TtW2Rbnm9a04I+CTcgH8aMfY4wsVRu6
	 OjzJ3z3UGBA5faEWXF/o8c8GUGCD1MWqZWuV+U64Tu7QLN33VvkQfE5uuRifNCngbO
	 GD+HtUAdjQ0EA==
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 9847E3846E5
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 05:28:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I1OYTLLr";
	dkim-atps=neutral
Received: by mail-wm1-f51.google.com with SMTP id k126so893003wme.2
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 02:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=3EwSsyZfsiSITHbW8jj8g1uKTZz2Xg8wsxLvaBeSg8M=;
        b=I1OYTLLr3nIXJaFyHQaFpir5bM6CroTxDYsz7Rk5AUMNHWtI6XbqtGymYGOdIPYGYw
         Rj4I/GKX9FZDj6j3wKSQO624Ie5AHo8drXdxHvfbxLyyf56+Qnw3PJ5A7U/mw72ljHKH
         7Bs8FcT9dW3H4psONnzpjZAnRnrDiL2cj72VgGCHuzplI/OvFOc/tGeDjngL80R7SHeX
         CiPdRDpWc3uF2RoYHOQSeqRRBwO573dM8wcDyQQ8ZUdDKDMumKO1xaJPKfqJgZtuKbXY
         4giMVtYm2FZCeyBveQypdwqzdVhAYJxODl4MmUYL1/2K3doJ5rk52gCWaKBRBR/brtZk
         PX4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3EwSsyZfsiSITHbW8jj8g1uKTZz2Xg8wsxLvaBeSg8M=;
        b=P73o5Y2orW/9GTF8aW8hUoTMg9t7uO5DQKe4FgfHe+ndqku7TJzE3Xfo3mb3jUC4wu
         AqxVm89Atl5onHtb1LYBaVnfYtesCUv34Io8UfJxmFXdR2yifiVuXIVkc2Tz/IqGrPt6
         L9d9qqTZIWbuyWGVjcLLZfaaKx8ZdBmHLVCp/hf/6ADuDm4HGdUAN9I29CVC95tF8hAY
         rFENyJCP+2lzPCijDZRKwqv9ii4VF1DO6gWAEETmG8rsu5t6yu3hNj/w8NDUmAfvzCrP
         kwY23uG5fGnNJSPnE7yJwwIuSnlJA8v7lHqyj4oCx0v8YscJDRSnGDjNeWs2O2BJ5yzS
         arOA==
X-Gm-Message-State: AOAM530NurMxKXM0QDxNsUg8p1u/rncI4LG1ct3Md9MAujUVIMKWKahb
	b4OK6cSkrcX00XofTGcWSXVSJ3LVt3xonRxwWpT8zVZUX4I=
X-Google-Smtp-Source: ABdhPJxW6DyWJ6f3XKXa63MqxcaRYfwTmN2UaFAc8nl2v32+QDy2Q747MGUwc34QRnNx7j0m6UBBocTFclTkneQ3Ms4=
X-Received: by 2002:a05:600c:1991:b0:393:ef28:7ab2 with SMTP id
 t17-20020a05600c199100b00393ef287ab2mr2365507wmq.20.1651224495241; Fri, 29
 Apr 2022 02:28:15 -0700 (PDT)
MIME-Version: 1.0
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Fri, 29 Apr 2022 11:28:04 +0200
Message-ID: <CAFPzw1=vVh+cuxa5LvE7XD4HD-+sNbewsK6XsRf4PogtnThwjQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 3YNSYWOIKFYF5E3KZ5ZQ6BNGVRVQCSFW
X-Message-ID-Hash: 3YNSYWOIKFYF5E3KZ5ZQ6BNGVRVQCSFW
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 laptop conexion
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3YNSYWOIKFYF5E3KZ5ZQ6BNGVRVQCSFW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3099918639114312075=="

--===============3099918639114312075==
Content-Type: multipart/alternative; boundary="0000000000007bbfb705ddc7a9f6"

--0000000000007bbfb705ddc7a9f6
Content-Type: text/plain; charset="UTF-8"

Good morning,
I would like to connect two USRP x310 cards to a HP Zbook 15 G3 laptop,
which has only one RJ45 port. I need it to operate at maximum speed
(200MS/s), with two 10GB ethernet ports, but I can't find a way to do it,
is this configuration possible, what would be the right option to connect
the two x310 to the laptop and what would be its maximum speed?
Thanks in advance.
Regards,
Anabel

--0000000000007bbfb705ddc7a9f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good morning,<br>I would like to connect two USRP x310 car=
ds to a HP Zbook 15 G3 laptop, which has only one RJ45 port. I need it to o=
perate at maximum speed (200MS/s), with two 10GB ethernet ports, but I can&=
#39;t find a way to do it, is this configuration possible, what would be th=
e right option to connect the two x310 to the laptop and what would be its =
maximum speed?<br>Thanks in advance.<br><div>Regards,</div><div>Anabel<br><=
/div></div>

--0000000000007bbfb705ddc7a9f6--

--===============3099918639114312075==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3099918639114312075==--
