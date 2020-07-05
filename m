Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDE3214A6D
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jul 2020 07:06:58 +0200 (CEST)
Received: from [::1] (port=32920 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jrwrf-0007WI-7I; Sun, 05 Jul 2020 01:06:55 -0400
Received: from mail-eopbgr750079.outbound.protection.outlook.com
 ([40.107.75.79]:41696 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <tholland@skidmore.edu>)
 id 1jrwra-0007RK-Ue
 for usrp-users@lists.ettus.com; Sun, 05 Jul 2020 01:06:50 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Asr/gMbRBB4fjAkncSViC1JwY1esTp/qlfP45yhmFr+OdI10lHAuQVz6V6xaargrs1VVrco5rQ3RZeT6ZBJcwgUi42Ggrk318IQgVApS9kGwycuxXJbp+XBlAXmtowyJ1UuYRDJbYVw9WgJurDQYre5otigrgD/1Voq+xMbAK+FGafzIfjpd1w2oM5blkabQ2rLYGVI8+2hxJ2JCHmtxckeAqPbIXhTpcdypnOBHSB8/idptXSB9TTpUZr8zckg3Ye9v18UH0gLjcElDDJeraukrr8rK15BK63mQYAc1qpB9TdL3buWo+rK6FVPgLV+WXQGemHFwgiAskbOCUf5oAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJrDbQprCm4mfOhcGTOas4lB50778MsHCeAKOmxRHlQ=;
 b=UCVnnovSSIzzwpjZXhlrn6l2jmqdlC0XMgv2bog+0p5So358b120p0ToLZ0ygsDGdn0RHjKEeaO1jA2Pl5t6pM8Bys5eUoGMgmxhYAhKG9Mr55tv9wVOsrgm/aF6JukfDgwpdFKmbIyfX+2Maa04JzqiLOL/goqLz1Ys1TW54N/z170IreOyficz6OcEslo305DDqWauEQxcLtgb3h//kDew0YJ1ZbTJ/qnV47iGqDFTjy1A4wa6C5TvDRs02znq6mwDY9xUUgnzAjr1/sKd/aEzvQfKFrk7n+v/dZSETS5x0H9VigBZFUNncgtbVuHJ5cZ3EitLzdHE3iVIyIr1tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=skidmore.edu; dmarc=pass action=none header.from=skidmore.edu;
 dkim=pass header.d=skidmore.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=skidmore.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJrDbQprCm4mfOhcGTOas4lB50778MsHCeAKOmxRHlQ=;
 b=jDnhpms65lJ+xySpUG6Rt8/J60or1ksqotUREwIcd7e6rxAytHvR+/Ek0+/KYiy7ui/iqMkTJDLbsfypPVisJkiufF4Mwh9ncJl6yWe/npeF8las+IsOTre1B0fD2zDhJW9Uq/1inmSbER7u8fUqBgUYcDbI3SXALR+WX5Qq5Ts=
Received: from BN6PR0101MB3026.prod.exchangelabs.com (10.174.91.16) by
 BN8PR01MB5601.prod.exchangelabs.com (20.179.77.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.28; Sun, 5 Jul 2020 05:06:06 +0000
Received: from BN6PR0101MB3026.prod.exchangelabs.com
 ([fe80::fdbd:b5f7:f605:80b1]) by BN6PR0101MB3026.prod.exchangelabs.com
 ([fe80::fdbd:b5f7:f605:80b1%7]) with mapi id 15.20.3153.029; Sun, 5 Jul 2020
 05:06:06 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Newbie question on N200 and gnuradio companion
Thread-Index: AQHWUon8W8EZAvqnPUudOOc2D57vJw==
Date: Sun, 5 Jul 2020 05:06:06 +0000
Message-ID: <4AE1E899-28D9-4C0E-8642-811A422F47B2@skidmore.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=skidmore.edu;
x-originating-ip: [2604:6000:fc82:4a00:f44f:560d:2216:44ce]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49494172-06e2-4c1a-48c2-08d820a11f87
x-ms-traffictypediagnostic: BN8PR01MB5601:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR01MB5601D4A5382C3AA5890D6A4FB8680@BN8PR01MB5601.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 045584D28C
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NJx+O3WqL4oFhG5bm6f4+hQu4so7GqOwXOgusfIP9FlVkBxQExR4j6jHKQvodm+p898IiiipoFT20/pPjH8Rc8NSKKNsYPbjdlNs9l+mUWn7EwKQSo1BsPMo7IvVbH1KOxMnqQpdAIgXG7m8ah6nkf62o5wCDrKS0yc0v9znTqWNIkYYpZLtDaClUj/E8FEsg7SpfRfBhzx9KYqxnjnAJHm+eaH9LUcck1N0kqtnx7I1n3eaNnQv8JAK8OSWV1JjVluxAnCvoQF+rPTK5FNxMbw/RvcfH42W1+IZB6fdOh4z1L6JerLy7r0HFmY0ugE2VcQ8HoV2w3/f7v8Vy90O/w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR0101MB3026.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(66446008)(76116006)(64756008)(6486002)(36756003)(6506007)(8676002)(478600001)(83380400001)(6512007)(786003)(316002)(2616005)(86362001)(5660300002)(4744005)(66946007)(91956017)(186003)(66556008)(66476007)(2906002)(8936002)(6916009)(33656002)(75432002)(71200400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: +FryVv+vlNatwq8SllZ9L3PQScBypMlCIL5bRjWvC9MsfCixM56Os+y4JmsabaFXS/35Xgzq/WpB0pN7zzqWW0h7Hm0PGE1IJLFfWZIqrPSPSPNVIpX9FQYIeJc6Oh8DOZYLelSCFepat+0EsiDkUTvcLbtVFTwO+dPL10vHaG2Q2XGGwFqeKr29hAXiePzb5o1gfH4JeXnU8Z4XHYNK/J21TmiDjMmTSLUg/EviVZnkTsZQ2jtpl+ulEBNbz1Wg864ixtwY/jC8SweiDjdcekG2f0aWoVlVkCGeRKCsMQZcxPGljv+WLjPti6rcTtTP5lh0DLMHddQx3wbwFUyw/BYlksHAQMUA/7R3Lca9CSUdb181Ij2ki/4LI/DEHDSIGkMGrrttrsBJxHq3arDu33DXPhibCdKR+FvI9fpRiaIjy/AhAHc3eZXVDgEg6f2ulo1o1LbUW0+OrBu6WbJYv5ViiJAx71lActkEpptTVQU4d5HcqHHnAW9wDuPFbG0a2A87ieI041lq0NScmZVLHWapd78XNuAjoyMB++/5L9MoqJ1WSUyY0Q/ykGdLIi96
MIME-Version: 1.0
X-OriginatorOrg: skidmore.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR0101MB3026.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49494172-06e2-4c1a-48c2-08d820a11f87
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2020 05:06:06.2209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fdd86edf-0620-48a2-a66a-be4daf7bf919
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pGi602/RPt5AEW/kGaHAVVPw8AkZyJe/gzhrwCtZFypBcCjk0o4lB/T9tl85tEeMxVmGVc4SuRUEpULCUaCGAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR01MB5601
Subject: [USRP-users] Newbie question on N200 and gnuradio companion
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
From: Anthony Holland via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anthony Holland <tholland@skidmore.edu>
Content-Type: multipart/mixed; boundary="===============1145737569645789992=="
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

--===============1145737569645789992==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4AE1E89928D94C0E8642811A422F47B2skidmoreedu_"

--_000_4AE1E89928D94C0E8642811A422F47B2skidmoreedu_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gRXR0dXMgTjIwMCAvZ251cmFkaW8gY29tcGFuaW9uIGd1cnVzIQ0KDQpBIOKAmG5ld2Jp
ZeKAmSBxdWVzdGlvbuKApuKApg0KDQpJIGhhdmUgYSBnbnVyYWRpby1jb21wYW5pb24gc2V0IG9m
IGJsb2NrcyB0aGF0DQpQcm9kdWNlIGEgY3VzdG9tIGRlc2lnbmVkIGNvbXBsZXggcGVyaW9kaWMg
d2F2ZWZvcm0NClVzaW5nIHRoZSB2b2x0YWdlIGNvbnRyb2xsZWQgb3NjaWxsYXRvciBibG9jayBp
biBncmMuDQpJdCBvdXRwdXRzIGEgY29tcGxleCBwZXJpb2RpYyB3YXZlZm9ybSBhdCAxMDBrSHou
DQpJZiBJIHB1cmNoYXNlIGFuIEV0dHVzIE4yMDAgd2l0aCB0aGUgYXBwcm9wcmlhdGUgZGF1Z2h0
ZXIgYm9hcmRzDQooVGhhdCBnbyBkb3duIGJlbG93IDFtaHopIGNhbiBJIGp1c3Qgc2VuZCB0aGUg
b3V0cHV0IG9mDQpNeSBlY28gYmxvY2sgaW4gZ3JjIGRpcmVjdCBpbnRvIGEgVUhEIFJTUE4gc2lu
ayB0bw0KSGF2ZSB0aGUgc2lnbmFsIGNvbWUgb3V0IGluIGFuYWxvZyBmb3JtYXQgZnJvbSB0aGUg
TjIwMD8NCg0KSeKAmW0gaGVzaXRhbnQgdG8gc3BlbmQgdGhlIG1vbmV5IG9uIHRoZSBOMjAwIGlm
IGl04oCZcyBub3QgZ29pbmcgdG8gd29yay4NCg0KVGhhbmtzIGZvciBhbnkgdGlwcy9wb2ludGVy
cyEgIChNYXliZSBhIHdvcmtpbmcgZ3JjIGV4YW1wbGUgdGhhdCB3b3Jrcw0KV2l0aCBOMjAwPykN
Cg0KQW50aG9ueQ0KDQo=

--_000_4AE1E89928D94C0E8642811A422F47B2skidmoreedu_
Content-Type: text/html; charset="utf-8"
Content-ID: <0F74B905E8B8014CBCE1D070146029C5@prod.exchangelabs.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsiIGNsYXNzPSIiPg0KSGVsbG8gRXR0dXMgTjIwMCAvZ251
cmFkaW8gY29tcGFuaW9uIGd1cnVzIQ0KPGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9IiI+DQo8L2Rp
dj4NCjxkaXYgY2xhc3M9IiI+QSDigJhuZXdiaWXigJkgcXVlc3Rpb27igKbigKY8L2Rpdj4NCjxk
aXYgY2xhc3M9IiI+PGJyIGNsYXNzPSIiPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPkkgaGF2ZSBh
IGdudXJhZGlvLWNvbXBhbmlvbiBzZXQgb2YgYmxvY2tzIHRoYXQ8L2Rpdj4NCjxkaXYgY2xhc3M9
IiI+UHJvZHVjZSBhIGN1c3RvbSBkZXNpZ25lZCBjb21wbGV4IHBlcmlvZGljIHdhdmVmb3JtPC9k
aXY+DQo8ZGl2IGNsYXNzPSIiPlVzaW5nIHRoZSB2b2x0YWdlIGNvbnRyb2xsZWQgb3NjaWxsYXRv
ciBibG9jayBpbiBncmMuPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPkl0IG91dHB1dHMgYSBjb21wbGV4
IHBlcmlvZGljIHdhdmVmb3JtIGF0IDEwMGtIei48L2Rpdj4NCjxkaXYgY2xhc3M9IiI+SWYgSSBw
dXJjaGFzZSBhbiBFdHR1cyBOMjAwIHdpdGggdGhlIGFwcHJvcHJpYXRlIGRhdWdodGVyIGJvYXJk
czwvZGl2Pg0KPGRpdiBjbGFzcz0iIj4oVGhhdCBnbyBkb3duIGJlbG93IDFtaHopIGNhbiBJIGp1
c3Qgc2VuZCB0aGUgb3V0cHV0IG9mPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPk15IGVjbyBibG9jayBp
biBncmMgZGlyZWN0IGludG8gYSBVSEQgUlNQTiBzaW5rIHRvPC9kaXY+DQo8ZGl2IGNsYXNzPSIi
PkhhdmUgdGhlIHNpZ25hbCBjb21lIG91dCBpbiBhbmFsb2cgZm9ybWF0IGZyb20gdGhlIE4yMDA/
PC9kaXY+DQo8ZGl2IGNsYXNzPSIiPjxiciBjbGFzcz0iIj4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0i
Ij5J4oCZbSBoZXNpdGFudCB0byBzcGVuZCB0aGUgbW9uZXkgb24gdGhlIE4yMDAgaWYgaXTigJlz
IG5vdCBnb2luZyB0byB3b3JrLjwvZGl2Pg0KPGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9IiI+DQo8
L2Rpdj4NCjxkaXYgY2xhc3M9IiI+VGhhbmtzIGZvciBhbnkgdGlwcy9wb2ludGVycyEgJm5ic3A7
KE1heWJlIGEgd29ya2luZyBncmMgZXhhbXBsZSB0aGF0IHdvcmtzPC9kaXY+DQo8ZGl2IGNsYXNz
PSIiPldpdGggTjIwMD8pPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPjxiciBjbGFzcz0iIj4NCjwvZGl2
Pg0KPGRpdiBjbGFzcz0iIj5BbnRob255PC9kaXY+DQo8ZGl2IGNsYXNzPSIiPjxiciBjbGFzcz0i
Ij4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_4AE1E89928D94C0E8642811A422F47B2skidmoreedu_--


--===============1145737569645789992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1145737569645789992==--

