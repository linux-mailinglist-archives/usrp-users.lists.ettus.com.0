Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF71375443
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 14:57:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00D78383F53
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 08:57:49 -0400 (EDT)
Received: from mail02.heig-vd.ch (gwsmtp1.avdtec.ch [145.232.233.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 269AA383E16
	for <usrp-users@lists.ettus.com>; Thu,  6 May 2021 08:56:51 -0400 (EDT)
X-ASG-Debug-ID: 1620305808-111d98145826d10e0001-5wTQH4
Received: from EIMAIL03.einet.ad.eivd.ch ([193.134.222.4]) by mail02.heig-vd.ch with ESMTP id C2OyKXUohHPorVJa (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO) for <usrp-users@lists.ettus.com>; Thu, 06 May 2021 14:56:48 +0200 (CEST)
X-Barracuda-Envelope-From: julian.burellaperez@heig-vd.ch
X-Barracuda-Effective-Source-IP: UNKNOWN[193.134.222.4]
X-Barracuda-Apparent-Source-IP: 193.134.222.4
Received: from EIMAIL01.einet.ad.eivd.ch (10.192.41.71) by
 EIMAIL03.einet.ad.eivd.ch (10.192.41.73) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 6 May 2021 14:56:48 +0200
Received: from EIMAIL01.einet.ad.eivd.ch ([fe80::a0fc:d907:1215:30ed]) by
 EIMAIL01.einet.ad.eivd.ch ([fe80::a0fc:d907:1215:30ed%4]) with mapi id
 15.01.2242.008; Thu, 6 May 2021 14:56:48 +0200
From: =?iso-8859-1?Q?Burella_P=E9rez_Juli=E1n_Mariano?=
	<julian.burellaperez@heig-vd.ch>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [N320] Using white rabbit with OPNT Master Switch
X-ASG-Orig-Subj: [N320] Using white rabbit with OPNT Master Switch
Thread-Index: AQHXQncVmeeZHIsAQkGxcGBQYRYgTQ==
Date: Thu, 6 May 2021 12:56:48 +0000
Message-ID: <70113035fa85437b8ad159f0e11b5941@heig-vd.ch>
Accept-Language: fr-CH, en-US
Content-Language: fr-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.204.11]
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[193.134.222.4]
X-Barracuda-Start-Time: 1620305808
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://quarantine.heig-vd.ch:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at heig-vd.ch
X-Barracuda-Scan-Msg-Size: 1905
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.89754
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
Message-ID-Hash: M5QA7MBIW7NYCGLY6ZO7FWYRNCVTHASV
X-Message-ID-Hash: M5QA7MBIW7NYCGLY6ZO7FWYRNCVTHASV
X-MailFrom: btv1==760cdc7c545==julian.burellaperez@heig-vd.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [N320] Using white rabbit with OPNT Master Switch
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M5QA7MBIW7NYCGLY6ZO7FWYRNCVTHASV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: quoted-printable

Hello,

We have a setup where we're trying to sync a N320 (bitstream WX) using Whit=
e rabbit with a OPNT Timing Switch as Master configured as Free Running Mas=
ter.


+------------------------+                        +---------------------+
|                                 |             SFP0  |                    =
         |
| OPNT Timing Switch   |---------------- |        N320             |
|                                 |                        |               =
              |
+------------------------+                        +---------------------+


We are trying to run test program `test_pps_input` in order to see if PPS i=
s working as expected.
When running without any argument, the PPS is correctly detected, I suppose=
 it is because it uses as time source `internal`.
Then when I try to use `sfp0` as a time source, I observed 2 different beha=
viors:

Command run: ./test_pps_input --args=3D"clock_source=3Dinternal,time_source=
=3Dsfp0" --source=3Dsfp0

1. I get the following message:

[ERROR] [RPC] TDC Failed to reset.
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[ERROR] [MPM.Sync-0] TDC Failed to Reset! Check your clocks! Status: 0x0
[ERROR] [MPM.RPCServer] init() failed with error: TDC Failed to reset.
Error: RuntimeError: Error during RPC call to `init'. Error message: TDC Fa=
iled to reset.

And after this message, the PPS led does not blink anymore.

2.
If I then run again the test after failing previously, this time I don't ge=
t any error message but a exception is thrown because no PPS was detected.

We know that the OPNT Timing switch works when used with a OPNT node, where=
 we get PPS and 10MHz signals.

Do you think that there could be an issue when N320 and OPNT Switch try to =
sync together, or do you have any idea of what I could explore ?

Thank you in advance for any help you can provide me with.

Best,
Juli=E1n
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
