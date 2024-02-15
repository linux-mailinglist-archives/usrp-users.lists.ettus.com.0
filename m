Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B17D3856F04
	for <lists+usrp-users@lfdr.de>; Thu, 15 Feb 2024 22:00:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E35E3849D6
	for <lists+usrp-users@lfdr.de>; Thu, 15 Feb 2024 16:00:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708030803; bh=Fnff/i7w08eCaP5Xd1yildzdUYgErJK783RpGuEdHIY=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=0O2k3qqNKVUhL8sVh/tU6Y1pnnnGuar/t7rRSs+1qFplVZB5698VFR2SkKPOS4eL5
	 D9Ah/SySr7g4TfIMUiqGab3nB+1g/Im1yuswL5NbJESoc9DiSgqEUBonKL01AiJNaW
	 U5k/ecSQyq1y5t9k3/g59/EXSfbyS079FMXs4LVuYYWlox9oCXO+7FjEVX9mRckbcw
	 EtFf109x/idgfGtNYnSM1aIk/yWMf+VELv2a4q3WsL214kTbXvw++OBjhdB3kf8wfL
	 vTfKPXly4bsAiQWn7aWUifeD8TkddI5qnrq87kKnsn+yZE2lGusd92yd0AeRoga2v2
	 P5+lJkvsm9L9w==
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D558384663
	for <usrp-users@lists.ettus.com>; Thu, 15 Feb 2024 15:59:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ieee.org header.i=@ieee.org header.b="EXi//hDN";
	dkim-atps=neutral
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3642147202fso18205ab.0
        for <usrp-users@lists.ettus.com>; Thu, 15 Feb 2024 12:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1708030785; x=1708635585; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kjOWqwh1gWcqpUKxBHw9BwKCd7hnnkcnZDwzWbsXe2Y=;
        b=EXi//hDN2LDLJ0aFt4Q6usK6ROGqPPXp+SSFgSBgAYf1ThGSGfxw410FCrFhwFKmrX
         YD0oGF1Sx59m/jUUh/9oPxuA7v7MgMQocqntGe6d8HDf5mISG7oCaJ4ccxqCcUK2/jID
         XNJdqD/soMYvf57Qzp+v0c5SuSqlz2djom3FE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708030785; x=1708635585;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kjOWqwh1gWcqpUKxBHw9BwKCd7hnnkcnZDwzWbsXe2Y=;
        b=nNmQSlNvAx3OrtNJFU+OFKJni9Q1Dm5j3KF6VO/MA4WYWX+wX+z5ZBMktzJPu+6BtY
         IQGX+YttNju78dz1fGhJmMVv4s5cx6l8WzaWQoL1GdR7Of4p1WrIWiIytx7oG8AasrjZ
         9FdkAIvrpG/xrOlT0OTblAXdE3+M63zhmF6YRQ1smRYajaP7CRANlRr75BNT8YGTCKVl
         Vioep4GnnZKDZQUJLgcg0wW8zQfY1R4QpXqCmzFjFAljk5V9ERsd/Ua4AvgDiln5kTaK
         BcE+2SvYeMMf4W7LB3nYYlUszfpao6oGQIU1ebW4mMlHEyHWqf7VKlnJRf2IwhuC1byV
         yzbw==
X-Gm-Message-State: AOJu0Yz11m5kP18GIhfH9islWPM425WISeK5ke+iI9R24x04NXHk9VQ1
	eKPJ0G8fvhyrNC37KqfkKUmkN9VNfSZKa7Fk27oSFFr5VNhP+5SveLs1ox16Hs61t6wvU1lzKa0
	NxGQnYx4C2bJ7yfAHTGQrwr/G2/P5u4f5JCYcbQJOiDrMr98=
X-Google-Smtp-Source: AGHT+IEe9NjaAzo1fnFHpaD/a23f/2/s1HKvlf9CsD1BzmVABMB5AXopgMUsMyrnYILP/gPz2a1HjQJkq2421d1mXjw=
X-Received: by 2002:a92:d251:0:b0:363:9de9:7083 with SMTP id
 v17-20020a92d251000000b003639de97083mr2692910ilg.2.1708030785104; Thu, 15 Feb
 2024 12:59:45 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 15 Feb 2024 15:59:34 -0500
Message-ID: <CAK7qAcS2ESDOWE353DZJZPxsn3a-Arqf436nkZR-HA=nwikv+Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: XQFZ7M5OHQMYQDK5DARIQLRXT7PHLR4W
X-Message-ID-Hash: XQFZ7M5OHQMYQDK5DARIQLRXT7PHLR4W
X-MailFrom: aaron.covrig.us@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD LTS Lifecycle
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQFZ7M5OHQMYQDK5DARIQLRXT7PHLR4W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Aaron Covrig via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Covrig <aaron.covrig.us@ieee.org>
Content-Type: multipart/mixed; boundary="===============4703538060525791177=="

--===============4703538060525791177==
Content-Type: multipart/alternative; boundary="000000000000364c2c061171e8f3"

--000000000000364c2c061171e8f3
Content-Type: text/plain; charset="UTF-8"

I was wondering what the Long Term Support life was for UHD releases, as I
haven't been able to find details regarding it online, specifically,
UHD-3.9.7.LTS and UHD-3.15.LTS. Additionally, what is there an expected
support period for UHD-4.5 and UHD-4.6 and do you anticipate there being
another LTS release in the future?)

V/r,

Aaron Covrig

--000000000000364c2c061171e8f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I was wondering what the Long Term Support life was for U=
HD releases, as I haven&#39;t been able to find details regarding it online=
, specifically, UHD-3.9.7.LTS and UHD-3.15.LTS. Additionally, what is there=
 an expected support period for UHD-4.5 and UHD-4.6 and do you anticipate t=
here being another LTS release in the future?)</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">V/r,</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Aaron Covrig</div>

--000000000000364c2c061171e8f3--

--===============4703538060525791177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4703538060525791177==--
