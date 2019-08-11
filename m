Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F01A893B7
	for <lists+usrp-users@lfdr.de>; Sun, 11 Aug 2019 22:38:58 +0200 (CEST)
Received: from [::1] (port=59604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hwucA-0002Qs-T0; Sun, 11 Aug 2019 16:38:54 -0400
Received: from sonic314-24.consmr.mail.ne1.yahoo.com ([66.163.189.150]:42839)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hwuc7-0002M5-BH
 for usrp-users@lists.ettus.com; Sun, 11 Aug 2019 16:38:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1565555890; bh=swsCL+YNjNtkD8QOCY7wvfJje0hODrIcWt8II/tqLdE=;
 h=Subject:From:To:Date:From:Subject;
 b=LRzeBGTE5kuiGCm5mIBW/2xuv8fp+M62OHIbokS6ltrIKW+k7+57rW723EXnibR19MXRV4ds31DycoI81+iTbDwQSh8YwVYp2rZoJ4NokVRzSB6AUFvpXn6UMTVbIGUM6BjEnTdDy0Pax4EZyxSEE8LD+gC0gd651Vq4Xs85iCfn9xoPgljZhifC4hK8wSWBxCghl0ez2HEtszjmCLe7Pn8sCGKbg5LEb1h45JWhPrJkTxqrpQbIEDCQs2r3BfOIfs0eLc+JfVQOxzPt3FKlBfoCp4QssTiBh+fJtBZmjOnXTpTBp+DbksvEH9+E/BDCE8buqLGQGfd0rQDp1KgIXA==
X-YMail-OSG: 9xjBOXUVM1nyT3tAJQ2xOdTHRtQVBziUPn2p9HbuODTUmcEPCVXE8ZMRjqZq6ya
 tmETYyJvlQ9EhOtRUzTu_mk1lPpo_g06N00Ld2Osh.cgnbeNSjxJ289EnLOu7sfFLYTbrQw9MjB9
 WGbmLrZeSPQUlMITTtFK7b3sK4lzezXztGLAjVgp58HMsYSmMCoT.qjtN4FWwUoDrjsNH_gn_Pnz
 tMM4rKy4_2jrnLjufFoeuUxoWP_2RV2eswGmNRPweBTxVkcStOTuC85B_BElnVzjMFx5L_AF1wRr
 BmIklDeqMXxoeiMCnVOJir7iXeKsDGJh.z5im5Rg25RziY8k1P3vv9Q_wbT3TNc2uqaZrVo2W4QY
 ZBYsfiSraeP_GeE330aTXljAU8h.sSUczZXE9YpxXtZg_Rum3uh9OZzUtHQSCIKaSapnUHO0zpbZ
 QP1t0Nl5UE65UolRXhfDyqNcKeiknrODM7ViaiJb9oDSNfuPqquIbmaKydoFru4wJ7JI45qXdnXo
 O7ikc2D_YXDMf35hM0jLfUCWhnoxVY8C0BhYjzhvGJ8tmtq4DFfQ35RINMp9CGKSbtLE5EYA.uKf
 IPpqn2XW593WZTGU6sbpIQN3D5Ki3Nz5e0tkz1x6bZQk06dcioSiGD0X7yVoUl2aPqea7PHDy7nO
 7YzK_GkRObOWUfmifujTundJOlBi8wq6Wpoqny4NgNtW.bD.N0pEKFqEdZU5Tkozm.jQ0WedTX1F
 8wfpWDWaBb7hE4Z6cD32MZiZyQOjYaU7BahdmswgNJlibvVZ_6ABfliBWaYZZ4TaR3HiC0YCvxqB
 jMlbUz0BLEF8loQijwaqR0fvnwDYXHlyUEDG_eL6RKewwnqBpcs_tMCZQ.RqL800a0Kh5y6q18PK
 zYH_7KGlGdP9Pk_FYnmQqO9fBOYv02kFRVT0NK2PDCSGgAoVAgdU7oj_EHNlXTbmr5CiQhRNMmFk
 iziGRNQR9ds.avbL_dGn06dOmCzOtUfwMd9YYjbGrney34tszZMee70EGuZxVkEu7V9X62CQO.Yw
 Jk8X_T6rkEWGmgMDxTuXRciHn7rOIuwX5V9da.MI4KCrlprKBuCzkPbOwTCBt8eQtyRv3p8hhi1Y
 aqG_wRvJ28a5QDv2Kv9E8MFgo0Icc4XpDd7n8tWllBy5k7SFTHL.UPhFYkqOcp1ezfsZ8S_OFq9K
 Iz3Y6nFEuRi0GOe5XBgMkekGQ3VUhXZpcVqqu6XJ6uyqY063f4Wwh3d_WFKHDWN.gKUxTG2n_vVT
 OIhQo1f0cv0Ql.Qwc4xFuIWMuM0TLlJtroYtrkQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.ne1.yahoo.com with HTTP; Sun, 11 Aug 2019 20:38:10 +0000
Received: by smtp430.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 4025c485c576b5597c393931c16c0d2c; 
 Sun, 11 Aug 2019 20:38:05 +0000 (UTC)
Message-ID: <9c438e67931ecb2c6593803efda75c53ac53bef6.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Sun, 11 Aug 2019 15:36:36 -0500
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] latest E310 tutorial
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
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

Thanks, Royce, that fixed the usrp side of both fosphor and my block!

I also made two minor tweaks to the host side to get fosphor working on
my PC. These are probably things that a Gnuradio expert would see right
away but in case there's anyone else out there who primarily uses the
c++ uhd interface and is barely Gnuradio literate here goes:

The first problem was a segfault whenever the host side program
rfnoc_siggen_network_host.py was launched. That turned out to be a
problem with fosphor_display_impl.cc. The method
"bool fosphor_display_impl::start()" ended without returning anything
and my Fedora 30 machine really hated that. I put in a "return true"
line at the end of the function and that fixed the problem. (It doesn't
seem to matter whether the function returns true or false, it just
needs to return something.)

The second issue with the examples in stock form was that when I opened
rfnoc_fosphor_network_host at first all I saw were controls, no plot. I
spent some time looking for QT issues but it turned out to be really
simple: there were GUI hints set on the slider controls but not on on
the fosphor display block. The quickest fix is to remove the hints on
the controls and the display shows up.

Fosphor is a really nice quick survey tool. It's great to see 56 MHz at
once with just a laptop and battery-powered E310.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
