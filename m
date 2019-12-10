Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F51B118CC4
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2019 16:41:33 +0100 (CET)
Received: from [::1] (port=49632 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iehdg-0003FF-Ee; Tue, 10 Dec 2019 10:41:28 -0500
Received: from gwsmtp1.avdtec.ch ([145.232.233.54]:33148
 helo=mail02.heig-vd.ch)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92)
 (envelope-from <btv1==247d6490247==david.truan@heig-vd.ch>)
 id 1iehdd-0003BL-Nu
 for usrp-users@lists.ettus.com; Tue, 10 Dec 2019 10:41:25 -0500
X-ASG-Debug-ID: 1575992443-111d9816da3ba4d0001-5wTQH4
Received: from EIMAIL01.einet.ad.eivd.ch ([193.134.222.4]) by
 mail02.heig-vd.ch with ESMTP id Qtd8JQplq3BSx1p1 (version=TLSv1.2
 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO) for
 <usrp-users@lists.ettus.com>; Tue, 10 Dec 2019 16:40:43 +0100 (CET)
X-Barracuda-Envelope-From: david.truan@heig-vd.ch
X-Barracuda-Effective-Source-IP: UNKNOWN[193.134.222.4]
X-Barracuda-Apparent-Source-IP: 193.134.222.4
Received: from EIMAIL02.einet.ad.eivd.ch (10.192.41.72) by
 EIMAIL01.einet.ad.eivd.ch (10.192.41.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 10 Dec 2019 16:40:42 +0100
Received: from EIMAIL02.einet.ad.eivd.ch ([fe80::f1b4:a7a1:bd8c:216d]) by
 EIMAIL02.einet.ad.eivd.ch ([fe80::f1b4:a7a1:bd8c:216d%10]) with mapi id
 15.01.1847.005; Tue, 10 Dec 2019 16:40:42 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] N320: XQ image issue using sfp0 as time_source
X-ASG-Orig-Subj: [USRP-users] N320: XQ image issue using sfp0 as time_source
Thread-Index: AQHVr3AtveYQW5f0vUa/2oD506v+sg==
Date: Tue, 10 Dec 2019 15:40:42 +0000
Message-ID: <a343ea0c848d44c6bbaaab53bd80a4c1@heig-vd.ch>
Accept-Language: fr-CH, en-US
Content-Language: fr-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.204.11]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[193.134.222.4]
X-Barracuda-Start-Time: 1575992443
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://quarantine.heig-vd.ch:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at heig-vd.ch
X-Barracuda-Scan-Msg-Size: 793
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.78414
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
Subject: [USRP-users] N320: XQ image issue using sfp0 as time_source
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
From: Truan David via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Truan David <david.truan@heig-vd.ch>
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

Hi!

We are using multiples N320 (UHD 3.14) and we want to synchronize our setup using the White Rabbit protocol and using the N320 as the WR Slave and the Master being an OPNT Switch.

We have to be able to stream the IQ over the QSFP+ port (seen as sfp0) and use the SFP0 as the WR input so we have the XQ image loaded.

However, when setting sfp0 as the time_source, I get an error saying I need the WX image. I checked the "MPM/periph_manager/n3xx" python code and saw it only checks for the WX (line 692 of the 3.14 UHD on github). Is this normal?

If not, can I patch it by adding the XQ string to the "sfp_time_source_images", pack it and only replace the MPM package or should I totally rebuild UHD and flash my SD?


Thank you in advance for your answer!


David Truan

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
