Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2E2D397A
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2019 08:42:02 +0200 (CEST)
Received: from [::1] (port=33164 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iIoch-0008RL-SG; Fri, 11 Oct 2019 02:41:59 -0400
Received: from mail01.heig-vd.ch ([193.134.218.124]:59706)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92)
 (envelope-from <btv1==1878af9ec0d==david.truan@heig-vd.ch>)
 id 1iIocd-0008MY-VY
 for usrp-users@lists.ettus.com; Fri, 11 Oct 2019 02:41:56 -0400
X-ASG-Debug-ID: 1570775898-1114bd082235850004-5wTQH4
Received: from EIMAIL03.einet.ad.eivd.ch ([193.134.222.4]) by
 mail01.heig-vd.ch with ESMTP id f8vj11mjgFEGmZLJ (version=TLSv1.2
 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Fri, 11 Oct 2019 08:40:23 +0200 (CEST)
X-Barracuda-Envelope-From: david.truan@heig-vd.ch
X-Barracuda-Effective-Source-IP: UNKNOWN[193.134.222.4]
X-Barracuda-Apparent-Source-IP: 193.134.222.4
Received: from EIMAIL02.einet.ad.eivd.ch (10.192.41.72) by
 EIMAIL03.einet.ad.eivd.ch (10.192.41.73) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 11 Oct 2019 08:40:00 +0200
Received: from EIMAIL02.einet.ad.eivd.ch ([fe80::74fb:48ab:8786:12dc]) by
 EIMAIL02.einet.ad.eivd.ch ([fe80::74fb:48ab:8786:12dc%9]) with mapi id
 15.01.1779.005; Fri, 11 Oct 2019 08:40:00 +0200
To: Nate Temple <nate.temple@ettus.com>
Thread-Topic: [USRP-users] N320 Dual SFP issue with 40Gbps QSFP+ switch
X-ASG-Orig-Subj: RE: [USRP-users] N320 Dual SFP issue with 40Gbps QSFP+ switch
Thread-Index: AQHVfqvdQ1jKycHvykqUnuw8hQU32KdT21OAgAEkOXs=
Date: Fri, 11 Oct 2019 06:40:00 +0000
Message-ID: <93492254cdab43b2837a42770e7a84f9@heig-vd.ch>
References: <133fcc07ca0e4f73bb17dbb6f7e84b0d@heig-vd.ch>,
 <CAL263iwTB-UWfL1drKKUFuyKhmE4S_UAO8SoaLYOdTHP8UAgqg@mail.gmail.com>
In-Reply-To: <CAL263iwTB-UWfL1drKKUFuyKhmE4S_UAO8SoaLYOdTHP8UAgqg@mail.gmail.com>
Accept-Language: fr-CH, en-US
Content-Language: fr-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.204.11]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[193.134.222.4]
X-Barracuda-Start-Time: 1570776023
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://quarantine.heig-vd.ch:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at heig-vd.ch
X-Barracuda-Scan-Msg-Size: 1736
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.77269
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
Subject: Re: [USRP-users] N320 Dual SFP issue with 40Gbps QSFP+ switch
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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

Hi Nate,

Sorry it was a mistake from my part, we indeed have the XQ loaded. The QSFP=
+ port is working, and we can transmit data through it.


BR


David Truan

________________________________
De : Nate Temple <nate.temple@ettus.com>
Envoy=E9 : jeudi, 10 octobre 2019 17:12:15
=C0 : Truan David
Cc : usrp-users@lists.ettus.com
Objet : Re: [USRP-users] N320 Dual SFP issue with 40Gbps QSFP+ switch

Hi David,

Can you try loading the XQ FPGA image onto the N320? When using the XG imag=
e, only the onboard SFP 0,1 adapters are used. When using the XQ image, two=
 lanes of the QSFP will be used (0,1). A table showing what protocols / por=
ts per FPGA image can be found here [0].

[0] - https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_sfp_protoc=
ols

Regards,
Nate Temple

On Wed, Oct 9, 2019 at 7:33 AM Truan David via USRP-users <usrp-users@lists=
.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi everyone,

We are currently trying to connect the N320 (configured with the XG image) =
to one of our server using the QSFP+ interface through a switch (FS S5900-2=
4S4T2Q). The server is equipped with 40Gbps QSFP+ interface and the connexi=
on works when connecting directly by QSFP+ without the switch in between.

However when connecting it to the switch (to a 40Gbps QSFP+ port) it doesn'=
t even detect the connexion (port led light off on the switch) and we canno=
t reach the N320 from the server.

Do you have an idea what could cause the issue?


Thank you in advance!


David Truan

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
