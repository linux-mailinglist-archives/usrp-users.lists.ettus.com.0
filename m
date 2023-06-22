Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7C37399E1
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 10:34:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80C893849F3
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 04:34:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687422862; bh=tEiu15Yee9lkadOpAVz7HRYkgV3+7nCDclv9Eb4ijLs=;
	h=From:Date:To:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vL7jmyyOGejoYzHAvm0p+mLNHG80q41m8eQ9VDaLFgr4Q9tTVbCHqHMcSNf/vWAQ5
	 RfX9rLv+o9G6YLprH3LB5mkJWuJtoYcRCXkwWp34XC6vd6lgeO2521vqEpXw3HVO41
	 /+GgAINZ+zQ0Y+vd2UJK3rx06unaZfVtNMhv0H7CXPh8q0252QTdX4y9Wi+6EGLNHM
	 4ph6FQYfz1cmhZOy6Yy11Eda1I1Xbw9Q1EvfXehcygLt7YcINfcHrAgVs/p5MCpHA8
	 EkRa/TUtGfd5zmVnMiYxG8brL6vCcYx3wHzUI81u28xE/t4o1+ilrEI6HkYSE+OEQi
	 7eU+W+RPWxqgg==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id A1B9D3849D4
	for <usrp-users@lists.ettus.com>; Thu, 22 Jun 2023 04:33:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jtpCZF6Y";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-630074df712so50020996d6.1
        for <usrp-users@lists.ettus.com>; Thu, 22 Jun 2023 01:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687422807; x=1690014807;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XNlBF5KIE2zHI8UnEM5rrXudVRIdXDtVDrN1HqSPGbw=;
        b=jtpCZF6YHmr21qDNoIMSMCcbeOVeR55wmpZM1cks3g4k/3k3GSZNb3IwMAMoW0Ettt
         a3Oeb1zNoDOU9assdi6ZMxzl+fQY/EZMvv/ISGfzwgUU+4OLcAdhDhS9AmhMkryxkX+y
         PJxXyiTosEsgI+WmHM/QzsMRbEi1mdghJTEsQTXrN/QeAqKEJUo8CM9ggjXX0e7uBSX5
         jr1SX1iM7QO+8kUTjuNq8IqjGbm4tO8HKNHzveFRaPraI0UIsY/hKyCzFpSfeg/k9ZYy
         VXpi7k0iSh13jJEcR19Y37XKbZQnMGc7EdwqTh7WlKKhW93yR69s5kXVjw8AGgCSS1gl
         ZLlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687422807; x=1690014807;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XNlBF5KIE2zHI8UnEM5rrXudVRIdXDtVDrN1HqSPGbw=;
        b=Zl9GOrURtir9m06lwSRDAZF+WZrGaCldxN7KDy81EHRryIEbGGtIDqjD6wU6NIzu9h
         b0IRY+viiwmKUtaTilqKDmIvvOMOyiEjaEgrPpOimOo8AyQXgni6H2InqpC19NZFh3+V
         Dfe4Q4CnWtEEIavWsAHf4JtlCg8Z6CweLY1lc6DB+wr35V/2uJHuSYkmEMqyB+zbpj47
         liTi0LRLLknJxM3sW6nWWu466Biwf7cd3xzGu0HTmGcYT1D0jXXln5k7pZXyieFh7luP
         hH0MWeHygpfulBCGvYDRgm3tTRhKiFE52+5MSBM/BHeip0elO9zhoRNQs9nB/xwudYJz
         dVLg==
X-Gm-Message-State: AC+VfDyIZDSBzpufXx5AhPx0jFkyszhOoiaffI5G7Y18UjO7Optq4dRQ
	aRHnvU1soe+BFxp+iKhwmnmyZAJGyRp0uRlr/4wziRpB
X-Google-Smtp-Source: ACHHUZ7OvmnTZFo4YGs7YVjfgDWasqpGuF1rtM9Kkh5TOWLGnENed0zauGp0zCj2bFOXkvwGJFGqlXiPiFhVtAr1tPI=
X-Received: by 2002:a05:6214:20aa:b0:626:3a5a:f8f8 with SMTP id
 10-20020a05621420aa00b006263a5af8f8mr19481553qvd.58.1687422806869; Thu, 22
 Jun 2023 01:33:26 -0700 (PDT)
MIME-Version: 1.0
From: Obli Vikram <oblivikram2002@gmail.com>
Date: Thu, 22 Jun 2023 14:03:16 +0530
Message-ID: <CAHrMisbFqhcA8OFkDS1GCmEwaG85OuCjqO29tpTJ8Pfmt2Guiw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: WUVF2HCNKU4FI3B27OTXQAKT6U5JJSOE
X-Message-ID-Hash: WUVF2HCNKU4FI3B27OTXQAKT6U5JJSOE
X-MailFrom: oblivikram2002@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: pandi@tenettech.com, Shakthivel saravanan <shakthivels300@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Support for USRP X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WUVF2HCNKU4FI3B27OTXQAKT6U5JJSOE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7040999955790841092=="

--===============7040999955790841092==
Content-Type: multipart/alternative; boundary="000000000000fd4c8505feb3bc37"

--000000000000fd4c8505feb3bc37
Content-Type: text/plain; charset="UTF-8"

Dear Sir,
I am from Tenet Technetronics  , one of our customer has purchased USRP
X410,
working on 16GHz , what type of upconverters are compatible with X410?

Thanks and Regards
Obli B Vikram

--000000000000fd4c8505feb3bc37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear Sir,</div><div>I am from Tenet Technetronics=C2=
=A0 , one of our customer has purchased USRP X410,</div><div>working on 16G=
Hz , what type of upconverters are compatible with X410?</div><div><br></di=
v><div>Thanks and Regards</div><div>Obli B Vikram<br></div></div>

--000000000000fd4c8505feb3bc37--

--===============7040999955790841092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7040999955790841092==--
