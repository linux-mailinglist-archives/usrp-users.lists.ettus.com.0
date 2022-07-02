Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA097563D91
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jul 2022 03:40:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 091A7383E6B
	for <lists+usrp-users@lfdr.de>; Fri,  1 Jul 2022 21:40:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656726022; bh=+THbi2hQBQy91eGHKgosFnNJP65kUylUXXd4f2sZDjU=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ML/N+aQKvhhfszDoYq1XHgix4v517M16wLyyJ/u7twn6S6AMZ9vTT0bgocNe6lmmq
	 5uaJXk07AEVsqh7zBIiWedgF2FuchSIB1szptaUNrgCMQvq8tZOssuCXSTdeHYHvPp
	 bX9MNRk47NPIpoAN0Alhs+KqqcF/DP9Egxkswk2UTCQcMo88TY13BLiK08Z6krGbSN
	 Yl4ndB/jpG4IYzvpoGPjfHVhQkgAaahQhx5YKl0Q3YjsOKAmXnaXhGOpQdVxr+40sq
	 si5+nP9zAh4q4bRlPUvo9qQFXlbZ4U8RzBEx7g9YE/v+GS5WvXakdsFV6Yoe6KD8zB
	 wbnlPx2l7psyg==
Received: from mx0b-00272701.pphosted.com (mx0b-00272701.pphosted.com [208.86.201.61])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E076384923
	for <usrp-users@lists.ettus.com>; Fri,  1 Jul 2022 21:37:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ou.edu header.i=@ou.edu header.b="SRq/RYHt";
	dkim-atps=neutral
Received: from pps.filterd (m0282638.ppops.net [127.0.0.1])
	by mx0a-00272701.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 261H23Vc019014;
	Fri, 1 Jul 2022 20:37:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=domainkey;
 bh=oF7ADkFDXw4FmUX3ScKRVmFRhKt9HyW6NAOCiCHdm5w=;
 b=SRq/RYHtA6e8o9vYUL3EbTkkEMO/bKZVoEvNQQLbwFzicWTxKM5zeK5Z8IYdlOibsMnB
 kD6mJpA4zDuV/w75LMO2eKSTN2HwVYf7bjHcyBDDUP+nq5Hr+fGXqC2Ve+n5HEpryQew
 IVwu68whcZLBFeB2BUS5tll0DsbKq7y19ubk4xcUKPPXdpSYChKtiW/1TdZKGwhBRtKx
 VcqTR/iNmFlR1g4K84+HfVp+NnZX+neInm9wOiwsoLLPfqUYfRQn+ktu7dGAHPguCF4E
 MuHmW1p7K92guiXOs/NS6QHtcyMASmgAyFQzI10smfwms1DGXEs0wheFSRJCPN+UCPku +A==
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1anam02lp2043.outbound.protection.outlook.com [104.47.57.43])
	by mx0a-00272701.pphosted.com (PPS) with ESMTPS id 3h1j2m39vj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Jul 2022 20:37:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IG58QHg3etxgVs1giyIWBPXzO6sSRwB2sd3ylBywS61ctkJuXbZ4ly0V7zEedigGiVcJGvBax1mollnAxe2pnCyrDJrDjjwcHJyYmoy7BREAcXsCf9lYBXYB6lFnXhUpI55f21E6oRpmrofIa0JyLNmHz0PahbYFk2IOdO0dVaZ1/py0wISfau3xhsLuLpEhh2Ce7x+Dnf0DMEiwJ6fzMwg4+JALS/TXwu/GtjFdmcfEQhiAN+72KXK+5OLIikcdppqbW8BGebOIbXxIApL8H/rNBwkD95QcToA6UJcRE6zAypimpup/MVA0whNOnuWt1kiLQtKr7CvF6A/NNGLVkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oF7ADkFDXw4FmUX3ScKRVmFRhKt9HyW6NAOCiCHdm5w=;
 b=XrCyuJgdbOX7QpIbDyDuV6WmHAUZMWyrsQPM9QQ1WCOwMe6Yc/xTJi/Vk1I1nbvivgJSoR8RoSB7b9e5CZ6nBVHthkXtDm9cF5XJXnPuAtNRJVIu9phl+eu/Vals5+4VnNiSrm6G0YDRhdbqi4A0mL8dTBpHN8Gm6Ch6yjoJRt3BPFSsGkBS+g7UYMtOkzS4fNPVIvR5hg6ymlOSw1y/l5u3J70Jd/T58u7Io6vAKuTwtYA/L8Vvp7w/tPvu3szh4oWto9kzL6cRiEYVubmKJp9cpKwfSoSTYcDDSnnjaCVoOdCTz6z1zg5f7phJNwxtwQf6yHQVA4P1iRWyBzZsUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SN4PR03MB6797.namprd03.prod.outlook.com (2603:10b6:806:215::13)
 by SA1PR03MB6337.namprd03.prod.outlook.com (2603:10b6:806:1b4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Sat, 2 Jul
 2022 01:37:30 +0000
Received: from SN4PR03MB6797.namprd03.prod.outlook.com
 ([fe80::390c:2314:5be9:83d]) by SN4PR03MB6797.namprd03.prod.outlook.com
 ([fe80::390c:2314:5be9:83d%9]) with mapi id 15.20.5395.017; Sat, 2 Jul 2022
 01:37:30 +0000
From: "Mattingly, Rylee" <rmattingly@ou.edu>
To: Wade Fife <wade.fife@ettus.com>
Thread-Topic: [USRP-users] rfnoc_chdr Clock on X3xx Radios
Thread-Index: AQHYjVCCElMhlYKUPUqMiAQQholupq1pkI+AgAAEGSaAAK2DgIAAAbpO
Date: Sat, 2 Jul 2022 01:37:29 +0000
Message-ID: 
 <SJ0PR03MB67954F078A01B4ABEA8880DDB1BC9@SJ0PR03MB6795.namprd03.prod.outlook.com>
References: 
 <SJ0PR03MB67952B33C9B89FB9014E9348B1BD9@SJ0PR03MB6795.namprd03.prod.outlook.com>
 <CAFche=ig=a8wNr2Mptnszf3OPkgbzWwEV4Sxa0yzjJNjo59Uqg@mail.gmail.com>
 <SJ0PR03MB6795D9F85244E5188F1DE0ABB1BD9@SJ0PR03MB6795.namprd03.prod.outlook.com>
 <CAFche=jhK5Ck=nimtq-k_Rc=FyCsmJhbDgrpm3V8DwTdP2ipzQ@mail.gmail.com>
In-Reply-To: 
 <CAFche=jhK5Ck=nimtq-k_Rc=FyCsmJhbDgrpm3V8DwTdP2ipzQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea3b2b39-93e1-41f4-6bb5-08da5bcb6d90
x-ms-traffictypediagnostic: SA1PR03MB6337:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 CYL9n7jgHIrxMdsDTvCM7QxyRD/bos/9TvFYKnmsXvMtD244NhjlhD4i3Lqs8wnVZcqQB++eJOcCIKB4EhER52AhJY+6CUZZ9AkuVnisGqS7Cff11BGY2Xp9bshwp524/saCSeT/MYZ/umHbNUFytZUAEwHqywinvJ4wqtbF4KEeX5JU6lu8I3DRrbR/JPOXyyzC/P+d3upMF7iaKnJakzMQCIxI4ukzsSUnhJh2laIZsvxXVmzD/yd6qy+XBrusDTiKR6ekiFynePUpFH/hMi9cnQVq73pUDEsm04f7rMpdfJafgJyQmNDCgmipsjHuYNnPKatMc6rOOcJZuSf4v8MHQaT2vOfxxkgnVWVrXPdZHfnXQkGbIHVOgF0//PRrysRJ2GAXj6QcGP5gVt/NRtvewImJqQmx/FDSpFSu1pCCs93tk4gbNjgc1RHaT0g1tzD6PJvslqld93KuiLFwLRV6MDHJJ+jbBbKVDbJs/YetvkUEBXMrhLEtLgp4i70Qs1PvlRLF1xrHLW9LPJ0L3RwH6DcPbJTkibE3vm/aedLvFKZVdOrhb/9e5MNH6aaIJ/4Im1QnK415pMtThb1HHC846FwTRd2Q0yKGpkXcq4ENmXnOzZoprQXT2bNspYaeDs10Wv9gvACGGMCEEv6GtxgWochdFVZhPTOInQa8Nwpzrhx/CCiXeRhNkfjg5zY2dzFiNNfJFhnil9u72Rql5DRZYw0u+I88G5C8dHznkFON2hYctjniynG4jLiYbElnIDMiqfwocxHbUPZXTqI5RXzTQOA+mzKHlLONOyYtvx9pCrOaEf+Zj0SCrZw5eWpfb/p83msQy6dsxoZwnMoRxL7A7ZpytD+cRbFNgClmgFjWeg920MgSZFKNoGV6H1Is
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN4PR03MB6797.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(366004)(136003)(39860400002)(396003)(346002)(6512007)(41300700001)(5660300002)(86362001)(33656002)(71200400001)(6916009)(2906002)(9686003)(6486002)(38100700002)(52536014)(186003)(53546011)(6506007)(122000001)(166002)(41320700001)(38070700005)(786003)(478600001)(4326008)(66946007)(8676002)(83380400001)(66446008)(8936002)(64756008)(66476007)(66556008)(76116006)(316002)(75432002)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?TLAKK+NEQE7j/jtYfaKlvrJ1LfiyD6XqzA/Brbj7plJkvSH9i4uHefLt?=
 =?Windows-1252?Q?l6XS/nVxIMk0NVaUP1wN9Qleh9AouF87t/RgqzxRPe0dtJxQMS+OCGZi?=
 =?Windows-1252?Q?BpfXXu68Zh2e0J4mm02//469UNCi1rGrAjnvDEOpn36dRaJQ5MQVNgpq?=
 =?Windows-1252?Q?PvqDPheKrxKNHWXEMbTiQfTvbViukm5NS6zyR2zCj52bq9f1Yj9Ndgrl?=
 =?Windows-1252?Q?6uEef+OoT/IaK7ruLSHWZsuPDvG3pq+b/qKBYXgRWMNDvsNT3u/eG9HQ?=
 =?Windows-1252?Q?yRbgbT4sUv2XtlHpNcvNGIAl041p3QlPiGUo8aEr8WNhmsyr9ciwv9uA?=
 =?Windows-1252?Q?qyzt6XvjyT5ngbvn2sR+gHPMAdX/kimxMR2pymv6L5gTHuAzadvSNm15?=
 =?Windows-1252?Q?vWIjdOF3214MmteM0GdHZgcFBwVT++G6x5/JsNYMWtfcMeCep561lU0g?=
 =?Windows-1252?Q?MX86yT83vjpEme6XDTfRYAwDDAM0BAe3KFPrU/2jAbveMhR1M96VkM9p?=
 =?Windows-1252?Q?nmntTADo2PKUy2/wgd7VyYmfqdS8cZKWNChFEbr7U/PzP8XI7f8kR21y?=
 =?Windows-1252?Q?Pr1Euak8XofHWkn0Jf3Bm+tQJIFjzx4RLhM8RDw5ffHfVye9myobJ21y?=
 =?Windows-1252?Q?AJe32Wzs3XYUquQ2B2weKuTzt17OYJtsFRpZe1OPq4tMsMcr6afjDjQa?=
 =?Windows-1252?Q?76Hacy/+YyF4LQJHKvOyt7ZTaRsECPZozWb+0/akqIAtTU88sMK116uD?=
 =?Windows-1252?Q?cUTy/HnC+81HhjHCliEcUmGM+SM9mqoaU/9JpL6rx41fAX4a2t8gf4l7?=
 =?Windows-1252?Q?mND7uz33WY5pUelFtoyHokXKl9bLIxoruANLIFlYGEuhONW/oHo9UQFD?=
 =?Windows-1252?Q?PtfdY6el/5803U9OBA2zivA+x7keZxSdVYYar90gEjIXMnpl+6H4RxVI?=
 =?Windows-1252?Q?ZWQ87CgIixj8uC4oTgLCVpgkDouxiP84FN2RbvNbmVAAgVfys7pnsi4F?=
 =?Windows-1252?Q?HlIzZUU9zgmV1g2qdNioYPtmyHrA29DXNhR/OHiqS75TiLi+PW162tbC?=
 =?Windows-1252?Q?XQEKJUaaRUshioQLlGqLnHEH+aZ82QbcDF9G0SIEuk/dSRkJzg+ND3HV?=
 =?Windows-1252?Q?BwpXyGPzKy1O2jJjlQXZTKPGnOGdc8dxWEPQSzxKAsNQDueplkKO8F6x?=
 =?Windows-1252?Q?MSHRH8Eb2HSbtPygYYw3JHX4cj3vdkpLKYY+YBdknlwZKsPjXMOnpc4F?=
 =?Windows-1252?Q?XM5vtqx+zai/qFzjst1+37sKnPfKGqqBxDmOdkyJnBMPaGB+EXSrRO7E?=
 =?Windows-1252?Q?197UfwRJOBLLmQM69MwhVigqX4q8SR/jJgRDrMcPe3zxJsE4cDfBhI0v?=
 =?Windows-1252?Q?1U8kk9I5++4Yp8fGXdupJkk2GbE1C4oMt3no5zyR/pWuWtxJMTFZ8YBp?=
 =?Windows-1252?Q?lCFErOODKCTBJulvOnFbruxDfhvcxP6kgHLtoAhHnBED6q2RUWmpPmRs?=
 =?Windows-1252?Q?F9/lgyRnTH4N91MRGLh/O35qYrhBfjEKJyrI2IQCO+GCwCfqgrqZ/Xta?=
 =?Windows-1252?Q?ISx7VLy+jlUC7bS7/Gp2/c9vLc///EjuP1WGiDxjMOEEGqvV1s2HFRE1?=
 =?Windows-1252?Q?vUd6wzAVmxEo3YEww+MnEuFrtCswn4YwNl7kBjgGrN7CUsMCeBCW6GgF?=
 =?Windows-1252?Q?oYscbeHdupgQXh+E9TM/AzNt6rEDwCVGd+T0rvwsQDSqVLgnet0ldnwH?=
 =?Windows-1252?Q?qCO+egDdR4kOrZnl3QSLTkkmFMC8R6tV8VcmGza731F1UVAWkZfSZHhf?=
 =?Windows-1252?Q?qH8kEw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN4PR03MB6797.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea3b2b39-93e1-41f4-6bb5-08da5bcb6d90
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2022 01:37:30.0392
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IphtzCClpQNETAs7+w7gGmbYxmLpSaUCpJ8qN2urtcz4Y4ojTUU+JWWxL4e6GloeUNa5ZLv2q6y62A+qY3mbfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR03MB6337
X-Proofpoint-GUID: Z8dtIsdyClqHYXNDzBlwhxOvRLtOJQEu
X-Proofpoint-ORIG-GUID: Z8dtIsdyClqHYXNDzBlwhxOvRLtOJQEu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-01_16,2022-06-28_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2207020004
Message-ID-Hash: CT3DDCZN3YUZ4Z43OCYQJ4VLSDKBMIJ5
X-Message-ID-Hash: CT3DDCZN3YUZ4Z43OCYQJ4VLSDKBMIJ5
X-MailFrom: prvs=618246e361=rmattingly@ou.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_chdr Clock on X3xx Radios
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OMW2EET3OED6KPBI2AOML3CGSQWAN5SY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2388933964339653591=="

--===============2388933964339653591==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR03MB67954F078A01B4ABEA8880DDB1BC9SJ0PR03MB6795namp_"

--_000_SJ0PR03MB67954F078A01B4ABEA8880DDB1BC9SJ0PR03MB6795namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

That was my initial understanding of the use of clk_domain field in the blo=
ck YAML.

I was thrown off by the FAQ for some reason, and I got to thinking the data=
 rate from the noc shell may be locked.

Thank you for taking the time to clear that up for me.

-Rylee


From: Wade Fife <wade.fife@ettus.com>
Date: Friday, July 1, 2022 at 7:56 PM
To: Mattingly, Rylee <rmattingly@ou.edu>
Cc: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rfnoc_chdr Clock on X3xx Radios
When you create an RFNoC block, the noc_shell gets created for you and you =
can specify what clock you want the data on and the NIPC. In the case of th=
e DDC, the data to/from the noc_shell should be on ce_clk.

The noc_shell handles for you the conversion between ce_clk and rfnoc_chdr_=
clk, and between the requested NIPC and the CHDR bus width.

The streamer does not know the NIPC but your block can be designed to handl=
e an odd number of samples per packet. TKEEP is the signal that indicates i=
f the last clock cycle has an odd number of samples. It also may be possibl=
e to write your application so that the block only sends/receives a multipl=
e of the NIPC, which can allow you to simplify the FPGA logic in some cases=
. But I would avoid that if you can.

Wade

On Fri, Jul 1, 2022, 9:48 AM Mattingly, Rylee <rmattingly@ou.edu<mailto:rma=
ttingly@ou.edu>> wrote:
Hi Wade,

This makes sense to me intuitively, especially with the processing clock. I=
 am mostly concerned about the ability of the data bus to actually pipe tha=
t much data, which would be alleviated by a NIPC =3D 2.

In the DDC, the data seems to come in from the NOC shell using the rfnoc_ch=
dr_clk, but uses local parameters to define item_w =3D 32 and NIPC =3D 1.  =
Being localparams, it is my understanding that they can=92t be modified ext=
ernally. Although the raw input signal s_rfnoc_chdr_tdata is 64 bits, the s=
_axis_data_tdata is only defined with num_ports*item_w.

So does the DDC use the num_ports parameter in place of NIPC?

Similarly the FFT block uses local parameters for NIPC but explicitly uses =
the CHDR_W to set the axis_tdata width. Again it doesn=92t seem to use NIPC=
 but perhaps that is just implied.

So I guess my question boils down to:
Should custom RFNoC blocks that expect to operate at 200 MS/s expect a NIPC=
 of 2 from the upstream blocks.
Does the streamers understand if it is expecting 2 samples per clock or 1 s=
ample per clock?

Rylee

From: Wade Fife <wade.fife@ettus.com<mailto:wade.fife@ettus.com>>
Date: Friday, July 1, 2022 at 9:19 AM
To: Mattingly, Rylee <rmattingly@ou.edu<mailto:rmattingly@ou.edu>>
Cc: USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] rfnoc_chdr Clock on X3xx Radios
Hi Rylee,

Some blocks do use NIPC =3D 1, but those blocks need to use a faster clock =
for the internal processing. For example, on X310, the DDC and DUC use a se=
parate CE clock that is connected to 214.286 MHz. The radio block uses radi=
o_clk for this purpose. For the parts of the logic that use the 187.5 MHz c=
lock, we use a 64-bit bus that holds 2 samples per cycle (NIPC =3D 2). The =
numbers vary somewhat between products and blocks, but that's the general i=
dea.

Wade

On Fri, Jul 1, 2022 at 8:55 AM Mattingly, Rylee <rmattingly@ou.edu<mailto:r=
mattingly@ou.edu>> wrote:
Hello all,

I am looking at the RFNoC FAQ page<https://urldefense.com/v3/__https:/kb.et=
tus.com/RFNoC_Frequently_Asked_Questions__;!!GNU8KkXDZlD12Q!9vhvYI4lgCniKu9=
k5boH12kRtHf4dVelsbI2c47vAy3m0Nn4CwRMG8YOcTzk46v8Y2IThfEbqgsGjITcig$> and i=
t lists the rfnoc_chdr clock as 187.5 MHz. Now this is plenty fast to pipe =
around packets and sequential headers for the 184.32 MS/s sample rate but h=
ow does this support the 200 MHz master clock/200MS/s sample rate?

This seems like a NIPC > 1 would be needed, but my understanding is that al=
l blocks use NIPC =3D 1 by default.

Thank you,

Rylee Mattingly
The University of Oklahoma
Graduate Research Assistant
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_SJ0PR03MB67954F078A01B4ABEA8880DDB1BC9SJ0PR03MB6795namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">That was my initial=
 understanding of the use of clk_domain field in the block YAML.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I was thrown off by=
 the FAQ for some reason, and I got to thinking the data rate from the noc =
shell may be locked.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you for takin=
g the time to clear that up for me.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-Rylee<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Wade Fife &lt;wade.=
fife@ettus.com&gt;<br>
<b>Date: </b>Friday, July 1, 2022 at 7:56 PM<br>
<b>To: </b>Mattingly, Rylee &lt;rmattingly@ou.edu&gt;<br>
<b>Cc: </b>USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>Re: [USRP-users] rfnoc_chdr Clock on X3xx Radios<o:p></o:p>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">When you create an =
RFNoC block, the noc_shell gets created for you and you can specify what cl=
ock you want the data on and the NIPC. In the case of the DDC, the data to/=
from the noc_shell should be on ce_clk.<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">The noc_shell handl=
es for you the conversion between ce_clk and rfnoc_chdr_clk, and between th=
e requested NIPC and the CHDR bus width.<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">The streamer does n=
ot know the NIPC but your block can be designed to handle an odd number of =
samples per packet. TKEEP is the signal that indicates if the last clock cy=
cle has an odd number of samples. It
 also may be possible to write your application so that the block only send=
s/receives a multiple of the NIPC, which can allow you to simplify the FPGA=
 logic in some cases. But I would avoid that if you can.<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wade&nbsp;<o:p></o:=
p></span></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">On Fri, Jul 1, 2022=
, 9:48 AM Mattingly, Rylee &lt;<a href=3D"mailto:rmattingly@ou.edu">rmattin=
gly@ou.edu</a>&gt; wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Hi Wade,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">This makes sense to me intuitivel=
y, especially with the processing clock. I am mostly concerned about the ab=
ility of the data bus to actually pipe
 that much data, which would be alleviated by a NIPC =3D 2.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">In the DDC, the data seems to com=
e in from the NOC shell using the rfnoc_chdr_clk, but uses local parameters=
 to define item_w =3D 32 and NIPC =3D 1.&nbsp;
 Being localparams, it is my understanding that they can=92t be modified ex=
ternally. Although the raw input signal s_rfnoc_chdr_tdata is 64 bits, the =
s_axis_data_tdata is only defined with num_ports*item_w.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">So does the DDC use the num_ports=
 parameter in place of NIPC?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Similarly the FFT block uses loca=
l parameters for NIPC but explicitly uses the CHDR_W to set the axis_tdata =
width. Again it doesn=92t seem to use NIPC
 but perhaps that is just implied.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">So I guess my question boils down=
 to:
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Should custom RFNoC blocks that e=
xpect to operate at 200 MS/s expect a NIPC of 2 from the upstream blocks.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Does the streamers understand if =
it is expecting 2 samples per clock or 1 sample per clock?<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Rylee<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><b><span style=3D"font-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Wade Fife &lt;<a hr=
ef=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>=
&gt;<br>
<b>Date: </b>Friday, July 1, 2022 at 9:19 AM<br>
<b>To: </b>Mattingly, Rylee &lt;<a href=3D"mailto:rmattingly@ou.edu" target=
=3D"_blank">rmattingly@ou.edu</a>&gt;<br>
<b>Cc: </b><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject: </b>Re: [USRP-users] rfnoc_chdr Clock on X3xx Radios</span><spa=
n style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Hi Rylee,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Some blocks do use NIPC =3D 1, bu=
t those blocks need to use a faster clock for the internal processing. For =
example, on X310, the DDC and DUC use a
 separate CE clock that is connected to 214.286 MHz. The radio block uses r=
adio_clk for this purpose. For the parts of the logic that use the 187.5 MH=
z clock, we use a 64-bit bus that holds 2 samples per cycle (NIPC =3D 2). T=
he numbers vary somewhat between products
 and blocks, but that's the general idea.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Wade<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;<o:p></o:p></span></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">On Fri, Jul 1, 2022 at 8:55 AM Ma=
ttingly, Rylee &lt;<a href=3D"mailto:rmattingly@ou.edu" target=3D"_blank">r=
mattingly@ou.edu</a>&gt; wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">Hello all,</span><span style=
=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">&nbsp;</span><span style=3D"fo=
nt-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">I am looking at the <a href=3D=
"https://urldefense.com/v3/__https:/kb.ettus.com/RFNoC_Frequently_Asked_Que=
stions__;!!GNU8KkXDZlD12Q!9vhvYI4lgCniKu9k5boH12kRtHf4dVelsbI2c47vAy3m0Nn4C=
wRMG8YOcTzk46v8Y2IThfEbqgsGjITcig$" target=3D"_blank" title=3D"https://kb.e=
ttus.com/RFNoC_Frequently_Asked_Questions">
RFNoC FAQ page</a> and it lists the rfnoc_chdr clock as 187.5 MHz. Now this=
 is plenty fast to pipe around packets and sequential headers for the 184.3=
2 MS/s sample rate but how does this support the 200 MHz master clock/200MS=
/s sample rate?&nbsp;
</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">&nbsp;</span><span style=3D"fo=
nt-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">This seems like a NIPC &gt; 1 =
would be needed, but my understanding is that all blocks use NIPC =3D 1 by =
default.</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">&nbsp;</span><span style=3D"fo=
nt-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">Thank you,</span><span style=
=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">&nbsp;</span><span style=3D"fo=
nt-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">Rylee Mattingly</span><span st=
yle=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">The University of Oklahoma</sp=
an><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">Graduate Research Assistant</s=
pan><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">_________________________________=
______________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></span></p>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_SJ0PR03MB67954F078A01B4ABEA8880DDB1BC9SJ0PR03MB6795namp_--

--===============2388933964339653591==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2388933964339653591==--
