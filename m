Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D014D739D
	for <lists+usrp-users@lfdr.de>; Sun, 13 Mar 2022 08:29:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EED5F384920
	for <lists+usrp-users@lfdr.de>; Sun, 13 Mar 2022 03:29:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IgyerK2T";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 465933846A0
	for <usrp-users@lists.ettus.com>; Sun, 13 Mar 2022 03:28:48 -0400 (EDT)
Received: by mail-yb1-f180.google.com with SMTP id v130so24985014ybe.13
        for <usrp-users@lists.ettus.com>; Sat, 12 Mar 2022 23:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=fm9nr4we5tkjuJXltcYHdTH8jR6rQt0DC3CnR+eKBPg=;
        b=IgyerK2THBeTaJWlHvzLX5MyPbCHprqV1XVM6QM8sCQuq80JVjRCSwadrx3OrpkG4Z
         gtaqRcr0idxJ1povD3pu+MnroD0d8GQ/IXMOrmaXU2QA04dBIcPcEsOmrLkE4fDFHHla
         cLNCieS55HQjXfY4eUyyS+XAxAKBhLTysJOdJJtTyY7LjogPWJjwkgChrt4H7qXWPfuF
         Rbg8m8NVk+lKce6Ou8qKsa6InLSjDPledtC6LkXOCME7iILp5Xr2sgTNJ0Afz1M9IKs1
         paqaTwjltfNUhLHK381TvOPUNNz5dmpr/t6D1hrpbjieqWy14gtEvIzpBAeXRu2o+q53
         aSIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=fm9nr4we5tkjuJXltcYHdTH8jR6rQt0DC3CnR+eKBPg=;
        b=ZWk2CwGtbaK4p0db09dx64LqytCdfHSfYB7xu6jiByS9dNReocL5x/YvV+VdjJ3aT7
         R5CfndhPzmxgR/PDNeS0fWTWYRdzL2lWrOUN66Hm7KhRvgCUr30Q/2V5nxsysKukB3Ri
         wVkTaZXeLPWRnqlotpJY6qT30vZwcHPZFljhia4ILhIiC8LD/XJw0U/+NQ2uruuN/BAK
         PvVhSZdlMS0dTM0EgPbJuWJyZao1EgZG93PFyVDTP1/tgd33DafhG+i6N+F84fhXQWpH
         4cHYtommQBctUOFT84SbgavxfmOds6urW0lSzGj1R7MzX0NN+DtNWXOfGknpWVhTNsrw
         8wCw==
X-Gm-Message-State: AOAM531IxaQZcZzrNEVmKkGlvCnGLEaoCHh7RLpMOHOWoRNbczOPzoja
	O+Ghep6EBa/vmfw4OulOyvLTwczsx/dN1y36Gkxi1sIBFnKnEor/Ybg=
X-Google-Smtp-Source: ABdhPJykcOt13grg738FsP2tBQ8n6hExJ/052+kQYFt4c5wYlFYEWXzsYAOJXHaennIbKvTWDqYKDXuFQhKDcHusuQo=
X-Received: by 2002:a25:d655:0:b0:628:7d1a:cb6 with SMTP id
 n82-20020a25d655000000b006287d1a0cb6mr13545794ybg.148.1647156526674; Sat, 12
 Mar 2022 23:28:46 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sun, 13 Mar 2022 10:58:34 +0330
Message-ID: <CAA=S3PsoQn=XpFMtxu5BDGDsBYY9rKkDsLGL5h+cS8ExJj4-6A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="000000000000a98caf05da148320"
Message-ID-Hash: JXYOG7DDVFZGNR5X3R5R4RCJ6RVTPLXE
X-Message-ID-Hash: JXYOG7DDVFZGNR5X3R5R4RCJ6RVTPLXE
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] There is an example gain RFNOC block in an old document from UHD, but
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JXYOG7DDVFZGNR5X3R5R4RCJ6RVTPLXE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000a98caf05da148320
Content-Type: multipart/alternative; boundary="000000000000a98cac05da14831e"

--000000000000a98cac05da14831e
Content-Type: text/plain; charset="UTF-8"

There is an example gain RFNOC block in an old document from UHD but for
the UHD 4 document this example (gain RFNOC block is removed...)
For the new UHD document, NOC shell and pins are changed.......anyone gain
RFNOC block for UHD 4 and new documents?
thanks very much

Old doc:
https://kb.ettus.com/Getting_Started_with_RFNoC_Development

new Doc:
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0

gain example RFNOC files:

--000000000000a98cac05da14831e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There is an example gain RFNOC block in an old document fr=
om UHD but for the UHD 4 document this example (gain RFNOC block is removed=
...)<div>For the new UHD document, NOC shell and pins are changed.......any=
one gain RFNOC block for UHD 4 and new documents?</div><div>thanks very muc=
h</div><div><br></div><div>Old doc:</div><div><a href=3D"https://kb.ettus.c=
om/Getting_Started_with_RFNoC_Development">https://kb.ettus.com/Getting_Sta=
rted_with_RFNoC_Development</a><br></div><div><br></div><div>new Doc:</div>=
<div><a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0"=
>https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a><br></div><d=
iv><br></div><div>gain example RFNOC files:</div><div><br></div></div>

--000000000000a98cac05da14831e--

--000000000000a98caf05da148320
Content-Type: application/gzip; name="gain_src.tar.gz"
Content-Disposition: attachment; filename="gain_src.tar.gz"
Content-Transfer-Encoding: base64
Content-ID: <f_l0oygcrx0>
X-Attachment-Id: f_l0oygcrx0

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
fzw8D8/D8+d9/h8AjjJQALgAAA==
--000000000000a98caf05da148320
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000a98caf05da148320--
