Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 356982A8ADE
	for <lists+usrp-users@lfdr.de>; Fri,  6 Nov 2020 00:43:34 +0100 (CET)
Received: from [::1] (port=47728 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kaouf-0004k8-J2; Thu, 05 Nov 2020 18:43:29 -0500
Received: from mout.gmx.net ([212.227.17.21]:47955)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kaoub-0004eg-4d
 for usrp-users@lists.ettus.com; Thu, 05 Nov 2020 18:43:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1604619763;
 bh=KOs+LO4oX8+2T8eSU0G7YrCNwx+pZFn+jy3zHrxCWOw=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=M7TXcGAGkYvd1qOGpnvPph9mUCUUvdut1GANRhXwxJqceYtyoIxtrD0QuxIIloZDy
 TdQUOtpAhSA7R00R9CqKT4dO5EzwgQhDBos+s0vxEpF8v5cHIQNk7A1r6XW0i9/31s
 +TdarJyRLaPVAe5hPxJuxR9dBg0/BAI7Z/voWnIo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs37.server.lan [172.19.170.89]) (via HTTP); Fri, 6 Nov 2020
 00:42:43 +0100
MIME-Version: 1.0
Message-ID: <trinity-d956d742-6c11-4844-ae74-ae4878387766-1604619763606@3c-app-gmx-bs37>
To: usrp-users@lists.ettus.com
Date: Fri, 6 Nov 2020 00:42:43 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:llw8r17G8pzSLk+Y14KyAs7B7BvUPINoVTy73k5g3aP3jQ3c7U+gOWxjoEEYTkInF+vuZ
 srF0jH1DzJEO5Qulk4D1UcWOUKgFYmgmg/QCiGCHn1TDUQ5sh1vmFgCoZfQkBgsXW3PTN+kjRezV
 s9192Cl86hgnUWVZr68S4mxRYbQJ0Jq4L8cjFWWFtgxdpRZDZG5U7hZB2LHt0azRuZckaLT+KGFL
 iZ5zKeNT4x13v7omSgigoJoDeCs0AeqgrYt5MEbDMm5B85M6Rne5tITzEdo3A96PfkBKRccu3eeL
 LQ=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nybH/uIEuMM=:rqQ+c6frW4ox2jeXlJEjHL
 65px8p1gDtVOIcf+S7iz/uhZ/YraD+nkHPa1OGMCw5qOGDbnGdGr6ITsN1Nb+wUBsZfs5qkg6
 1XflciWwiTmXaj57C78M8cmEVmkTOv0PEdkC7Zd/DMEeqbP+KnOj2ZdIiSJxmy4Tete8bJv+m
 j+ITVXkcF8slXT7SKhDwn920uP+giODuTiy0lwUhLU94lh2LfrW5/pvbfUYUKvcDL+MjYJRBn
 c9gmU6RsNW3zVJwguDjeNhYnhhZVUkKKyynjWPx922bgv6mptWjlc2Y+AS0Kf/wfyFPp9fjxC
 3pbRgg/Z71rS1xANjgJdejYmEKED05e8hQ2bTAqMPX3x8uPFgvn9tX9o5lgHBhN8VFoemJmkM
 13Chxc5avYvRAtuyF76UPW/2wcvf0ojEVBE0ZPTBmLXMW12i24Gqc/M1yXqmn90NFXZvSFRhM
 XwnkJDaDl7BXqyFnaEOiyRI0AxWhzdQYs7afPFQksqpzOeU4jhZlL6t3d4JFjvH7rr4HNfw0G
 iRx+0Ld8GQB7dijv09MS1enIXknZS1t54kOaT/KIYG9cmvW3ehOMA6KnFhSpMYtzylivTy/l/
 Kr7jtP3KEKmpc=
Subject: [USRP-users] How exactly is "Receiver Gain" defined?
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

I m studying:

https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf

How exactly is "Gain" in the "RX Figures" defined? Can it be related to the digital samples (e.g. in dBFS or RMS)?

If, for example, I apply a exactly Pin=-20dBm, f=916MHz CW (calibrated via VNA) at the SMA input, I get -14.05dBFS (=rms value of IQ samples in 20*log10) when I calculate the RMS values of the samples.

(Note: set_rx_gain(0) and I use 516MHz as center frequency to avoid DC correction).


Also, the statement on the gain values is not quite clear: "Gain range for both RX and TX is 0-31.5 (the maximum RX gain seen in the tests of 37.5dB is due to the additional 6dB provided by the ADC in the USRP motherboard on top of the UBX's maximum gain".

How does this relate to the value which is set with set_rx_gain()?
Does that mean that a "Gain" value of 10 dB on the plot corresponds to set_rx_gain(4) ?

What confuses me is that I *can* call set_rx_gain() with values of 0...37.5, and the output scales accordingly (i.e., the lowest value seems to be 0 and the highest 37.5; not 31.5).


Would be great if someone could confirm.

Thanks,
Luke



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
