Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8481E731561
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jun 2023 12:32:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22211384AE3
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jun 2023 06:32:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686825145; bh=pSh/ti1GVOv0ATXEyPs8EwXhG5xaX0fsI0BFiHPIHec=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zGm2O5mGOfNJAN/O0Cx3IWToD5PlZSIRgbmvfXBdmi9fBoRBEU2HbjJqn4YSfcgXl
	 FroO7NC9D2/OQfyYa2/35LfCOuxwOjMqvZu0lRtwJWNjvGxOub7GWZtzpY2ppDgWcP
	 RzpTSUwaQ/FWgZRbXrC+X0xe2EH3qm3pO8193FnMwQPLeELEwc3uncBdAL8Zi7CJq0
	 4xVnVHqIfyJoF7EfE2TCOwRCiG91AW6uYeYTGGJjP9MxSVK2ghPDDqbx+v2U5kSP+d
	 Z+o0ymoE89jgej85+d63S/qUhRbRCyvpXw/GNi7mtYo3kIEhpIdwDHs82Lyyb+SWxz
	 Dst7AeBwhZojw==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 47EEF3849B1
	for <usrp-users@lists.ettus.com>; Thu, 15 Jun 2023 06:31:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AR+EHwe5";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-9786fc23505so238930966b.2
        for <usrp-users@lists.ettus.com>; Thu, 15 Jun 2023 03:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686825082; x=1689417082;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=boCJsh3pUhIvdp6vXXtLFTeLSqHwN1tzuueF4omuHLo=;
        b=AR+EHwe5u/lb4ieoGtPDzsDOv/xwZNt+5r2rKlpcC0jT1tqTmV6DllwVxJfcvlqYpn
         dEf04OSraxJZ6tfz5DD8crEbNQxfSyf+8l6MqWO6H+Ud2LaT2IGXTGzxQe+RwBkO5kqr
         ovbz++NB7ExCoGZeO0DZBhuXhp4zf+7Zt4AGm7PQrfBSZTF//diRPt4JSrHDoxZfCx6D
         k9ill2jACRsw4lLS2F/ydS8E5kbueTNzLHfyOdYVb+R7tSOA1BcwY0URXYLKdbeAnm/e
         6kMybgYZHmeE2Wcd49AeuAUvVg0jsuM3LIPnSkBaNb2Ii8humJDd/nuRvPUke1+d6s6+
         y7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686825082; x=1689417082;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=boCJsh3pUhIvdp6vXXtLFTeLSqHwN1tzuueF4omuHLo=;
        b=E8r5gvvKDr86huIuqxNEP4ocpl36GlzBBHZ0x583YK1NogFKU3JgI5/NGAhX3B5si6
         1Oojd02wwlDBnczxYvtupSbOuR/wLkcbmaIHV+CZanURK3wUAweYlbQV24U6690VLMPa
         tyyuQwBMsLZfqK58YBjHxd7wS3gmG/7D53vIWF4CTX90/pddY8okhRxGE1rMIip4QFyx
         07afn6jN9nKVbYl0Vy4f3WW3AUX7cc/lImxoQ/mI75T+/ATMiigI91y5uzSW9bUIvYZ7
         VidxXR0PJrlJjs/xRAr5o/M4JTADFjTnexH0UOEkjNx+3Cs/wlgQGcyAb2lczAM0VALi
         Q6KQ==
X-Gm-Message-State: AC+VfDyyRogElftnhywNaWLSpd3v3CSJN1wtFGLiXfhskrv8CD5plTQ1
	z+v/HvgGHYzwI3L9HllW1DXPAxJZbVPG9xnfJ/ouqplOJcI=
X-Google-Smtp-Source: ACHHUZ4d5tBzyTxvGcz0AV8maPdamCikQu0fRBK4szASu1QA+xOUyXVgPr+Xisep+tK39LmbiEaLSZcNv8lf2V5/l5Y=
X-Received: by 2002:a17:906:db03:b0:974:1f0e:ec2d with SMTP id
 xj3-20020a170906db0300b009741f0eec2dmr18107044ejb.15.1686825081639; Thu, 15
 Jun 2023 03:31:21 -0700 (PDT)
MIME-Version: 1.0
From: cyberphox <cyberphox@gmail.com>
Date: Thu, 15 Jun 2023 11:31:10 +0100
Message-ID: <CAOkUcStztZNDcFMHftzcZXXnQwDbYAOeHZ+eBpJJoNUY8pmGUw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FV3ZZ4C2EOBOOHKHKLAD66KN7INWNWX6
X-Message-ID-Hash: FV3ZZ4C2EOBOOHKHKLAD66KN7INWNWX6
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.0 - Reading FPGA core temperature - USRP2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FV3ZZ4C2EOBOOHKHKLAD66KN7INWNWX6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4783987614769316841=="

--===============4783987614769316841==
Content-Type: multipart/alternative; boundary="000000000000ca19ae05fe289196"

--000000000000ca19ae05fe289196
Content-Type: text/plain; charset="UTF-8"

Hi All

I would like to read the FPGA core temperature of the Kintex within the
USRP2974, and any other temperature sensor available, ideally on the RF
boards.


Is there an API for this?

thanks
marino

--000000000000ca19ae05fe289196
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All<div><br></div><div>I would like to read the FPGA co=
re temperature of the Kintex within the USRP2974, and any other temperature=
 sensor available, ideally on the RF boards.</div><div><br></div><div><br><=
/div><div>Is there an API for this?</div><div><br></div><div>thanks</div><d=
iv>marino</div></div>

--000000000000ca19ae05fe289196--

--===============4783987614769316841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4783987614769316841==--
