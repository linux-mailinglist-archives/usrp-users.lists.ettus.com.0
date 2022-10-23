Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9676094EB
	for <lists+usrp-users@lfdr.de>; Sun, 23 Oct 2022 18:58:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41E01380F68
	for <lists+usrp-users@lfdr.de>; Sun, 23 Oct 2022 12:58:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666544338; bh=YZKTdzIASM23CCo61wRt5FQMwSfQtTPikhd/6rFH8pw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=px+H2U/GQi37e6wuRQnwrnn3jSau0r44mXkAg3XGoQ2gk7qhrk8Hz3QzszM8a8V+0
	 ogB9sGR3WoipCReMyEbUdrEtlgeFfhlpDa1VJrgMkr21FJCGIcjRuFRnmewFafRSff
	 u01elOYNJgW1MOw+frbzMKiAab/nydKwmrSdbiQRq/JxEFZKMORm6WboO/IUgFwMGH
	 /l8nn1au48xdXm+5OBkt1uXfE09FlUTDacPElEXJ1ojHo5JohyygnwEOIVIVTaZb9a
	 726NEi38l45NHM2065x/hE/e8EDm7DijJoVmBbNC6pDLAquF5xhbpFrffAwkSvUg67
	 Z23Z04UUumFLA==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D7903810BE
	for <usrp-users@lists.ettus.com>; Sun, 23 Oct 2022 12:58:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PJ12D+1x";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id z97so23299576ede.8
        for <usrp-users@lists.ettus.com>; Sun, 23 Oct 2022 09:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xufeMZdP1p9m9S4xVRpjoXLeLsf8iazUEd+o6fRrTps=;
        b=PJ12D+1xz0wfunHENtZq7YM9iVzQ5if7rFrFoOGJCe5O4SlzCZ3XA016yfISVuTO5c
         vMZlFlMM+vPfxJo+UEsWU9G22GJCfvTuUSh8qloh3epZ+XqrU2vIPMCLVGT9EnlYeQVL
         al/IxaCPvJ9+rDJgvBuwDeMyyO4LbBkGbglTS044mfIPGsio0Jj7DSk/jcAkXKuNfcLD
         pwEfgLZpjqxPPXBh3TOMGD8AVYhevusSnzk2RnVx+lgUKhbzco06Pp/SM9RAog7d2Pir
         +tQOEVJBPIbbu5J3R8iBF309ndyzSKat2mC0hxsp9pivWI8gwOwENvdls8rOqTM7ZhNZ
         dhtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xufeMZdP1p9m9S4xVRpjoXLeLsf8iazUEd+o6fRrTps=;
        b=NlSTrajUPogJXULzb2u5vakEVenNRgl3iQ4oSXGXchid1XsDTGoqklkrvr61jDcc70
         cUI5dgssPP9OiLgZHDpMTogWqCQTIKg4jpUGXsyfOtzM+1qDGZM33DgVPKVu+DML+R0e
         L8jFPUc1mq9OBqqwRywb89IjpS9jmmIGnFKLeAnpq6qG5RbHNt6JV1LGaCwJkThQNZ4F
         KZj9UWhkjWkQoGNpt8KmwLucRsbqRPCIg8ntjR8K9VdT/nOY+gnVHOfwPIoyPvogiDGH
         16QvBfcQ3W2fMKWHq89WF7lHcvPz1LgTZyDM1pasUyxQB/RB9ryU+Yq2XO8iRIclTe6D
         Fi5g==
X-Gm-Message-State: ACrzQf2tmChCtxfk+p4n+rbUglFYMvULicRLrqAHdFWiwyQ1L+vzoN0u
	pwdrc2frF3NLeGJHrrEpnRPAnurHkhIg53NJE6Chxf0n
X-Google-Smtp-Source: AMsMyM7beFNfbgZQ613xvV2tAe99bTA8Ln0xRoRD8NufJpG8SAaCB8b4wcr6jJcTOJw+BtR+W5ELwM5gBbg7g9Ta6xs=
X-Received: by 2002:a05:6402:11c7:b0:45d:9775:d423 with SMTP id
 j7-20020a05640211c700b0045d9775d423mr27498941edw.257.1666544291807; Sun, 23
 Oct 2022 09:58:11 -0700 (PDT)
MIME-Version: 1.0
From: EmPa Kro <m10502215@gmail.com>
Date: Mon, 24 Oct 2022 00:58:04 +0800
Message-ID: <CAKNV16WYZgzRi_5AtTCpQ5fq=+f5UoM0LMhfBBwg-ZdT03tnGA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: MESO477BJOSVAVBBLAH7GBRJAAPZ6NVY
X-Message-ID-Hash: MESO477BJOSVAVBBLAH7GBRJAAPZ6NVY
X-MailFrom: m10502215@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to use command replace hardware-reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MESO477BJOSVAVBBLAH7GBRJAAPZ6NVY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3586502625688373990=="

--===============3586502625688373990==
Content-Type: multipart/alternative; boundary="00000000000084058e05ebb69402"

--00000000000084058e05ebb69402
Content-Type: text/plain; charset="UTF-8"

Dear USRP develop,

Because I meet some of hardware real time issue.
I must use my finger off/on power button.
Are there any other ways to reboot?

I have used software command to reboot, but it can't fix HRT issue.
"ssh root@[N310_IP] \reboot"

Best regards,
Kenny

--00000000000084058e05ebb69402
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear USRP develop,<div><br></div><div>Because I meet some =
of hardware real time issue.</div><div>I must use my finger off/on power bu=
tton.</div><div>Are there any other ways to reboot?</div><div><br></div><di=
v>I have used software command to reboot, but it can&#39;t fix HRT issue.</=
div><div>&quot;ssh root@[N310_IP] \reboot&quot;</div><div><br></div><div>Be=
st regards,</div><div>Kenny</div></div>

--00000000000084058e05ebb69402--

--===============3586502625688373990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3586502625688373990==--
