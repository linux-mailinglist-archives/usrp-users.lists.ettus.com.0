Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4FB300C20
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jan 2021 20:16:05 +0100 (CET)
Received: from [::1] (port=35328 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l31ua-0004dL-Sn; Fri, 22 Jan 2021 14:16:00 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:34495)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l31uW-0004Yt-4d
 for usrp-users@lists.ettus.com; Fri, 22 Jan 2021 14:15:56 -0500
Received: by mail-oi1-f178.google.com with SMTP id h192so7198279oib.1
 for <usrp-users@lists.ettus.com>; Fri, 22 Jan 2021 11:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=5OLmXzn3aaNgsho7XAzJIUtAyPcQHxrcBB0oysre7rM=;
 b=V495g0ZlkThHfQveHhd2/AMcngMVIuRP4+PHFAlwttJ2bLdQrnnzYsQFPD5UbWg27r
 MQqKLwz7FhTJdqwYps2zhplxsbEjcTHkzsCpkNSCBIuozSXGFafNR0Gq71isrssbByS0
 yf4fL/gmEUvlMeNkhDATwRwtkg1L+Ma+49+Pc3G/PGyuyHGd4IwkitTRSc+B3McT7tAX
 zGPdrdmG2olN7ysOfiawffotLNRJM4smfCi45Q/6OB6k0tNLk4URlXJ/iHC9mfjmj0MK
 LVf7TEhCvC7+kaJNxxtjA/L/2u0m4evN5lLL/cayZBDoRQBbUhjvq6nMmfC2KPSh/0bf
 g3jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=5OLmXzn3aaNgsho7XAzJIUtAyPcQHxrcBB0oysre7rM=;
 b=NVWRLAhXwlvUJYrs1F/xngt2xRzK+GUCnN7ETIWi/1pueN6Fd5xi7nH/h6oeZeVBkC
 q6ThRSoYh+0M4tQKiqWLKPHLzXiETfjFms+XUePdTh9oNU1TQK8Pv7my8tuUc6kHPyms
 PGmNqRUSmeDDcv82RbutM7LUjLEWn7oVAjAMHQ+ZDPgWwirSQ90kOxS1gvKKulm/CsMV
 9dLPwV+HkwtIQo3GqJv7lpATE0+Q0fHImGOZ8qXETB/DL38SOcCwn7aKx8wHn1Hi2pML
 P8JKEsh2c1HfC7SODTifjubqxcBHslcZebpOBlgaoYIMu8PIORV1CuoFWmtou2Ce4wfD
 Pt+w==
X-Gm-Message-State: AOAM530gLuYS0d7cN+cfdSJISQ5jYZGKaUXNJ4KwebfEuF+hGlX/pV6C
 nUQ6679BNqxXXH6pgp40VLB1pMDq3CsoGkwnAWqLjWKzOK0=
X-Google-Smtp-Source: ABdhPJww2VC9P4o9lMPG4bpfFmnKoiMtYuC2gsnEC2n+6oRjB1qKezN0BJUT1UYqrjxapkA4Vu672szDWSgStLmzFrQ=
X-Received: by 2002:a05:6808:9a:: with SMTP id
 s26mr4308117oic.124.1611342915214; 
 Fri, 22 Jan 2021 11:15:15 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT+gaOgFF2_ME+=bY9S21e_D-+XfCv7dH_qRmAZ-6h6oQ@mail.gmail.com>
 <CAB__hTTKkyz0fx9fGa_ePM9xZXHLcvYnbhsSCH3vYLA5z2G5Og@mail.gmail.com>
 <20210121224824.uajvcmmust7bgzfc@barbe>
 <CAB__hTSRar-TPwEH-bSDPoKoowPkjHVQngJwSHu+DiZvybhGaQ@mail.gmail.com>
 <20210122150220.ooerbxb22ndwefh6@barbe>
In-Reply-To: <20210122150220.ooerbxb22ndwefh6@barbe>
Date: Fri, 22 Jan 2021 14:15:04 -0500
Message-ID: <CAB__hTQ_uqCHC5PN5wNWy=vvm5Z-fDDuqD1JMq4L3ksMh342Hg@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] No streaming using OOT RFNoC Block in UHD4
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

> On 21/01/21 22:49, Rob Kossler wrote:
> > Also, regarding building in-tree, are you opposed to building in-tree as even
> > a temporary test case?  It's not too difficult to do.  I am not
> > talking about the
> > FPGA code - just the block controller HPP / CPP.
>
> I am not, especially as a temporary solution.
> I just fear the possible implicated burden in the long run
> compared to OOT when propagating those blocks to multiple hosts.
> Do you have documentation on how to properly build
> the block controller cpp/hpp in-tree?
>
> I guess I'll have to rebuild the whole UHD?
> I was just pulling binaries provided by my distribution.

Based on Aaron's other email, it sounds like your plan of running
without a custom block controller should work and that the default
block controller should forward actions (I'm guessing that
issue_stream_cmd is an action but not positive).  So, maybe we're on
the wrong path.  But, if you are able to run ddc->issue_stream_cmd()
rather than rx_stream->issue_stream_cmd() and get better results, then
that is a good sign that the issue_stream_cmd is never making it to
the DDC.

If you decide you want to build an in-tree custom controller, here are
my thoughts. Yes, you would need to build UHD from source. But, after
building once, you could add additional blocks without rebuilding the
whole UHD.  My procedure is the following:
- copy the HPP into host/include/uhd/rfnoc/
- update the CMakeLists.txt file in that folder to incorporate my new file
- copy the CPP into host/lib/rfnoc/
- update the CMakeLists.txt file in that folder to incorporate my new file
- run make -jN from the host/build/ folder (it will notice the changes
to CMakeLists and build just your files & re-link the UHD library)

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
