Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D97FF9C6A36
	for <lists+usrp-users@lfdr.de>; Wed, 13 Nov 2024 09:00:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7E8B4385AD4
	for <lists+usrp-users@lfdr.de>; Wed, 13 Nov 2024 03:00:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731484822; bh=jCRZXFsqQcughmcfQn0/DK4Sb/h8OqG6mv49nd7ij38=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CuESJjPAheRXOFKFAEBPttXBGqqEJQ0ZUrMi7GZN4XvgPr/8L6tyL4bCDa+HkUkoL
	 W2pW4RFpA2xff8VjKgzDX13SVe5a2qIy7yDtJijdMoooVjpGP8BguDxhz0z95QEIpU
	 H1Fyw3xJObPwwPhZXJagCVGPln/fuUzgVt0kkAW6f4JPR9grNvKrumd9itnLbukZSd
	 A5HbenB5/iALnTcXxF0/gct04damSrIIsRh95xVaY/eIhtFkdGHIk3ElTarsBfX/av
	 D5xprbcQFBS6VMuANcRaq+g9z/FEgAI2D6XoeguTi2UGOL+Dlu/tcBc2iXpTrX43jD
	 kzHRpLncqexJA==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 392C9380D30
	for <usrp-users@lists.ettus.com>; Wed, 13 Nov 2024 03:00:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JgtWcee8";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a99ebb390a5so87002766b.1
        for <usrp-users@lists.ettus.com>; Wed, 13 Nov 2024 00:00:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731484809; x=1732089609; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KCv1UtTDmrTH4f/bppmcKkCfkjEfN6XlJ025Hd7Tdgc=;
        b=JgtWcee8VOUEqzDh6sKZfa90kMmSeiHZP/vRrB1jbrIqgF8jHwA6Rbz9iv4EFxpHIP
         DIsrpZApUhZvmrNG6Tgsw7woksyOA/dHjhpEGYg6/W7e72e539AVqkvJvUmprRGF3syp
         4UHV7gPOxtm03zD2eFdFW/nt3nZlKoALM7dQvDvIflvr0Eo6GL65tzaA6YxDAj1wAgwt
         ucIw3Dbo8kTmOhZxiT4fRqfB+A2H9NEQ9wVj5Nn1uAN4bc/sWnfx/HyFJNQOFRDYWmDL
         6/MlKM/ceOzBHwNgpJrlH0p3cVu/tfx8VhviY4k3ki+P+Di3M36ZLtAfNwZ3e1fQsLDz
         8aqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731484809; x=1732089609;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KCv1UtTDmrTH4f/bppmcKkCfkjEfN6XlJ025Hd7Tdgc=;
        b=rur0LUNk4o8s7cVNBhVV8YjGiA5zoMKKOgm2TN64pUJfdrJ8CCuysmVUjfEK+zurLJ
         JdvlSysQfymyuD94Li0MyqFffqzel+s7UDE4G6+BQTpDJF53vZf/NB/WhuiEkmHdwQ+R
         arpdv+h8v1Z0Nsfgbzn+ekephbbatCu1YjpKRQNsh48LmqriCxxJU23CnIp+EJUSDRwU
         DKa7Br55NxPZgfb79lgGr29nydovHZUQLvZ6XlhY0dvLtZjiHj5QHbL0AjTNqnXG8x4i
         ORbxqTnyCvg0MD5EYc+l9ZsPlVeCGbLPRex7mZLfCq03Uj5zw2pLX+HkaIm6QT5/yHd7
         ROJw==
X-Forwarded-Encrypted: i=1; AJvYcCUTF+kbSKgZkK6FlN3iTOXEAEA9BbsFu4c7K4w6MIiZgFXH9PG+1K2oxR/7tTFkhwCpHI01UKGQ8h32@lists.ettus.com
X-Gm-Message-State: AOJu0YzdiXbSt03MSjOJw+OgRqbLuWiwsdTUY7D+R5p3Y99eJy3gFVMa
	qxPD2g3UTud285WZtcmzxMNabLP5M64V2i9D24/Y1kyL+LoSnmK0untInJYUsfQNedDsBQcvbwY
	gDTF0o7B74mcTld4yzdRDLGi8To8=
X-Google-Smtp-Source: AGHT+IHF4a6+/zlcm68njkN60e8Py8T/r1Ae6s0txQeWSydEc9BKdfoi5zd/Y7eeWA/tunGqZ+Nl3i9mNhdR9YHc3e8=
X-Received: by 2002:a17:907:9492:b0:a9a:1575:23e3 with SMTP id
 a640c23a62f3a-a9eefeecbf6mr1969626666b.19.1731484808450; Wed, 13 Nov 2024
 00:00:08 -0800 (PST)
MIME-Version: 1.0
References: <PN3P287MB0291323A10062E824F0DC3EA935E2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
 <CAFOi1A47MLS=maD-Jve0iD3JU=VUtfxsyuhnYrggepnRQ90hVQ@mail.gmail.com>
 <PN3P287MB0291188E4BC4DD3DA0448CAC93582@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
 <PN3P287MB029150F48ABC85103226A41193592@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: <PN3P287MB029150F48ABC85103226A41193592@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
From: hui cj <cjh416593819@gmail.com>
Date: Wed, 13 Nov 2024 15:59:57 +0800
Message-ID: <CAEL-RA3t85Z_9R0WvtG010h=3+AvAykbNpa_1GXqQtcmT0aNLA@mail.gmail.com>
To: Nidhi Panda <nidhi.panda@cyronics.com>
Message-ID-Hash: DBK56Z46MKVRLL3R4DGLWZ5FITIXS5RD
X-Message-ID-Hash: DBK56Z46MKVRLL3R4DGLWZ5FITIXS5RD
X-MailFrom: cjh416593819@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC TX and RX not working simulataniously
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DBK56Z46MKVRLL3R4DGLWZ5FITIXS5RD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5091487494425202552=="

--===============5091487494425202552==
Content-Type: multipart/alternative; boundary="000000000000f11aa10626c6b8e9"

--000000000000f11aa10626c6b8e9
Content-Type: text/plain; charset="UTF-8"

I suspect the issue might be related to the graph configuration. I'm not
very familiar with GNU Radio blocks, but it might be helpful to check the
connections on the board. When using both TX and RX, you need to set a
feedback loop like this (c++ example):
graph->connect(ddc_ctrl->get_block_id(), ddc_chan,
replay_ctrl->get_block_id(), radio_replay_chan, true);

--000000000000f11aa10626c6b8e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I suspect the issue might be related to the graph con=
figuration. I&#39;m not very familiar with GNU Radio blocks, but it might b=
e helpful to check the connections on the board. When using both TX and RX,=
 you need to set a feedback loop like this (c++ example):</div><div>graph-&=
gt;connect(ddc_ctrl-&gt;get_block_id(), ddc_chan, replay_ctrl-&gt;get_block=
_id(), radio_replay_chan, true);</div></div>

--000000000000f11aa10626c6b8e9--

--===============5091487494425202552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5091487494425202552==--
