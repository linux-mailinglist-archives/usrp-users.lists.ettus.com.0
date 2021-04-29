Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8415A36E3ED
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 06:12:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 665F938432F
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 00:12:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k+H5bwQ8";
	dkim-atps=neutral
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	by mm2.emwd.com (Postfix) with ESMTPS id EA29A383FE4
	for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 00:11:18 -0400 (EDT)
Received: by mail-pg1-f176.google.com with SMTP id m12so5493363pgr.9
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 21:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=3EEVT/GZmxA/kxvuae5Jx7xZZ99FhLvZ3YdSrHbJXSg=;
        b=k+H5bwQ8fAo+ujdPu91grH04ULMNkZbgdcW8yPplYmZ7X2ug0S++hlGAFcRDMV4DgK
         Rmh/HJHeHsClZ8zSWe8gfZqMY3zIJxOWpmO4EAPma+KuZUCsv5fMYw5CygTDDRs5CSUN
         ShcqMZX9lZnhdW8ty3Nu0Fm3ZQNar3CBCU070MpcqEFjRM+NVvxDtG8cSAyZ0pRuoExy
         vSS5Z4ALKl5UnacJ55EcuD3BOmRXau9gVpfsCCJ4Umk8n25rI7ps08HKAq3pbYmNURHi
         EL9CDE6Q0pj96VkjPob24OMkPHMfQRYg70jSO7qVJMqS3qPHEXU0k+sw410TXw/m/hkG
         peAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=3EEVT/GZmxA/kxvuae5Jx7xZZ99FhLvZ3YdSrHbJXSg=;
        b=N91e7KfHxZFHk2KG/1xBIBKyyBhG7W+y6oZV61zBq6tAf2ccJN8ovnM9VgFmordrhP
         xA+A5FOvbyf+KF0TkgxXBxLXaJfATluuXKzuiMl1u8MjtE5WaVKG18iH5pijToUhXOAf
         C7kNHT8iaWt6KzxatxuGRoFa0fwFaKWO2FWSVa8froWkqRGXCTkIWyQiQVBdhEKSHxNb
         Wtmyh/uLDbdL6UMjV45vWxIgg1GCpUGellbhGWy7eDRBG9II0YrD842p/C0wCE6bsCSH
         cprqlnvPp1Mugwf52tui5PHcdWa/CIraWsXiTD+E5YHYjww8csIAhAHBfZKLH90nddxA
         Hk8A==
X-Gm-Message-State: AOAM530aDzpaHml3qnSGHpyOQrAi/zTqzzg6e8eGTpQuCvQLpddBTpk+
	7uig/mJOSbwcAPo4xPoMSN4SJxortYtGfjaf5+6vaJgmyzE=
X-Google-Smtp-Source: ABdhPJzf+L1OHkw06WOPhLWasfAjfSegbrp9fXccoWBz/l9AAKpk1AWyP3Kx8Ad+Uhv7LGOWWgbszTGmEgTxUjxaf6I=
X-Received: by 2002:aa7:8d03:0:b029:259:f2ed:1849 with SMTP id
 j3-20020aa78d030000b0290259f2ed1849mr32668618pfe.30.1619669477576; Wed, 28
 Apr 2021 21:11:17 -0700 (PDT)
MIME-Version: 1.0
From: Damon qiu <qiu.guowang007@gmail.com>
Date: Thu, 29 Apr 2021 00:11:06 -0400
Message-ID: <CACjmV_kMF7VY5eDhM5yH2=d9xmyMdH+uS8XP4UM+xeoaNkPhYA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 6WBHUWZT57VFXWDVA7BW3KWYICW7OJJB
X-Message-ID-Hash: 6WBHUWZT57VFXWDVA7BW3KWYICW7OJJB
X-MailFrom: qiu.guowang007@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Damon Qiu <qiu.guowang007@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] The operating system cannot be started when B200 is plugged into the computer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6WBHUWZT57VFXWDVA7BW3KWYICW7OJJB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4404310746702814413=="

--===============4404310746702814413==
Content-Type: multipart/alternative; boundary="000000000000dd53eb05c114afba"

--000000000000dd53eb05c114afba
Content-Type: text/plain; charset="UTF-8"

Hi all,

In one of our applications, we need to integrate USRP B200 and computer
into a mechanical mechanism. So B200 is always connected to the USB port of
the computer.
In this case, the computer may not start, or it may take a long time to
enter the operating system.

Is there a solution? thank you.

Best regards,
Damon

--000000000000dd53eb05c114afba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>In one of our applications, we =
need to integrate USRP B200 and computer into a mechanical mechanism. So B2=
00 is always connected to the USB port of the computer.</div><div>In this c=
ase, the computer may not start, or it may take a long time to enter the op=
erating system.</div><div><br></div><div>Is there a solution? thank you.</d=
iv><div><br></div><div>Best regards,</div><div>Damon</div></div>

--000000000000dd53eb05c114afba--

--===============4404310746702814413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4404310746702814413==--
