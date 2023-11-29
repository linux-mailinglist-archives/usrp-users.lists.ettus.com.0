Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AB27FD411
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 11:25:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9F32384DF3
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 05:25:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701253556; bh=eY8TUdls0lxOBEBIFbxkpm76ebgODCz4i+2ThAxBH+0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ycbGCRtcvsdIwUvORrVInm2B2ryHLV6SWgkhbfLPcabRJHCIw4MhQhof4aqO6X8PE
	 ah9vmN/a4NOmOl8elGNh89E19IN4ja1/8Wir9CCxoXo5vd/dfZmDCcO+lE41RTRONP
	 hYSkgsKQIgqstz8CFQxfKTPYoft0KJr2lGDBquSNO+bt/SRJrnZc612Qqw1rYNTEdL
	 XEnH5t2DIxWn2OWGtllmNIcblfzZZPD6RCdGDi4LXE84HjucC8meTr0iS+aJyt4dhu
	 8TU5R7z+9CzrR6DgzfQEsT7mhV4L3X6fHuU0xzdAO/ikeHnagnQ/HKdmGY4L2E0DDf
	 1hC66wfLv2JLg==
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2125.outbound.protection.outlook.com [40.107.92.125])
	by mm2.emwd.com (Postfix) with ESMTPS id 04F4438497A
	for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 05:25:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="WWNoDFry";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PSu//+K/YsWdvSm05oOqOZNNumnoNgVdvMRFa4PQnDAYlHCQX5AVS99A+ACRZC5gqyVuvtQO7yv0hqPkQRpBtbqY8g0n4KZYe0ufU5SEHRh586vaQbMAZ4dKevusOBtBl8N1iCKj8GjHr+ysvA65VxYpkXHvfTNoylhc8Wx7waYcG/JiexFCtWqCGicJ4vRAoZTyQvLdkgd+sv514I7EMFzFPlGAeodYHtcGdBTUsyx47CgQhz6EQNSYsS3AH5uHy2kBqin4tMgUKbJPjMdCF4sIr3OWCkXafPEtgcVGS6vcYeaVC7xoK5LNqSQ2oD0laE+RcRteNVS38UZmWdvekg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d9IpQfqTu3JwbNuRUk9Q/t7jj7TtXul2t6vfo0w6PF4=;
 b=MLAZqkb+GRAkphLxAJsNed1LRts6yAexHHbwKIXQIr0sTw5zG/IXeQozTmvDFfB4rhjuj5xKvyy1vNT3ctSvaDoPmBN8+aohJDjZGDyGp4/+bq9ujsvx/L0mxbi3hQ/nuTiMlCKr6qATTCfP/+yy5qHZPcXoBs70vDz9cmX/Y4yYNY2/4DBTA03tkxNpxFGv+HNUq3EDROwvo5+j7zP5jGg/NFM+FGEiOe/ap4nccyYEJfFAy8PzNKFFv42+9kEDkvTtcthyQvAtraar1dVLxzQV3ZewCP32IkW9EiQEDTEUyjs//GOiC6VgilEulKUwN+Xoq3q28tdhcQy47nwojw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d9IpQfqTu3JwbNuRUk9Q/t7jj7TtXul2t6vfo0w6PF4=;
 b=WWNoDFryuItOc3n5+su3IY+hiPyInNWmvJtVI9R1Vwlx9mY5ZL8JYs4Vwvk4yq+DSPcuMpY8XJxZAlMwYsFg1w492xKEO7In7LtoSPIF/P4lChu4SEOMEqsuklB1Bz8wO0mLY6x1X7U+Fpi610Ib0WLKfJc2ygrjrcG62kJ6OUQ=
Received: from PH0PR04MB8311.namprd04.prod.outlook.com (2603:10b6:510:10b::8)
 by SJ0PR04MB8538.namprd04.prod.outlook.com (2603:10b6:a03:4eb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Wed, 29 Nov
 2023 10:25:02 +0000
Received: from PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::7a43:d355:d863:ed0a]) by PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::7a43:d355:d863:ed0a%4]) with mapi id 15.20.7046.015; Wed, 29 Nov 2023
 10:25:02 +0000
From: Martin Anderseck <Martin.Anderseck@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: NPM problem
Thread-Index: AQHaIjURwIs6fYKLs0CKQYCIBxtGPbCRFLJw
Date: Wed, 29 Nov 2023 10:25:02 +0000
Message-ID: 
 <PH0PR04MB83111DC4C57ECD58BF93F365F383A@PH0PR04MB8311.namprd04.prod.outlook.com>
References: 
 <SA0PR19MB460276F5EC169D037C7B1FF3CEBCA@SA0PR19MB4602.namprd19.prod.outlook.com>
In-Reply-To: 
 <SA0PR19MB460276F5EC169D037C7B1FF3CEBCA@SA0PR19MB4602.namprd19.prod.outlook.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=cb12baa2-1fb5-4c03-b487-a280e8a5e740;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2023-11-29T10:12:52Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8311:EE_|SJ0PR04MB8538:EE_
x-ms-office365-filtering-correlation-id: 4b0575ec-0c71-488f-41da-08dbf0c5726b
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lF/zOwKHx6LezGvV4nMBzyqWsrJMpvF5yiiUA1C2FOGZwVFtmeUqMLh8ZJokX0f7dh0sl/TMS8X5YRgGQlILDZDY5On0WgQqNZsBKwPuwgdETimu2vmHVRDSAqN1JlwxiELcL/vGZAXzSov1bbx2JY8FLVLJ7p6aC88x1GN4Fj8zmFk/BYGZxCkLC1MsehXjHlkiX65hhe57acO1uMmh36M3ROY0514WqkGXzKe9A/MhxR8Zy/LA1JBcp8ACSCMHMDGECVPFOKNO422nrtC14KipWh45MUB6lwJibWG3rlY5JC6djNeKGe54Me40L1KylmcZ56vRjSBiF7Y4c5X582xvZnmunOWLAU9BUvpAoDYOEoRo0cPS2t7Zhl220+LP/CyTDEf9xK8L01CuZZlJ64vfcuM+gPY+JstU8AyAZqiaBKOqc5yfwhmhGTCpawUgMSviJHJ3+mh1LGoBjdtMRqYNLqRqxrLNjCKmQEQuH5wyzhmbQv9LfOYQznN+tOHLdBaVWJZeCfhCOIM4RnBDhvNetdpIMUlKHmrul5UTiUjfyyHtFsG7QL4lL5xejofp1T1xeUOVehrQYg5vIBOVX4aJ3oojTBXGNmMwJHpEZsM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8311.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(136003)(396003)(39860400002)(346002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(83380400001)(38070700009)(26005)(64756008)(66446008)(66476007)(66946007)(66556008)(6916009)(316002)(76116006)(2906002)(7116003)(8676002)(52536014)(8936002)(5660300002)(86362001)(7696005)(41300700001)(6506007)(71200400001)(9686003)(53546011)(33656002)(478600001)(45080400002)(966005)(66574015)(122000001)(55016003)(166002)(38100700002)(3480700007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?9g9Vc+fvt1PSvX2CaeBCNu8r5irFQzdExRE4DdOPtTjsTJ+dXFljEDmGRi?=
 =?iso-8859-1?Q?pGD/gxLhujLipi00CmRYNQAwP26KAotm0mvCWAAqDuoR50wMX7CH2UYJIX?=
 =?iso-8859-1?Q?r4T9/V8pwmqWdEYiVSdYeUYU5uO5lkUd4tisEMm4dqlwqyiq1MXRGbYH7c?=
 =?iso-8859-1?Q?ah0xbGX8ArOrul2uyVklB4U3Uh0/79HK0lBr7iO4GKWfKn+1kq1mQzalyx?=
 =?iso-8859-1?Q?qKDDDne/94/XHx3qKye5zZcyLttola3if0pu9vqz9GOnZpMbRpAx9cJ2RV?=
 =?iso-8859-1?Q?l9tILjOTO2BlFWf5rTNcqv9mv2f9MZd9qiLCZF3+TwnnX+xX9eF/QVaXuM?=
 =?iso-8859-1?Q?31FMMYlGpw3ZuiecDyGXmB7wDtkE0wexJW8SH0m107LssrB21930Squi6x?=
 =?iso-8859-1?Q?eXGCzZnP4MiMHtcha1t27O5al9iYe7mV4WAEcyyep4WZ0KeYP+ZzuO1w+d?=
 =?iso-8859-1?Q?RgnKSo7cXrqF54AViqaTM46hoDLlUS0KoRQ2qIp48DKTTxirZcNdd37IRS?=
 =?iso-8859-1?Q?KgEhQ9m4Z1nT3lWqi+IDAeiR507QFwpmq8uubfFC7KxNVEw/MTemg8Pdss?=
 =?iso-8859-1?Q?ho0eO7wrhs6+//FWE3E+FlRzlnjTzpgmOGTQMWHLKpW/YF8ZWgCzHoX6VR?=
 =?iso-8859-1?Q?BWgKIzTSZFmzmIqzS4GqvaD29ZfbJKfI3R33v+Rz2KCrcOXnU3EKr+XGY0?=
 =?iso-8859-1?Q?1hsGafA01jJuMnRJ6y6ZHTzw5bEkV8Bc09vwGaeeEO2G4h/C2ZBfjeCA/p?=
 =?iso-8859-1?Q?Ys/VWf8qkRAB9nLxrenODnq4QiFyDSNfx+E9xLK3Ru7TyDoDyAJ9YZvIFK?=
 =?iso-8859-1?Q?SKMrOBHAUN4b2hFNRmT4c93avtJR7FpvcunVtkbI6flm1WMtBDZVaL+cjW?=
 =?iso-8859-1?Q?hPom59hXQfQOG+VeIObCgeSdh1yYypk+Ic1gzCbtbwedwzMNKtUPyjmmnF?=
 =?iso-8859-1?Q?fmGZKEzezBJPxDMPSrBXUqEugAw660Q3Tqmgl/A+0WmCE461XY/nkoPRdi?=
 =?iso-8859-1?Q?kXm+YrsyzVpP+mAdfXScBEX1SNKuEDTeM7BW02NzwfImgCBN62M+tCriwf?=
 =?iso-8859-1?Q?3tCRfJPdK/8kpM953PuHCXgy9gqzS7r1J/XR7EIpFBjuHZgekZn2QP/Sa0?=
 =?iso-8859-1?Q?g4kCXemlt9SCs5PxVTIVjWi0e+g7bkusbb6Xj/L9FM3KyYZcQds9l8GKxa?=
 =?iso-8859-1?Q?Kk1bWh6GydB/Vs/P5lImrQ2peBi9qo5FoS6bfdaPaSgCJPVJ1CExITEYb/?=
 =?iso-8859-1?Q?8anTMdyjbXAz+IxeO0n2wLn3wEy68lVpXn4Ofny7pOKN5u16YtErM6Z2Pt?=
 =?iso-8859-1?Q?ckUZA1pcdDp0v2zF1i3Oatx6vvBWnBkNan9HddDmOI07uMcaGEpyZ1Bv1w?=
 =?iso-8859-1?Q?1CuucMaJeBuvmB8K4KwRAF+JqCYFdAU5+6p6KZoJt1OlrGZMSB1UTaBNOX?=
 =?iso-8859-1?Q?4qHPmT9qMf/CdPLXVPIp2mezlIFQtlTd2IRGUlGD2QG+1wS5UCBHO3EFxK?=
 =?iso-8859-1?Q?xCbgDqVAw/COHIyeGOaHN5OkN+PkcgmH8HDPWfUMVnuIO7jVpfSHTMMmbO?=
 =?iso-8859-1?Q?DPCLkNlowFZbS2n4p6BkZM3iuTo3ZERcnoRtQmqt5r45BISoNrueX4ef9B?=
 =?iso-8859-1?Q?gpLI3gbchu3N013EgMiF7eRhYKILZqMauM?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8311.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b0575ec-0c71-488f-41da-08dbf0c5726b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 10:25:02.1312
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CjdmB6RafSFsm24AM+66fOwOICMzeTVeZsV8WGQjnei6bLsncV6BzR9gmjeoUgjz9xKPVrDdxjNEEv5mcS2l3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR04MB8538
Message-ID-Hash: Z2WVJ4LLUL4EHZ6YAKSYPMALCXP6SIL5
X-Message-ID-Hash: Z2WVJ4LLUL4EHZ6YAKSYPMALCXP6SIL5
X-MailFrom: Martin.Anderseck@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NPM problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OT4RL5M5FCATK2SUI5G76HHXUJI6DO7F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2014188280129824728=="

--===============2014188280129824728==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR04MB83111DC4C57ECD58BF93F365F383APH0PR04MB8311namp_"

--_000_PH0PR04MB83111DC4C57ECD58BF93F365F383APH0PR04MB8311namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Alejandra,

The problem you're seeing is that the software version on your X410(! Not X=
440) does not match the version that your host-side UHD expects. Your UHD h=
ost is at 4.2.1 while your MPM (that's the software on the device) seems to=
 have been at a lower version number. We use compat numbers which do not 1:=
1 reflect a version number as some changes can be backwards compatible, oth=
ers are not, and we might have to change the compat numbers more or less of=
ten than the version numbers.
You mention that you've followed the manual and now the actual value is 5.3=
. That means that your device is now ahead of your UHD host setup. To match=
 those two, you can either update your host software to the latest release =
4.6 or you can install a matching file system image onto your X410. For UHD=
 4.2.1 you can get all sorts of images here: https://files.ettus.com/binari=
es/cache/x4xx/meta-ettus-v4.2.0.1/
I'd recommend using the mender image. Download it, unzip it, copy it to you=
r device and run `mender install PATH/TO/IMAGE.mender`. After this has fini=
shed, reboot the device, login again and run `mender commit` to make the ch=
ange persistent.

/Martin

From: Alejandra Medina D=EDaz <unisabel2019@hotmail.com>
Sent: Tuesday, November 28, 2023 9:00 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] NPM problem

No suele recibir correos electr=F3nicos de unisabel2019@hotmail.com<mailto:=
unisabel2019@hotmail.com>. Por qu=E9 esto es importante<https://aka.ms/Lear=
nAboutSenderIdentification>
I'm starting using USRP X440 with a fm receiver I used before with others U=
SRPs, but when I execute the .grc I got:



Generating: '/home/lab03/Downloads/analizer1.py'


Executing: /usr/bin/python3 -u /home/lab03/Downloads/analizer1.py
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.2.0.1-0-g32=
1295fb
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
0.182.30.35,type=3Dx4xx,product=3Dx410,serial=3D32B5D9F,fpga=3DX4_200,claim=
ed=3DFalse,addr=3D10.182.30.35
[ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.2 Actual: 4.0.=
 Please update the version of MPM on your USRP device.
Traceback (most recent call last):
  File "/home/lab03/Downloads/analizer1.py", line 392, in <module>
    main()
  File "/home/lab03/Downloads/analizer1.py", line 370, in main
    tb =3D top_block_cls()
  File "/home/lab03/Downloads/analizer1.py", line 87, in __init__
    self.uhd_usrp_source_0 =3D uhd.usrp_source(
RuntimeError: RuntimeError: MPM minor compat number mismatch. Expected: 4.2=
 Actual: 4.0. Please update the version of MPM on your USRP device.


I already checked the manual from the oficial web page "USRP Hardware drive=
r and USRP Manual" and I could do some but not the expected, now I got Actu=
al:5.3.


National Instruments Dresden GmbH; Gesch=E4ftsf=FChrer (Managing Directors)=
: John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (=
Registered Office): Dresden; HRB (Commercial Register No.): 22081; Register=
gericht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_PH0PR04MB83111DC4C57ECD58BF93F365F383APH0PR04MB8311namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.elementtoproof
	{mso-style-name:elementtoproof;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Hi Alejan=
dra,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">The problem you&#8217;re seeing is that the software version on your =
X410(! Not X440) does not match the version that your host-side UHD expects=
. Your UHD host is at 4.2.1 while your MPM (that&#8217;s
 the software on the device) seems to have been at a lower version number. =
We use compat numbers which do not 1:1 reflect a version number as some cha=
nges can be backwards compatible, others are not, and we might have to chan=
ge the compat numbers more or less
 often than the version numbers. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">You mention that you&#8217;ve followed the manual and now the actual =
value is 5.3. That means that your device is now ahead of your UHD host set=
up. To match those two, you can either update
 your host software to the latest release 4.6 or you can install a matching=
 file system image onto your X410. For UHD 4.2.1 you can get all sorts of i=
mages here:
<a href=3D"https://files.ettus.com/binaries/cache/x4xx/meta-ettus-v4.2.0.1/=
">https://files.ettus.com/binaries/cache/x4xx/meta-ettus-v4.2.0.1/</a><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">I&#8217;d recommend using the mender image. Download it, unzip it, co=
py it to your device and run `mender install PATH/TO/IMAGE.mender`. After t=
his has finished, reboot the device, login again
 and run `mender commit` to make the change persistent. <o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">/Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Alejandra Medina D=EDaz &lt;unisabel2019@hotmail.com&gt;
<br>
<b>Sent:</b> Tuesday, November 28, 2023 9:00 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] NPM problem<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%">
<tbody>
<tr>
<td style=3D"background:#A6A6A6;padding:5.25pt 1.5pt 5.25pt 1.5pt"></td>
<td width=3D"100%" style=3D"width:100.0%;background:#EAEAEA;padding:5.25pt =
3.75pt 5.25pt 11.25pt">
<div>
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
2.25pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-el=
ement-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;=
color:#212121">No suele recibir correos electr=F3nicos de
<a href=3D"mailto:unisabel2019@hotmail.com">unisabel2019@hotmail.com</a>. <=
a href=3D"https://aka.ms/LearnAboutSenderIdentification">
Por qu=E9 esto es importante</a><o:p></o:p></span></p>
</div>
</td>
<td width=3D"75" style=3D"width:56.25pt;background:#EAEAEA;padding:5.25pt 3=
.75pt 5.25pt 3.75pt;align:left">
</td>
</tr>
</tbody>
</table>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span class=3D"elementtoproof"><span style=3D"font-s=
ize:12.0pt;font-family:&quot;Aptos&quot;,sans-serif;color:black">I'm starti=
ng using USRP X440 with a fm receiver I used before with others USRPs, but =
when I execute the .grc I got:</span></span><span class=3D"apple-converted-=
space"><span style=3D"font-size:12.0pt;font-family:&quot;Aptos&quot;,sans-s=
erif;color:black">&nbsp;</span></span><span style=3D"font-size:12.0pt;font-=
family:&quot;Aptos&quot;,sans-serif;color:black"><br>
<br>
</span><o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ap=
tos&quot;,sans-serif;color:black"><br>
<br>
</span><span style=3D"color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:white">Generating: '/home/lab=
03/Downloads/analizer1.py'</span><span style=3D"color:black"><o:p></o:p></s=
pan></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:white"><br>
<br>
</span><span style=3D"color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:white">Executing: /usr/bin/py=
thon3 -u /home/lab03/Downloads/analizer1.py</span><span style=3D"color:blac=
k"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:white">[INFO] [UHD] linux; GN=
U C++ version 11.4.0; Boost_107400; UHD_4.2.0.1-0-g321295fb</span><span sty=
le=3D"font-size:12.0pt;font-family:&quot;Aptos&quot;,sans-serif;color:black=
"><br>
</span><span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#1D1C1D;background:white">[INFO] [MPMD] Initializing 1 device(s)=
 in parallel with args: mgmt_addr=3D10.182.30.35,type=3Dx4xx,product=3Dx410=
,serial=3D32B5D9F,fpga=3DX4_200,claimed=3DFalse,addr=3D10.182.30.35</span><=
span style=3D"font-size:12.0pt;font-family:&quot;Aptos&quot;,sans-serif;col=
or:black"><br>
</span><span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#1D1C1D;background:white">[ERROR] [MPMD] MPM minor compat number=
 mismatch. Expected: 4.2 Actual: 4.0. Please update the version of MPM on y=
our USRP device.</span><span style=3D"font-size:12.0pt;font-family:&quot;Ap=
tos&quot;,sans-serif;color:black"><br>
</span><span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#1D1C1D;background:white">Traceback (most recent call last):</sp=
an><span style=3D"font-size:12.0pt;font-family:&quot;Aptos&quot;,sans-serif=
;color:black"><br>
</span><span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#1D1C1D;background:white">&nbsp;&nbsp;File &quot;/home/lab03/Dow=
nloads/analizer1.py&quot;, line 392, in &lt;module&gt;</span><span style=3D=
"font-size:12.0pt;font-family:&quot;Aptos&quot;,sans-serif;color:black"><br=
>
</span><span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#1D1C1D;background:white">&nbsp;&nbsp;&nbsp;&nbsp;main()</span><=
span style=3D"font-size:12.0pt;font-family:&quot;Aptos&quot;,sans-serif;col=
or:black"><br>
</span><span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#1D1C1D;background:white">&nbsp;&nbsp;File &quot;/home/lab03/Dow=
nloads/analizer1.py&quot;, line 370, in main</span><span style=3D"font-size=
:12.0pt;font-family:&quot;Aptos&quot;,sans-serif;color:black"><br>
</span><span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#1D1C1D;background:white">&nbsp;&nbsp;&nbsp;&nbsp;tb =3D top_blo=
ck_cls()</span><span style=3D"font-size:12.0pt;font-family:&quot;Aptos&quot=
;,sans-serif;color:black"><br>
</span><span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#1D1C1D;background:white">&nbsp;&nbsp;File &quot;/home/lab03/Dow=
nloads/analizer1.py&quot;, line 87, in __init__</span><span style=3D"font-s=
ize:12.0pt;font-family:&quot;Aptos&quot;,sans-serif;color:black"><br>
</span><span style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#1D1C1D;background:white">&nbsp;&nbsp;&nbsp;&nbsp;self.uhd_usrp_=
source_0 =3D uhd.usrp_source(</span><span style=3D"color:black"><o:p></o:p>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:white">RuntimeError: RuntimeE=
rror: MPM minor compat number mismatch. Expected: 4.2 Actual: 4.0. Please u=
pdate the version of MPM on your USRP device.</span><span style=3D"color:bl=
ack"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1D1C1D;background:white"><br>
<br>
</span><span style=3D"color:black"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span class=3D"elementtoproof"><span style=3D"font-s=
ize:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#1D1C1D;backgroun=
d:white">I already checked the manual from the oficial web page &quot;USRP =
Hardware driver and USRP Manual&quot;&nbsp;and I could do some
 but not the expected, now I got Actual:5.3.</span></span><o:p></o:p></p>
</div>
<div id=3D"ms-outlook-mobile-signature">
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
</div>
National Instruments Dresden GmbH; Gesch=E4ftsf=FChrer (Managing Directors)=
: John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (=
Registered Office): Dresden; HRB (Commercial Register No.): 22081; Register=
gericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</body>
</html>

--_000_PH0PR04MB83111DC4C57ECD58BF93F365F383APH0PR04MB8311namp_--

--===============2014188280129824728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2014188280129824728==--
