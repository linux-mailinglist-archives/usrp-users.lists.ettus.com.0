Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F12CDCED5
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2019 20:59:17 +0200 (CEST)
Received: from [::1] (port=52710 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iLXT2-00025X-AJ; Fri, 18 Oct 2019 14:59:16 -0400
Received: from mail1.bemta25.messagelabs.com ([195.245.230.66]:58979)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Joern.Skorstad@Nkom.no>)
 id 1iLXSx-0001u1-F9
 for usrp-users@lists.ettus.com; Fri, 18 Oct 2019 14:59:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=s1;
 t=1571425110; i=@nkom.no;
 bh=ebMhUxIHdLt32uV9RrOji2gmzyoWni+sRgreiq/ykbE=;
 h=From:To:Subject:Date:Message-ID:Content-Type:Content-ID:
 Content-Transfer-Encoding:MIME-Version;
 b=dgepblGyV96HeQacxQtgRr42MmAChuUix82wWLvXoG0XqhD/a/DVs7ZJ+Yzwb84L6
 MlfSdkFxzbw4B4QcDYgB+TQwJW25sD4xRBA7sS0Klh+7IJOFHbcUIUPwEHu7N7Xepo
 K7XPc1Xd4OAMFD7S22yPGUYTiPNkiiC6s1em5scJ5Pe804XvocKv6osMwhj0zGR5zO
 CMOPikn48QX7cgAWgynFdP7pL1ou07qAgD1VwhXwGTeOvj9z6P692Wu9d8eqgymUuY
 gSG/kLBpHBZfsv5v2dvU7VNBUBP+UxcKhW8XD+pI5wvU+LF3tvAOzLJm2Ft3pz8NY5
 w7SDmriL0z4QA==
Received: from [46.226.52.196] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-2.bemta.az-b.eu-west-1.aws.symcld.net id 38/A7-06714-55B0AAD5;
 Fri, 18 Oct 2019 18:58:29 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDKsWRWlGSWpSXmKPExsViF5OXqxvCvSr
 WYE6DjcWFzjnsDoweE1ceYg5gjGLNzEvKr0hgzfh94CNzwXXminXrJrI0MF5g7mLk4hASaGGU
 uP5yGVsXIycHm4C9xNGZbSwgtoiArcSfWQuZQWxhAUmJ/aduMEPE5SSOHGlg72LkALL1JNY/S
 gYJswioSsyb1cQKYvMKuEhs7f0MVsIoICsxt4kXJMwsIC4x4+gdsOkSAgISS/acZ4awRSVePv
 7HCmFbSTxa85ARwtaQ2LnjGVSNgsS5rWfYIGx5if0vpzCDjGcW0JRYv0sfYryZxJrvyxkhbEW
 JKd0P2SGuEZQ4OfMJywRGkVlIrpiF0D0LSfcsJN2zkHQvYGRdxWieVJSZnlGSm5iZo2toYKBr
 aGika2hpqWtkqpdYpZukl1qqW55aXKJrqJdYXqxXXJmbnJOil5dasokRGEUpBccldzA+n/VG7
 xCjJAeTkiivBfOqWCG+pPyUyozE4oz4otKc1OJDjDIcHEoSvDVcQDnBotT01Iq0zBxgRMOkJT
 h4lER4L4OkeYsLEnOLM9MhUqcYjTkmvJy7iJnjyNyli5iFWPLy81KlxHnXsQOVCoCUZpTmwQ2
 CJZpLjLJSwryMDAwMQjwFqUW5mSWo8q8YxTkYlYR5l4Ms5MnMK4Hb9wroFCagU94rLwc5pSQR
 ISXVwBRrYRaelaXc9/7319Ka0MsvJwhysK/s0jDR7ku4+qkugiltTZPSYxGOp5+e5aqGF7XOd
 /VYvoXRUGqjp+vkj70Hr+WyaE/snMc7ed/bq4GfGbq3Tm7ctGpfqOF3tYbCOPeiDxmsi194ze
 /5/i5yU2ipXJpgUX/y2uO8Aqsr0l4d4In+tL2o2pFv/YzOR3PLt8cte5TI/pKfNXu/QsWMt3d
 ZrHmb1kzjYGn5rixicFL7yNvZy9fY3HbYFGvPNf0CS4v9/6ptQTZX1modvH41SWLyhSPHM9Mr
 Z+szqBa4vdOQYX22xSUnYOHqg6+U9TkFP03bba2VLnC/uzu+PvLjpmth9/NWduVdupX/LO55u
 hJLcUaioRZzUXEiAAVGmsivAwAA
X-Env-Sender: Joern.Skorstad@Nkom.no
X-Msg-Ref: server-11.tower-284.messagelabs.com!1571425108!320518!1
X-Originating-IP: [62.92.110.109]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12501 invoked from network); 18 Oct 2019 18:58:28 -0000
Received: from 109.110.92.62.static.cust.telenor.com (HELO smtp.nkom.no)
 (62.92.110.109)
 by server-11.tower-284.messagelabs.com with ECDHE-RSA-AES256-SHA encrypted
 SMTP; 18 Oct 2019 18:58:28 -0000
Received: from EXMBX01.npta.no ([10.10.2.97]) by EXCAS.npta.no ([::1]) with
 mapi id 14.03.0468.000; Fri, 18 Oct 2019 20:58:27 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E310 packet size
Thread-Index: AdWF5gXyT9iIP1SBRi+bOlKYGHksGw==
Date: Fri, 18 Oct 2019 18:58:26 +0000
Message-ID: <eebdb6dc-867a-46ff-92f9-89a3480d810b@email.android.com>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.1251-8.100.1062-24984.003
x-tm-as-result: No--3.287400-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
Content-ID: <E57C035EC2A9AE4AB909A025DC414AD5@nkom.no>
MIME-Version: 1.0
Subject: [USRP-users] E310 packet size
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
From: =?utf-8?q?Skorstad=2CJ=C3=B8rn_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?B?U2tvcnN0YWQsSsO4cm4=?= <Joern.Skorstad@Nkom.no>
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

Hi all,

Still trying to understand some parts of the USRP that probably are quite elementary. When using the function get_max_num_samps it always reports 508. Does this mean that the number of samples returned for any requested sample rate will be decimated down to 508? Any way to change max_num_samps? Not using FPGA (yet).

Cheers,
Jorn
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
