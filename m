Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4431A2F5063
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 17:51:32 +0100 (CET)
Received: from [::1] (port=51748 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzjMl-0004UD-P1; Wed, 13 Jan 2021 11:51:27 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:40477)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emoges@uncc.edu>) id 1kzjMh-0004Nx-Me
 for usrp-users@lists.ettus.com; Wed, 13 Jan 2021 11:51:23 -0500
Received: by mail-oi1-f171.google.com with SMTP id p5so2791916oif.7
 for <usrp-users@lists.ettus.com>; Wed, 13 Jan 2021 08:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uncc.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=U06DTsiB9x0KC8Vd0vUPMqGsSyRqUgrxW+kw6l/DUDE=;
 b=VrVS/BS/YyaaxeXxrN3LqrZiazxrdEihSOxvPsC9Vhnsqn0kyf7Fp5GHsfxaa7UFPF
 B5HNwD9zte17+/Hls29DRT6piJkqqoVVNCtibenkjAQQ2gjPSID+dszmkT0e8MzMw+fJ
 2z5pb7lxZ1i+jGgnG8IsVrZUpBYVpODTvGYuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=U06DTsiB9x0KC8Vd0vUPMqGsSyRqUgrxW+kw6l/DUDE=;
 b=eL9q8Em7cQ1i90EM3lGwp9ijzIpTMnSFGf/P7yy76JBQrdXs1hc7iRKEXRwftBcHBH
 v4WdSP6bKiicu5mHhAGOjoRGebhNcdp3Zir/n7hq2T62vIPODU0/n08OnXURrDXb0+im
 bbHjxlplCuySwohX2eKqX8JBni67Nyb0/iS7rrDTFai9xugBt8tBqLPGbbeGU5vXTt11
 RUXAGW9HJhuZtiGiw4eZWsIYsPP17UyvJOXiH3LaVrCMTN0sfIJPwdceWCAJ07jX5q0i
 8SKd3UtJGT3dmFeLeltP25m3BsLdivvXJDg1Sa8fNoZpuo1Un2gScnIUD+7VBUS7pv9j
 lGTQ==
X-Gm-Message-State: AOAM531yk9fLckm9IFIufNd2g0FPIBXZx0imO/34mE1t03v5/sskLkLc
 oQlyxf07r3aYUmEuJ/JJ2TcLwuThuzSrWL2nP7+xu7lvf8o=
X-Google-Smtp-Source: ABdhPJx3jFWlvLLkVAHbzMmmCSUITIfB5WPUER0mAYRukkN81mwSLl96BrYnGQ8mGFWRT/PmR8YIaAmugfSqxnNI4Kw=
X-Received: by 2002:a05:6808:16:: with SMTP id u22mr88054oic.1.1610556642609; 
 Wed, 13 Jan 2021 08:50:42 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 13 Jan 2021 11:50:31 -0500
Message-ID: <CANwgjNoJ_DbMRLQqPu7aF2ETi4Ym2pbn9wFo4iRtyt7mH_8Uug@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Changing the transmitted samples per packet
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
From: Ephraim Moges via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ephraim Moges <emoges@uncc.edu>
Content-Type: multipart/mixed; boundary="===============5066453516425521237=="
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

--===============5066453516425521237==
Content-Type: multipart/alternative; boundary="00000000000092e51505b8caf0db"

--00000000000092e51505b8caf0db
Content-Type: text/plain; charset="UTF-8"

Good morning,

Is their a simple command like tx_streamer.get_max_num_samps that sets the
maximum number samples per packet?

Thank you,

Moges

--00000000000092e51505b8caf0db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Good morning,<div dir=3D"auto"><br></div><div dir=3D"auto=
">Is their a simple command like tx_streamer.get_max_num_samps that sets th=
e maximum number samples per packet?<br><br><div data-smartmail=3D"gmail_si=
gnature" dir=3D"auto">Thank you,<br><br>Moges</div></div></div>

--00000000000092e51505b8caf0db--


--===============5066453516425521237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5066453516425521237==--

