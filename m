Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FB82355A1
	for <lists+usrp-users@lfdr.de>; Sun,  2 Aug 2020 08:04:03 +0200 (CEST)
Received: from [::1] (port=32848 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k276C-0004fW-GK; Sun, 02 Aug 2020 02:03:56 -0400
Received: from ns13-777.999servers.com ([103.14.122.123]:58140)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <kpras@trilcomm.com>) id 1k2767-0004bG-IT
 for usrp-users@lists.ettus.com; Sun, 02 Aug 2020 02:03:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=trilcomm.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2KzQd3GFBa37ei61IqRDuHSA+v7/9yk9sDJy3+KcyTY=; b=P12VdQYezsBnz4wmyCwB0pOUCr
 ZAAXBwroFtjtq6NYn0VYAWPqLaKxbEP+f4dUh600Rzx4vYE6GJCLeI8JvU1GirMnmMKEwQ73NLmaA
 WjZYQEyIKOKWF5O02pUBi7ZijUAk6zdXQD2z2hGLNOWbE89H3Vc8TgTjSepkn1Rsw9bTlrCSq4XgK
 l3p1CHRVEuKpfSpXsE7UiNix1U+3JU/nJXxRQdRil4H9h6ODHhszs3wH0OMT9qU2W+AEiRD57r5Kr
 x9g20jzZ26ZAjTto6k0jj3n0x6eWqwYZCp+bts0tgH13ckH0AWFvzZmETaVSgiTFYMsDkl8JGMNuD
 OiTJHnWw==;
Received: from [183.83.141.206] (port=46116 helo=AetherGT)
 by ns13-777.999servers.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <kpras@trilcomm.com>)
 id 1k275O-0017eL-Cq; Sun, 02 Aug 2020 11:33:06 +0530
To: =?iso-8859-1?Q?'Marcus_M=FCller'?= <marcus.mueller@ettus.com>,
 <usrp-users@lists.ettus.com>
Cc: "'Rao Yenamandra'" <yrao@trilcomm.com>
References: <001b01d65f79$eae66ea0$c0b34be0$@com> <5F171581.7080201@gmail.com>
 <003b01d65f7b$852d6850$8f8838f0$@com> <5F17172A.9040600@gmail.com>
 <004301d65f7c$7138a750$53a9f5f0$@com> <5F1719EB.6000400@gmail.com>
 <cf7f523f-4017-1467-4782-f06b9f0bc786@ettus.com> 
In-Reply-To: 
Date: Sun, 2 Aug 2020 11:33:05 +0530
Message-ID: <000001d66892$9775c500$c6614f00$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdZfhaP0JHWKw2IvQ4aszYr2JszFUQAwoWTAAVy2WbAAM7DA0ACCK1mw
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - ns13-777.999servers.com
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - trilcomm.com
X-Get-Message-Sender-Via: ns13-777.999servers.com: authenticated_id:
 kpras@trilcomm.com
X-Authenticated-Sender: ns13-777.999servers.com: kpras@trilcomm.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [USRP-users] [USRP B210] Very High Noise power at receiver
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
From: Prasad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Prasad <kpras@trilcomm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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


Soft reminder!.

Thanks!

-----Original Message-----
From: Prasad [mailto:kpras@trilcomm.com] =

Sent: Wednesday, July 29, 2020 8:48 PM
To: 'Prasad'; 'Marcus M=FCller'; 'usrp-users@lists.ettus.com'
Subject: RE: [USRP-users] 1 Ts delay in USRP B210

Hi Muller/All, =


Just a quick question.
During our 5G-NR integration with USRP B210, we observe very high noise
power at receiver.
Is it expected behavior ?
PBCH rsrp: -13.775554 dBm, SNR: -12.942591 dB, NOISE_POWER: -0.832963 dBm,
rssi: 1.643662dBm.

Applied gain in USRP:
Tx Gain: 45
Rx Gain: 45
Transmit power:- 0dBm.

Regards,
Prasad.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
