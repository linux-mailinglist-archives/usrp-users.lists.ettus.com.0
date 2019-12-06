Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E87511545B
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 16:36:05 +0100 (CET)
Received: from [::1] (port=55180 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idFeE-0003CQ-AE; Fri, 06 Dec 2019 10:36:02 -0500
Received: from mail-qt1-f172.google.com ([209.85.160.172]:45697)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <thibaud@rtone.fr>) id 1idFeB-000394-Fh
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 10:35:59 -0500
Received: by mail-qt1-f172.google.com with SMTP id p5so7459511qtq.12
 for <usrp-users@lists.ettus.com>; Fri, 06 Dec 2019 07:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rtone.fr; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=styjTYxZw1HXOTkvZWU4VkGgWvlW3KrMtTI/SeZl2AU=;
 b=OVFLnWZnAkEeejlqJqmlUjV+ixfZCV5RGkxmrIqvunBiuer5KxifpEMNHZWXWy7Ad6
 5Td5zfzCO1Y12tsnIR1aTVw6u5hZsOJXhBI4B49mF5THq4QJ7Z/AbTHGiTg6tIyYZWQL
 6++AE54jgWbuymg4e+oTcn4edfRqYogzcg6Uc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=styjTYxZw1HXOTkvZWU4VkGgWvlW3KrMtTI/SeZl2AU=;
 b=a9XFuu8HpwqSXL1NVyGtd7aCIJ2EEax+gUAd26QXGY8sUnfwhRdKBhVmN8dzLeKyyK
 WASb24e1p9M+wkIclKrZiE58oTeIVQgY99ZxtLmE6x0JzNzTEPln0l5o7hI+3Y+7m6Qf
 p+DSdMR5eIvh79RoQRhuBx2h4zZ3blNIjUzCkRiyeiO9+lPw9wwlFcgFjYzL6n69I88V
 94VzBZsboWRuaGb1N7Keinu8xSqSh1lmjv4RQgmHT760N4UDDMDNd6hnlVMOy4Sb/4LN
 TR3t28T9fMc9S06xxUJ0MbyJO5V2YEDwgTvoX8Ce1Dk2PBpM8er36V4AqUzMZo+DtcJy
 TApg==
X-Gm-Message-State: APjAAAWz2dT08mnWKrBJKvxD4OvfLeF1qz+qRg/Fv8Z099pgtHX1YkMW
 bfsSdzZGNPxJ1sdCT2+09cP0cVZFJuHHbxtIWbDRBL3PWVSt6Q==
X-Google-Smtp-Source: APXvYqwMaxrfoVbaHRtsBE6JkJZbZbpEcK99oYY+ZA2GnpL0VGvCtPEHaPEkLsHaBklZ1wjos7t65k6q2jIjCDpC/Q0=
X-Received: by 2002:ac8:3f33:: with SMTP id c48mr13268296qtk.108.1575646518632; 
 Fri, 06 Dec 2019 07:35:18 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 6 Dec 2019 16:34:52 +0100
Message-ID: <CAJ=oPRMkHeRWJCnYByVZaNmiQjj3x8jH59sLM7iVkz7StwwA9g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Noise vs Sample rate
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
From: Thibaud Vial via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thibaud Vial <thibaud@rtone.fr>
Content-Type: multipart/mixed; boundary="===============5865219921363480462=="
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

--===============5865219921363480462==
Content-Type: multipart/alternative; boundary="00000000000008fb8205990acba6"

--00000000000008fb8205990acba6
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm currently working on USRP sensitivity and noise.
Noise power depends on receiver bandwidth (
https://en.wikipedia.org/wiki/Johnson%E2%80%93Nyquist_noise#Noise_power_in_decibels).
But what if :
- I sample a signal at 4MHz with USRP + GNURadio (Thermal noise power =
-174 + 10*log(4MHz) )
- I add a decimation by 10 in GNURadio
What is the new thermal noise power ? The same, or -174 + 10*log(400kHz) ?
I've made some tests with USRP + GNURadio, and the noise seems to be lower
after decimation, but not of 20 dB (more of 10 dB).

Thanks for your help,

--00000000000008fb8205990acba6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;m currently workin=
g on USRP sensitivity and noise.</div><div>Noise power depends on receiver =
bandwidth (<a href=3D"https://en.wikipedia.org/wiki/Johnson%E2%80%93Nyquist=
_noise#Noise_power_in_decibels">https://en.wikipedia.org/wiki/Johnson%E2%80=
%93Nyquist_noise#Noise_power_in_decibels</a>). But what if :</div><div>- I =
sample a signal at 4MHz with USRP + GNURadio (Thermal noise power =3D -174 =
+ 10*log(4MHz) )</div><div>- I add a decimation by 10 in GNURadio</div><div=
>What is the new thermal noise power ? The same, or -174 + 10*log(400kHz) ?=
</div><div>I&#39;ve made some tests with USRP + GNURadio, and the noise see=
ms to be lower after decimation, but not of 20 dB (more of 10 dB).</div><di=
v><br></div><div>Thanks for your help,</div></div>

--00000000000008fb8205990acba6--


--===============5865219921363480462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5865219921363480462==--

