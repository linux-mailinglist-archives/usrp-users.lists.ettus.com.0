Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABD6D1159
	for <lists+usrp-users@lfdr.de>; Wed,  9 Oct 2019 16:33:36 +0200 (CEST)
Received: from [::1] (port=60828 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iID1t-0000kO-21; Wed, 09 Oct 2019 10:33:29 -0400
Received: from mail01.heig-vd.ch ([193.134.218.124]:57266)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92)
 (envelope-from <btv1==185f829368a==david.truan@heig-vd.ch>)
 id 1iID1o-0000dz-Rr
 for usrp-users@lists.ettus.com; Wed, 09 Oct 2019 10:33:24 -0400
X-ASG-Debug-ID: 1570631513-1114bd137483700002-5wTQH4
Received: from EIMAIL03.einet.ad.eivd.ch ([193.134.222.4]) by
 mail01.heig-vd.ch with ESMTP id XHx5JpKa0SCljYmo (version=TLSv1.2
 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO) for
 <usrp-users@lists.ettus.com>; Wed, 09 Oct 2019 16:32:18 +0200 (CEST)
X-Barracuda-Envelope-From: david.truan@heig-vd.ch
X-Barracuda-Effective-Source-IP: UNKNOWN[193.134.222.4]
X-Barracuda-Apparent-Source-IP: 193.134.222.4
Received: from EIMAIL02.einet.ad.eivd.ch (10.192.41.72) by
 EIMAIL03.einet.ad.eivd.ch (10.192.41.73) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 9 Oct 2019 16:32:12 +0200
Received: from EIMAIL02.einet.ad.eivd.ch ([fe80::74fb:48ab:8786:12dc]) by
 EIMAIL02.einet.ad.eivd.ch ([fe80::74fb:48ab:8786:12dc%9]) with mapi id
 15.01.1779.005; Wed, 9 Oct 2019 16:32:12 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N320 Dual SFP issue with 40Gbps QSFP+ switch
X-ASG-Orig-Subj: N320 Dual SFP issue with 40Gbps QSFP+ switch
Thread-Index: AQHVfqvdQ1jKycHvykqUnuw8hQU32A==
Date: Wed, 9 Oct 2019 14:32:12 +0000
Message-ID: <133fcc07ca0e4f73bb17dbb6f7e84b0d@heig-vd.ch>
Accept-Language: fr-CH, en-US
Content-Language: fr-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.204.11]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[193.134.222.4]
X-Barracuda-Start-Time: 1570631537
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://quarantine.heig-vd.ch:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at heig-vd.ch
X-Barracuda-Scan-Msg-Size: 598
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.77249
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
Subject: [USRP-users] N320 Dual SFP issue with 40Gbps QSFP+ switch
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

Hi everyone,

We are currently trying to connect the N320 (configured with the XG image) to one of our server using the QSFP+ interface through a switch (FS S5900-24S4T2Q). The server is equipped with 40Gbps QSFP+ interface and the connexion works when connecting directly by QSFP+ without the switch in between.

However when connecting it to the switch (to a 40Gbps QSFP+ port) it doesn't even detect the connexion (port led light off on the switch) and we cannot reach the N320 from the server.

Do you have an idea what could cause the issue?


Thank you in advance!


David Truan

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
