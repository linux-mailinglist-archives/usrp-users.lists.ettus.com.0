Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9D914FC73
	for <lists+usrp-users@lfdr.de>; Sun,  2 Feb 2020 10:41:26 +0100 (CET)
Received: from [::1] (port=56584 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iyBkn-00012I-5C; Sun, 02 Feb 2020 04:41:21 -0500
Received: from mail-io1-f53.google.com ([209.85.166.53]:41687)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <yend19@gmail.com>) id 1iyBkk-0000yJ-18
 for usrp-users@lists.ettus.com; Sun, 02 Feb 2020 04:41:18 -0500
Received: by mail-io1-f53.google.com with SMTP id m25so13334563ioo.8
 for <usrp-users@lists.ettus.com>; Sun, 02 Feb 2020 01:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=NrIkSBLUOpwL9lsYx+8Vk54iA02oUFY76QLblP85osA=;
 b=sTHeHRrmKSOIw6/83l5Zi5upZqzK939vbirm9j1D1otzUiIFQU7M0fxr9834Cp8q1o
 Mx86Je1O1bTJBRP5Rfjp+4NFY+C4sW/Ot8IVsb5Ep/6PxmMPDJlk136RZGmtlq4K63Og
 sAN1R1QhD0+zhS0luQ+cfSE+s6RuaIwL2Rw0Fc333q2a/cvrVi6BoVrM6nUE4A7Ele7n
 kAdTUcgWtPiTSWZsJtM+bc2X4LsC8piyOKA2Vrb44eKh3O9+NAgacULEVz0eDPWj0qTh
 FvmvJmV3QwEHwtlNQilgE2a9PSNcVcLr4W7dP4iwxIIffsc7wLyj1JXaAK8IU3rIU+FF
 EYeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NrIkSBLUOpwL9lsYx+8Vk54iA02oUFY76QLblP85osA=;
 b=nWWa8vifOCOtqoAldZX0HRM9MZf8hxamxnT01A5N4l/+CYewT1RAhBXi85Qw8ZEG7N
 3fWunay9aBo1HgrP/HaYjMVKHUqwXeu8yXhjjkJ86qcNxney5ZDT5DolJxBB6c1sDwmm
 wIpK0bovZllVliV4AokCy5hMu6ZshUs2RFPX7IxV78/wyeKL6SlAvrtdUq0qsMZdZu9b
 2LBWyhJd+KHVy882NgKWC3kxNYpioZNlN6Ri0yUv0omI/AU+lmUyuAPC9ncyz2GyBDA/
 bBrHQBPNstm0F1IZqWxfk1+/Tgh/Xy+TI1q9ogXOQZy2qalqZW+8alCvOOTPBcFbmVZ8
 P8Xw==
X-Gm-Message-State: APjAAAUou9mHhEqk7Ppiv3xLMz9SOZHzb4CuvDvhsAw1Uk6okju72H1R
 EQRWvM7/zQSKLJacGAiR9c+hKp1oBUdcfm+2UBOFLQ==
X-Google-Smtp-Source: APXvYqwHvhsP0ky48p7ZDcPmZT/aFIg4lxxuDvWGA8mLoJKle88fmdLGPue6pap5udO+ffWPCmqYWVTL+VSFCTP8V7s=
X-Received: by 2002:a6b:b4c4:: with SMTP id d187mr15497618iof.82.1580636437264; 
 Sun, 02 Feb 2020 01:40:37 -0800 (PST)
MIME-Version: 1.0
Date: Sun, 2 Feb 2020 11:40:24 +0200
Message-ID: <CANgrtSVJ2_DKHYU7SU0P2dZaRh2aH9-Ggpq5Uip0Mp9dyYWbig@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP filter delay
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
From: "YENDstudio . via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "YENDstudio ." <yend19@gmail.com>
Content-Type: multipart/mixed; boundary="===============5134266528436295686=="
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

--===============5134266528436295686==
Content-Type: multipart/alternative; boundary="0000000000005cbdbc059d9499ad"

--0000000000005cbdbc059d9499ad
Content-Type: text/plain; charset="UTF-8"

Hi,

I want to know the actual timestamp of TX and RX signals at the RF antenna.
For this I have add/subtract the group delay introduced by digital filters
in the TX and the RX paths from the UHD timestamp. Through loopback test, I
am able to calculate the aggregate delay, but cannot know the TX delay and
the RX delay separately. The UHD driver has APIs to get the list of filters
used in the signal paths. But my calculated values do not match with the
loopback delay I measured. Could someone help me with this? I am using
USRPB200 set with 30.72 MHz master clock rate and 1.92 MHz sampling rate.

Regards!

--0000000000005cbdbc059d9499ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I want t=
o know the actual timestamp of TX and RX signals at the RF antenna. For thi=
s I have add/subtract the group delay introduced by digital filters in the =
TX and the RX paths from the UHD timestamp. Through loopback test, I am abl=
e to calculate the aggregate delay, but cannot know the TX delay and the RX=
 delay separately. The UHD driver has APIs to get the list of filters used =
in the signal paths. But my calculated values do not match with the loopbac=
k delay I measured. Could someone help me with this? I am using USRPB200 se=
t with 30.72 MHz master clock rate and 1.92 MHz sampling rate.</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Regards!</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto"><br></div></div>

--0000000000005cbdbc059d9499ad--


--===============5134266528436295686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5134266528436295686==--

