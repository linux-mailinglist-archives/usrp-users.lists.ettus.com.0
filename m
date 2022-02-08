Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A204AE29C
	for <lists+usrp-users@lfdr.de>; Tue,  8 Feb 2022 21:36:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 944AD384B17
	for <lists+usrp-users@lfdr.de>; Tue,  8 Feb 2022 15:36:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="KsrLuMdv";
	dkim-atps=neutral
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2081.outbound.protection.outlook.com [40.107.220.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 6EFE1384627
	for <usrp-users@lists.ettus.com>; Tue,  8 Feb 2022 15:35:19 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QdAN6c2jpaygmzXmZxTDlVboRmqNvl59YiS0thPYckqb72p8ibu2pwNUrtPqMjpgu7XAnvp4e1Mm6PN7ZcDm7jVMrHD1kl8qbD4q6SSSGt9v2q8b+AZ0KB0LbnTJ4T/ioiHeaYstbfj8CTpOwz4o/1ll7N2/brlc5uGoWMwuDA5nefI1KtZunvGhRLXakABW6JwC2X0Q1hN5fVaUrCddPqliHRf5q6K88w7Dz/eKvepp74R6ibseR0EBNXQ1hs1y2Vf61xD/sPYTCMVt/Ky5uPiH9Zqb1Qj8Czc+4wwWjPA5IkHqXYUvziEgdjxFFhb5yxxPBknXUJpysgYQ4OIsgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0knVrWfo+oPstvdsa6Lw71RaWLIwr/HTLn/fazgsCzA=;
 b=dGNna/Srp+Ur7ZPADoyLIcdhj5eVX4luecVzZwlh0kKlyKFjpxyPHiUkk1tuIoQtvESppyai3bPCdoQERi8tTDAxkWkoP6e0LA6Co/GRu9/SltIDyo4701c2GSihMpNVd5YDsDnp0TX5+++Csek7MbEmSradMCgYVm04W2ao9loSGx7xlxr+0e7kacLNq6FFBo1Rqpt0DfVaHDg1LUpffKwfriq/M0I5Nfcsscv02MlebjL/YiQHpENJglL6eDHUApiU+ofyapJIBUtnfY1s7gtoL1Lazb3e6DTc72RVplxyv3VO+k4jj+PLT3dwgpiVyO9ZHzZK1nzVIbXzG+JrxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0knVrWfo+oPstvdsa6Lw71RaWLIwr/HTLn/fazgsCzA=;
 b=KsrLuMdvs9cmttuCOki58k31m8YM1XThqonjihpkUBYxNBUdDpghHV0WauoHEGf1dSjTJcZ7+ZC7G+awkW/QX0BCBUDI3fkxwo9Sn5JdAjm180hQn87rtPyBtcPRIwtND/JIC12KgyQXeshxkIXmAT6jqhyf2ayOybwi94kHooc=
Received: from BY5PR16MB3491.namprd16.prod.outlook.com (2603:10b6:a03:1a5::27)
 by MW3PR16MB3755.namprd16.prod.outlook.com (2603:10b6:303:43::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.19; Tue, 8 Feb
 2022 20:35:16 +0000
Received: from BY5PR16MB3491.namprd16.prod.outlook.com
 ([fe80::3545:f307:c86e:38b9]) by BY5PR16MB3491.namprd16.prod.outlook.com
 ([fe80::3545:f307:c86e:38b9%5]) with mapi id 15.20.4951.019; Tue, 8 Feb 2022
 20:35:16 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: 10GbE Fibre SFP+ module on an X310
Thread-Index: AdgdKa8uf8p0+JtiTE+VjlDrgu9/2Q==
Date: Tue, 8 Feb 2022 20:35:16 +0000
Message-ID: 
 <BY5PR16MB3491497C4FC584665B18E6BBB92D9@BY5PR16MB3491.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79fbec31-36c7-499f-35ba-08d9eb42841e
x-ms-traffictypediagnostic: MW3PR16MB3755:EE_
x-microsoft-antispam-prvs: 
 <MW3PR16MB3755C7C55F09BFB1F7A9042FB92D9@MW3PR16MB3755.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 rgAmmn+6ICx0INz+BFjnOvWwM+AGy3ftOoHcJ4JOhP+0n91eEzhsnpoWUT4e8qGL+hEoDxxCdP1xlYDLYzx6NazhstyDmMOgCqZYVIszOfdi/+HfRoDCK/OnC1nOn7ZMeTDT1owUogAagWL7Ix591ypZ/ZhjZJEmDRet+BvhKFu19Ml0z/CR7pPXM4ZGPfPIR2bOpBjtFIIQC+so+qxTyBbJwmoqeKQTBs7C6JDNmmsMsUNGrvA5QUQu5MUEr6oe1YCl6i61OwXeOO+BFatcsi/OIv80w39H7ejE5YB6D6owG1jRKndejabd2/mjV1izYeDLmu9tXMyt5T3LamJRAH5mINNTPr7H+svHfFt1qHn7T1pHLEb6uTck8YCaSj5s+Um8veclbt7KKZSHnh012zEBQHvvsIDWsMGUsSTzj2kxh+c1Mehkepyig1AEd0dOuqmsjbOoXAGp4Q6df8Qx7yoXf87erANUa/h6Y7Sv0yL9E3gY0PlaRiWjmBNQdUwewvGoHlURFCWNRzAQNVgKG+1V9nMHJXC8Vehw3V+evrvNnuaPR4XPq7ukXvqNjLKugLBigsESU+D0tvGrx7JpaKae9Xa40KQoI/EMW1dXz7R+1E6HzrnyH6dmrJfvM0zVbUYylWb3sZ/FAfwlApMCyBAbaR0XPHWHoveecZto5luSZmsvoInVQbrdLxY8eTOjoTVwBsWBs4hdmbcS51P/wA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR16MB3491.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(136003)(396003)(376002)(366004)(39830400003)(346002)(4744005)(5660300002)(316002)(52536014)(6916009)(508600001)(8676002)(8936002)(66556008)(66476007)(64756008)(66446008)(2906002)(33656002)(76116006)(55016003)(66946007)(122000001)(38100700002)(6506007)(9686003)(7696005)(186003)(26005)(71200400001)(86362001)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?G/B0/W3Ec+NVetBJxYVh5ZNrn53+byHKBlQJR34k9AJ9jwjbS65smACQlzMs?=
 =?us-ascii?Q?TF7ITskFi78wpFfGHXpGeWhqBAhnRtIOyBJOotjfFB3tQg37sVbXb+V0W8MG?=
 =?us-ascii?Q?vy5cFDMe4mCncyhV9q3/AQzqtPqj1jsUmfg0NlZKL7igol8gBvsKXdtDNu9c?=
 =?us-ascii?Q?nDN/gFVIwOdBRLUBmUvf2AWm40N7281Dm8CDUHHz1cEn/R72HcPuaNctdozN?=
 =?us-ascii?Q?f4gKrzPYQQ2o/x/gMQyjIyTqQsdT3y0hEl39fkU9MkBYLHwiGpbjbOJUROR8?=
 =?us-ascii?Q?cFf5FVBzVsOVMjLly5TkdoqQ0H1eA5SMnCs+ZnPGu8HVc4joeyIqrI/UGeVo?=
 =?us-ascii?Q?wLQQoUOIcN8vSXkjy41oh2Ox60Xip/jAyu8n2zTTeudMNf2PxDh12skTs9rj?=
 =?us-ascii?Q?JTO5fFTA+S96hVEPoqgiMfUE/fP/wQNtnflukgxRHckvu2eV01/U4l9Fs9+X?=
 =?us-ascii?Q?vvrzNhYmfVp1+Tmcfl/toPP+ZI0GdQtj0qh8LM9XjTdjd/09hfA39a4fnWHQ?=
 =?us-ascii?Q?fdqAAwjvd6LJQzPOETPPwlhUqVboDZmYKbEmTgh6aPqB0K5jC2ziYS9gxdp9?=
 =?us-ascii?Q?JVZf3nGGHZguHVf13ZWB6YHrOrK2T92bv/vwq5BjhulGJIl4oQ9RmK+mEDc9?=
 =?us-ascii?Q?4FMAn1X15vLhdLkP1JOTJzdGSDbtiI/lSE+XK63kNQMD5VPe1A7yupBv/btf?=
 =?us-ascii?Q?mutRPXBkWQs6U9nb2Y55Y0rtlOr1PkLDm1dVogzzt/52T6afYPFD0JWI2KEw?=
 =?us-ascii?Q?ejF/xR85kBwdgrWDTbjXzBQRZ2gmD+zwMVh2jhGnJrrpf1bIgq3hsWinLQtF?=
 =?us-ascii?Q?ljdX4ob7qchi9+thrVGOBNoYfHz93LqV4XePMBf3wMvj69D3ZbMklcwnmI+D?=
 =?us-ascii?Q?25jst842231oNgk5EkccxDDzkLY2tRT4rUQbRFM+LeYR5JU0fsDQBRgH5dZg?=
 =?us-ascii?Q?PbKRhfvPStC0As5K7AVNkzNPyrpedtabnfjx5vPxJinPihdlrOATLJqUTzw9?=
 =?us-ascii?Q?y6WP0JaEmcZ+HSY6NF1BCwAZ9xe3xkUQFhWEuK/mqrQjKNnPvHYgclEv9Dqn?=
 =?us-ascii?Q?dE4c+epB2z+CVVsb+XVVdXncwbxZw+Y/HXvEmHcp2ahTSVC6roHF5qN+ZyQp?=
 =?us-ascii?Q?wTQlf6krXy/2gXI23N0e87XvS/8rJlZGJKMwE8gGkLPBnh271kt4WesRLGMD?=
 =?us-ascii?Q?iEeedGkXFQWJVRyVPC77o4AcyQvd4AFIszZvjL0/2d65k7ah88h2it2Ly3yb?=
 =?us-ascii?Q?xWUC29zEceZV1U9kZ8w/gNBNDzVxzoJCQxUrCA0Dsio5vJkM3GU+p8iLaiXN?=
 =?us-ascii?Q?ETXps2/4DPNb8w1kWot6dFGZ18JJCs2GSLshaRYjQBrNaNq7ya6urjLyKGXk?=
 =?us-ascii?Q?Z5R0vRDgxngzqs/Cx8pSgbY0jby4AvhfAwtD5E8TJP5C3R0KtMk8oaLXKums?=
 =?us-ascii?Q?acbAEK/rNM98vDln6EDafNl8kmEXPnCpouRBM8pWB6QGM6ZUBOVrt2euu6/C?=
 =?us-ascii?Q?FYRaZRlfpAErtAaCmjiVSssZJB1qKxWyoUeIqITXAMlc/bVmhK7FVOjst9rR?=
 =?us-ascii?Q?xR1KsxhE6kVmVxgWYOrPoZD8c/q6SeBpUjSx3bzE3YT4up3Fxkj9vSnqTCnm?=
 =?us-ascii?Q?hQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR16MB3491.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79fbec31-36c7-499f-35ba-08d9eb42841e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2022 20:35:16.4858
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0x72NRoEB5BLFjL/RMQngta7Qyb/oaCemUL7Blw5skVmByvCzrNhAsrNHKE2I7uC9QUfK4T1nIRgN9BCwyUomA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR16MB3755
Message-ID-Hash: CTMY7Z6I3CEXPTMANF342WBDRVIMNMQC
X-Message-ID-Hash: CTMY7Z6I3CEXPTMANF342WBDRVIMNMQC
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 10GbE Fibre SFP+ module on an X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3PPR7JIHCSH2APSKD5IYTX6VWIIJXI6W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Hi usrp-users


Has anyone had experience using 10GbE SFP+ modules on the X310 for fibre connections rather than copper?

We have an X310 and a 10GbE switch. Both are able to take SFP+ modules. The X310 is programmed with an FPGA image that allows for 1GbE on port 0 and 10GbE on port 1.

We have some 1GbE fibre SFP+ modules which work on the switch and the X310 (in either port) for 1Gb ethernet.
We have some 10GbE fibre SFP+ modules which work on the switch but won't work on the X310 (in either port). We can use them on the switch to communicate with a 1GbE SFP+ module on the X310 (in either port).
We had a similar (but reverse) problem with a 10GbE Cu SFP+ module that would work on the X310 but not in an NIC that we were trying to use at the time.

So does anyone have experience with a brand of 10GbE fibre SFP+ module that works with the X310 or is there a reason why this won't work?

Thanks!
Jonathan Pratt 




_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
