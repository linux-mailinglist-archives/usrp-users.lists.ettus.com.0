Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CDE39C05C
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 21:20:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8123B384937
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 15:20:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ourowndomain-com.20150623.gappssmtp.com header.i=@ourowndomain-com.20150623.gappssmtp.com header.b="aF1kwsW6";
	dkim-atps=neutral
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by mm2.emwd.com (Postfix) with ESMTPS id ACE9A384913
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 15:19:33 -0400 (EDT)
Received: by mail-io1-f42.google.com with SMTP id 5so11254873ioe.1
        for <usrp-users@lists.ettus.com>; Fri, 04 Jun 2021 12:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=ksbHdDC/ygzUC66YHo79gcxt3R9RPsJL+hgJIdZFfv0=;
        b=aF1kwsW67nWCJU/RXmOV/9QkGkU1LET1vyk2ktrpxmVIvX08mdAvST4FdxlyaK12oY
         8TuFrAo2hls27XuzRV62WU3AhR8BYFv1EwgypBjVaoqRH2rVImPAgNoCOPdhdknUgC4r
         4ZDQwJ33JzJxEgjNrp4IrJsrnoB/iDXBfUy3kHbWIZXVsIluwdeDcVEwe6EmKTiaIuCN
         Sbe2VA6PB+i6iO79qrysc8hiiAj17SxTk40UpOw8/V2GU/QYSim6Zk9KAhXYvQ/FHKtZ
         XQz65gxYXuUx5Erc0pMkoDvJ9MThPjLxHTETSoQ+DM03qTdpbaa1gp1MWdalfIyQdyo5
         dyTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ksbHdDC/ygzUC66YHo79gcxt3R9RPsJL+hgJIdZFfv0=;
        b=eIrmP+P66EWZ9ezkjiiWFk7FjUGL2EcEz+CJZpEtttoDK9S0J5WVXGQz6bfrWSRyTh
         z7bxFE7gM57l1RRD1XBmBH5oRVBsAU1XLZfU75QoaNpk4KthsZF7HV0MFdJpOg+OBon3
         phzsWf0k3b3X7HNe56Cmx+XOdX6eqQlAY+LGF4yC+x84r6wEoeg98kKcYwzI5SYKeJnd
         lKp+J227Oe/WTjUp9Iu8UXibAqfUHtEcXd9E7mQiro0z4qKXqw+TdprWO4b3N4RID0p/
         bZNhd1XN0gXNc6zjJHZXDVaHYtdTF+IZWdQMnkyJOiJPT/fLMWm1YmVXK2gwG5mDk6Zy
         ZvbA==
X-Gm-Message-State: AOAM532XQLWfuVQVzyHr6NOSLusheyX8ywrYUd7Iu2WFXl5jotU2hmtV
	SP4vO43oq0Gasw6a/9JgkHdN8WtPOUIbE2YpLusyIs538NKfrH3z
X-Google-Smtp-Source: ABdhPJxG7WSg2Z5VBGkhD5n+KJ9yKM5R0kGade86NcR2LT9DfGYA3Of9wiSPmw8zL+eO5QqMuRphapEvt22qBWtXIfk=
X-Received: by 2002:a05:6638:22d2:: with SMTP id j18mr5575068jat.8.1622834372543;
 Fri, 04 Jun 2021 12:19:32 -0700 (PDT)
MIME-Version: 1.0
From: Rich Gopstein <rich@ourowndomain.com>
Date: Fri, 4 Jun 2021 15:19:21 -0400
Message-ID: <CANsNear-N8KBfZO87wVk8btEnQk=tsvF_Td0zjv1YDoE2ATVFw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: APIFVL35KIEYWXYTJZ6BWSGRNIMQY3NI
X-Message-ID-Hash: APIFVL35KIEYWXYTJZ6BWSGRNIMQY3NI
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Replacing idle FPGA image on an E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/APIFVL35KIEYWXYTJZ6BWSGRNIMQY3NI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3751353817800138861=="

--===============3751353817800138861==
Content-Type: multipart/alternative; boundary="0000000000004e1efb05c3f592c5"

--0000000000004e1efb05c3f592c5
Content-Type: text/plain; charset="UTF-8"

I've successfully replaced the non-idle FPGA image on my UHD 4.0 E310
using uhd_image_loader.

What's the process to replace the idle FPGA image?  I didn't see any
documentation on using uhd_image_loader for that.

I saw FPGA images in /user/share/uhd/images and /lib/firmware, but wasn't
sure if I could just copy on top of those?

Thanks.

Rich

--0000000000004e1efb05c3f592c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve successfully replaced the non-idle FPGA image on =
my UHD 4.0 E310 using=C2=A0uhd_image_loader.<div><br></div><div>What&#39;s =
the process to replace the idle FPGA image?=C2=A0 I didn&#39;t see any docu=
mentation on using=C2=A0uhd_image_loader for that.</div><div><br></div><div=
>I saw FPGA images in /user/share/uhd/images and /lib/firmware, but wasn&#3=
9;t sure if I could just copy on top of those?</div><div><br></div><div>Tha=
nks.</div><div><br></div><div>Rich</div><div><br></div></div>

--0000000000004e1efb05c3f592c5--

--===============3751353817800138861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3751353817800138861==--
