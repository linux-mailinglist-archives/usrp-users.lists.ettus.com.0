Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 470962AE4A2
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 01:07:11 +0100 (CET)
Received: from [::1] (port=43034 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcdfI-0005xl-Do; Tue, 10 Nov 2020 19:07:08 -0500
Received: from mout.gmx.net ([212.227.17.22]:42411)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kcdfE-0005pL-1g
 for usrp-users@lists.ettus.com; Tue, 10 Nov 2020 19:07:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1605053182;
 bh=EPuot9oloqXQM/505Dw8rGf1u008qP8eLbc+PQSUk7I=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=DgYi9cF7iDMVmHAEORRrqy1BAoxmAwg3RnfmP/Xexew3iJoMew5ZyL45mAEo1Uat3
 K+FBXk+WKv5BVA96KSZ9FWYItslOlxKZ6x1X+I6grlq0J++O2WOfzTEKQEs5FbRSTS
 sNaRtCf0cT1g2QAVwPBOhZSCe1q30ovTvZcRf7Ck=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs25.server.lan [172.19.170.77]) (via HTTP); Wed, 11 Nov 2020
 01:06:22 +0100
MIME-Version: 1.0
Message-ID: <trinity-33c8f7bb-57cb-4bec-88b6-bf569d11f29a-1605053182553@3c-app-gmx-bs25>
To: usrp-users@lists.ettus.com
Date: Wed, 11 Nov 2020 01:06:22 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <mailman.63.1605027605.18432.usrp-users_lists.ettus.com@lists.ettus.com>
References: <mailman.63.1605027605.18432.usrp-users_lists.ettus.com@lists.ettus.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:vbCWgTdQDsJ5FqPN3L1oBZ4Tvli+B6j4lxEr+NQAlYZGHB57noj2BN2B3gGeNF4KaLkkV
 NUwoBEUc+NzTqLsUCBRghK5O5gOrgXfxTZxxN/RGZDBKfZbFCrmQsBSTpaG+bA12C4iMZuKby225
 YMGdWk+alUPsmyBrVkOpBYjE96bDlMtVAK/1WCJM+YKX9lX6+05HROyey2wgiMN9CinVoH8dmGtb
 DoYee/u4NMVcsCy4JRQEDS2UHMNLLmhH9uxifL3PbkF28fr4/bztJtLbrcnlVkLm0KAHB/2PwpS3
 /A=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EXXb93kpJZk=:ur5wF5Z3U5rxeu4hGyPb4E
 NJQ61NBZbX8Wh6iCzlt5Yay7sFNQhz6txBTrJrx2cXVlfT6m+mNVWJU1hWXeK175yTkuACQSO
 VGqp6BQCaphbRB8+Jj9d/jac29tqmsHV0zQQkH0ZzSfC/51Rh9mhNYK177vV3da50bGBgd7Di
 enXZSqbw7EAv60Fz3uMty/k5+8DFuqJ/y7/qanz0Br85VM47B2Whn9zGPCM7fGpxTslHGkBg/
 61Numj7NMPYjsH8BSyzSPD+ZZMe0kORNjRerKW40wyNOr4q0ymaSoiOzWNexdUskBKaJdxgmQ
 vCOPimNdUmgzOeVqFvMz28u6XrZVlgVq2+SPnEQLjajfDTodUWLoW5C6YWBcCrSmfH5q2txzN
 sTuWm3tu/1GGwNwSY7akyQBjm6x40mgy3IC4SnwyYiKTPd05UCigHmuAbzLCSNLw91NqOkjIY
 qNhChisRaAyeONG637PFeoFM8pPFIbhHmOhdThv2vOSptw7RHpPDOHVaYVkJJUnRENh5UxfQP
 YmnQdNPX/gI5VxADcLvPanCdUpIp9wIsqZSCM+GhUToz5lA9MFB8T7gRafLYVWjaYnvQrP3hn
 U+yt+TiIF/3cs=
Subject: Re: [USRP-users] How exactly is "Receiver Gain" defined?
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

> > From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> > On 11/05/2020 06:42 PM, Lukas Haase via USRP-users wrote:
> > > Hi,
> > >
> > > I m studying:
> > >
> > > https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf
> > > [...]
> > > Would be great if someone could confirm.
> > > [...]
> >
> > The only way you can relate the dB values in your FFT display to
> > power-as-seen-at-the-RF-connector is using an external calibration source,
> >    and you'll have to do this exercise over your entire expected
> > operating-parameter space.  RF analog components will NOT provide exacty
> >    the same gain/loss levels across their entire operating range.
>
> Yes, I am aware of that but my question related specifically to https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf because I want to sanity-check my measurements (and I want to know how much off I am compared to the figures).

The reason why I am asking about this is because I would like to cross-check my measurements.

My original question was about RX gain but it actually also relates to TX gain.

With an X310 and UBX-160, TX Gain=0 and sending out a full-scale sinusoid at 915MHz, I measure approx. -2.5dBm.

This is not consistent at all with the file above (assuming I interpret how "gain" is defined correctly, hence my original question).

Would anyone with an UBX-160 be so kind to confirm/disconfirm which power level I would expect to see?

(Preferably at 915MHz with TXgain=0 and full-scale sinusoid but I'm happy with any other configuration that I can x-check).

Thank you!
Lukas



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
