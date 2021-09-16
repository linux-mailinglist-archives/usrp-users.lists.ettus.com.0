Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FC640D1B7
	for <lists+usrp-users@lfdr.de>; Thu, 16 Sep 2021 04:39:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18D283843EA
	for <lists+usrp-users@lfdr.de>; Wed, 15 Sep 2021 22:39:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NMYo49AL";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DC98384375
	for <usrp-users@lists.ettus.com>; Wed, 15 Sep 2021 22:38:53 -0400 (EDT)
Received: by mail-yb1-f175.google.com with SMTP id z5so10002498ybj.2
        for <usrp-users@lists.ettus.com>; Wed, 15 Sep 2021 19:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=USDdLAP/hs0rrqxE2wEKvrddT6hTtt72YcYvo3CKbxg=;
        b=NMYo49AL8qEIkw1Hh5DtHOsxEYHZIEfxNmbQTnLiWCFbmQfhT1NBa8kevmVKDyFAXL
         Xd2x6waK6Pjuug4rcVDXQQpqUk2WBG8jDBvEUWBB09E3AlhHCrGgEqCi4C+JqB2QCYyT
         sA/lWlpLusZifWDQcv1dRphX5hohxH7rCl5nkLdOhnuQULr2Ycllfnud9EpePpa1u8O+
         Ws/IMi9qAEfUsv4aRmyTMBoD9XFm6hkKqOftjZbujPl56ItVYUBlGHXWrYUvJmUbfFV9
         lxCcT6C0jXEvotR4Sex35QgAy1xlnB6Bp5JHB2gYyiAnyvtza1Cwgm/Uo0S65Uc/hdAu
         aiuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=USDdLAP/hs0rrqxE2wEKvrddT6hTtt72YcYvo3CKbxg=;
        b=KcQON0Aj69ZbnV86CG5ylkkRYiUCxoMTalpg8SKs686+2cNmEdvmYfs+NFmuof2pui
         cz/mSsFA75dhBN++bEaNbZ+GFUj7aTpucxeUGnM4MsSAJZ3xKOtpi24C3HcgzZakUi4f
         +AD8fFD12cq7tE42pKPPnfFE8c9LVu5tuc+YhTKRRxxHLZtLP6IXECTiMdv6Klo3kd3Z
         HZQ7wtY5LNFQ/JdzIYJ58P6SagJxTmjcTVWFaBu5rdwJgjcuFKs2xYtkc+sV9woMjsZb
         QYpFgf5nkiFvOwWb8D11JLFoRaZFkfQ8t8ngpIUE7KHuHBRKmDklDuAM1g1zAgWZ7bbS
         HMzA==
X-Gm-Message-State: AOAM530FcL1ooIDGSrU/xZzsHos2bptxvQZrTPZjBl5Xg2rSVMNtdCGL
	qKxgdhvBOAR4S6NcGWQSS/MVdPrUXHMf1VwUk1h1ZB/7
X-Google-Smtp-Source: ABdhPJzTQlh52hbk89dqNU5T1JayJCo59OWDBatNNGKa9g9AYhN8S7s21ke6ujmqsYXpojRug1lubI3QY/XW0dWLoOo=
X-Received: by 2002:a05:6902:150a:: with SMTP id q10mr4327223ybu.515.1631759932820;
 Wed, 15 Sep 2021 19:38:52 -0700 (PDT)
MIME-Version: 1.0
From: Shamil Prematunga <shamildilshan.b@gmail.com>
Date: Thu, 16 Sep 2021 08:08:41 +0530
Message-ID: <CAGeA34FfBj2wDCkFLCvLWSVumS3K4rSX9qP3itriP_uf+Lu=FA@mail.gmail.com>
To: openair5g-user@lists.eurecom.fr, usrp-users@lists.ettus.com
Message-ID-Hash: XBUCVIPDCYD6GASHSRDLAP7FXUALDD5T
X-Message-ID-Hash: XBUCVIPDCYD6GASHSRDLAP7FXUALDD5T
X-MailFrom: shamildilshan.b@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP Signal Range
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XBUCVIPDCYD6GASHSRDLAP7FXUALDD5T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7282130009479341910=="

--===============7282130009479341910==
Content-Type: multipart/alternative; boundary="00000000000027990005cc13b720"

--00000000000027990005cc13b720
Content-Type: text/plain; charset="UTF-8"

Hello Community,

In my OAI setup I am using USRP N310 as my gNB and USRP B210 as my UE.
Can anyone having experience with these devices let me know about the
ranges (cell radius) we can transmit and receive the signals?

Thanks and Regards,
Shamil

--00000000000027990005cc13b720
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Community,<div><br></div><div>In my OAI setup I am u=
sing USRP N310 as my gNB and USRP B210 as my UE.=C2=A0</div><div>Can anyone=
 having experience=C2=A0with these devices let me know about the ranges (ce=
ll radius) we can transmit and receive the signals?</div><div><br></div><di=
v>Thanks and Regards,</div><div>Shamil</div></div>

--00000000000027990005cc13b720--

--===============7282130009479341910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7282130009479341910==--
