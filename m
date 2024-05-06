Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D398BD43C
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 19:58:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2B5E385532
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 13:58:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715018333; bh=JxWEf7iHKRBoSfseBNk7hvlzB87MZI5zC3+sZrLXgd4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=w6lamydxPYpl7ri8MkLZ4Z2lPQWRHiGG1JbUO5cdJBTDjoB8FVr66ewYysOBheKBw
	 ohJhfFkYbsMft6yx4c1iW+R8u/evr2/dq+L0dpxlxDGsu+0cX5DS7ltjvfDaG306+d
	 zySSgy1DfuyVJ7uiChfYeGp4EpRZYau8uz7Q9LitmIoigVz/o2iaLY90yXdzp6tY39
	 6dzG5mMTj6/ooty6PKr1mdxOxf2dXAzPyPxjzplNJ8RipdiR5EKhgIVE1Xdi76rkKU
	 rS0Y8sm5Q1LP/rpI1nDjritLye4X4wXWgZfX/w+jGv/1jJCGvnlcQ8fsu78SbJoBKb
	 HKnGFEekcZ7yg==
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 16238383B15
	for <usrp-users@lists.ettus.com>; Mon,  6 May 2024 13:56:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="YYOYlI8Z";
	dkim-atps=neutral
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2dac77cdf43so28141961fa.2
        for <usrp-users@lists.ettus.com>; Mon, 06 May 2024 10:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1715018186; x=1715622986; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WLt+t+rIoJquBavzknXXlzc9HwWMW7PLlhtgmIjx7js=;
        b=YYOYlI8ZZXnLYmv/pbe/9h19Fq0p3PZNium4Rpc/AzUsRA4Hgrw7SPy5pUSjUcfrj6
         d7wRRurP4mindSPs8HbQayAAVnPACfTxeHRc8HgjF4gyr1oT5AXbUxifEhyj514Cn89N
         lTevjudujDmqFagHE1+ThpiDxPHQMuUy8DQJRIYdmDfSD2Du2eTg/7YRDATlXIFAjdKb
         C5QHUiYNVbxjHDc4lbEotddfrU59sFJH+HRSoWbeIg51S5NYekIBcWHNLURbwKSa5EBf
         kZeNmex+bbJq0r7jN11faiSId4uFnfotk5h+vkuTXQrGmhBjXK9t6VUJXC10ThFdb+IB
         FUvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715018186; x=1715622986;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WLt+t+rIoJquBavzknXXlzc9HwWMW7PLlhtgmIjx7js=;
        b=OvRJ13pnQZMp2Ntye35DyLH9LMwdpAlScc/hiv9b2KG9ZNErMSm9asStfCwIWUEoyU
         3TN2qMW+XWPio/9uOHSOsim3jQC3vgPcalLfpaS1pCKm+UnUDXb5lEwuUsGH4N3vlA/i
         bP8+oq5lC6EOuGL2cfwjQIqRQVBMZ6QJoDEDLlHHDFp3KrR0tx/Y0dZOkJITeTSNcHPd
         GJMsiCptVXdSimxAUy0hJCNOdwra5clRFlOIbsovUe1TeznW3z7G7SbcXk+bV+/yuWJe
         lLG/adonR3RrpgPTQZm6s27qHtuGORPveoTpK45RnbdZjLBC3zfJ3XU4ha1a8mVfeqFW
         IsyQ==
X-Gm-Message-State: AOJu0YzFyBza5QRihS2busyDhV8pR03OaUj9Bx78AKkpVkrFX4rLJimw
	eV/tO48Pahm9bztOXIPkFb+wFc99LP7QkHo1qfHnHmRo7rUWhcxcoYfiRzNWdB7uC5P4iN6dxva
	76L7xtdoBV7j5bmMlveuPP6re1+NCczbrQLJJVgJLL0MR+dSYGZbtoi4/
X-Google-Smtp-Source: AGHT+IGTN3XP4WIfKMR0b+Gu2HQoWBMmooFnomMFWO5mLoM8XNNOBzIXsGS0GnDcoLlDtlNw+N4HusewfT6sUe6BJxc=
X-Received: by 2002:a05:651c:152:b0:2df:e705:7b4 with SMTP id
 c18-20020a05651c015200b002dfe70507b4mr7452645ljd.10.1715018185792; Mon, 06
 May 2024 10:56:25 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Mon, 6 May 2024 12:55:49 -0500
Message-ID: <CACaXmv8Endp2JhbgOVQ8wsCMxrP6edY1PnvfKegQMdM5n2VnHw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: X4DQEUMDFIEWK5RTIU4KEB4OOATE67BY
X-Message-ID-Hash: X4DQEUMDFIEWK5RTIU4KEB4OOATE67BY
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR on Friday May 31 at WPI (updated agenda!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X4DQEUMDFIEWK5RTIU4KEB4OOATE67BY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1727399937795315344=="

--===============1727399937795315344==
Content-Type: multipart/alternative; boundary="000000000000bf7e320617ccc910"

--000000000000bf7e320617ccc910
Content-Type: text/plain; charset="UTF-8"

The agenda has been updated!

The New England Workshop on Software Defined Radio (NEWSDR) will be held at
Worcester Polytechnic Institute (WPI) on Friday May 31, in Worcester,
Massachusetts, USA.

There will also be a tutorial session on the evening before on Thursday May
30.

The event is free, but advance registration is required.

To learn more about this event and to register, please visit our website at
the link below.

We are still interested in poster presentation submissions, so please
consider submitting.

*https://newsdr.org/workshops/newsdr2024/
<https://newsdr.org/workshops/newsdr2024/>*

--000000000000bf7e320617ccc910
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">The agenda has been updated!<br><br>The New England Worksh=
op on Software Defined Radio (NEWSDR) will be held at<br>Worcester Polytech=
nic Institute (WPI) on Friday May 31, in Worcester, Massachusetts, USA.<br>=
<br>There will also be a tutorial session on the evening before on Thursday=
 May 30.<br><br>The event is free, but advance registration is required.<br=
><br>To learn more about this event and to register, please visit our websi=
te at the link below.<br><br>We are still interested in poster presentation=
 submissions, so please consider submitting.<br><br><b><a href=3D"https://n=
ewsdr.org/workshops/newsdr2024/">https://newsdr.org/workshops/newsdr2024/</=
a></b></font><br></div><div class=3D"gmail_default" style=3D""><font face=
=3D"verdana, sans-serif"><b><br></b></font></div></div>

--000000000000bf7e320617ccc910--

--===============1727399937795315344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1727399937795315344==--
