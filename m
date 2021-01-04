Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 557EA2E8F07
	for <lists+usrp-users@lfdr.de>; Mon,  4 Jan 2021 01:18:23 +0100 (CET)
Received: from [::1] (port=32970 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwDZk-0002nv-1R; Sun, 03 Jan 2021 19:18:20 -0500
Received: from mout.gmx.net ([212.227.15.19]:50679)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kwDZg-0002k1-5C
 for USRP-users@lists.ettus.com; Sun, 03 Jan 2021 19:18:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1609719454;
 bh=zPl4g1uV00F17PLduhx4+SC8AXVW3BZHVE+wVeyB6jQ=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=Tsy2pvhEvJ4YvKAdbKrmDpZ3TmV80F43nZRQnET/iTbZ4io15uBCOI0nC3DAsEDMd
 L4CQSa2j3B+kMicyjf4vqXSDNZk6ilxXkut67WtTorF8BfqxhqOmg15JP7yBZlZp8/
 LgGplpGQ1K1y5GRzzb94xjZKQmi2XMDvmuc7a/l4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [107.173.69.236] ([107.173.69.236]) by web-mail.gmx.net
 (3c-app-gmx-bs66.server.lan [172.19.170.210]) (via HTTP); Mon, 4 Jan 2021
 01:17:34 +0100
MIME-Version: 1.0
Message-ID: <trinity-f3909e7e-1d49-4353-855a-5b25c802ab14-1609719454716@3c-app-gmx-bs66>
To: USRP-users@lists.ettus.com
Date: Mon, 4 Jan 2021 01:17:34 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:zGkRUojkDdIkL8Mj/nFYBsNlrPk9J94KFS5ANYE+oFa3eHXmf0rHO2tdlyESsvH07oYH4
 mI/9AFuE/Xg/n5O77+SWmzeDowSHFbo4Sl/9/NEr3MSD6RwJ6yXX8/0xOoUZK2nApI7wpyteUr1S
 ZB4iDMa7xtxpZB7Ho30Om1v/qT+Vj2qjiQvPzjUhPGost2lWqvtkeTVo5fatBPsxIfbQg9+AvCLp
 wWmSeYjPHW1i5Grki/UHM9IczD+Bdk782wVMm6U/VQ51jYsQhg1WdDnzowAKT+6AzlDvqSxpjobj
 7k=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9Yn6Or1YVqI=:aKAWWnBwCDY+JXANFPv5Ci
 wnL7pJ2JItKMfFW0SLujV9owiKC0rX7H1JCsMqKi5XxP2xBSVuVNQmXF6XVyxcJe2SI8+nSRJ
 RVMxixpICs6INMBjAe7iM4f2kAIB/LI2KttO9qxUt8OuTW8l7FnNaKND/l5HKmBIoG/CyfxlP
 WdcQweZvZc8bp8iHmBQWzLxACwj2E+sQ6DhheXBJHoI5XXrQ08XHEb8ihHePgo06mMjWdU81P
 Q7IH6EyRcwnXzBCIyaFlY+2rrhq7LpaAi5ZTBzBcn5QpgS1aACNQ+wuyKaxPiEiyUiYe4YNOU
 jjL57PbzzbYRiCbu30R2CTJe9Me7+BsSruTn9TcHiyfb3NMMd61XP4ZTj0uxAce1dCfQoSfr5
 vZ2dvCPYhaKFekqnEvOuiBMxNdjEj+PTzfxxOlzSsZkaLhbOQnV+SX6SP37slqDcDOYa+C/Ih
 +KtzQJTe2k1iQrei2I6iKaCo5dk67QE6ZDIC3PK2M3ujgK3u/QN+o0uSreF+1KB4R6pwAPEWQ
 qs0AxZhDiLU1MwJyPDgCkbUHAFB51hLrmOi0bcOoOYUTmBgevkE+uaVE8r1mX0u3ow4LhJTCN
 I9cNEch6iG8QY=
Subject: [USRP-users] X310/UBX as a monostatic transceiver (e.g. RFID
 reader)?
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi,

I would like to use an X310 with UBX in a monostatic antenna configuration (same frequency range). This is for example common in RFID readers.

My transmit power is 30dBm (ZHL-25W-272+ after the USRP), fed into a 6dBi antenna.

Now if I use a circulator, I find isolation of around 15dB (e.g. https://www.everythingrf.com/products/rf-microwave-circulators/mesa-microwave/769-185-mmccc700a). This means my RX input sees 15dBm. Stupidly, the UBX datasheet wants a maximum input signal of -15dBm. So it's 30dB too strong!

Alternatively, I could use a directional coupler. However, the directivity is typically around 20dB (e.g. https://www.everythingrf.com/products/directional-couplers/rf-lambda/45-89-rfdc8m3g10d) which brings me to +10dBm at the RX input. If I assume directivity is not an issue, the signal at RX is limited by the S11 of the antenna (typically 15dB). With 10dB of coupling: 30dBm-15dB-10dB=5dBm. Still too high and a incurs a 10dB noise figure penalty.

As another option, I could add 30dB attenuator after the circulator. But this results in an unacceptable 30dB noise figure penalty.

Do I understand anything wrong or is a monostatic TRX just not possible with USRP?

Lukas

PS1: I am well aware that this self-interference is a major challenge. However, in my case the trouble does not even come from the fact that I have self interference but that the RX frontend does not want a signal larger than -15dBm. This is different, for example in RFID readers.

PS2: I found a bunch of projects describing an RFID reader based on USRP. The issue of power levels was always conveniently ignored (likely low output powers were used or a bi-static configuration altogether).



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
