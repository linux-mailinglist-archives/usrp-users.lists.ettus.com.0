Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B95271DD549
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 19:55:11 +0200 (CEST)
Received: from [::1] (port=47764 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbpPS-0000dE-Ip; Thu, 21 May 2020 13:55:10 -0400
Received: from mail-il1-f171.google.com ([209.85.166.171]:41017)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carlosruiznaranjo@gmail.com>)
 id 1jbpPO-0000W1-QP
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 13:55:06 -0400
Received: by mail-il1-f171.google.com with SMTP id b71so7957399ilg.8
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 10:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=pLr1kBxPaR5gAtOIhmXUwMfYpNJAB3ObDgSMhMXkf9w=;
 b=gImqVBa3ks1wJusUMxPoX4wIQcywSA6sDyrXEg3CMl8vv2yV1oNty2afpdzsHMz9L1
 VNWSJmydfoITJ9l1FxyrqvbdvSwK5kGB8dWssKTnyVmBuaNMPgZoaqa8g8gUqPbI8U+s
 AqYY2P6yMRW4so2a9afjB+nHtxPTjboajGG1NIAoX9ZlRIwGU1mG5ZmWJTxBJSQ25Mwz
 +Z6jQ1G3m5k6CLa1KveUD1LUpLPmVkSA4jracL8DmH7tdd1goLvHiC73H94YXX3pZmg+
 2JxHC+kUQtY67gj+FVIUchrY/zvj7BG2zqWq/M8o3/9fc2FzalAE+hHMhWH5ZyOIAHSV
 5WuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=pLr1kBxPaR5gAtOIhmXUwMfYpNJAB3ObDgSMhMXkf9w=;
 b=aEh0x7W/ZbGFh2Aa69gnuR8bVdT6bQlg6MsDglsBZ+taTFMbwwqqj7njT2xUbDQEFW
 GdRpsNeSXFqx6cnk8JyphDEHVZCSlpMygZnAYIuTyTj8fgtu0duhlSOenVg4Gi7tPGhT
 i70zZT5k2YLsuzL+pZQopXr8W6h+/LwBsMzIMJXRewNA/GqyT8tsZ/XBgrREjHdToJrc
 ULvVJFY7cYuRzxNCLXwzWOcysgzIVk7+XXznolJnLqDsZJ1TXTmPGoBmdzTpusKFCXJG
 2KIfhsUNKHBXpZFw7MAG5QQXS10kq//zVZkZPBuoiips7yNuGnjJ7xjS8IYbn330IuoH
 jZHQ==
X-Gm-Message-State: AOAM532PJym++J1LHWo2a6TqT4gUUKPFo6ipfvmg7iZGez/UJO2I0TD+
 ESq0wQPvLlSqnKUll0R7pkSiUL3Qfni9mR2fDiXEUgeOf4c=
X-Google-Smtp-Source: ABdhPJz0ImiJKVjVpockOVS9fJOySepZIPmt2GQn9jGtvHTvPNfmW7olNSSobv93Kxmrs5ek5e4IzybMYaA3FzTLm7U=
X-Received: by 2002:a92:1e06:: with SMTP id e6mr9572105ile.303.1590083665830; 
 Thu, 21 May 2020 10:54:25 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 21 May 2020 19:54:14 +0200
Message-ID: <CAP2eGPhuOxNCAMULg=PFJBoGTP+2zAtd0YSMdGP-zH6Jse_D5w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Multiple DMA_FIFO blocks
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Carlos Alberto Ruiz Naranjo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Content-Type: multipart/mixed; boundary="===============0477657931312961746=="
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

--===============0477657931312961746==
Content-Type: multipart/alternative; boundary="00000000000010a9de05a62c3486"

--00000000000010a9de05a62c3486
Content-Type: text/plain; charset="UTF-8"

Hello,

Is it possible to instance multiple DMA_FIFO blocks? I suppose I have to do
it manually in the x300_core.v. Is there any limitation?

Could I increase the size of the AXI_FIFO_LOOPBACK block and replace it by
DMA_FIFO in a configuration? Host -> DMA_FIFO -> DUC -> Radio

Thank you.

--00000000000010a9de05a62c3486
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div><span class=3D"gmail-=
tlid-translation gmail-translation" lang=3D"en"><span title=3D"">Is it poss=
ible to instance multiple DMA_FIFO blocks?</span> <span title=3D"">I suppos=
e I have to do it manually in the x300_core.v.</span> <span title=3D"" clas=
s=3D"gmail-">Is there any limitation?</span></span></div><div><span class=
=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" =
class=3D"gmail-"><br></span></span></div><div><span class=3D"gmail-tlid-tra=
nslation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><=
span class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span t=
itle=3D"" class=3D"gmail-">Could I increase the size of the AXI_FIFO_LOOPBA=
CK block and replace it by DMA_FIFO in a configuration? Host -&gt; DMA_FIFO=
 -&gt; DUC -&gt; Radio</span></span></span></span></div><div><span class=3D=
"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" cla=
ss=3D"gmail-"><span class=3D"gmail-tlid-translation gmail-translation" lang=
=3D"en"><span title=3D"" class=3D"gmail-"><br></span></span></span></span><=
/div><div><span class=3D"gmail-tlid-translation gmail-translation" lang=3D"=
en"><span title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-translation=
 gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-">Thank you=
.<br></span></span></span></span></div></div>

--00000000000010a9de05a62c3486--


--===============0477657931312961746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0477657931312961746==--

