Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A456836CC
	for <lists+usrp-users@lfdr.de>; Tue, 31 Jan 2023 20:48:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1959D383FBB
	for <lists+usrp-users@lfdr.de>; Tue, 31 Jan 2023 14:48:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675194527; bh=mdkIW5bxI/Q3I3rOjKGMxYEoSXj92K6hSzCTVHtvsBA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XeNozrlqM1h7Fy9e7g7b74XVm02DCPzbjOG8v1Hdvl/yxDUZ4wC6leLYylEWmoPdv
	 UCvzcserlPlooNzYAIdWzSug0OFVGJRoR2hDltI0ZYaXKSg4gp3dGCSQav3nUlg75H
	 Rd633YB1IHNxzJ8wEe+shguY9Etc+QcLvJ/7yylYC0nCb6t3qdQ33ZM3GKFQMHvofi
	 yv145zggzuXHGOwZD4IlxwPqkWTtsUClTkE3NtSyogjJGEdS4T+aXpRsOAGxxo4vX+
	 aPKKYWteKzOuYZ9AxLQGe5lqdqzXUIXkk1Kolzz6WNM5drOxlYi/50Y/mslyk8F+Tt
	 6uFxHeux7Z8/Q==
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2080.outbound.protection.outlook.com [40.107.93.80])
	by mm2.emwd.com (Postfix) with ESMTPS id 475C5383D56
	for <usrp-users@lists.ettus.com>; Tue, 31 Jan 2023 14:48:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="NGuDZ4iS";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QV0ZCrnCi4p64+lgZ7hjcZEzeUu2X3dKm1HIaTKHmFapnqRNhu5tLI2qqgG7J16v9OrprQ5WInylebUHU19h7LfUmWBvRAJNzxmV8e4gY0a3Ats2NqjNVcY8C5EVmz3BOiHwdaFw15+fvDEneioR8+1IloCtYzFep14m3bw+/Kg8bDQinoMrOJhdQ2sdJNvXgHKKa2N2RS91+/Gv1Llt/c7u+ZtVxOqlxpcyTlKRgdr+xvziVwfzCwK9rWbxvarhC94RYwYGWSV+DkfuenOgmF0Fk71Iz/3pKqd/kGmUUXOFi96B2g0PVe0vQYVEC/j6/jXIgQN5CszoELhOM92o1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y0cUeMNMgKk8XRN/Q4ZKcqtErO3kS1A8zGT2DP3tIL0=;
 b=R9GM770kG3TqbuE0drSifwqduUIcRlFB2nlQPggpmkDFRZXJvvLM3mr8YXnmwoIPMphu1xL8ZW7TNA1BZrlTfdOGo1H6K1MLAvYeKn1GwBQp2NdNLYlgIj5btYJgiW3dM7pAG1lhkvI7ukXla/8RyTGK83cjXCOVnrwvblnr5H25bJogEZ2QKpt3K/bX2IX3WyOAIKpQKb4Eg6Sah3WQOiTviFTKHW/q9Dk1/iwzmS2hS/YFKP5nTGpx/RPZtQKW6kdDSyk/rR8567PYoK2ejwjaEdUK6NjQp5VAQj+KUXUxYzMZzmEvLu8kBNZ0iUDGDa+huP9u70LFEgbMMVdUAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y0cUeMNMgKk8XRN/Q4ZKcqtErO3kS1A8zGT2DP3tIL0=;
 b=NGuDZ4iSy/TD4OR7PHn5ZSpvDnonOCgoBCDNgdKYsa+a0gvU7WhmYRmsis7KeW8QvadoxNT1EeP58KHgZy9hBAYJQbgN68fuXUAAyEmUDCa6R6NhLN/Ry3lWDB1nVevzS+JromPxYcLcNMO0wiASbwRKb/Pxp6SeJgi7iak1c+Khh+KNNSvbKJeyRd7REi+k15P1sYVhCFpKhq3qq/KEFZdamfY6oBWUQeRVeT97z8vCykkBnAktb5d5pmQwfTbNS+aGuqWODsr9Q84Rf2w4VL28FHZLCub9c2PItH2QcwMRIfd1ptuPnvBD1Og+ZdW/j38qrklqfp+ALM18aNJ8tQ==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by BN9PR03MB6203.namprd03.prod.outlook.com (2603:10b6:408:100::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Tue, 31 Jan
 2023 19:48:37 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::b0ce:a57b:7946:39b5]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::b0ce:a57b:7946:39b5%7]) with mapi id 15.20.6002.033; Tue, 31 Jan 2023
 19:48:37 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "jmaloyan@umass.edu" <jmaloyan@umass.edu>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Error when synthesizing example OOT block : IP
 "cmplx_mul" is locked
Thread-Index: AQHZMp1o4zQMdTJhN0C7dbvw1CcLK6649KH2
Date: Tue, 31 Jan 2023 19:48:37 +0000
Message-ID: 
 <BYAPR03MB467853DF27EFC17161E17D86D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
References: <UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ@lists.ettus.com>
In-Reply-To: <UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|BN9PR03MB6203:EE_
x-ms-office365-filtering-correlation-id: 01dc2dcb-c2e6-4a65-4664-08db03c42509
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZIfFCANSY6DPkC3Gyvc4FJiDCMYnSvgCE+s6Iq0tDGJkgtkYNmogLplYD9k/I/SZoVKmXvs6M9P23q0lGPl2WSGTt0xJ8vX1mbuJIuFOFgVoeO7Cy08h2GBaCdAnQ2wm4LM0ue3LBAserwySArMFtlFgXOR0ncIdffA/ydI8smY2bYd5KKqydU/9aDG+9rwflE+W+q6B1VW3UIBhc/Q6Li0APt/EbkQL4C+f/VQlnXfEH04nb/81zeAeMreqSk3aGPI4BY7H/4HASKQIGc7BtAvgdygmgEFJ9h5W/uGHd44DSVbqsvHbYe0oQYY5DxE9xgmDUYXQ0PyVrf+ip+KFpMhe4ZX5oJEP99fg0gGSGOKeu0fj8UXvTZU9K1obgaIsm+hWjY64zSwjQci+DOTaVMx3//d0xbE3XKvi2+wORI5ukRKuC99zaHb8Z2dVrVg7Ke1vVlWeFlbRi1Opnp60VKfaux53+WI2oh5F8qLX5qw6LCaR7kXGHHBv2ajp4PCK2Rm4t0zVqGpMzH9KcSwfkLZgOHX7QC+FuOTJ4y5LP/9XbVpvjvjPFDL+lr9+b91qMZMLiEypsvb/UN4DiR2tI53TwWQfig1ywLRYNgn925HoNskqETlf7/14aVECT43AcaJ3Sk9R3Xn5r26VGV1/qghASw7NOtN1O1EEytjPuR0xut+weVSEPOPWM+ajVeARlPxKj7mI1qK7xT92/GjLw6ezX+eURRTk8x6+apoGqrc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(39860400002)(376002)(366004)(346002)(396003)(451199018)(19627405001)(66476007)(83380400001)(75432002)(33656002)(86362001)(41320700001)(166002)(66946007)(41300700001)(64756008)(8676002)(66446008)(38070700005)(66556008)(91956017)(76116006)(55016003)(2906002)(966005)(7696005)(6506007)(786003)(5660300002)(110136005)(478600001)(316002)(26005)(8936002)(38100700002)(52536014)(9686003)(53546011)(122000001)(71200400001)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?SWa80PZvuprGnMbBvH2N7MFb5IbpfWMmeb79EJ40Fvv/G7BZWH0YL/We?=
 =?Windows-1252?Q?eCMQlrAeucc4gPmTr/gZGTI6H0LFHdYe4MtEdILyGTZZVuWSOJu555Qg?=
 =?Windows-1252?Q?/KkUMNLd3kQMvwAqlIMNbWf1ZJWY4XwIL7Q0csJmNlrf0aKWivRqYU9g?=
 =?Windows-1252?Q?iQ1yNcrms/gQeDXT8St4H5AmtfHhPX8tiqZotJgV4UdoHBvq3KvjIWld?=
 =?Windows-1252?Q?xmNpN5q553qiTL5I5w3FjtgEY7KJPy+gmzDpzmIybtKRgM9/R2emNF6d?=
 =?Windows-1252?Q?pPmnkSr/xyX+BQxOB9HeYPEgcNyHQ7yIIgM1Hb/nvjY5mQY5HJLKjPHm?=
 =?Windows-1252?Q?+iaCHr4AdeVRzzLqLBbH1NH2t8n0ACPh3Xzz69jrh3PvaWVoxwl0Xbow?=
 =?Windows-1252?Q?h80QFU6xE5rcDi9CdkE1R1+xAXsu10XBOwOlvj1W3raD/SaoPcxrpbCS?=
 =?Windows-1252?Q?Gy169p+ALGKiAhKOH/6Q5j/AldYQ3gBvZCyu0mvecoXTeK2EwgGnmjZL?=
 =?Windows-1252?Q?z0XSniZ+jbkOBGdYs4NNYDoD+0gjlU57g6f97anUdiqwe8lPznaPiSBL?=
 =?Windows-1252?Q?SxUSYv6PvyLKjD0xrTnXSv5k2z0yjz46v286vd6W3sUfTfi36PC1iYYj?=
 =?Windows-1252?Q?Wad4+o9e1pTmCii+0TUQBYCLu8vqBVdMPM9SI60SnC2WL7N895W3Rpsz?=
 =?Windows-1252?Q?Vga4GIgx6MFQMK8xWAQzBvSuZfNNEOJs7jKE9AVWZSaruiKAT1g0AVpv?=
 =?Windows-1252?Q?M+Phb8OSpiYZdQhp3AWdprxzc8yu9Ac0vwaWCNIWc3nXRSyn+hEvgvOs?=
 =?Windows-1252?Q?ZEjXPSzVMsmKU8wWpgopkVOnG9mBTnJ5rhwJU/oBoGnWizUx+EJtfa2y?=
 =?Windows-1252?Q?jmJTjE0R47vV2VDhlmy9sHPtGopF3Fjd0aQVJ8lNgQHdfaQtwF1UdYb2?=
 =?Windows-1252?Q?vprwTQTcJ9sho6Ayu9FaZIn/QH+VLMTMCT3FmCK/CV7cX3bc0WdE8gUG?=
 =?Windows-1252?Q?QhlzagTsePUR0kvme5yyZSpPaIQ1w9cwIEVO597hBKMoyxRr7xC9gvsV?=
 =?Windows-1252?Q?TMY1yWLKRLI50vhSV0vbq6570sjPNbuBgwtVCnv18e5IRceM7JWm6NqG?=
 =?Windows-1252?Q?vGZoclXXcquuFN+VX2ljIS8pbONLaBaBTrmD46JpFLsQmEb3ia3rL4Lh?=
 =?Windows-1252?Q?lRljX5UWoNolt3Ho5j0d0xadY0LqPQYIvL5/FwARg3J5Y2KZeVpyvLTM?=
 =?Windows-1252?Q?RKOPLTSAk2/JbhADpto19IZgSAXy0uDm6MLIocu4HdjDmqe/XBEFBT8r?=
 =?Windows-1252?Q?6WwkQcAdchJ75uDKl0fMLTLYAKtPn6b5ySJoec2CbaKzgV4e/6UJ17Sg?=
 =?Windows-1252?Q?WnGKwFwfx/KxL61Cz5M9Z5n9sVrCVa++nBzd3oQxxClSvebB4JlVCHQW?=
 =?Windows-1252?Q?J4DpVm/HFOru2DpTpEM+7FhKyu/pJGpOk8QvuJIBqXS6vZ7FJBbmsqPw?=
 =?Windows-1252?Q?iCFSywI76OfLvRW7yF/WmlAAF2ADqZu7HJic/UcNPPJLh2qO6nyVX0iA?=
 =?Windows-1252?Q?kVef5cKDncNWDtPEXZXcxs8cd4l89PgDuE9uRyR5YrQ4/+M9jvbwTSnd?=
 =?Windows-1252?Q?NQKaWflj91k7wjMpOWj46q4wpQFI20xgjPi8J/D+pIgzjdJav4upTGdG?=
 =?Windows-1252?Q?cql5TKNXRObrC6pU8TbJPQ9Rl2ZF2BBm?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01dc2dcb-c2e6-4a65-4664-08db03c42509
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2023 19:48:37.2739
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 36Wy9jbkNVKlZ0mHsGHFssOqo6Q1bGR4r0/LJ7wx09m/KWqzLuK1Ksi2bHPsfbd/JgBPpvfbGymhtjR+w/wd3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR03MB6203
Message-ID-Hash: 2GBVR4TZHLQCYDIVKR43DQQULYRKH7KD
X-Message-ID-Hash: 2GBVR4TZHLQCYDIVKR43DQQULYRKH7KD
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "cmplx_mul" is locked
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HCRR6B6INCJFTQY7FDIQA2R2LTFTZUON/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0230402565387200473=="

--===============0230402565387200473==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB467853DF27EFC17161E17D86D3D09BYAPR03MB4678namp_"

--_000_BYAPR03MB467853DF27EFC17161E17D86D3D09BYAPR03MB4678namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Same here.
Since switching to Vivado 2021.1 and UHD-4.3 even compiling the stock firmw=
are results in [IP_Flow 19-2162] IP 'axi_hb31' is locked.
Apparently, this error is well known https://support.xilinx.com/s/article/5=
8832?language=3Den_US

I'm trying to switch to UHD 4.4 to see if this error goes away. Everything =
was working really well in UHD-4.2 and Vivado 2019.1.

Best,
Lorenzo
________________________________
From: jmaloyan@umass.edu <jmaloyan@umass.edu>
Sent: Friday, January 27, 2023 2:17 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Error when synthesizing example OOT block : IP "cmplx=
_mul" is locked


Hello,


I have run into an issue when trying to synthesize the =93gain=94 RFNoC as =
described in the tutorial here https://kb.ettus.com/Getting_Started_with_RF=
NoC_in_UHD_4.0


I get an error that the module cmplx mul is locked. I found that in the ver=
ilog file =93rfnoc_block_gain.v=94, the module is instantiated there, but I=
 am unsure how I should proceed working around this.


Here is the output of the vivado -version

Vivado v2021.1_AR76780 (64-bit)

SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021

IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021

Copyright 1986-2021 Xilinx, Inc. All Rights Reserved

And here is the output of the error

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

BUILDER: Building IP cmplx_mul

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

BUILDER: Staging IP in build directory...

BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/=
xc7z100ffg900-2/cmplx_mul

BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...

BUILDER: Building IP...

[00:00:00] Executing command: vivado -mode batch -source /workarea/uhd/fpga=
/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojournal

[00:00:05] Current task: Initialization +++ Current Phase: Starting

WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:

CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the foll=
owing file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg=
900-2/cmplx_mul/cmplx_mul.xci

CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100=
ffg900-2/cmplx_mul/cmplx_mul.xci

[00:00:05] Current task: Initialization +++ Current Phase: Finished

[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z100ffg900-2=
 -mode out_of_context

[00:00:05] Starting Synthesis Command

WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products f=
or Synthesis target. These output products could be required for synthesis,=
 please generate the output products using the generate_target or synth_ip =
command before running synth_design.

WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:

ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources spec=
ified

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

[00:00:06] Current task: Synthesis +++ Current Phase: Starting

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

ERROR: [Vivado 12-398] No designs are open

[00:00:06] Current task: Synthesis +++ Current Phase: Finished

[00:00:06] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

Warnings: 3

Critical Warnings: 7

Errors: 8

BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/=
xc7z100ffg900-2/cmplx_mul

make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_IP_CMPLX_M=
UL_TRGT] Error 1

make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'

make: *** [Makefile:90: N3X0_IP] Error 2

--_000_BYAPR03MB467853DF27EFC17161E17D86D3D09BYAPR03MB4678namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"font-size:12pt;margin:0px;background-color:rgb(255, 255, 255=
)" class=3D"ContentPasted0">Same here.</span>
<div style=3D"font-size:12pt;margin:0px;background-color:rgb(255, 255, 255)=
" class=3D"ContentPasted0">
Since switching to Vivado 2021.1 and UHD-4.3 even compiling the stock firmw=
are results in&nbsp;[IP_Flow 19-2162] IP 'axi_hb31' is locked.</div>
<div style=3D"font-size:12pt;margin:0px;background-color:rgb(255, 255, 255)=
" class=3D"ContentPasted0">
Apparently, this error is well known&nbsp;<a href=3D"https://support.xilinx=
.com/s/article/58832?language=3Den_US" style=3D"margin:0px" class=3D"Conten=
tPasted0">https://support.xilinx.com/s/article/58832?language=3Den_US</a><b=
r class=3D"ContentPasted0">
<br class=3D"ContentPasted0">
</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1" style=3D"font-size:12px;font-family:&quot;Segoe UI Web (West European)&q=
uot;, &quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quo=
t;Helvetica Neue&quot;, sans-serif;margin:0px">
</div>
<span style=3D"font-size:12pt;margin:0px;background-color:rgb(255, 255, 255=
)" class=3D"ContentPasted0">I'm trying to switch to UHD 4.4 to see if this =
error goes away. Everything was working really well in UHD-4.2 and Vivado 2=
019.1.</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"font-size:12pt;margin:0px;background-color:rgb(255, 255, 255=
)" class=3D"ContentPasted0"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"font-size:12pt;margin:0px;background-color:rgb(255, 255, 255=
)" class=3D"ContentPasted0">Best,</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"font-size: 12pt;">Lorenzo</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> jmaloyan@umass.edu &l=
t;jmaloyan@umass.edu&gt;<br>
<b>Sent:</b> Friday, January 27, 2023 2:17 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Error when synthesizing example OOT block : IP=
 &quot;cmplx_mul&quot; is locked</font>
<div>&nbsp;</div>
</div>
<div>
<p>Hello,</p>
<p><br>
</p>
<p>I have run into an issue when trying to synthesize the =93gain=94 RFNoC =
as described in the tutorial here https://kb.ettus.com/Getting_Started_with=
_RFNoC_in_UHD_4.0
</p>
<p><br>
</p>
<p>I get an error that the module cmplx mul is locked. I found that in the =
verilog file =93rfnoc_block_gain.v=94, the module is instantiated there, bu=
t I am unsure how I should proceed working around this.</p>
<p><br>
</p>
<p>Here is the output of the vivado -version</p>
<p><code>Vivado v2021.1_AR76780 (64-bit)</code></p>
<p><code>SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021</code></p>
<p><code>IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021</code></p>
<p><code>Copyright 1986-2021 Xilinx, Inc. All Rights Reserved</code></p>
<p>And here is the output of the error</p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>BUILDER: Building IP cmplx_mul</code></p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>BUILDER: Staging IP in build directory...</code></p>
<p><code>BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/=
build-ip/xc7z100ffg900-2/cmplx_mul</code></p>
<p><code>BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...</code></=
p>
<p><code>BUILDER: Building IP...</code></p>
<p><code>[00:00:00] Executing command: vivado -mode batch -source /workarea=
/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojou=
rnal</code></p>
<p><code>[00:00:05] Current task: Initialization +++ Current Phase: Startin=
g</code></p>
<p><code>WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:</code></p>
<p><code>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for=
 the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/x=
c7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code></p>
<p><code>CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) =
for the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-i=
p/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code></p>
<p><code>[00:00:05] Current task: Initialization +++ Current Phase: Finishe=
d</code></p>
<p><code>[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z10=
0ffg900-2 -mode out_of_context</code></p>
<p><code>[00:00:05] Starting Synthesis Command</code></p>
<p><code>WARNING: [Vivado_Tcl 4-391] The following IPs are missing output p=
roducts for Synthesis target. These output products could be required for s=
ynthesis, please generate the output products using the generate_target or =
synth_ip command before running
 synth_design.</code></p>
<p><code>WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:</code></p>
<p><code>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sou=
rces specified</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Starting</co=
de></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>ERROR: [Vivado 12-398] No designs are open</code></p>
<p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Finished</co=
de></p>
<p><code>[00:00:06] Process terminated. Status: Failure</code></p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>Warnings: 3</code></p>
<p><code>Critical Warnings: 7</code></p>
<p><code>Errors: 8</code></p>
<p><code>BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/=
build-ip/xc7z100ffg900-2/cmplx_mul</code></p>
<p><code>make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_I=
P_CMPLX_MUL_TRGT] Error 1</code></p>
<p><code>make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'</co=
de></p>
<p><code>make: *** [Makefile:90: N3X0_IP] Error 2</code></p>
</div>
</body>
</html>

--_000_BYAPR03MB467853DF27EFC17161E17D86D3D09BYAPR03MB4678namp_--

--===============0230402565387200473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0230402565387200473==--
