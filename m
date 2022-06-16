Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AC454E1A3
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 15:15:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E76F384480
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 09:15:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655385309; bh=Vfz2nHOdvApdOQ6SoAvyAic7v0L+cmC//zDEW4ARWbQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hAlGnCtZl6kaN/qqwAhk/qR4Cp2pTj3xJ9/dhuuE0zJMHuJLjadj2Xe7mQOXvaG7H
	 1Rov+LFt3tmt9blf0tNb/dX5TPfdK/bUpFKWTWtmotRsVSOZr/JMu4ZdGJMC5WQr71
	 A0EvEiQfhCsgmGK7r27pFwaXhw/wwnDfmgojBz9QkcufHQbJp/6OuR1O1MjvIs3Wc1
	 1yx1og5qt1R3txJUmwx4QHlgzotp2aMa53wY0VsARQbz4xB7TtwmkPrMPn9aja1vi0
	 F6VPOvd4YJzbm6NQGL7okMsF9tlXMIOqf5GGXbMqe8e7xsyeezJOw1NOi2exSBMMxO
	 AnpPTjJ4cXiqw==
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 0846838425C
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 09:13:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hQqSBGLl";
	dkim-atps=neutral
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-31756c8143aso13249007b3.12
        for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 06:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=fiKEhLViyIiA7eNXkUiQhPAZwdaIHmyCi44EU3yD51g=;
        b=hQqSBGLlJ1ltjAyYY+UwkNIZb/GnYetL7EcxDovzUPKf/vvBSN4zu0kpzAjTF7OWY0
         gA4rzc+znISv5davzO29JRmsNkWQy9QtppVq236t2oCcXR5B1d78j65YAqSgXbZiNfyt
         +vfVYn0zPSY4GWpSRvqk2cLJdfb8zPlc7R7qrrToYQzU6ws1JhUT02b01xhaNZjCwRXx
         R1qNSm/d3SFkycxSIi5U0hitYvYB9/RC3SXQ5qm7/Dpusb/+2T9NxbkbIQtcMGVKxJ2U
         WGNhrPHQodjt/t3McNVFweH/Cyoa9K/PROhizreQ2QcW70L0QlKhuNdLsBjgWbLg6ofW
         nWJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=fiKEhLViyIiA7eNXkUiQhPAZwdaIHmyCi44EU3yD51g=;
        b=Vs4MogGrpIaaJXrVyJG0InrHr9Mcs1mGbJAdnKZQ4VsJfT60TsU6UIml3pfvAYWw4O
         t0I2Baut0LCvO21nQdZt0i5PJtU7DlBCKAV1eV5vIaT03A264PG3EB90gaOi6/IQD5v7
         ABLuj4XHvv0CGwJ9PBnT/dygn4L3qp3q5thLUwbmhpgvrp6KZMmGBoVd+tJLqSa16UQC
         dN30JJYqH8qkUmPxZqoDinMApKadibkpYIasbq1W7PpNHUHb/e0OXFkHa/Ag9lh3ZCYB
         7G18xLMXvnjYjsAJ4elDzGR6i/ewqyRWFXWiFG1CQUQYRc7o3ervISxBwW1JWTivrvgu
         Mzug==
X-Gm-Message-State: AJIora+OEzwZaqV8wq3GO1F83TibX7vWPmIqlrxiHvwPfi4G1LUBbLdm
	K/6qz9rU6TwdEm6qF35AXjq3OvjoZBk6nhIF0SKuHBaqxvEo6g1kq2U=
X-Google-Smtp-Source: AGRyM1sxUc25RySPKJKGSbkVOdvUFhH5kLYKm/mtBpB9WL8pbk1YF5I00wXTcvN5449M04Xe+y+zfFwrb4wo/yVTJmo=
X-Received: by 2002:a0d:ea88:0:b0:30f:cd93:fddb with SMTP id
 t130-20020a0dea88000000b0030fcd93fddbmr5527515ywe.365.1655385233641; Thu, 16
 Jun 2022 06:13:53 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Thu, 16 Jun 2022 17:43:42 +0430
Message-ID: <CAA=S3Ps1f5MsEsvVwr2j=GpcfSRm4zzb5J3t5-ycBX7Le0mRFw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: MVOHCXFLIOA4KBZRLGA65SMNCGVUYU65
X-Message-ID-Hash: MVOHCXFLIOA4KBZRLGA65SMNCGVUYU65
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] IP license key 'ten_gig_eth_pcs_pma_basekr@2015.04' is enabled with a Design_Linking license In building FPGA UHD 4.2.0.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MVOHCXFLIOA4KBZRLGA65SMNCGVUYU65/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2004447282906627010=="

--===============2004447282906627010==
Content-Type: multipart/alternative; boundary="000000000000d1565705e19068bc"

--000000000000d1565705e19068bc
Content-Type: text/plain; charset="UTF-8"

When I want to build UHD 4.2.0.0 I faced with below warning.

> IP license key 'ten_gig_eth_pcs_pma_basekr@2015.04' is enabled with a
> Design_Linking license.


Building FPGA process cannot go to compile other IP cores and stays in
ten_gig_eth_pcs_pma IP and repeats...

For UHD v4.1.0.5 I had no problem with all IP cores built successfully...
I mention that I used a trial license version of Vivado 2019.1 in Ubuntu
20.04. Can anyone guide me to overcome this IP core problem?

--000000000000d1565705e19068bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When I want to build UHD 4.2.0.0 I faced with below warnin=
g.<div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">IP license key &#3=
9;ten_gig_eth_pcs_pma_basekr@2015.04&#39; is enabled with a Design_Linking =
license.</blockquote><div><br></div><div><div><div>Building FPGA process ca=
nnot go to compile other IP cores and stays in ten_gig_eth_pcs_pma IP and r=
epeats...</div><div><br></div><div>For UHD v4.1.0.5 I had no problem with a=
ll IP cores built successfully...</div><div>I mention that I used a trial l=
icense version of Vivado 2019.1 in Ubuntu 20.04. Can anyone guide me to ove=
rcome this IP core problem?<br><div><br></div></div></div></div></div></div=
>

--000000000000d1565705e19068bc--

--===============2004447282906627010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2004447282906627010==--
