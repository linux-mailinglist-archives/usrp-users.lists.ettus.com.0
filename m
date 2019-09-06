Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8EEAB77D
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 13:56:02 +0200 (CEST)
Received: from [::1] (port=48498 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6CqO-0007bB-Pl; Fri, 06 Sep 2019 07:56:00 -0400
Received: from mail01.heig-vd.ch ([193.134.218.124]:53460)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92)
 (envelope-from <btv1==15232c0db03==david.truan@heig-vd.ch>)
 id 1i6CqL-0007Wb-Co
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 07:55:57 -0400
X-ASG-Debug-ID: 1567770890-1114bd0c90052c0001-5wTQH4
Received: from EIMAIL02.einet.ad.eivd.ch ([193.134.222.4]) by
 mail01.heig-vd.ch with ESMTP id WAGoT9UYZS5obGH4 (version=TLSv1.2
 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO) for
 <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 13:54:50 +0200 (CEST)
X-Barracuda-Envelope-From: david.truan@heig-vd.ch
X-Barracuda-Effective-Source-IP: UNKNOWN[193.134.222.4]
X-Barracuda-Apparent-Source-IP: 193.134.222.4
Received: from EIMAIL02.einet.ad.eivd.ch (10.192.41.72) by
 EIMAIL02.einet.ad.eivd.ch (10.192.41.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 6 Sep 2019 13:54:50 +0200
Received: from EIMAIL02.einet.ad.eivd.ch ([fe80::68df:513c:8c7a:dfdf]) by
 EIMAIL02.einet.ad.eivd.ch ([fe80::68df:513c:8c7a:dfdf%9]) with mapi id
 15.01.1779.004; Fri, 6 Sep 2019 13:54:50 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N320: set_rx_bw() does not change the actual BW
X-ASG-Orig-Subj: N320: set_rx_bw() does not change the actual BW
Thread-Index: AQHVZKS91ThfKJ3N30uLOh83lsqQfQ==
Date: Fri, 6 Sep 2019 11:54:50 +0000
Message-ID: <c617db41435a48cebba2a8ba21a1aa09@heig-vd.ch>
Accept-Language: fr-CH, en-US
Content-Language: fr-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.204.11]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[193.134.222.4]
X-Barracuda-Start-Time: 1567770890
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://quarantine.heig-vd.ch:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at heig-vd.ch
X-Barracuda-Scan-Msg-Size: 798
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.76133
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
Subject: [USRP-users] N320: set_rx_bw() does not change the actual BW
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

Hi,

We received our N320 and started doing some basic RX tests on it and everything seems ok. We were able to get an emitted chirp and display it using GQRX.

However, when calling the set_rx_bandwidth() UHD function and then reading the actual RX bandwidth, it always read back 250MHz. Using rx_samples_to_file example and with a --bw=1e6 parameter, I obtain the output:

....

Setting RX Bandwidth: 1.000000 MHz...

Actual RX Bandwidth: 250.000000 MHz...

....

Is this normal or a bug? If it is a bug, does this have an impact on the acquisition, if yes what is this impact?

We tested both the HG and the XQ FPGA bitstreams and we use UHD 3.14.0.0 on both the N320 and the host, obtaining the same behavior in all cases.


Thank you in advance for your answer!

David T.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
