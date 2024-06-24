Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC51C914F95
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jun 2024 16:10:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39086383CD2
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jun 2024 10:10:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719238201; bh=gjcrjzBc1UvT8efIlqpiQ6G2DOAQgt74frw8/k3rPJ4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YQHlL1gsObAjeU4mfTkNM9k43Qc4Q+Q3xtrhG6gepjdKcsp7FE9Y/KsMupiA50Kb7
	 i2VCjlDUopN2URS/GtvAS/Tcn41024yQgLQSb4IcCK3ZXeuR7V20x2bokkd6ByBhFS
	 gTYrRtZzJ0o4eUBYW5T3dZH7kPQPIrvJPvkaEz2gqVL835B5LSq+k+25Pm4ep4AjX6
	 VihQD3nS2O/JYlecN8LZ2tPVD2ny9cpeGsYZFq/xNuVix4b9AM3ILpP9r53ZJ7CY9V
	 DrJBNcsjbz1FhuZwCsFPgv0rx2LR3VFI//at4oZ8upIzG8yrsYNU/t3zlvexwh94hS
	 6QRC9RmB0aq8Q==
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 4EA6A383898
	for <usrp-users@lists.ettus.com>; Mon, 24 Jun 2024 10:09:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="RGpCmZ11";
	dkim-atps=neutral
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ec5779b423so20549221fa.0
        for <usrp-users@lists.ettus.com>; Mon, 24 Jun 2024 07:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1719238158; x=1719842958; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KhNBzo9H5lYapRSnBb677tRyVytKQ9TjyUo5YBmy6so=;
        b=RGpCmZ116cT19nv2MlxjqzDm1Vo3aSd9fJcDfpfjvCucJngEB06nHwW6X2efhb4TW6
         Nf+9Z39Qx7v0bYRHHlJP4w2QHq5S7ic0hrpiQGvYvjMMFfGrYBB0kidHbj5xoAHxBqHA
         OppKlrOq5wJ8fmb/3pa5+6L+e8lba91WJzycVIysDjZZL6KC65gbiCQ5HwWuOqL+ZDSq
         wDGC6mjPkHgGRY3slHzA2IeBVUGeweNjyIY5EYe6uBYgKlldrLPuyH8gvOCJI2P3HpE/
         eMLdzv8CjDEHMoEP8nYFakLCcTgGRFqM2mh1tBcdyyAX10BGpeYINQDhLBdR7kBub1Ab
         qxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719238158; x=1719842958;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KhNBzo9H5lYapRSnBb677tRyVytKQ9TjyUo5YBmy6so=;
        b=l6Hw8BJXXHmJP8iJaJuB/h0m9n77T29BsUq+aSdNw4dnKDvRfixy2E+UZwQHNaPh6R
         i9Nxr0zNSgSrql9VAVGnWd5spYxv/RM6mDvo7f5+JQvvds5GkPNCO/T/P3etzKch+kP2
         T0Dv/+VEJuJZUUSkh1cxehyafJ1liDkdu57ZVqcpoRTAaz6UlGp+NjxQjf5rHPtRe8Aj
         0TZ0EDHCtbhiTY49FHLT+/k1qnYGqscq1i8MZNgKNyyH3NeDslgFgzSHU8kQFj+C8yEg
         BwRPFkDnSd8TjxBMCCXIT48aLU9Km8dJ6ilST113Rgt9mL47NHYVXWaHDZYVxmFnsk3S
         lB6w==
X-Gm-Message-State: AOJu0YzXYgskSlP2Y076E8Jm1whviFEN+irdSPU9d4KSCljNETuwnbXD
	NGxAs9qyBlE1dWlwpJHffoVqIF7Vsdg9qgShAPd7rAQvUt1a0eFeurHAZuxGhm9VhEFzLNCRddY
	waIqyHdWbfzmOYk6n729VHDfefqVj+MLBFVhhO09UUFrWwdXS4P4=
X-Google-Smtp-Source: AGHT+IFARFbIGufaaEd2ACAuV93isT8S7AghYFrntRb3VJEuBid283wXGDw/SFClh0cTXrEPKThYXQigfUvDy2Pfnu4=
X-Received: by 2002:a2e:904c:0:b0:2ec:4064:18d4 with SMTP id
 38308e7fff4ca-2ec5930ffd6mr37214851fa.2.1719238157184; Mon, 24 Jun 2024
 07:09:17 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Mon, 24 Jun 2024 16:09:03 +0200
Message-ID: <CAKHaR3=8BVEqujkPk7b9N5bfwqGS=EzsAdcP6e5=qKVwgxvoXg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 7OGXXGJLPNYOEZQQWNIKIWF6NGMJLQNC
X-Message-ID-Hash: 7OGXXGJLPNYOEZQQWNIKIWF6NGMJLQNC
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] kas and meta-ettus
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7OGXXGJLPNYOEZQQWNIKIWF6NGMJLQNC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0768316805933582318=="

--===============0768316805933582318==
Content-Type: multipart/alternative; boundary="000000000000a4cbf8061ba35319"

--000000000000a4cbf8061ba35319
Content-Type: text/plain; charset="UTF-8"

Hi,
i just realized a new version of meta-ettus using
kirkstone/uhd-4.7/gnuradio 3.10 has been released and wanted to give it a
go but i'm struggling to fund the right version of kas to use. so far i've
been using kas 2.6.3 for the zeus version(s) but now i have all sorts of
errors with that and with newer releases (haven't tried them all yet)
any hint?
thanks,

Dario Pennisi

--000000000000a4cbf8061ba35319
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i just realized a new version of meta-ettus using =
kirkstone/uhd-4.7/gnuradio 3.10 has been released and wanted to give it a g=
o but i&#39;m struggling to fund the right version of kas to use. so far i&=
#39;ve been using kas 2.6.3 for the zeus version(s) but now i have all sort=
s of errors with that and with newer releases (haven&#39;t tried them all y=
et)</div><div>any hint?</div><div>thanks,</div><div><br clear=3D"all"><div>=
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,san=
s-serif;font-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0,0=
,0);font-family:Calibri,sans-serif;font-size:13.3333px"><br></div></div></d=
iv></div></div>

--000000000000a4cbf8061ba35319--

--===============0768316805933582318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0768316805933582318==--
