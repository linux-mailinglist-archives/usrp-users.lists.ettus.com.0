Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 750B630312C
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jan 2021 02:28:11 +0100 (CET)
Received: from [::1] (port=37060 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4D9L-0005jy-IU; Mon, 25 Jan 2021 20:28:07 -0500
Received: from mail-oi1-f170.google.com ([209.85.167.170]:46228)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l4D9I-0005fq-5j
 for usrp-users@lists.ettus.com; Mon, 25 Jan 2021 20:28:04 -0500
Received: by mail-oi1-f170.google.com with SMTP id k25so2788459oik.13
 for <usrp-users@lists.ettus.com>; Mon, 25 Jan 2021 17:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=1eRZUE6RsXOW6xn04hYgOgDLOJ+Z+w7OyhnCQO/osU4=;
 b=BR41tX5Ecf5nXAELYZ8fCbtaoJ17pi96RVeBDfT/RHMV/cK6OtOIXVvehYa4B/6uCA
 zm2pP2davfqIL/UKm95a4I/9cRq+1GNsr2GfeTH/iuHnb9M4u192qEkCKnwXuSDd2Hfl
 Ffh8N3f9nF117n44RncL+2FxL/pxxVRQED4AMWQ39A4iWjlzjolT46ijD1oKTDsdytHa
 O+zZ4qbewhmfwv5DxxWtCGV02QQu/AS7aSWOSYaRcX/GOF2nJcpoSB9H0ODFB97WBU1R
 ff6xox5Um8vC//PHwunskG4OkO1Judw1C5/fTHDx5T46u09eckmUTrx6UmaVS3v4/E9M
 80+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=1eRZUE6RsXOW6xn04hYgOgDLOJ+Z+w7OyhnCQO/osU4=;
 b=Ze9Rzu01XFNPq6fL2aQRL/54St15wwUOz/CfSwCOrkBeagUxoewbhQUFNqALR9A7Uo
 9ltnpjf7+k5OUQaiBHDpDP+A0LYcfG/f306jK1wFiIYsdX66bu1y8j3PSu3wO3Wwq1Q7
 G1jqQPlMeSyxXKcUJXoXubJ3EnGKtwCdxoDaZCLgTeRDmTD/iPfXbrJJanfOEIJBoZww
 NSYjy5BRoYSy30zjWZYFjMwdV3BotxR6fQI6nqXhs1Tsr1H87OFSA25qI96G3sYJHlch
 n93MuD2mY/G+wo/eXWzrhvkjctdfnzhzdGUYV0DP9Ihrqn7yh0y0AxzEHRNHEIdPCQY9
 ffGQ==
X-Gm-Message-State: AOAM532qjvl+R8cSsIKjsiCMfb4ZZ3IDmbUKtr1azRWdz1y6AWSQItow
 Atpn0yvfWI+CjegjO3mYB8NdBPMxXJ5q1Tf5odUaLW2smu/XYA==
X-Google-Smtp-Source: ABdhPJyZ3d1P6awCwaky5J94afA3gIJFdg7P2FomMMxsrm/fIBxcIZchwn3Vwx1ljKS6f3Qm6pm6kgOp4BQnP7cQURE=
X-Received: by 2002:aca:ea08:: with SMTP id i8mr1768850oih.150.1611624443092; 
 Mon, 25 Jan 2021 17:27:23 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 25 Jan 2021 20:27:12 -0500
Message-ID: <CAB__hTRTpgT6++Hdo1a27jhdgenO6su0NkrXRTWkHkaJMcEUkQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] One or more blocks timed out during flush
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
Content-Type: multipart/mixed; boundary="===============5537569161469974654=="
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

--===============5537569161469974654==
Content-Type: multipart/alternative; boundary="000000000000719c8005b9c38e61"

--000000000000719c8005b9c38e61
Content-Type: text/plain; charset="UTF-8"

Hi,
Using RFNOC 4.0 with a few of my custom blocks, I get the following warning
at UHD startup (after having run it at least once before):

[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!

I'm confident it is something that I'm doing incorrectly with my block, but
I'm wondering if anyone can comment on what causes this and / or what my
block should be doing to avoid it.

Rob

--000000000000719c8005b9c38e61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>Using RFNOC 4.0 with a few of my custom blocks=
, I get the following warning at UHD startup (after having run it at least =
once before):</div><div><br></div><div>[WARNING] [RFNOC::GRAPH] One or more=
 blocks timed out during flush!<br></div><div><br></div><div>I&#39;m confid=
ent it is something that I&#39;m doing incorrectly with my block, but I&#39=
;m wondering if anyone can comment on what causes this and / or what my blo=
ck should be doing to avoid it.</div><div><br></div><div>Rob</div></div>

--000000000000719c8005b9c38e61--


--===============5537569161469974654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5537569161469974654==--

