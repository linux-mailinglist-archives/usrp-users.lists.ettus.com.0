Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C155115ABC
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2019 03:33:51 +0100 (CET)
Received: from [::1] (port=44412 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idPuk-0003sl-UW; Fri, 06 Dec 2019 21:33:46 -0500
Received: from mout.gmx.net ([212.227.17.21]:60359)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1idPuh-0003pU-H9
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 21:33:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575685982;
 bh=JYcls15WKoIVL4sFT3ze9845tCr9V3+o52oXdre50aA=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=derKS/jU6kJkc0Mn9oRF3qG8UCs321/gwGKJA/ulp72Vchec1AZ/I9j4FUj9UYP+N
 y03/MBL0r2x8mSa/E+Zb3Wk8K0nkQg2/9U6Csr5AnNE683qEKVzU4gX4aRAMjoL1Rb
 L3QovF0TNCI1MId3JJ8E1flouNuMGjYzhsoDXhZ4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.101.50.206] ([87.101.50.206]) by web-mail.gmx.net
 (3c-app-gmx-bs31.server.lan [172.19.170.83]) (via HTTP); Sat, 7 Dec 2019
 03:33:02 +0100
MIME-Version: 1.0
Message-ID: <trinity-1bb7574a-e0e8-4b44-b04c-dfc7fe55e8f2-1575685982004@3c-app-gmx-bs31>
To: usrp-users@lists.ettus.com
Date: Sat, 7 Dec 2019 03:33:02 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:OTDRCvzh8MfATwE8wEysiAWe9Qf3eJJbHOqfxtMMb/xsWX/ZNRXFpudvbnZnv7oHwaYDZ
 QPdZ0ayuZdCVAAHOThMCr2VEjXphucf8BrDrhaIHl+6T8PKMrMqTJ59xxCXASHjUJRmnG5t3RAE3
 7zuHSl01QBvQHA8MyuuwmSMuiH7040rmS6IoASF4waId9KpwqTbfnRyE/KA8C2zm0M5oVGh9fLk+
 N4DpHOt2pVYib55vnLf7og4wo71Gp/HDLLFUnQfJd6FaIK1/cPhqQE9wHco2l65UHP5Wx55jQFjC
 88=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mBjSezJfJBY=:0t0Dm254zX3xnQPPQRAH2f
 hsidkHrTB4B+fBfkt55mOI5013bsceUVpvn04WNvwz6rLkD+fkkKQe49RSu1wBUppcR+7/93R
 ofMee9q3Vyvf5vRHsBsJoMJLHEINmpshgwfHkhqXIzOBIrMONjJUpufn1uosjYJgfbQDWEaQ2
 IWLT9SFsRhxNJKVEnQWMkGKUgNj5XGG0jAFfwKY0yfSy3UTvmCvj8zD28t/FwVwYVWNNAapSj
 QHq1TNvlj9WWjHMkI/lEYjcD6kamHYp7sRq7iusUgdh0uN+gPTt8taKRHuesR79SJP5B8aHSZ
 w/OlhtsC5mY9QB12kV0jW0CjLsaD3OiTVF/GcB81q9nL9Wy17fiwChYWR5SAKqRKXd0ZdphIl
 96zw1K/Zo6f04DJOn1KPY7lMFdLUzoKmD2/VRpIAF7ZPW26LMO1RU09M5l5nSYZYFLh3FaPp4
 sLbpCU2XVpfcJ8G9HIaTVl06ry5p4hA/Y8nrIO1hocBOgJ2Ih7LrtIRl/p7I6Ksrby/X7l7Hg
 7Jv342u19PtLKjgPTYYRH6u44uf4Os2N1S/BIPQ1N/QsfJR0rPhBkonhJuogQVne44cJ5xMVu
 rXXtntlafS70739TagjsMHNDLJTJ3Xu31v2cWHiraMJea+2MjHEiayaQ+U2HOf9YzqKRIheFq
 sx0nVODqBGTqdse/1NzrGuFr5aFAamr01Z5c0oyVZ0Ppeqw==
Subject: [USRP-users] Phase relation between RX/TX LO
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

I am using the USRP X310+UBX160 with gnuradio to perform very precicse phase measurements: The TX transmits a CW which is reflected by an object and received by the RX.

The received phase provides an accurate estimate of the distance to the reflected object, once the fixed phase relation (between TX/RX-LO, filters, cables etc.) has been subtracted out.

This works nicely so far.

However, I need my system to work across power cycles, and more importantly, across different frequencies: The goal is to perform fast frequency hopping and obtain the phase for each frequency.

Unfortunately it seems that the phase relationship between TX/RX is lost when I tune the USRP to a different center frequency and back. For example, I have the center frequency set to 900 MHz and the phase I measure (by computing the angle of the I/Q samples) stays constant. But when I set the center frequency to 950 MHz and then back to 900 MHz, the phase has a random value again.

Is there any way to avoid this?
Or is there any way to lock the LO phase to a particular phase when tuning back to the original frequency?

Thanks,
Luke


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
