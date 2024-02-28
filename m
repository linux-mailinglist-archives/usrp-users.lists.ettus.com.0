Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC21386B8DE
	for <lists+usrp-users@lfdr.de>; Wed, 28 Feb 2024 21:12:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80F9A3849C4
	for <lists+usrp-users@lfdr.de>; Wed, 28 Feb 2024 15:12:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709151166; bh=vAt0K7LU/jJHzjc0cVsC2R81JY6vpGOGRSXZSgsgUlk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ADcD16DmwX4G0Xs6RPCSdXWm8G7eND8idVrYoy3QoBv58TElQ5quW9UCPuPLB7AUL
	 pwsoewqYmjsc9X74es/tBkSfHUK2O/u17YEdtuNzkQFXjCQ8XVKG7eATriKV5s+iFw
	 q+199uhB/G3KCvqd7Co1vbqQ77Pu/4IcAkWo2bIuvALGzraSRCrwPsvmXu+MFjDOQg
	 Ajlr4FwUm8k2Ti8REj65NBqQz/AIzytwbZwvz4s0WAnOF/gR/y4OGW+Fuslfs/T9sT
	 7FtItHLynZaaYZ6ejzhxLg9c3fPoKOt1ISGLgoV9NGQfOawcrRHpxDhDZd9HNEqtZJ
	 rMp2S5d6DYGgg==
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 43F13383D94
	for <usrp-users@lists.ettus.com>; Wed, 28 Feb 2024 15:12:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.edu header.i=@umass.edu header.b="GotrXp/T";
	dkim-atps=neutral
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-53fa455cd94so101716a12.2
        for <usrp-users@lists.ettus.com>; Wed, 28 Feb 2024 12:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umass.edu; s=google; t=1709151157; x=1709755957; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hRSC+TKfxvMg43mRA9oG9vRT0jmANVXlubZ8qGEYOnA=;
        b=GotrXp/T/sVPO7vtvzQzypkt3G522nYSmZ8uChfMlMocth/UZz8t8fwzf0gISZOL3V
         D3VHZpRHcgAzBHo97G34jNrOzUCE/E7DnHwI16kKjqUBewR3xebwW1wPATcGUkEi8b6F
         4MQkUX5B9f9tnAVlQJSFBmY/u4bEbCpPa8IQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709151157; x=1709755957;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hRSC+TKfxvMg43mRA9oG9vRT0jmANVXlubZ8qGEYOnA=;
        b=NC/xfdKC2p16iFnMi+IDYvBDU2q4cHlr2M/XFjo/E3ooaOVbvkHWBPCQXJMCwKiqUE
         neerr836ogn+wK1+2GDloR+m0v3iChk32dPzvpib5scGBUEd4ahukry6XGD6VHEb13h/
         UnKwVB+62mQpn9u/0upvMXrZGW+nH4MWAQVARKHj0NZ4iFfAEyEmuJKmOXCgzaw0ndVb
         bi6CJKToriy4KXzp5ZHmZ431uNiZYvuZgB1elAKrvbPxhecfT7F9+OieB2pKysqn4yPV
         EY4dB81rteHTso+vUnRWXLm4/JLWlaTtLgkFYGGIAvJ/Yf2qu3RcWdLCbbldoNrtBGgL
         o4ZA==
X-Gm-Message-State: AOJu0YytZMd6bOasBpEA+ySRn1fgWJIdgK/zCNvrIyWeCdzx/CNjoorX
	DNLpTJXCGLxV7s/CPtYDC02ZnhVu/FjpgMQy32XlV+aN021j0I7ZKVtCz077NmhwQ6/mV33ZGvx
	9RqnjXl7UAGTC7CFgajSFyJMrSL1zjz3nLCGYA+nkv2G/DJd/UwE=
X-Google-Smtp-Source: AGHT+IHntHVZpUfh7wEQhO7WofDg8EpmjSfGuITsD+SvUd9MHz6MvOgf+UGJnZI611mOiiCsHEbdWj+shyKgQe2lop0=
X-Received: by 2002:a17:90b:f0b:b0:299:3e54:83f6 with SMTP id
 br11-20020a17090b0f0b00b002993e5483f6mr247686pjb.7.1709151156893; Wed, 28 Feb
 2024 12:12:36 -0800 (PST)
MIME-Version: 1.0
From: Yashaswini Guruprasad <yguruprasad@umass.edu>
Date: Wed, 28 Feb 2024 15:12:24 -0500
Message-ID: <CAD8oTTN+Hws020Z_=fA35P_yrCauiaWYjiNyUijnZ4NJLVEfZA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2MCC4QMRO2EIFAB3C67FHVWQUEWBBKTJ
X-Message-ID-Hash: 2MCC4QMRO2EIFAB3C67FHVWQUEWBBKTJ
X-MailFrom: yguruprasad@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Issue with keep one in n block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2MCC4QMRO2EIFAB3C67FHVWQUEWBBKTJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2580986638463222910=="

--===============2580986638463222910==
Content-Type: multipart/alternative; boundary="000000000000930f98061276c3b6"

--000000000000930f98061276c3b6
Content-Type: text/plain; charset="UTF-8"

Hello,

I had an issue on how to work with keep one in n block and the replay block
, And test the respective functionality.

Thanks
Yashaswini

--000000000000930f98061276c3b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto"=
>I had an issue on how to work with keep one in n block and the replay bloc=
k , And test the respective functionality.=C2=A0</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Thanks=C2=A0</div><div dir=3D"auto">Yashaswini</di=
v></div>

--000000000000930f98061276c3b6--

--===============2580986638463222910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2580986638463222910==--
