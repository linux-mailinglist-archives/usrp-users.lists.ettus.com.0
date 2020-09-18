Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F55C26FBC9
	for <lists+usrp-users@lfdr.de>; Fri, 18 Sep 2020 13:47:44 +0200 (CEST)
Received: from [::1] (port=42512 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kJErc-000446-5w; Fri, 18 Sep 2020 07:47:40 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:35448)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emoges@uncc.edu>) id 1kJErY-0003zG-KR
 for usrp-users@lists.ettus.com; Fri, 18 Sep 2020 07:47:36 -0400
Received: by mail-io1-f44.google.com with SMTP id r9so6486827ioa.2
 for <usrp-users@lists.ettus.com>; Fri, 18 Sep 2020 04:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uncc.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=89r8qazSChiPOE01pa/VXN6dzhGy5ESzgyyiaMxdFLA=;
 b=UWF8uBNNZDQwoG/NrvkOCWi3iOWG/uOtQ4g2XJPsjnzzoYclZt1DW4+KjeCsRTZm/I
 koTb1/wD3hBeA1Am3TMMIquls8tE1Q0Su//9huVLlOG19NwOjRydojiT+hOaIrqXgQCe
 rcrlaZ99O9AIfvBPrDpMf7O2T+EX075wTojKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=89r8qazSChiPOE01pa/VXN6dzhGy5ESzgyyiaMxdFLA=;
 b=FzWhMoX/TCylQ+PnVkTWVERV4ktn4rhms+xgiXBzWxsNVp883C2EF5Cfb5egYSPRTE
 Ep0eAgEvhx5Z9U0OekgicKURoRAhDVgh0vpN5PC4ohJwsmTKxbEi78XTwyvLrHOUEyp1
 4KYNpkUuXgYFWDUsix4okOtjUMAaXEyGEBuH2pte7wshH5WYscDW2rERzxAONWBDs6X7
 JHc3yNLVf4Ek2HR6trPhTM2Bwhm9g41BLDhXVclNlF48s7Pk9FXG0IrppWKpCbrMLUfa
 HFlAp5a39EQjGuHEKT4Iuo17OF0PqSYPvb+Hn29DOqMRE1X9zMf3e7gOlwD5GKNbwf/3
 IPMQ==
X-Gm-Message-State: AOAM530ZgMb2ghR8rIOIlQpu9J6pn/Yy4pk9QDo/nXqQNRFHoxtvMpGq
 Q6AULLoqnSPAdfimH8/+VYJ18PFzdBlyCodAFlAQo3il/q4=
X-Google-Smtp-Source: ABdhPJzPH9FDU4OUNj3+W68xp+gybPghSs6qiTLZJCo8txDxKXyEXGlqBUmotAx7lQBi5loiAP8EwvXg07KWSY6EyVE=
X-Received: by 2002:a05:6602:2d51:: with SMTP id
 d17mr27350257iow.11.1600429614885; 
 Fri, 18 Sep 2020 04:46:54 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 18 Sep 2020 07:46:43 -0400
Message-ID: <CANwgjNqgEkGnmd2qwD8TO_DunCuLeOttDUmkJc+DYB=eOqG2kQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Setting the tx central frequency on n310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ephraim Moges via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ephraim Moges <emoges@uncc.edu>
Content-Type: multipart/mixed; boundary="===============8222862744033561340=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8222862744033561340==
Content-Type: multipart/alternative; boundary="000000000000af187e05af950ed8"

--000000000000af187e05af950ed8
Content-Type: text/plain; charset="UTF-8"

Good Morning,

I am trying to set the n310 Rx central frequency for any of the channels
and was not getting it to working using the multiusrp set_tx_freq() as I
need a tune request. I am not sure how to create a tune request or if this
is the correct steps.

Sincerely,

Moges

--000000000000af187e05af950ed8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Good Morning,<div dir=3D"auto"><br></div><div dir=3D"auto=
">I am trying to set the n310 Rx central frequency for any of the channels =
and was not getting it to working using the multiusrp set_tx_freq() as I ne=
ed a tune request. I am not sure how to create a tune request or if this is=
 the correct steps.<br><br><div data-smartmail=3D"gmail_signature" dir=3D"a=
uto">Sincerely,<br><br>Moges</div></div></div>

--000000000000af187e05af950ed8--


--===============8222862744033561340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8222862744033561340==--

