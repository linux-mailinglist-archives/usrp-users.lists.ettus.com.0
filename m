Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0243C667ECD
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 20:13:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11800384335
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 14:13:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673550834; bh=FbTUrenUDVM49MEPZtvyL0QvGy93cI1myGBNLRCm5dE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sr6G5j/jlBGCw1n0qnQF/hgITaFoARaccaDoukgaHu+Ik0/7+LgvI+2TggpmkWh+f
	 WLxdiVnbvHW6IrgFH4N3v6Vb4ydVSkJX883Ry+b9j5iN+CIZqICGzHYoyMFsg+FEnm
	 o4JUR0m6QbQoNc9kyyy4ln+vo90azkfaqCfzTDl1NbMeT0TLdI8QyTykJ5mPSCUGS4
	 ZWddwucC8LU1YK0Lt9Cm1ClQUtjorh3b55Q0U9jFYZrI2m7FMO9noOTz/mwkhNxX7u
	 Ne/8T/V/1YVO8dNezMgI4Re135T9Tlh1wqMPg18zKRdfIVCeGQQ+Mrbmrh57pENnnc
	 Kd/SVSwCmZ/8Q==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 735273842FC
	for <usrp-users@lists.ettus.com>; Thu, 12 Jan 2023 14:13:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aL4C31M+";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id az20so28055685ejc.1
        for <usrp-users@lists.ettus.com>; Thu, 12 Jan 2023 11:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/MAKprtriaaiRCY4sHyA+uNHoyRSBzaZECnUCeXfU6o=;
        b=aL4C31M+VtWZjiBuvbjZKPjvOZDFI+LjmaDWntpPEYsbGK9yxA6tOeqWpkLkhly7Cd
         iDl7lCG6N69vv/y23G2j5PEta20+H3fHIHT8XqP+zFYtZM4wTn0Y/2ri5SHjeCJeSEd4
         +VPnja9p/BAXiBXTsq55PF+DOEjNo2hiUeH6f7ZTs+/di6/sVXCGzvUtfFWo8TxyH7aT
         HO8neDCu5NLmmXC90w16elabpBFxbxPqI7F+LI/cY/zUd1z7X0VjhEIB+rrsoK8OG97Y
         /AgyJHJdRP/kd2jlzwRCk6QH0Uajl4psKfhmAYHLPgZoIFhPSAciLh+v+D+GdKvImD9X
         u3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/MAKprtriaaiRCY4sHyA+uNHoyRSBzaZECnUCeXfU6o=;
        b=2SDIrBcjJAuIKK1sKHx+BUsG3s9h2SimGM8MZkZTEybn3p4R7nvqDTFgKQN6DwNA2/
         QR/BEcGV1DMeo53HIrG0y/HU7pCXH7DFjJRpKopxodqsFYYa6lDARwJg/2YGvP1nP9g6
         gosBO3dBG3t5/6y16C0lykJBtT+EV3t0j1m/FfzCPQKWY6RU8CSXwvRfRLbS+vwEjX02
         tDap0x3D1Zo0vJBm0ret1pDo9UunOdKoSqiLafg7r/AkPkF7AAHvNthYhXVvjv4LVYfY
         W1xzJHaKDCmI33VJTKWqu6CF2MSMC7Qd5gZ6MnTiK2km93d8XEiVo8CZqykVPiFmRhU/
         Wigw==
X-Gm-Message-State: AFqh2kqR0AaeQZWSG2DUEsDRk8QmsJH0r8GHFCAYadFyUAqBKEIahfjC
	pd+BcLOUZMQiNsU/V/U6kJDrX+vi1U2HprwNtZxnqOPV
X-Google-Smtp-Source: AMrXdXthKYxp6IWuIP5ZpUln033zxpC5WAV7ECJ/e7bv5JgRWX3wQSEozPlhau4n20sLuNaCZvYUmQBjtqxk0xBOcZU=
X-Received: by 2002:a17:907:8745:b0:83f:5f77:8fff with SMTP id
 qo5-20020a170907874500b0083f5f778fffmr4802035ejc.293.1673550782999; Thu, 12
 Jan 2023 11:13:02 -0800 (PST)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 12 Jan 2023 14:12:51 -0500
Message-ID: <CAEXYVK7yOxAd2_AVR_WwEEJqxH2w8S7QQc79_ytNnuAGLbG+bg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: NDITTHLXEFIEJ7MW4BWAXDKGM3DHZJJV
X-Message-ID-Hash: NDITTHLXEFIEJ7MW4BWAXDKGM3DHZJJV
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 Temporary FPGA Loading
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NDITTHLXEFIEJ7MW4BWAXDKGM3DHZJJV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6867976215001932328=="

--===============6867976215001932328==
Content-Type: multipart/alternative; boundary="000000000000ef2ed805f215e780"

--000000000000ef2ed805f215e780
Content-Type: text/plain; charset="UTF-8"

I am building some experimental/development FPGAs for an X410 and I am
looking at loading them temporarily for a quick runtime test without
committing to overwriting default images.

With the X310 I am able to achieve this with a JTAG connection.  With the
X410, being an SoC, I think this would be pretty terrible to do.

Are there any recommended ways to load temporary/development FPGA images on
the X410 without overwriting default images?

Thanks,
Brian

--000000000000ef2ed805f215e780
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am building some experimental/development FPGAs for an X=
410 and I am looking at loading them temporarily for a quick runtime test w=
ithout committing to overwriting default images.<div><br></div><div>With th=
e X310 I am able to achieve this with a JTAG connection.=C2=A0 With the X41=
0, being an SoC, I think this would be pretty terrible to do.</div><div><br=
></div><div>Are there any recommended ways to load temporary/development FP=
GA images on the X410 without overwriting default images?</div><div><br></d=
iv><div>Thanks,<br>Brian</div></div>

--000000000000ef2ed805f215e780--

--===============6867976215001932328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6867976215001932328==--
