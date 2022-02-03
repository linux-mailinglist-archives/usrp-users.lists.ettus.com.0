Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4774A8463
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 14:03:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99ECF3857DA
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 08:03:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="PdvhZdqH";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.184])
	by mm2.emwd.com (Postfix) with ESMTPS id 868B03857D1
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 08:02:27 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.48.6])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 086BD120069;
	Thu,  3 Feb 2022 13:02:26 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id CF629900061;
	Thu,  3 Feb 2022 13:02:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h1gpPvwzxevZnXzVFklsV1MzzwO2TeLwQjicB+4HW0SpIzkUNIYYgliDmIVhV5g9+jJszxflS/eH7wK6TfPJcNpJMUh7JI447zdD6D8NM0JLVpgeAn7dFbe4zmqf2xj7oVdSzAZULGktOLX1uBWLlc41HyLT+nkRn+D2UeLa6NNutn7cLWdK9RzF31A10yAwtOi70qci1CNSySdsSVmEz2usBFClfHaF40akXyjEDdYqyF/TQR+1j0WtI/HAXULOtHLfmPtm91Do8ZP5Wle19OyE71nFlDCGM+UKzc0nctqfgOsjfRJ8eU1a/Ras4KSLuToVrRfed80ckptYR4suIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tDndPPxm95jBAPU//QLf2atVK+u6AJ7QH/wIrMUTFFY=;
 b=ZIL8VxNBAch5mMQSlo/51VAlCYpWmLS2nSyFOenPLgdZI5tl6USP43PXfhQfO7YidpwOmBVv4l/cY/D5kcNvWVufD3T7ffQqw2fZHRMbH5PVux9WynCUMSelF32RSQRRbjYPC3IwhEyYI7QqRufDvejLcREINOPjvw1OS20e1AYtay4X4Dyujrda59ieMgOCsSvAVdCV7sd3aIE6F425hZjFBKCfbhsPYzKwPR+KNu+ALm33AARgMuB0PAG6OHDzBFeMj+69/KPJSR82lMxnzrM4WiGyXdtDRxwULmdnFIYcfanQ6RiX6wVncUtHH95gtoKhg2blAGO09/ejz2bpRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tDndPPxm95jBAPU//QLf2atVK+u6AJ7QH/wIrMUTFFY=;
 b=PdvhZdqHsdwUR/gZbdF4dW0HF5x9BNKoFtsWVO3zyO34Q1uhGY8DdskHlRJ9coTEXs0t06E/beer3IUPQUnqH3L7UJauIoP63/ZAARKBBS+GDUDS4JPk/FVBkQxVvUYPsHjl32M+AqQFBjDFuWItgTaiuhBYeh4sBcTjWBaYNkk=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by BY5PR12MB4870.namprd12.prod.outlook.com (2603:10b6:a03:1de::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18; Thu, 3 Feb
 2022 13:02:22 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.014; Thu, 3 Feb 2022
 13:02:22 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: 
 AQHYF5tb715UD5NcGUSH5wmFASi3eKx/DJOAgAABTguAAAKNgIABHYZZgAAs3ACAAAaQGIAABXgAgAABXK+AABrGN4AANBMAgAETJBA=
Date: Thu, 3 Feb 2022 13:02:22 +0000
Message-ID: 
 <MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
 <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAB__hTT+rMDuE_Z2G-WPfmL5pa4Gp8WuaxNM8hU2hxK77rwQZQ@mail.gmail.com>
In-Reply-To: 
 <CAB__hTT+rMDuE_Z2G-WPfmL5pa4Gp8WuaxNM8hU2hxK77rwQZQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62bd792d-beed-4c3a-669f-08d9e7156ad5
x-ms-traffictypediagnostic: BY5PR12MB4870:EE_
x-microsoft-antispam-prvs: 
 <BY5PR12MB48709B6C2FC3E3A43CA9F262B8289@BY5PR12MB4870.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5mXKLWKt/ayfyQUQh1Jz8mzjTCGRKRpPSlVOmj0OUvkpIX7380sHbPZalVI8pVJ6L8zXKiS+xWXSO2HGNP0GeiUCvIl8ykj6EU4t3sxkoiSqQHPa+gCduF1iemvbmr18VhoyB1iJykAoAM9pSFanGnG8AP8/t8vTGraccx671x8XmZ08hbimgYoo2Qb3SG8lg/5TpxYXeH8w7lvGELQRVR9wNu//TipfCLzdJYir4tdt3stNzcdUPsq8nSut3NB46ZKBCbrNQDp6SCecBcrFNYQv/zQ3zjyrjZsl3c/dGbH0e53Hv+xndTEAUN2PHFMNtyyrp3OZ/ivg+Pf2nwkLB6Ni0Deig+DjLnEzRVyE1At87Zo35FebbgRrx9x+PpujbgGqK+KDEfp8KRVcmwiVxT9i7eSJao9CEapopASYsCml6MObNIDXpeszMAMXvBOSbyZh0oV5ezmZxFEH+vwuI/j+tj+jt49vKk6FiboPrOT4fQZHiHK+rkAHzPue5aRuwShldCGw2o1cxXl6wKP8/HtsDP6S+QCef0LSm0DROdrSGLrqDQFUPLmpd5SaJzhdZTjJI1S9OO+7CpOEh6fGr2lOsEVjG018prPsmbD2irMWSp7HkITjnu/P/S0VRuCsoSnWPWIxU/JVSCCg06LlLSzsGslfxmVtJ21BE6X68LpmaaSP6m7XKu7RYnLa2GXQ1fA7sfTLwwvuDr2iWM28AQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(136003)(346002)(396003)(376002)(39830400003)(366004)(76116006)(66446008)(5660300002)(33656002)(8676002)(66946007)(66476007)(38070700005)(508600001)(53546011)(4326008)(71200400001)(66556008)(64756008)(8936002)(52536014)(38100700002)(7696005)(19627405001)(6506007)(6916009)(83380400001)(186003)(86362001)(55016003)(9686003)(2906002)(54906003)(26005)(122000001)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?3/VHkxj3YPwT+9yOFF4H1LxEraFTcW6aQKX7Y794PEU4tjF15a19q7Qw1e8G?=
 =?us-ascii?Q?/LiGjwYJLyGvBSReOJwITqTTosoXCt7GVo6jzVxZDn8SqUOGz8BSx2sILv5D?=
 =?us-ascii?Q?7Op0v3pDXlK+fa4ZIV89mz0ZsG4fYBiJfazEyHT/OcZf5+lPDC3g6RVI4Ten?=
 =?us-ascii?Q?xPQaZx3mPnECy36QplGDtU1F9oFQXTi1uDJQVrD0h0qpMo9sTjnslffJBu/3?=
 =?us-ascii?Q?imKaXc+2w129NvWsfD0e9G4Xe2+6OjTWK8yOa5KfMcOXbIo+MyNvu8ZnsUHy?=
 =?us-ascii?Q?SNdAuwu8A8iiGI/OcteeDI2YaUnP3I+A6tS3LboDsJPvhQdePgg6CW9Dmy8/?=
 =?us-ascii?Q?AomOMarpJpnxklz3eOUkXCPYXLzIQi28nm3FFAf9ewSo4p2nVLu52QqJF9JE?=
 =?us-ascii?Q?Isy7vJ8h5gSl151MMc4D9uCSvQOb3Jmo0zsORxfnFdbeC4THCmksjdPAJHXs?=
 =?us-ascii?Q?OqNsf5hP5azF+mpP1orJ9gTTC4tRltrzhVdb/pzoYrIpcySQCf4N4HKOiOY4?=
 =?us-ascii?Q?x1wB9CSW/OhqrjXvLbfp7W+PZmqtc55NyQqEc7QRXjrFgknQAqUk56Fj3QJt?=
 =?us-ascii?Q?38GJocsWH+OU85iuoHZvUU/p8KZzjkqq0fJq8HzLT/lv1qBQf0Hs+L24XsGK?=
 =?us-ascii?Q?LQ0fgPhkREZvF8ZVPu53iBinfEsqghV5ulkD43xNwqPRaD7gMKDS6x5gF1NI?=
 =?us-ascii?Q?ynXOph75/3dylPeyqeexO+uPrtqHn97J8xUwCgs8mPA2l3orXeqQVX7a7UdC?=
 =?us-ascii?Q?Vhju30dI1tXNvbDM3fsgzKZbxm1j6+m6c2JJdr76mcnJ+o5FAgOxRxL6tty4?=
 =?us-ascii?Q?6NDuAXNykw8UPG84IHYkUX48KJNMigmBgMq6HIUoU22KeJCB5ZiHRgcYeti3?=
 =?us-ascii?Q?6zncyh694Y4qMPU9CznAK6p0VQ+dh0IPvXDw05bEXtzIm7mAcZceytLF0+XA?=
 =?us-ascii?Q?S1N9RrDBt4TlJYSVk/lrtqKFbZj7lfy62N0R8NVnne3KdyZjOhwis7MfHvFz?=
 =?us-ascii?Q?tYUTSVYVvx8KqZv5iD7yDdv9lbzkIFU0HdHZbAGgrgGUb0h+WBjHtzP8gRDj?=
 =?us-ascii?Q?/E/UtHECXwJiDGcZehwzWhwU93tSBkRE/qhTiGiyqTO5Z4nHdG9xNbc4AJ1l?=
 =?us-ascii?Q?xvQTzaH+9gVj6/RZempFnkow2Fiob9LQUV/VahS5acXuJALWTyOgKnJQgma6?=
 =?us-ascii?Q?j6iY1Et4Nrb0yhRBakCmOVBCtVREaxWAeDLdvktu2Ibi8m2QtSQnvEj2p7th?=
 =?us-ascii?Q?sJ79wtgymwpec2U0df6b+qT/a864tjAfVE9vCe114OXPy7XjH1guH/Z0XgAQ?=
 =?us-ascii?Q?SiOmiME9sEQNuQzdoFy1J2UDx0PwLn3tkFeJLuGoeRLRx/GzkRxQZsBiPVSB?=
 =?us-ascii?Q?CE3VHeKCw7AquEKEnJ63drruFcH1Wa2O8D10EOcz5JEv3pf8dAutfom2c6S3?=
 =?us-ascii?Q?xjoceEuLAD8AIIa8bEXZU11md84fTZsl1yeJ1MmikrWlUnHXlTgaWwtJrMAB?=
 =?us-ascii?Q?2ALSreOToLtC99Pw3XhxcDoXBsDB/DUqKPK+qob8SrnTnu0PiI01Uy3LTMh1?=
 =?us-ascii?Q?3y70cjiEsA+ajBn9FjQTDPjVTiM47DEadf/yDZqdvXDUnMFh5/iyeCMSH/+o?=
 =?us-ascii?Q?oExNDRecGa2tgtSTroJZJ5guxR2uhhn0hcgQFqVav7vHtCWrs8X4UtKXqxd6?=
 =?us-ascii?Q?wlUa2w=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62bd792d-beed-4c3a-669f-08d9e7156ad5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 13:02:22.1241
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wGRjerKEGjyXiCZjnrD04Jg6nGE+l3TnHFgSe1rBV+6nWVXwvVXUT89oA8syXrc9wyDtz0yXt7LBEsja8Fz9g4usRyI7Bq+84PdW9BYffME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4870
X-MDID: 1643893346-RaPimMjLb7V6
Message-ID-Hash: SMBIF6P3DMXCEB3IJW3KZBFE7MWTGMOQ
X-Message-ID-Hash: SMBIF6P3DMXCEB3IJW3KZBFE7MWTGMOQ
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NE4FXJSUQUE3DS5XNXKF5LXCACGIM5VE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4780616087024163872=="

--===============4780616087024163872==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33127C45BA4FCB2206501932B8289MN2PR12MB3312namp_"

--_000_MN2PR12MB33127C45BA4FCB2206501932B8289MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, Rob. I always appreciate when you "chime in". Hopefully, someone ca=
n try the uhd "test_timed_commands" example in 4.1 to help confirm whether =
or not it's a problem with something on my end or with UHD. Marcus already =
confirmed its working for him with an N310 and UHD 3.15.

Thanks,
Jim

________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Wednesday, February 2, 2022 3:26 PM
To: Jim Palladino <jim@gardettoengineering.com>
Cc: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

Hi Jim,
This sounds like a pretty big issue. I haven't chimed in because I couldn't=
 say for sure if timed commands were working for me or not in UHD 4.1. I am=
 using N321s with shared LO, so the normal commands I use for setting frequ=
ency aren't critical (from a timed command perspective) except for how the =
DDC/DUC might be handling them. In any case, once you find out the issue, c=
ould you please share the solution here. If I get a chance, I will try this=
 on some of my devices.
Rob

On Wed, Feb 2, 2022 at 12:22 PM Jim Palladino <jim@gardettoengineering.com<=
mailto:jim@gardettoengineering.com>> wrote:
Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoenginee=
ring.com>>
Sent: Wednesday, February 2, 2022 10:44 AM
To: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.com=
>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

Correct -- I am using the stock FPGA image for the E320 and the N320.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.c=
om>>
Sent: Wednesday, February 2, 2022 10:39 AM
To: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoengineeri=
ng.com>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <us=
rp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

On 2022-02-02 10:21, Jim Palladino wrote:
Thanks Marcus. Please let me know if R&D comes back with anything. I'm at a=
 bit of a loss . . .

Thanks,
Jim

________________________________

Just to clarify--this is with the stock FPGA image, correct?


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_MN2PR12MB33127C45BA4FCB2206501932B8289MN2PR12MB3312namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks, Rob. I always appreciate when you &quot;chime in&quot;. Hopefully, =
someone can try the uhd &quot;test_timed_commands&quot; example in 4.1 to h=
elp confirm whether or not it's a problem with something on my end or with =
UHD. Marcus already confirmed its working for him with
 an N310 and UHD 3.15.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 3:26 PM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;<br>
<b>Cc:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jim,
<div>This sounds like a pretty big issue. I haven't chimed in because I cou=
ldn't say for sure if timed commands were working for me or not in UHD 4.1.=
 I am using N321s with shared LO, so the normal commands I use for setting =
frequency aren't critical (from
 a timed command perspective) except for how the DDC/DUC might be handling =
them. In any case, once you find out the issue, could you please share the =
solution here. If I get a chance, I will try this on some of my devices.</d=
iv>
<div>Rob</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Feb 2, 2022 at 12:22 PM Jim=
 Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com">jim@gardettoe=
ngineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_gmail-m_7375824889804353296appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_7375824889804353296divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com" ta=
rget=3D"_blank">jim@gardettoengineering.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:44 AM<br>
<b>To:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Correct -- I am using the stock FPGA image for the E320 and the N320.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,
<div>Jim</div>
<div><br>
</div>
</div>
<div id=3D"x_gmail-m_7375824889804353296x_appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_7375824889804353296x_divRplyFwdMsg" dir=3D"ltr"><font =
face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>=
From:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:39 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank">jim@gardettoengineering.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div>On 2022-02-02 10:21, Jim Palladino wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks Marcus. Please let me know if R&amp;D comes back with anything. I'm =
at a bit of a loss . . .&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<br>
</blockquote>
Just to clarify--this is with the stock FPGA image, correct?<br>
<br>
<br>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB33127C45BA4FCB2206501932B8289MN2PR12MB3312namp_--

--===============4780616087024163872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4780616087024163872==--
