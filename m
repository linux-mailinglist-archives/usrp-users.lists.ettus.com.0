Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D353952956
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 08:25:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 337BE38533F
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 02:25:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723703123; bh=r6kpMAykTHHZnlmtXMcTz6qKSv2svy5NW0/rO3t3mpg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=qeKs2+c3IrDVVWodN9Tb47qT30Uo/i5Fy42LbmEEJWIZqkeSb6JPidwbnEIL9H+j0
	 g36mf3uTrUY7zJhegmlkx9iO7yBsPR+g5xUtlfeAE05NaZw4C6eV5gS1hjrI3H+rDc
	 Db40HFr87hkAk4PEvjIGaAQOpFv9yizX9Uf/PdFWKwbyz2CVbxNIPZc8WHR+cCmZ8T
	 ra8NDUq5eVaqjUeKOgqRjhmYjYrlpc5GclLn4bJxmDqnjbxc2ucvVy3l7senPIrHsU
	 hJ3556EjIhFEgyYaRIhKHEiPUcFShJ8J7v/jOgrHD9RPdRsLWTzmYsub2G+h90w8it
	 RpqYiXUBqWnig==
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 04D203817FB
	for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 02:25:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JXDAZ2RV";
	dkim-atps=neutral
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-842fe718899so37661241.3
        for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2024 23:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723703107; x=1724307907; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AaRa8MLymh2K9Hoj/wjhcPGXeZmj8jv/et25PlwfTBc=;
        b=JXDAZ2RVEAl+LUwEpPuKqcmzxsCy5KHixXSycLtZaNmMiB84Ag9iQ2w4++iTCNF6MJ
         PWYYRyhfFQB5vuuwaIurK1OGOmbRnwiG0UYOwpUGatk9J+Fbbj7cnBDc2+0QqyxlGRuP
         SmCGaBwpogHsTKdhjoHqYBiV3nu2YbJQ+/wzfdS/NsKn6Q2ANOGaeUPdWpdovqpgD7Z5
         Nznh4tSGUBh+XTE9RvDhR0PffM1TCRwHBNSOrTdw40ryvQ0/B2Irybn7GBjY+Zd0NxJ6
         Qg7JanGcvP41u4BgprR4ylwyY1TEwN0Dux9ZrSN+AeE00w/7zYLcMLskJEZnK9NaDyEP
         xGxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723703107; x=1724307907;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AaRa8MLymh2K9Hoj/wjhcPGXeZmj8jv/et25PlwfTBc=;
        b=ZU9Z2/oYmLM3vSzlBSSI4ldiMvhXkXKWKMXxzbA0LKSBFWmJljoQmpLXAo51oJ+3H2
         gv+QfxlISbEUY0QCu/f2ZFjtfF0rzqTGEwlQ2LIWgkiOmBeuJGjo5qAoh7xgPwzwyQ6v
         eKA1ei+2LTg6o9W3SdbcjqrHnZnVASayg07Obt+MS1LXi5pJE28sMpc/qNHNe7zHDAtY
         Q8838PpbNhgQz/D1adUmPbtxXbx0NYgzwOD2lR4lZWb9PAtEYuCY0xPxoFOjlPSbY+/A
         mpPxVXSE+dgashixyf7X/icLQR3U1eW2ii5Jc4kHkcx2f0VnOlyQFgnbJz5aqOC3YaDq
         SOmg==
X-Gm-Message-State: AOJu0Yxb+hOFwFl1KwAdzJ50JZYgIRocVhNszODvdO3LxI9Daeti5nPD
	mhNppq5DU7Yl2JCkCgHFj1GhMQnYRWz2een7auCjEy4LPoiOluCtFzgWwcejD/nZQpjkIQWNh38
	ROaIyMiNVUDhYlSPKa4AS9RnVarhnKUd/
X-Google-Smtp-Source: AGHT+IE0Iq91Y5UOF6+Ck5243OiLAUcTnM9y5+aI7IAd8VZkyvWYicqc0Cw0rFJHugLLYxyYWAludiqD26LW52Kx9mk=
X-Received: by 2002:a05:6122:3c8a:b0:4f5:d98:5ef2 with SMTP id
 71dfb90a1353d-4fad1c8d911mr5473159e0c.4.1723703106871; Wed, 14 Aug 2024
 23:25:06 -0700 (PDT)
MIME-Version: 1.0
From: Steve Hamn <stevehamn311@gmail.com>
Date: Wed, 14 Aug 2024 23:24:56 -0700
Message-ID: <CAOYGa71GsP=dmMfi70gSX0orVMg6CzQzHOu-mqiC7u-V22BWRQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: AWQTWDYLZMVTKYG5OC2RXGNOGVQSSGMI
X-Message-ID-Hash: AWQTWDYLZMVTKYG5OC2RXGNOGVQSSGMI
X-MailFrom: stevehamn311@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 Phase Synchonization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AWQTWDYLZMVTKYG5OC2RXGNOGVQSSGMI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7927709289557187489=="

--===============7927709289557187489==
Content-Type: multipart/alternative; boundary="0000000000006228b2061fb2e7eb"

--0000000000006228b2061fb2e7eb
Content-Type: text/plain; charset="UTF-8"

Hello,

Is it possible to phase synchronize multiple E320's? (e.g. with the use of
an Octoclock to feed the 1PPS/Ref In). Looking at the block diagram (
https://www.ettus.com/wp-content/uploads/2019/01/E320-Block-Diagram.png) it
appears the Ref In feeds a Clocking Circuit which then feeds the AD9361
Local Oscillator. If an Octoclock was driving the same Ref In signal to
multiple E320's would they be able to be Phase Coherent (i.e. constant
phase offset)?

Thanks,

Steve

--0000000000006228b2061fb2e7eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Is it possible to phase synchron=
ize=C2=A0multiple E320&#39;s? (e.g. with the use of an Octoclock to feed th=
e 1PPS/Ref In). Looking at the block diagram (<a href=3D"https://www.ettus.=
com/wp-content/uploads/2019/01/E320-Block-Diagram.png">https://www.ettus.co=
m/wp-content/uploads/2019/01/E320-Block-Diagram.png</a>) it appears the Ref=
 In feeds a Clocking Circuit which then feeds the AD9361 Local Oscillator. =
If an Octoclock was driving the same Ref In signal to multiple E320&#39;s w=
ould they be able to be Phase Coherent (i.e. constant phase offset)?</div><=
div><br>Thanks,</div><div><br></div><div>Steve</div></div>

--0000000000006228b2061fb2e7eb--

--===============7927709289557187489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7927709289557187489==--
