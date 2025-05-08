Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A048BAB052B
	for <lists+usrp-users@lfdr.de>; Thu,  8 May 2025 23:05:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B3D038618A
	for <lists+usrp-users@lfdr.de>; Thu,  8 May 2025 17:05:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746738311; bh=HiIi+LpM51XZyfmJW5dg2MuODFS4Z8YkivOPSTTUvUo=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NrEaG5S5w8xWhjRvQcXVjOpOdMVceW1y5LcSAbDYdMPRZtaFA4s3DypMvlEXdeurj
	 86JvP/Z1gR+913wSrWYHyP6zA1Mcs1CuVkxB+1OzwRF+dYnqwcmdUbjFZkvO2tW5GL
	 F4BdYK15zb5OShqxHspIm/sERk+3Y+pxt9YIDQ6siubfJ2cRaGCKBjl5PYL+6QYD30
	 SigmCTXzwdMGPNUjUa7zJln5GzGu8mAiVseWMxIjchApbNKY3f5i2FXgnuCHDN95Ia
	 TZ5fwNYUyOUwoyl0Gsx+MwjykbvgtfGIOUFT81PF2CCiv0GRNZtS8SVXcMpgPXP57o
	 XbOicnnWyf16Q==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D5B5385F96
	for <usrp-users@lists.ettus.com>; Thu,  8 May 2025 17:04:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="blZLpX/O";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-acec5b99052so249146966b.1
        for <usrp-users@lists.ettus.com>; Thu, 08 May 2025 14:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746738256; x=1747343056; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=v6nE5EdAku7HILh5vYY4u1fRofig2NGBYmBXFnzcXWY=;
        b=blZLpX/OCzxNs/0f6ktuZl42vY0jOZickFjNQJgoo5cRrry0OBR1qNzJ7vLLeEstrY
         Pq2Vt0mF8SAf7vigD01d2MoXS+SUcQ3EuUV1IFgrslx5O0u9mLluJ6bHwBQqOM/bJmJO
         gAH0XeQXr7uzklYfz1sHsym9sptvNbXnPVgb30npftmMtbKC6/5t5j5L9QJ7vXNZpdBH
         X7xe10XAowkb+GSLOH7bHLBUH+7BOJRCCrfOHbk8kZAyzYAfgqW2Kwy5XYs+a8FmksjH
         noRkegReqMDfeb1dIsBEaDU+fEnOLIhvvp1KLBVi0Ru7O5fqeySsit21vzc0ige92umu
         16Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746738256; x=1747343056;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v6nE5EdAku7HILh5vYY4u1fRofig2NGBYmBXFnzcXWY=;
        b=U+DDic4jkqo+2r/T3D6R7tfkXLFPK1YKOu89rrY9H72871peyXOGFT4EIIxHOdgCqu
         s1rssHnvG8j+vCFsTyA537H7h1YZyJrDrh8ktd6Smeire5ideIKhL0aZ9JLYnatjsH68
         xLCK644NMpZ5RqA7ZLGsqPZHoRixSqbqNUNaB6nwyBh8Ja2dYaUu9oxBxNJ8lK9+vsz3
         m+owxJBPh+z6op0uwwSCb99wq0DBN7URy7JgsCxb7/PiMpbtKCDci3ze3GwC85RfH8Vy
         bEwVkru/XvH8nJjdB6rwuEg85aPLrg8sYcHIA+kunQpHdzoNx3/dH4UdiS5Zb1YXKuJ1
         k6ig==
X-Gm-Message-State: AOJu0YzxuZRbWA8/2x1GLm8JoJ+3X7BeO6XlFHJSxR2o/ODq4vIqT0pp
	+rago5F/i2g0IHgXcYq71wja4Rrv1pRm556bX3YrLJxOwYCcuZD6/SVyn1dVr+bs2DuOes5xYi/
	twRdFMYvHS0ZEJ+/+BHisLU2QCZLtxw==
X-Gm-Gg: ASbGncu8+uz3YLXb64wfAB1p3tcCMuSZ71wDkGCUwZjulCdSZo2LvlB06BQ7HiDvqql
	2FJB+It3iuGn2nI8Iyt+tTTicPqHCt3rBwrAlA4G2NNtsCwl4lx2lNZ8VHnNFp0rgy8UBcg2SBL
	n/Gpumw9cluOPdvPMs2wtcuw==
X-Google-Smtp-Source: AGHT+IGKiSl8lBMCpgE93E0+Ft6j+n3ObS33i0iCOYd6CvM5S8R0msVC6T8xh2Ce7BmWfSx8oeeEo4bCL5j0KCTjakk=
X-Received: by 2002:a17:907:3dac:b0:aca:d6fd:39a with SMTP id
 a640c23a62f3a-ad2192d4a88mr111130666b.51.1746738256380; Thu, 08 May 2025
 14:04:16 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 8 May 2025 17:04:05 -0400
X-Gm-Features: ATxdqUEdkPOrcFekINrZvvtMQ-lkFkP3bJURcBwQHKPt7pyBx8eDazLcxQmIahk
Message-ID: <CAEXYVK6A8mRg9jpcaMgihu7hRFWFrPL0TgubaB1m46QoFbY+iA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 4HNPOXNCOTBVESD5YQSE6YO3DSICSHG5
X-Message-ID-Hash: 4HNPOXNCOTBVESD5YQSE6YO3DSICSHG5
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 Reboot Takes A While
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4HNPOXNCOTBVESD5YQSE6YO3DSICSHG5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0421700362090650951=="

--===============0421700362090650951==
Content-Type: multipart/alternative; boundary="0000000000004989570634a63182"

--0000000000004989570634a63182
Content-Type: text/plain; charset="UTF-8"

I am noticing when I issue a reboot command to the X440 it will sit at
shutting down the usrp-hwd service for a while, usually with a 90 second
timeout.

After that, it usually doesn't even reboot for quite some time.

Is this a known issue? Is there anything I can do to debug why usrp-hwd is
stuck shutting down? Any idea why, even after it shuts down, the RFSoC
doesn't want to reboot itself appropriately?

Thanks,
Brian

--0000000000004989570634a63182
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am noticing when I issue a reboot command to the X440 it=
 will sit at shutting down the usrp-hwd service for a while, usually with a=
 90 second timeout.<div><br></div><div>After that, it usually doesn&#39;t e=
ven reboot for quite some time.</div><div><br></div><div>Is this a known is=
sue? Is there anything I can do to debug why usrp-hwd is stuck shutting dow=
n? Any idea why, even after it shuts down, the RFSoC doesn&#39;t want to re=
boot itself appropriately?</div><div><br></div><div>Thanks,<br>Brian</div><=
/div>

--0000000000004989570634a63182--

--===============0421700362090650951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0421700362090650951==--
