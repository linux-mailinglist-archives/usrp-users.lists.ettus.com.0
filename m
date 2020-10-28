Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7121B29D496
	for <lists+usrp-users@lfdr.de>; Wed, 28 Oct 2020 22:53:32 +0100 (CET)
Received: from [::1] (port=37832 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXtNp-00056A-1C; Wed, 28 Oct 2020 17:53:29 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:43092)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dwwkelly@gmail.com>) id 1kXtNl-0004sL-FK
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 17:53:25 -0400
Received: by mail-ot1-f45.google.com with SMTP id a6so527076otp.10
 for <usrp-users@lists.ettus.com>; Wed, 28 Oct 2020 14:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=TQRj1f+dERNYdfOeiSlHUNZI3Ni/OhDbgK0a0u6JTlQ=;
 b=bAKLA+gh7AhkgTE3eYpxmNxmzGiSSGyl3lCcG2dJnKUFNUbDGrhSIs9eU8W5D5XnuB
 997hOpqsj1EFVMbWj7DxNz6HC67Zh7bxK9m8RBD392bwrhlrBrBGj9KV4dhmF8C4qIeU
 y3w5KaxPgred8mLtOMGHmVCGkY42jfmE0+ILNR0Uprg4GT1mBdLGfXjNmnzwCkA9rdy8
 sViw+Nx92fUuWjFBTiVWY4NVJDS5X7CTw0kH3DJIye8P28Rl9CsVcdu/2TjgzS87ty1m
 51eNXiVuTHT2jAjlKDe1CBWH4yAhcZD6KY2O0TH44WN9E44gq5gnntFXowugL2P9I/EW
 ldng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=TQRj1f+dERNYdfOeiSlHUNZI3Ni/OhDbgK0a0u6JTlQ=;
 b=NKcQnSA+x09HYrb36qx1xkeliGzxJkp45xypNNyMGPRNXPHZNSDqa7hRwhBEh/rFRx
 FXfqRMqvbAIgxCBbvYLia3zenRL1YBqhab9+5ga26hcROmUr+gSiEkAGhnx4otY4ZIAh
 cwTkjZvaQkgFcRPIFES1BAbuWIy4nLtnKf/pUDTE396mw2b9APxLTCcfiNhMbXj5dbsv
 MGUYgrpkD2bYnG7wtAr6yXjYzNFhY87Vm2qMqzBbly3C791RTA7bpcT+LCTKEwmLMO73
 ngQTxXlRZAjVLy6c+w7YT1bPsoRsm2apUjxMytNASZub29gvN3uPDfsmRvEU0bi4qVR3
 yycg==
X-Gm-Message-State: AOAM5317eTbPKBXB+s0l26D36Xs4PggOQ0hBk217ZugobLuC0Hm9QAeQ
 QaLbcpzOkkYOi9TPBltn93KgArJGO0L0wGu4uTyFtprg
X-Google-Smtp-Source: ABdhPJx/D71ZGGGXonbJdWwRwshNsG+YNiomjxo0i1HrKV+wKVBit/Dpb+wxy7zdnamMMQHjVge4d+lS+P4i3SgoTOk=
X-Received: by 2002:a9d:289:: with SMTP id 9mr927400otl.359.1603921964507;
 Wed, 28 Oct 2020 14:52:44 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 28 Oct 2020 17:52:33 -0400
Message-ID: <CAANLyuaUMQ9MZuXLMp5zAiT380Oxx0UzGbJiyfwKY-+iV+Y7uQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Datatype dynamic range
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
From: Devin Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Devin Kelly <dwwkelly@gmail.com>
Content-Type: multipart/mixed; boundary="===============3449356812323175775=="
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

--===============3449356812323175775==
Content-Type: multipart/alternative; boundary="000000000000f125ec05b2c22ef9"

--000000000000f125ec05b2c22ef9
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm using rx_samples_to_file on a B205 mini to capture some data, when I
set Fs to 40e6 or 50e6 I noticed I get some overflows.  I get fewer
overflows when I set my type to short (as opposed to float).

Since the ADC on the B205 mini is 12 bits, a short is 16 bits and a float
is 32 bits I shouldn't be losing any dynamic range when I choose to store
my samples as shorts (compared to float).  Is this correct?

Are the float and double data types just offered for convenience?

Thanks,
Devin

--000000000000f125ec05b2c22ef9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m using rx_samp=
les_to_file on a B205 mini to capture some data, when I set Fs to 40e6 or 5=
0e6 I noticed I get some overflows.=C2=A0 I get fewer overflows when I set =
my type to short (as opposed to float).</div><div><br></div><div>Since the =
ADC on the B205 mini is 12 bits, a short is 16 bits and a float is 32 bits =
I shouldn&#39;t be losing any dynamic range when I choose to store my sampl=
es as shorts (compared to float).=C2=A0 Is this correct?</div><div><br></di=
v><div>Are the float and double data types just offered for convenience? <b=
r></div><div><br></div><div>Thanks,</div><div>Devin<br></div><div><br></div=
></div>

--000000000000f125ec05b2c22ef9--


--===============3449356812323175775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3449356812323175775==--

