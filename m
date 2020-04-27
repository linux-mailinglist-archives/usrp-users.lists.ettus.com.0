Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 639621BAACC
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2020 19:09:38 +0200 (CEST)
Received: from [::1] (port=37840 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jT7GB-0006sj-0B; Mon, 27 Apr 2020 13:09:35 -0400
Received: from clt-mbsout-01.mbs.boeing.net ([130.76.144.162]:13555)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <kenneth.c.clark2@boeing.com>)
 id 1jT7G6-0006IJ-GT
 for usrp-users@lists.ettus.com; Mon, 27 Apr 2020 13:09:30 -0400
Received: from localhost (localhost [127.0.0.1])
 by clt-mbsout-01.mbs.boeing.net (8.15.2/8.15.2/DOWNSTREAM_MBSOUT) with SMTP id
 03RH8n5g032270; Mon, 27 Apr 2020 13:08:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=boeing.com;
 s=boeing-s1912; t=1588007329;
 bh=jCSMoIHJ/2DjFGzM9+UmKIjQgsKExjB0tIQAsRYcwwY=;
 h=From:To:CC:Subject:Date:From;
 b=bwcSk8K83tbREntjCWh44RDYY5JFI2wBiRZXVA5ZNWw2NP/wA8SH7Y+bEJhTukFGX
 gXqslUwur535/q6Y7b07RfmusJCMo9Xv5+Wc6bi8/Bb/HyidSfruCq8c+tvnYiVzzM
 ZJLLe+myioCl1pJnaQiU9sGufHSp+8E3SGs0XSuKkYqIe0XMmJGdyS4tmiuQVGYPg2
 06YNmLJ4EP0vZUsbEj9vqReK07fSU8AGc+YuGkCHhfoludn0lWquav9kkhFm4p+48H
 2XBR2lKCnPZcoNbbxJr8GGSuxFGupJ29wRvzhLd1EgnhSXVVAGbwUVOBlUEiARyaMz
 shjfPvQO3dFTg==
Received: from XCH16-05-10.nos.boeing.com (xch16-05-10.nos.boeing.com
 [144.115.66.94])
 by clt-mbsout-01.mbs.boeing.net (8.15.2/8.15.2/8.15.2/UPSTREAM_MBSOUT) with
 ESMTPS id 03RH8dJx031166
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
 Mon, 27 Apr 2020 13:08:39 -0400
Received: from XCH16-05-12.nos.boeing.com (144.115.66.96) by
 XCH16-05-10.nos.boeing.com (144.115.66.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1979.3; Mon, 27 Apr 2020 10:08:38 -0700
Received: from XCH16-05-12.nos.boeing.com ([fe80::7438:6966:c4f2:3026]) by
 XCH16-05-12.nos.boeing.com ([fe80::7438:6966:c4f2:3026%11]) with mapi id
 15.01.1979.003; Mon, 27 Apr 2020 10:08:38 -0700
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "support@ettus.com" <support@ettus.com>
Thread-Topic: Build Error in MSVC 2017 in time_spec.hpp
Thread-Index: AdYctd4bpNh6ibiwQDClQ5io8YG4hg==
Date: Mon, 27 Apr 2020 17:08:38 +0000
Message-ID: <86fb92927fdf42afb8b756126d044b94@boeing.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [144.115.204.6]
x-tm-snts-smtp: 2377CC73E93907551036AA2E2B99A7A710106781CAD050B5F3E816F87B971DF02000:8
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: [USRP-users] Build Error in MSVC 2017 in time_spec.hpp
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
From: "Clark \(US\), Kenneth C via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Clark \(US\), Kenneth C" <kenneth.c.clark2@boeing.com>
Cc: "Clark \(US\), Kenneth C" <kenneth.c.clark2@boeing.com>
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

Hello,

Trying to build the "host" applications on Windows 10, MSVC 2017 (aka 141).


The line below in time_spec.hpp

static constexpr double ASAP = 0.0;


Generates error E0145 in MSVC 2017, "member "uhd::time_spec_t::ASAP" may not be initialized"

I have tried not initializing it, making it const instead of constexpr, but still get errors.


This same code base builds find in Linux (current Ubuntu distro).


Any ideas?

Thanks,

Ken


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
