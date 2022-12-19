Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A682D651230
	for <lists+usrp-users@lfdr.de>; Mon, 19 Dec 2022 19:51:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7409C383F74
	for <lists+usrp-users@lfdr.de>; Mon, 19 Dec 2022 13:51:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671475915; bh=/oP3op0cWK/BjoXgar9h2H1iY++Z5MbnXlbCJDL0+Ik=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=y3D8YZ/Gbm4HtkiBCphmvoTmWLGInr55k0qcOMo3XT6Zq/7IWpyNTbDNkrB2jKkcX
	 JQ7RdQF45zuY+F438+Y7Vux0IZ8Firz8R5Y4uHQu1GRBcZf2cBW5IWeNMKUCBClIhu
	 4iTkccNbsi0zw0YxQgBuuxHUKJw1LXcDcYEda/mWmF8OX2kvdtAYT5vnY+kHesktry
	 cgtkLD67QiSzZE4SydzIWu6jfWKCCOFIRIfjhGJ+SJvhiHM8dNkUxnDHsuQjbUaGFE
	 wdYYPLXqENLQdUt3k+AZm9nwBe7WsA0q2HcO5APgUYmY4JQcNdCZpO3Rzohvi/JGq6
	 Jejmd2nY1KcyQ==
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D057383EFD
	for <usrp-users@lists.ettus.com>; Mon, 19 Dec 2022 13:51:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pPOg9z4i";
	dkim-atps=neutral
Received: by mail-oi1-f180.google.com with SMTP id c133so1682132oif.1
        for <usrp-users@lists.ettus.com>; Mon, 19 Dec 2022 10:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XAlkpIAhC7OjKV5LdSO44L2q+obii89W2T22URxv1NY=;
        b=pPOg9z4iOWzt7gUeFolXju7lhGWzsHRYtXJ0TIn87f8Q+gGb4HZqnOpyjgaSyp757Z
         OazGAkSnmnbjA7KZYh83C/bgPPmCTy/WwEPogHTmDnW4w+bkJbbsJQAHdQTcs/E2iAOw
         tSuAr9FMGQ1Xi/1oACog4Sbchz13SjCe1A6g0M2zLmxMUaWjJUmxcRKKzN0GasdTAzSW
         +UOZ07LaBZDm1Z4LCUQFerHIk4Z1IqrSYK3IAYIedqghMz0NE9hra/uYPSddMvHytIP+
         x4RAcpVeNI0nJjpN7o2aM1HTOyY4NFq77vtkjOyXYd7shggNGN7Ick1hoGxO5vH8yb14
         l8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XAlkpIAhC7OjKV5LdSO44L2q+obii89W2T22URxv1NY=;
        b=NuhQO3ppiEv4fZDAuJmJJz1KFRzXPhV2UiHU31XwF/DiCBkZ7XHJOY1XEd3zXthBjJ
         fhwJghBX8UMuixS+aMu8rOK1WrAzBYHiG+jzUXEU8knEy66jTK0V6QQD1Payaj/guNuR
         sZAHWzJ3+f2lQK6fIrhUdTh5ib1O6y3XQ/jNWMsWOE7c3xP0YpfU8UUnYK2VFivcKmez
         D1811PYShml85dSoE0J2GG46oCzEvotfGuban/QSkQTZAs6nYOdF0/WbiN7ydmt3sFdd
         XklWkABqwlZ22Ym3Cv3ObMfey9UBRJ0FnfNBuguhZ+JFuD8QVoYyTwgzEMi+wXqYD9fW
         Ndiw==
X-Gm-Message-State: ANoB5pkpJGPZvrNMCEkE2Wn9rEoVJ+rWuSxmVTfmViUHZaWXVhwQXBfZ
	5xgESs2sm+TQ8kgBLU/6Hjmgf1ReiRkE58mis3XeYZTK
X-Google-Smtp-Source: AA0mqf7PDFM8yLLWq4KeomLeiQTf0HjSv0ppOaGib/cGoYaIGwiaao56/1VgspLUsNVQSA35/OxlezsCtS3IlE/iENE=
X-Received: by 2002:a05:6808:995:b0:35a:3da7:e8ce with SMTP id
 a21-20020a056808099500b0035a3da7e8cemr692771oic.190.1671475866094; Mon, 19
 Dec 2022 10:51:06 -0800 (PST)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 19 Dec 2022 13:50:54 -0500
Message-ID: <CAEXYVK571_PVvwKfZ7Cp_JK_upp88bKj8X1riV+FTMZ0naSY6Q@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: AHPVBKJ2BOW3YYSGD54B5DKKKGKVWZDP
X-Message-ID-Hash: AHPVBKJ2BOW3YYSGD54B5DKKKGKVWZDP
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC Block Controller with Fractional Sample Rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHPVBKJ2BOW3YYSGD54B5DKKKGKVWZDP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2476300228781246892=="

--===============2476300228781246892==
Content-Type: multipart/alternative; boundary="0000000000003fd20505f032cdad"

--0000000000003fd20505f032cdad
Content-Type: text/plain; charset="UTF-8"

I am building some blocks that have some fractional rates for filtering,
and I am trying to make sure I convey the fractional rates correctly on the
controller block side.

I am looking at the ddc_block_control.cpp as an example, but it has a few
different functions:

  - get/set_input_rate
  - get/set_output_rate

... but those seem to rely on a property called _samp_rate_in which is
added in the private method _register_props() which also seems to add new
resolvers.

In other words, this is pretty complicated and I am unsure if I really need
this for a static fractional rate.

Is there any guidance on the UHD block controller side for an RFNoC block
for fixed fractional rate changes?

Thanks,
Brian

--0000000000003fd20505f032cdad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am building some blocks that have some fractional rates =
for filtering, and I am trying to make sure I convey the fractional rates c=
orrectly on the controller block side.<div><br></div><div>I am looking at t=
he ddc_block_control.cpp as an example, but it has a few different function=
s:</div><div><br></div><div>=C2=A0 - get/set_input_rate</div><div>=C2=A0 - =
get/set_output_rate</div><div><br></div><div>... but those seem to rely on =
a property called _samp_rate_in which is added in the private method _regis=
ter_props() which also seems to add new resolvers.</div><div><br></div><div=
>In other words, this is pretty complicated and I am unsure if I really nee=
d this for a static fractional rate.</div><div><br></div><div>Is there any =
guidance on the UHD block controller side for an RFNoC block for fixed frac=
tional rate changes?</div><div><br></div><div>Thanks,</div><div>Brian</div>=
</div>

--0000000000003fd20505f032cdad--

--===============2476300228781246892==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2476300228781246892==--
