Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F86DC39D
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2019 13:06:08 +0200 (CEST)
Received: from [::1] (port=58228 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iLQ57-0003BQ-5Y; Fri, 18 Oct 2019 07:06:05 -0400
Received: from mail-eopbgr70112.outbound.protection.outlook.com
 ([40.107.7.112]:26436 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <demel@ant.uni-bremen.de>)
 id 1iLQ52-0002hG-FX
 for usrp-users@lists.ettus.com; Fri, 18 Oct 2019 07:06:00 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZMQxn96g3W1YIjkvIJhhnpouslya1ry6hnFeUMX7gi8zUR1/zeKRSD7/7yNXW+v4ajVuh+ipVZ6LbqiBHGaUvoeZuVATfYHNOnENqD3yZxGqpkTsT0ZeWz5+HL9clNhuGrTjBVnsnx2dmG3qp9foxmiEBkJTe2aBA7vaH36aZhV/OenltELc5qZmh4Jis3Hs22694bZkiIbJnYHe8d+56cVz/XHbKBYqJYV6V18v1MRAwBctuZPuF2VYkDFRAxjWWw7q+dPQEr39imvdvSpAFQXx/P3LDjF2YtmXcJDG9DtojWMw9gaBYxB9upFiRmteY8CII10o+AX1hnIIksMcsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zLA9l5bsHi+PLnnlT+XaHwaCshIfTjEGppTLTHbLDxA=;
 b=aBUwmfgjclMZXHAfzqbbEMEJUELFL86M3ossMLSpdfqwbRRnZQ0vbAjYZKCHSPbv2J2gw4LUtoEkB3tI43o6M8xOfTuqgyTurlzBRw2CjHZC9QK4w6U1YfW58NqpaKH/FVXj63A8+mMce25bCzMiAzWIgF4L6rKq+VsALaGRJj/LNE4TTko5g01lYK3s3gEmUTPJhIHQyUGsWAdT80kq+8npPBPXRNhqWlhaz8xjXMptCc8FyZtB/bV5a+74kWMWJH6r2uiKspC1SXFZC6TOkCpDi8o/24Rcq+XDXQmq8hwrbHsyjDr7tko8JIu11Y8+aUYUHDACXQWo1qhlSIZQow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zLA9l5bsHi+PLnnlT+XaHwaCshIfTjEGppTLTHbLDxA=;
 b=XGgDcR+EpRpcMJzkLqoatRGWWcO0qZMJ73qGYF2+8XG7a/1LBAB571UKdv5R07qxLyKRZhEL2JQIvK9jRR4HMye1eus//vGGbATiWZhzfFGulEN0KiWMHYGWOa4t/OTgaHfGPIbOtrvuRaKX7e3tYVx6XFwh3eRQ58V5b+Y5dAM=
Received: from AM0PR04MB6787.eurprd04.prod.outlook.com (52.132.215.71) by
 AM0PR04MB5409.eurprd04.prod.outlook.com (20.178.116.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Fri, 18 Oct 2019 11:05:18 +0000
Received: from AM0PR04MB6787.eurprd04.prod.outlook.com
 ([fe80::51a2:617d:239b:de85]) by AM0PR04MB6787.eurprd04.prod.outlook.com
 ([fe80::51a2:617d:239b:de85%4]) with mapi id 15.20.2347.026; Fri, 18 Oct 2019
 11:05:18 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N310 sensitivity
Thread-Index: AQHVhaPsjO8CzGwxBECLUJpVZ5PMsw==
Date: Fri, 18 Oct 2019 11:05:17 +0000
Message-ID: <0317ead0-5a23-2edc-7b80-3164cfe1dbc7@ant.uni-bremen.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR01CA0068.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:e6::45) To AM0PR04MB6787.eurprd04.prod.outlook.com
 (2603:10a6:208:18a::7)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=demel@ant.uni-bremen.de; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [134.102.176.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5097524e-b636-492d-d7f3-08d753bb0f65
x-ms-traffictypediagnostic: AM0PR04MB5409:
x-microsoft-antispam-prvs: <AM0PR04MB540920313976F71851708453A96C0@AM0PR04MB5409.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(366004)(39830400003)(396003)(136003)(53754006)(199004)(189003)(86362001)(2351001)(316002)(81166006)(81156014)(25786009)(2501003)(508600001)(6116002)(386003)(305945005)(8676002)(66556008)(3846002)(102836004)(7736002)(786003)(5640700003)(64756008)(66446008)(8936002)(66476007)(6506007)(71200400001)(71190400001)(31696002)(99286004)(2906002)(5660300002)(31686004)(52116002)(26005)(486006)(256004)(6486002)(66946007)(476003)(6916009)(66066001)(6512007)(186003)(7116003)(2616005)(14454004)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR04MB5409;
 H:AM0PR04MB6787.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: ant.uni-bremen.de does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W5w4szlF90NPY6bNgb8RguqBsRGqsQHmUlhSrF9vvQiXPOX2uG491LacRnCoKOd9sR9rZUqawK4w3KgyNBOoTMYvE6ll3qbskg0yK74w81tXHFSqb9VX0n7rBX1XVvh4je+b2evaPPozK0zk2b+Jkwf8QPDNSSibmoEouP6UKsqk+GReWpN9SlG4WzzPL/AYHgUa/7AD6TKn3tAL8UB029S0JvW+G1Xmz0vcD2F2as6KrZppKT+Hcoo2+9ruUbdyAZbRaUPwjSUUEzZPxDSAVoJiK2bGnLcGlLHwcmKbK+iUv8Vlx1zAVWfRhY+zfFCm6Wj01kt39sOy6nKw4pHEYaC+R0ufsL5zb9CPtEgmJnM8G/wotShDYxxR3m8VL9NTP2VLcE4R8EwQWYamWN9cQsVdM2dt0euFrwyNb3F1xmU=
x-ms-exchange-transport-forked: True
Content-ID: <DABF9827D9322940B0F5C7EF74D2F317@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 5097524e-b636-492d-d7f3-08d753bb0f65
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 11:05:18.0388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wJrO5kXlhNBR3sQwAGCGWK1PUeyTb6x/33b4GG+Mgkptpsyupd8RsQlaiqI+SC3VSPi055Hld3tB4iRextxmsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5409
Subject: [USRP-users] N310 sensitivity
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
From: Johannes Demel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johannes Demel <demel@ant.uni-bremen.de>
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

I figured out how to use our new N310s.

I ran into the next issue. Let me describe this one briefly.

With our X310s I set TXgain=20 and RX_gain=10. Both devices are 1-2m 
apart. I observe a really nice RX constellation with gr-gfdm and 
XFDMSync with bursts every 1ms (burst length ~50us). With our N310s I 
set RXgain=60, TXgain=70 and still, the constellation is very noisy.
My assumption is that some part of the RX chain is not configured 
correctly. But I don't know what the problem is in particular.
Also, I used an X310 as transmitter and an N310 as receiver. But the 
result is the same, the RX constellation is really noisy.

Another observation is, that my RX sample stream in a GR time sink does 
show quantization artifacts. i.e. I can see discrete steps which I 
assume are due to low RX sensitivity. The RX value amplitude is around 
0.0005 for the samples that I get of a USRP source. I assume this should 
be a higher value. With the X310s it was more like 0.1.

Do I need to take special care when I only use 1 antenna port?
Is there another AGC setting that I need to configure for N310s?

Johannes

Software
UHD: 3.14.1.1
GR: 3.8
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
