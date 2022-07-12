Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B8957229F
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 20:28:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D54CD384068
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 14:28:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657650529; bh=8uvjFT5AeJOY/GSd0uJ6Wm2onXk3TJj2Na1J7QETkmo=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=te6mxKDVl1/o6i2sVQAiGhwgx203IwbyaXGABNAbNttqZtAwev3p+ZgWlParC9Oxu
	 wn6nB0A+iuSdtO617U1vT6skt2NdtKX1dqilHJ1FygYpDkcmn8NxxeA9tTeCr5Kob8
	 pQXtzjS+0dKFxYIUp4pie1rE+cTBtycHAn5H96pyrP8gOoliXjMOpjQwfyX+k21t09
	 EVrd79eG0tdFM1aUysay8hkCITxgSVjEcfysPaW+sKmXoQst+SJMuNCwyvcstv1voW
	 etT1+NmTuVWR/mCmveyOgC5QV9FZo3bsRfySAc6CRi0TQPV+to9bcsnvtP/kNOc8Uc
	 diCkPxS8dBLAA==
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2053.outbound.protection.outlook.com [40.107.244.53])
	by mm2.emwd.com (Postfix) with ESMTPS id DC400383DC1
	for <usrp-users@lists.ettus.com>; Tue, 12 Jul 2022 14:26:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=NETORG330411.onmicrosoft.com header.i=@NETORG330411.onmicrosoft.com header.b="Zw2dnI27";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CVLb6YQ+D7kWbv0frMdeEtJbY+PGWO4ZyEzyHJZY9fYgnn7ho0iK8OhO8gB6GxTxYM5JWfly7cs7fJqmMp4miFCD3zoFFTURaWrcK+S1RqwCWCV0LRlcEEhCJ+mEWnM4liTsAXtzV5wKDEpTVSISouVDTSvwDHYjo5HEqfrxa8WOJ1nry7CEIwfPyEQDETFP7RudaiZmG6ZfVNdJ0QRSxhPPRxgQWMPFPr8IPmpcjmpxHnKK1KO1u55kxQNT0l3f9w79adRrxBc3wyDP1TN7XP360HCsidRVfqA3wzO/665ncGa7dM+NJ7OhUwy50dsFXpCFp3BS/blZkiU1rvd3KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oG/ozx0OfXdKQFrxzKjIjhp55WQE6SUxcllydaIdbhc=;
 b=mVn7LQp7r6PXmXTd1PQn5km8XfPq8mgeRWiYsRaebslJbwh2cud8k3mUYadib/x3I+RCDW9lksTpSQNeqhQ+9RGntjAuyP0+4OnDVeE7JHj0CpuOIhbH3VPiUnO2dMeyuSwFR3ke4G/GnwKBomxTUbMTaMkuvQ4CM6/bXgL105jNvyXVHPXd9Ueh/TQsvMLEc/5bBfE/Rdn92FFNrNKDO6PBzX6iN+0+fp9RvcdL4go2P/UpgXF8V8EicTN81q2PoQkBJfP8qL/e8zmyRzaGy4S1/+BaPVWUV6P22pKBbz/5nDg1HGb2FcufFCILTrMZm2r3XOEU9OiYUb9oAWGJpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oG/ozx0OfXdKQFrxzKjIjhp55WQE6SUxcllydaIdbhc=;
 b=Zw2dnI27d/OjUnkYZM/RPE/poAGVpWl9mkJjGcwXjeXWrASOH+ybKyoB3fwCP3ewdSawFPc1I1Gxg7p1bKSmfFL/0UtevZycD+SpEq8gMb0XiULNcApsJ1s6TQ+z23j98gaKzIIyyHs+q3zbOKudGVow+qTyo2ewcR6JDhYHTwk=
Received: from DM4PR12MB6302.namprd12.prod.outlook.com (2603:10b6:8:a4::21) by
 DS0PR12MB6606.namprd12.prod.outlook.com (2603:10b6:8:d2::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.26; Tue, 12 Jul 2022 18:26:50 +0000
Received: from DM4PR12MB6302.namprd12.prod.outlook.com
 ([fe80::4df9:e43:1166:305b]) by DM4PR12MB6302.namprd12.prod.outlook.com
 ([fe80::4df9:e43:1166:305b%9]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 18:26:50 +0000
From: Mark Koenig <mark.koenig@iubelttechnologies.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: B200mini no longer recognized
Thread-Index: AQHYlhuAhLYFH4W080eMLrz8o4HYgA==
Date: Tue, 12 Jul 2022 18:26:50 +0000
Message-ID: 
 <DM4PR12MB6302816C79AB8F4F24E0D8618C869@DM4PR12MB6302.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iubelttechnologies.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4a737b7-e3a3-4a33-dfa3-08da643416b0
x-ms-traffictypediagnostic: DS0PR12MB6606:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 EjulIWO/ux2pICZfYKPvcPId5ODwxQ+ggrAAvGtmqq9Mlc4HYKdOYgk8CKDQm/UkYG5UGzwYX56FhMh549qsnbTAOuExlS3gVY1hyUu1GFHl9qDIQPM6BmltNd8wfaHo+GocjciCa6/CC6l3acSpTNfiOmCksQUrUO5MY20fAToXSObZAJB/MlUeEgL5tpzdU20yroFtHlCFsZcoQ57qKPCNLQ6WUMopNSE6FVhzT8+qya9qihtBejIoAzbWXMhTE3CJWlNFXza7EgWPcU/RoaCGDwnXDBPfBnWHC2yv4PnQpz+MgRXnxsp0lQx9eS8fZ2RGjH5A813h73glVAsaqrTMKu7I8SOWTdiy8Km78f/g4skVxp4maIGKqGUt6W/lGNtG55Ou34LJh5x/dhWCUNGNPBDqEYsjb5wBqI1lzqlnQkjWTWUEu/UdUCQWxkdEnrgNZchDJAyhM6pR/hzw003FnDrd1oe4yXvQZnzg9u2LjoNpCnXRupE0tLShkn+twELo+rDTHeTXEN2/rXcT1r2lfHjnIVK1HPprRw0NU5WzduxM8i4dCaYH6FeSzTtI6/edlWc2/Xq9DkOt7au07caVT3u20nHkVrehVXivfLYgTeCPO6VKcvKueNwOnOSNa3XXXtk8QPlniI3U6o64DBbUVTJ/sGCN26Wjb/HAY5VtelAKcJ9Fj+wHZDt/wHU378UgsCmO56b/izNK7ZtOaQpPUt664ATqvASfYApGIqwsRB2d52r2aqVzH3ZRkC+vrlfc9ko/2XM8noOgSmGCMYNH1vns8skA1OyHOP0PB+r/Js0wigsLY6XMytW/V+fn
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR12MB6302.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(396003)(136003)(366004)(376002)(346002)(39830400003)(33656002)(9686003)(71200400001)(5660300002)(86362001)(316002)(26005)(41300700001)(478600001)(6506007)(186003)(7696005)(6916009)(55016003)(2906002)(19627405001)(66556008)(66476007)(8676002)(38100700002)(8936002)(66946007)(52536014)(122000001)(64756008)(83380400001)(38070700005)(66446008)(91956017)(44832011)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?UYLAy/kfOuPxhdVdIADe0UzW6sykePqWE1k7gedVUt2T0yDhjF/cIBRdw2?=
 =?iso-8859-1?Q?fwB3mydK4ahia3TnaTQ+iuZV7hJzYq64Zf7VNHeKORkACulSGwkX5ABhF/?=
 =?iso-8859-1?Q?OZdV6288i6h1qm/BmNeI/RcGkuVpafEhMR6Okqx0SqCBVyjiET7FPrFDyJ?=
 =?iso-8859-1?Q?5MsiHtZCN1CDmEVu3M9QmFu9FpNYdowC/E4ygF8Z1B0IlYRIjmMNWmyNNe?=
 =?iso-8859-1?Q?BRAkgE+XlXzAWF7fJWvqrQugGpE3YY+97qh0uafaVvbmYC1MLJMjnRAxne?=
 =?iso-8859-1?Q?vGvI8Lp4VyWww9aSCHgLFCAKLIgZmb1lrm98nEF04pbJ0lDzR2OSWyCbpS?=
 =?iso-8859-1?Q?3Fzq57fmjEv+kMvFLcH0srqbbUKZijvZDTE+78mBwD9IYOvnpMZgO8R0Ad?=
 =?iso-8859-1?Q?tKcRSJIw3Ia7q8nLPcDTluqhdr+WW+wj7j7S3r5sDuHC/gXYYgrJh+5Msn?=
 =?iso-8859-1?Q?HZBaQ2IRBtFfQ13euWJItJA3YbHik2Uq0/yo2cG5JOmS73zo+1OOaC4Fej?=
 =?iso-8859-1?Q?ETXbodBWpzFSfcO2K/AEYgL/s8MPR4KYcXRQesHlruylst4+UVTZnzB5uY?=
 =?iso-8859-1?Q?KM/77Te0WCrwJqSrZXz8qL1TLOpdUcLP8mxkdi0rr87PCTvlcvPkfbkvyw?=
 =?iso-8859-1?Q?PV2dsct6inNbZNxMuwnylk+NZDX3sVQ21KIOXRHZMmpsQnbnQKVShuj9w2?=
 =?iso-8859-1?Q?gcoz8MK6B7roFVR5uhUSoP9g42OcAIQfchLfFNbAVnq0B6SOsoMeLJbW5T?=
 =?iso-8859-1?Q?qbfmeCSj3bv8pK+MCK1kxj7pa21PtaqpO9rk5pfL78BsoiHr4saMAh1t7V?=
 =?iso-8859-1?Q?y01lJL4/eRVscOUWdm83IgOoEKZPId8lDmjxELNS/JIRlFmv3hSs2HHXED?=
 =?iso-8859-1?Q?wy6rc7CIuTUFlum6+K8nM2G3Lxf7Dg9kTvU7M5trtyMm+kANdMRHEz8GCd?=
 =?iso-8859-1?Q?RCU6erQJYUW+ilB+1GoN9oR/OjmMkQ60Vrj3cvPf/EX8f8aCEZxsZHsAWV?=
 =?iso-8859-1?Q?5dxo//ZhGYMD4jn/9UdcjRG1ue4Ic26RMzKbjNNVC7WrmssHQBdWEoXjXR?=
 =?iso-8859-1?Q?ROa3mM+nFV3Ks2ROnlVKg9Azm1Fre3qGITn3PDR2Jj/i46N0zVu6GNSsCO?=
 =?iso-8859-1?Q?Ddzlk7+2Z4ap9de5WRAN/T74Vj9kX9q9EQbYKQu+5bM70DhyVi5u030coy?=
 =?iso-8859-1?Q?PxFw4UnXyE8RHmR0XEQ2w9twf43ThTOEhPy/P0wsZc4JQvGMlCV88tDVA1?=
 =?iso-8859-1?Q?WWed471xVt1KUzXb2SQrQFylVt2yMOY59iWwhqdkQXaHnSSQVvaz8M+zU2?=
 =?iso-8859-1?Q?wW7as7DWa69sFiKHWT5s0vXWps3jw2IoGy78AHM7kk2jGtMUbGTwvZLcMw?=
 =?iso-8859-1?Q?dKsCy0ECSZyIEzzOHwvflj8j1IwziloPtVFh6nAjWphUjmzl0XdtiXregk?=
 =?iso-8859-1?Q?18D5PxVm0y8pkL+1fGutqrxP9k24eXMhVYcGd0kJTQrRScWGOsiYKEa4ha?=
 =?iso-8859-1?Q?/Cjk1DiqI9tfNlcKHg+dLXtXMmzc9jekYb7lL/9E4Pm1zhSKrL7Y+D4sny?=
 =?iso-8859-1?Q?NaViVCS9aVb/xIjlTUQebUxYgYas57/YDRzuF7314f/+ZJMQrYRUfNG8ea?=
 =?iso-8859-1?Q?j7nu17bPlt+PkzYkX6UN4g9MuIGY/Gf3xzoKbqqhylLGV3/LAzpearSA?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB6302.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4a737b7-e3a3-4a33-dfa3-08da643416b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2022 18:26:50.7630
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lXbnTTsJpDp1eGhl1fPlYQTxnQVDh06boesl07M/dkRNOVIg1S7V5PChVCk2aUF81hKU1LscEwfoifwLA6hSc/PItig7fDPERF8DD8QJnHVPz16CZqNDDfEHgMgfHj99
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6606
Message-ID-Hash: NG2WWNUC6RHEPVNC6QBKYNOXB5SHOZGK
X-Message-ID-Hash: NG2WWNUC6RHEPVNC6QBKYNOXB5SHOZGK
X-MailFrom: mark.koenig@iubelttechnologies.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B200mini no longer recognized
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PEYONMWA3XVWRL5HA5PV75KH3IOJT536/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4399334015281818080=="

--===============4399334015281818080==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM4PR12MB6302816C79AB8F4F24E0D8618C869DM4PR12MB6302namp_"

--_000_DM4PR12MB6302816C79AB8F4F24E0D8618C869DM4PR12MB6302namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I previously had the B200mini functioning on a Dell laptop I maintain, howe=
ver that is no longer the case.  I now get the error message below when usi=
ng find devices or trying to probe it.

No UHD Devices Found
[ERROR] [UHD] Device discovery error: EnvironmentError: IOError: Could not =
load firmware:
EnvironmentError: IOError: ihex_reader::read(): No EOF record found.

OR

[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-44); Boos=
t_105900; UHD_3.14.1.1-0-g7c0291ad
[INFO] [B200] Loading firmware image: /opt/xxxx/7.1/share/uhd/images/usrp_b=
200_fw.hex...
[ERROR] [UHD] Device discovery error: EnvironmentError: IOError: Could not =
load firmware:
EnvironmentError: IOError: ihex_reader::read(): No EOF record found.


I have seen this exact error on multiple laptops with 2 different B200mini'=
s and usb cords.  If I plug the B200mini into my desktop machine, I am able=
 discover and probe the device.

I have done all the udev rules as stated in the notes on each laptop and de=
sktop machine.

The machines(laptops and desktop) are all running Ubuntu, and the same dock=
er container with GNURADIO and UHD installed.

uhd_config_info --enabled-components
Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, Examples, =
Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, N300, N320, =
E320, OctoClock

I am at a loss as to why this is happening....any help would be appreciated=
.

Thanks,
Mark


--_000_DM4PR12MB6302816C79AB8F4F24E0D8618C869DM4PR12MB6302namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I previously had the B200mini functioning on a Dell laptop I maintain, howe=
ver that is no longer the case.&nbsp; I now get the error message below whe=
n using find devices or trying to probe it.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
No UHD Devices Found
<div>[ERROR] [UHD] Device discovery error: EnvironmentError: IOError: Could=
 not load firmware:
</div>
EnvironmentError: IOError: ihex_reader::read(): No EOF record found.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
OR</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-44); Boos=
t_105900; UHD_3.14.1.1-0-g7c0291ad
<div>[INFO] [B200] Loading firmware image: /opt/xxxx/7.1/share/uhd/images/u=
srp_b200_fw.hex...</div>
<div>[ERROR] [UHD] Device discovery error: EnvironmentError: IOError: Could=
 not load firmware:
</div>
<div>EnvironmentError: IOError: ihex_reader::read(): No EOF record found.</=
div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I have seen this exact error on multiple laptops with 2 different B200mini'=
s and usb cords.&nbsp; If I plug the B200mini into my desktop machine, I am=
 able discover and probe the device.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I have done all the udev rules as stated in the notes on each laptop and de=
sktop machine.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
The machines(laptops and desktop) are all running Ubuntu, and the same dock=
er container with GNURADIO and UHD installed.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
uhd_config_info --enabled-components
<div>Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, Examp=
les, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230, MPMD, N300, N=
320, E320, OctoClock</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I am at a loss as to why this is happening....any help would be appreciated=
.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks,
<div>Mark</div>
<br>
</div>
</body>
</html>

--_000_DM4PR12MB6302816C79AB8F4F24E0D8618C869DM4PR12MB6302namp_--

--===============4399334015281818080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4399334015281818080==--
