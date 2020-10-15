Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0676828F92F
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 21:08:44 +0200 (CEST)
Received: from [::1] (port=42382 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT8cC-0002r9-EG; Thu, 15 Oct 2020 15:08:40 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:40501)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kT8c7-0002kp-TV
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 15:08:35 -0400
Received: by mail-oi1-f180.google.com with SMTP id m128so4264679oig.7
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 12:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=9AR2U6PVASCRnLIactSGAWFG2nQ5SCaVDEDkDOg/BWU=;
 b=Ara/TO9qNV+3cYaYgQ8l3zexiTz0HlDYZw3iHL8zrrM1cmtXpJOom6IDWZY3zt34wI
 ZC8ZytghwsJkfy5enG5b0n0/QuchFvgRJzGiXD7dxpoGUnGI8I/spZ+p/fRGjlzmCTm6
 dd3ZqdyecZGbRCXTfgu+cj5TTQcAKPJw7VdXnHEErgwEiNiEqVJsYRCfz4ZSyhKf3wMI
 avPFAVA3+D/Be+fJvuMQBicnLnK8BZdF29eb/sQ+vgkwNavA1N6pRgprwpx/9pZ5bDx1
 88KR37654WGdlP/8gUd9jkUhSws58rVAKZX84OwkYKvr4MQPuSLB1Pva2Z7uzUA67L/1
 x//Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9AR2U6PVASCRnLIactSGAWFG2nQ5SCaVDEDkDOg/BWU=;
 b=HrAFB6ZdhOTCTPPwCfTCQ0jxzq2CyhoXp4HekZL9s9ZCf9DPDT/7FVBaXV7XrMFkIh
 43bYgn7ItX22q/2qHWumtyKzFgT9EQ/cedkuDcrtf+WFG/KlNBV2joHLFG8cn4cR4gbF
 tr0dQKeqFgExa76IrxXReth8rmtC4zH+H9j2PEHUXiFigPwMDSZPlsLDUj4IbieJ0frZ
 aWTn5VRy2u3i+sXH8VE4gJMd1aWLsOLsbQp4fSOuIk0FXwYTWKj/5K0s/+BvORAxrZ9u
 ugE8ydtdus1rEqN5BQlUzeNp9iIU/C/kDZB4w6/2yrDaI1nm/lIiroJDcqKHCVXEv8JG
 Qchw==
X-Gm-Message-State: AOAM530I0beKdXWXrvHV8qYUP+p8EvY1kfHpC8AN8FzvmpgrCOm9e8T1
 aOdR7MJUmPAhHU1K4TEPuJW3TYFOEEGUNkeBcz+wAX1dPGQmKw==
X-Google-Smtp-Source: ABdhPJxVrvMNsIrR/tMgTX1q9dj6z5wMW+v30O0L+Qb/iA5PkcIJKZBiS5DmOThP76uwyRatBvogGyOHMhVpAnYGR/E=
X-Received: by 2002:aca:5515:: with SMTP id j21mr193328oib.150.1602788874748; 
 Thu, 15 Oct 2020 12:07:54 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 15 Oct 2020 15:07:44 -0400
Message-ID: <CAB__hTTQ3aXadTX5KELksuongMR4QJchXS9UdxSs9cNyBBRdTg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Failure: ERROR:add_1 must be in range [-1,DEPTH-1]
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6954435025678098411=="
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

--===============6954435025678098411==
Content-Type: multipart/alternative; boundary="00000000000087c73f05b1ba5d79"

--00000000000087c73f05b1ba5d79
Content-Type: text/plain; charset="UTF-8"

Hi,
I am getting this error (from the subject line) in a custom block I created
that is effectively just the combination of a window block and a xilinx fft
ip core. I am using UHD-4.0 (and Vivado 2019.1).

After searching the user's list, I found some old posts from Jonathan
Pendlum that indicated that this was a known issue related to the Xilinx
FFT IP core.  The solution in the previous posts was to copy a "wave.do"
file from the Ettus in-tree FFT tb folder.  I didn't find such a file in
UHD-4.0 and so I'm wondering if there is a solution that works for UHD-4.0.
Rob

--00000000000087c73f05b1ba5d79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I am getting this error (from the subject line=
) in a custom block I created that is effectively just the combination of a=
 window block and a xilinx fft ip core. I am using UHD-4.0 (and Vivado 2019=
.1).=C2=A0 </div><div><br></div><div>After searching the user&#39;s list, I=
 found some old posts from Jonathan Pendlum that indicated that this was a =
known issue related to the Xilinx FFT IP core.=C2=A0 The solution in the pr=
evious posts was to copy a &quot;wave.do&quot; file from the Ettus in-tree =
FFT tb folder.=C2=A0 I didn&#39;t find such a file in UHD-4.0 and so I&#39;=
m wondering if there is a solution that works for UHD-4.0.</div><div>Rob</d=
iv></div>

--00000000000087c73f05b1ba5d79--


--===============6954435025678098411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6954435025678098411==--

