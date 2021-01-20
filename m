Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 215EE2FDCA0
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jan 2021 23:35:05 +0100 (CET)
Received: from [::1] (port=41574 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2M45-0006fb-S3; Wed, 20 Jan 2021 17:35:01 -0500
Received: from mail-io1-f43.google.com ([209.85.166.43]:39234)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <kspambot@gmail.com>) id 1l2M41-0006M5-KX
 for usrp-users@lists.ettus.com; Wed, 20 Jan 2021 17:34:57 -0500
Received: by mail-io1-f43.google.com with SMTP id e22so223861iog.6
 for <usrp-users@lists.ettus.com>; Wed, 20 Jan 2021 14:34:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=GugWRv2mp2kqxxQHeYPrN4+wCLxemZ6z2JYOXdC6Tos=;
 b=VKRBr7Mr7EodXypLgqI0WrniU2mZkW3W53tpHrdOKp4RuD2rCsLb+T4DLPVk99eTwZ
 lRU/Vr0jWBUKMLcHRamHndF5asyqtRej4asN+8R/s16wNpHBkjRdR98sRjw7Y75z/2Ln
 As0hYnJr9SWQ7p8E+FEYsYRp1UEzWu22ConQXHO9GVczr+/cpljs1YQ5ND6a7LXgvo6c
 WiGGg4BNTToJaRd9MQy2igOZI/UG76DuaJNWy0rCaJNH5g8O+did1Qm8NOpV1eNWTgvV
 ejrM8187dpSF0y+GBdGcQ80FCM6kXO6vM4C9bphaCfQ8kDHTZRS6NK4Ldo6gNTWuEIBO
 Bjog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GugWRv2mp2kqxxQHeYPrN4+wCLxemZ6z2JYOXdC6Tos=;
 b=DPrL7ctUlZf93qsaMhY7WvSFEBA9ejecrrpfFt4tsnm+gkpbSpYslbfzd5JZPcUzUO
 M08Hy2NkEjxFx0DBRGj7aN+iwcXRglwG5L6wDlrJxmw+xZAgW7BwoWFc4PX0igYcUcom
 n2PDQLeY1qS0A3HzZyHHcVokkg7vJwuzcMv86XLTGD89fdpV/S0AE7pQjoMv1lO1eUUS
 ylWrOb37g1x4VZ2MLt2Gpr54aarEDL9FHpcRXRva3Jf1eU4C3oqqskgl9TSfZkx+DfFP
 mqVOwNKgKrRpPHvGpfrHDoooysQ8d0Eb0ReF3vSIW5xMlffnh2/5CO96UtJyFqnx2rDB
 d76A==
X-Gm-Message-State: AOAM532pWjSjShqxc9KLjMrqxyyJwj0tJWz6TRv329yGYfRQx17BEd2h
 hVAF94fNxgOkBtJBnT17tHJMTBMeIDa/O/noJabifVG0Bjs=
X-Google-Smtp-Source: ABdhPJx5IUQvqJ+5o8ePd8mdADgog2LFMydWseX/YpRx1fx2KKiVbrd8vJ0J/lOlsGMQb84Iv4ZsKJmK9jCVOWspRtY=
X-Received: by 2002:a05:6638:14d5:: with SMTP id
 l21mr9448796jak.54.1611182056628; 
 Wed, 20 Jan 2021 14:34:16 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 20 Jan 2021 15:34:05 -0700
Message-ID: <CAHHQuSg9d6U4PfZWRgMSYB8=1f1ijDR0MqFrESiz36DMFnn6NA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Overflow / Underflow Questions
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
From: Spam Blocker via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Spam Blocker <kspambot@gmail.com>
Content-Type: multipart/mixed; boundary="===============2939272617613732976=="
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

--===============2939272617613732976==
Content-Type: multipart/alternative; boundary="0000000000002766db05b95c8ebc"

--0000000000002766db05b95c8ebc
Content-Type: text/plain; charset="UTF-8"

We have an application that requires about 640Mbps of transmit and 640Mbps
of receive samples bandwidth.   We have a high performance Dell laptop
hooked to a B205.

Questions:
1. Do the different versions of UHD support different throughput rates?
2. Are there maximum sample rates for the B205 that would restrict the
throughput reaching the numbers we need.
3. Is there a receive and transmit throughput test that I can use to see
what the maximum is for our platform?

Thanks
K-

--0000000000002766db05b95c8ebc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>We have an application that requires a=
bout 640Mbps of transmit and 640Mbps of receive samples bandwidth.=C2=A0=C2=
=A0 We have a high performance Dell laptop hooked to a B205.=C2=A0=C2=A0 <b=
r></div><div><br></div><div>Questions:</div><div>1. Do the different versio=
ns of UHD support different throughput rates?</div><div>2. Are there maximu=
m sample rates for the B205 that would restrict the throughput reaching the=
 numbers we need.</div><div>3. Is there a receive and transmit throughput t=
est that I can use to see what the maximum is for our platform?</div><div><=
br></div><div>Thanks</div><div>K-<br></div></div>

--0000000000002766db05b95c8ebc--


--===============2939272617613732976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2939272617613732976==--

