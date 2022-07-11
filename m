Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99553570D2A
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 00:06:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D85A4383D01
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 18:06:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657577192; bh=KX5J9S3NPKnq85QN9t7lHP2WKpZte35TbBrid0RbQSo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=X5ejTmDTxrPas6HTX3fsXX51y8PeA9ucEEMOUcu/M4B3BpaNc/LwmrGOTvKYMcC3B
	 D3mYthMHZ2hBBN5V6RXXUPThCwiu5x6aGsdThxLs4sg7jmUP7V306dYlcbpc3V7CQj
	 mgy71KLubyujhZAjOHNCu7oYCHpkMKacCRYJrZTOAJMHPPdAbRU+T+UqUnn+Hmy0rI
	 780dhJ8dqs0U2e1c+VcMO7bkRxxzTo1e9YYIqKaVaoWhicysGtwegG7uGfxG5DoZnY
	 0LYAP1RHdaL277+xRUebcQNsSGDSSSib3j2etjhqEUEV6hT3Gw/7on+RrDa2Oa3mtG
	 koYrLyRVTN3RQ==
Received: from mx0a-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
	by mm2.emwd.com (Postfix) with ESMTPS id 031FB38368A
	for <usrp-users@lists.ettus.com>; Mon, 11 Jul 2022 18:04:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="w7CCVyJX";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="TXxlRKPL";
	dkim-atps=neutral
Received: from pps.filterd (m0239462.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 26BHuHxV028617;
	Mon, 11 Jul 2022 17:04:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : date :
 message-id : references : in-reply-to : content-type : mime-version :
 subject; s=PPS11062020; bh=rplI9Dzf9WLcf+ngm9AreHUEfXbZCe4B9CDVOwkVYFk=;
 b=w7CCVyJX11A0nXFP0BODLsSXYpq5PCGIsI7r71eoZOy9U13l+WpLjidR2II1V+kfheN0
 opuWBcThNXXDZsN+CdM3PEyGK7LFWgnCm+lXqSQzfWHv4OnGoNYkbmA6jK3I52LiSP3n
 LqE5REY/yxvSN6e/Rwe/T0kPQXgmhcrGMhhHjxq8XMfhjPp9sa9tZY45sim0CI+8MJyy
 n18JpLGy4YQAeErzTFtBTRclnb1NYXGNfFp28TlSCpfpTL5Ln5R5FJQTjzHOI5Ua8RaW
 IJ807KJmOWy1APVeEbakyVyA+BXxfbHxeEtXd2PvUAHA/6bFQEtX75bK/sx/g/CDN4B6 gw==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3h75rf3s0m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Jul 2022 17:04:06 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQlCqLlrAuv9mb3QdULUCUB//xOOVRSAMoHX7y4E7kmDefyXmHoEG1IBV4kOXYsKQ+9IkaGe0Y95VsBPUC4ijC1QHn/aGxJLUZl9obNqmXB8jmneotjaQ2bfekd2k8b/JVp/v3OP16hKlynnlq7xPcN4ycUbGXiK0Y73VMd9488tRwHSl2Gd+eBKC+pGqsyViNLnP2usCpnG1NUyPRiuSGSze2Gb6wuKVVa+GuFJyEAGIja2zZCAX460V5Mq9smqps9KpDacbQ/axien+YRgYGA64oKOH4OGJbdyW28BsNMMZuKCLrpjog4OD4xS7xdLBiyldVFyKdFb4cHw/NKZOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rplI9Dzf9WLcf+ngm9AreHUEfXbZCe4B9CDVOwkVYFk=;
 b=HVD8HhOdUOsRqGnSfve6ILbs/+tMvcz0+rGKr/BGv7N4gEgt0BAzFnTMqw0X1/EXkE6ptfiARoayiOZSOyYS8Q6ATPaE3iAKAg4T6F3oiOXnYiU4JOEJuYkzPl7dK4WoHnuNv5bwXN1mCyGR+5pnZ+mvlZbiFHuZhPEdnc7t1tEzYhBxXcJveQ2iihkvQdgjBAdx3K97KW4ccZuoxdRq8P4ocXUvouY+ahtR2sSLnFCufFbBHxABpx2l4zmYYW+q/HqOfvKf/UWeJjPAwzTbRRf7JVkhiD4PZoAKQpEsKjl5/EkB28LyMgDOAV+FxwirvWtCtoP5shDvwVaSCY9CPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rplI9Dzf9WLcf+ngm9AreHUEfXbZCe4B9CDVOwkVYFk=;
 b=TXxlRKPLJ0xt2DAv2Pih9w67NvMSjsH0oLUYjeZkcsKc8FajpPwlYoiiMvYy2I8KTdqKtB4xP1fC9b8RC1CyzW8DD1SDC/27io5Z+8IemZCUuFsmQMf/3vYhzxw/M05cu60A4xMdBREA6C0Feh027fhlFD44efqmcVLX0vzny5I=
Received: from SN4PR0401MB3710.namprd04.prod.outlook.com
 (2603:10b6:803:43::19) by BN8PR04MB6100.namprd04.prod.outlook.com
 (2603:10b6:408:4d::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Mon, 11 Jul
 2022 22:03:57 +0000
Received: from SN4PR0401MB3710.namprd04.prod.outlook.com
 ([fe80::8bb:c1f2:dd8e:927b]) by SN4PR0401MB3710.namprd04.prod.outlook.com
 ([fe80::8bb:c1f2:dd8e:927b%7]) with mapi id 15.20.5417.025; Mon, 11 Jul 2022
 22:03:57 +0000
From: Jovian Wysocki <jovian.wysocki@ni.com>
To: "k1barrett@ucsd.edu" <k1barrett@ucsd.edu>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL] [USRP-users] Problem installing UHD dependencies
Thread-Index: AQHYlXD1nRRcbhnK9UiYDTJhdLDx4q15uJ4Q
Date: Mon, 11 Jul 2022 22:03:57 +0000
Message-ID: 
 <SN4PR0401MB3710BEC1D4B930FFDAF26A3AFA879@SN4PR0401MB3710.namprd04.prod.outlook.com>
References: <m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A@lists.ettus.com>
In-Reply-To: <m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ActionId=892caa62-089d-4055-b586-43e80e75b475;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=true;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2022-07-11T22:01:19Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cba32086-6423-4a5e-6f2d-08da638940a1
x-ms-traffictypediagnostic: BN8PR04MB6100:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6uZ3cmcmDc/XbcXPdrNSeQUsPUqNYjczFJqOa4ILskfPJabqyd4fI8N1JGQ7kHPBDq1V9+TnA0CPsepN5GdSl66vtnG4gA84roGgiCh6PpeqHE9Uujc71Y1iw2hIPw4d0hbxQwyP7FU6BOYtqKuU5UZCjR5EUby3Uy7Uf/QSajItQY4UurcfdhcIgIVumIjNoI4iZ1IFcQ97p5uHSnj2hLJrfH/+9WHu29RI5xhqT47ZnD788oL1646Jbnhmwc4ZPFBOH5GVPoKgfgw5/D/syzhoDFGPiXgXNfyQLLhbsTcUeLRw3meu1nPzyuqhIcYnheMAt1X9H57V9aWBpDMisvsb2Np4Yr+1sGOR4ewbpLrQeWeS6u2f57Ic0MGaNs8HAWr9dgZ+N+eYiFJltK3YzvYuMjg3I52KqmY490oeon3SE/O5YuaKexZlnXixMvq+/BnbOrJTkr+EuCpNrO3v8wph8c3rTHr/FWTyNVrZkUdSOmmqrLqRnUl87tCN54u8bnCP2qEt71KCow7W7CyycrJYVBR59mN/Yi0lIMsf9L/A+QaTZqYfoomSTx3PHWtmVzO6/toicYG4PPbTCftGkkZ7bgKCDWZ0D7JXttz8IOlfYpnx4UiuSVdqZcR4plHv3BkWcBQ+oUeLp0NCOsTImzNRMrnTPQSJmdXvm5g89W0aGso72RWSTD9yPqDI/PQh4d6S3ZdA4AdLNNf8ARNnVVbT3u1Sq1T6IFk2IIE/NGV+U2/VwgwEiww6UWf4oPySd0ZKdEr16Yna6cTvBKX5jmKhckYva1PSaB0jVysA0HpBhR4tGvtn2t7zW8RZ54S11uFULMoJGSczSOa6tYb7o+oSwVmdU8C0rA+2sSCLbDozcQ17yoIXr9q2DJalIgnP0Ojh0EiVrVXqtVv3FtrvKw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN4PR0401MB3710.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(39860400002)(346002)(396003)(136003)(366004)(966005)(186003)(76116006)(296002)(316002)(52536014)(166002)(38070700005)(66476007)(8936002)(26005)(66556008)(66946007)(478600001)(66446008)(8676002)(71200400001)(41300700001)(83380400001)(64756008)(38100700002)(122000001)(9686003)(7696005)(55016003)(2906002)(53546011)(6506007)(5660300002)(86362001)(44832011)(110136005)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?iycKf70WnGgO1myqXlId3y92d//AVEdyrvKWSi3sxtE40/xHvfW2KuKlfiUs?=
 =?us-ascii?Q?qxwKnSOC1nek54qrBBpFunSA2CbOFQqGMq/QDL4cMiJ7vRHtMURlB/aXgxps?=
 =?us-ascii?Q?uD9G2ZmlRd+VuEQnn+BcV+ro786HsRgnvQT/ofU9vQjoOcsfG+4HSXDHzX4a?=
 =?us-ascii?Q?NsfaZwVbt3XpxWuxAWC/KRHiFQaANZ8vbvhrem5FjvBu2CtRWzkB+NKup+Z5?=
 =?us-ascii?Q?zDJZjnD+DMSaRnj4GzkRnBJHTAND9CwmwDO2hIlL23VlTtDniarQBaO4ZzD6?=
 =?us-ascii?Q?zNQFeZYfm1F2iDWkOFB81xJWK/bKUvr8+YPQppT9oO0RyPnbHzzv8Q+F1cf8?=
 =?us-ascii?Q?YQ0+u7nf6nvqz6OykeuGjVrbhjPJRQgeVMiI+jYmeOgz76kQ8njg/dmtH3gQ?=
 =?us-ascii?Q?k8YEyit19ERNusxz2AAoPZniPJR1UedPkEN+48Ts45qhranOn6TTih5Ndg/f?=
 =?us-ascii?Q?z6VzOEWGe4xCYL+ZuRwkqGNlA3v6O5/JltOKL0d43PttrLJmPoodA4DskFY5?=
 =?us-ascii?Q?EaUbh+NHzIGyK/72E5G/XGioDsC2+H/4wHc654wG37WPcWdnpukGK0NFKLVx?=
 =?us-ascii?Q?X8Xl/gM4ecnnCN16n467oAUx9ucJjkiuN1fC7YkU94VnwkUy/ibzOK0pR/C1?=
 =?us-ascii?Q?JG8PfrucoW0RDmRGFAxjj/+j9D67DNJ6oFsBQYXTvmeU4+lRIWdTMDDSdUso?=
 =?us-ascii?Q?xH6SGUXt0ygo8jLVTccqyuTuasNon2flkcfPr5EY65Qjb/OK8ER39FDrwqVh?=
 =?us-ascii?Q?H88flACAbFjmJg3k7mdLnCoA/19Q6jltwAaCzeI12O3KJ1y2hgBF/IhG1XF+?=
 =?us-ascii?Q?TNZCg1AG0FCduF1K9S0Xr6Zs/crhmGtH7xmL0AOtEapELhDT5WjVC+picykV?=
 =?us-ascii?Q?/1SZ1vF19lXJVIQnDjg1IMs2RIyV6Qyoqge+HrSo+wtUT+yIVMgVuM1dwNon?=
 =?us-ascii?Q?8qkqxCLHXYyJQ3zUksaKhpS+GJ/sA3War4kAWmCkVTiLusnJxf8AWclbNdrx?=
 =?us-ascii?Q?L2Kv/WwlyMgN41c5e7YvKXdIxkwMraFjsD9O4DKDEfAubG4jrNNzKxqxNYqq?=
 =?us-ascii?Q?h6VdDoN4TV84tWP0vFgzwnOpy19y9Z9HS1+6Laeiybvi253oJAUg1tPMNfTv?=
 =?us-ascii?Q?jplJFp5nfdYCh3FmmFB6YUTEzxURpOMRNReB3cTISPCLvWCLiiOB28ELYaCd?=
 =?us-ascii?Q?rczM2ETKqQNVds0H5leZysYd/oo7DZu1Gzuu5QE+c8hZDDuXJgBTnqPPwST9?=
 =?us-ascii?Q?CxPjYVFAGv4ghrDNIXGXurNXWTflS/iHKV5dPtCZrR+YaDJF4Lyotep4EVR4?=
 =?us-ascii?Q?Z+0XZLK5BGjzL8HzQMzuA7TtDaKcv7GbkjdgXwkCf8XZosCRHxJ+Gh8iRJo+?=
 =?us-ascii?Q?AqNmUjH8IOpS/zloH5J+KKb2N79id5I93IcsDSo6WsukiwQ7fQP/6rfOsmAf?=
 =?us-ascii?Q?IjsFAXH//9JAjIshdZqj3mb18LKXwf3Xe74kyjRktMI4dQPp5pPlHv7YLzMr?=
 =?us-ascii?Q?0ISR9+PrKcBPDkVltZTq48wftruxvfqqE6R4oSFAl9LRNp9ApLWcRzoxcdfq?=
 =?us-ascii?Q?ZEk2s2SmMA47npkNy0ahbM+EoHq/WDXuZyLWhtzI?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN4PR0401MB3710.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cba32086-6423-4a5e-6f2d-08da638940a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2022 22:03:57.2181
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 94mYM+PKc7ujkWzCLAHS6jyog6NQHdYm4tk2T6tH7/rvxaWxfjf7B4l1gadOSNQoZPUv/yYob90MX9xC5zA94g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR04MB6100
X-Proofpoint-GUID: NMmjehx7k-A5CaouatTUa7kpjePKBZxa
X-Proofpoint-ORIG-GUID: NMmjehx7k-A5CaouatTUa7kpjePKBZxa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-11_25,2022-07-08_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 clxscore=1011
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=999 phishscore=0 priorityscore=1501 spamscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=30 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2207110089
Message-ID-Hash: CXS3VQVAAHEXKDKS5644KPEAN6SE2V32
X-Message-ID-Hash: CXS3VQVAAHEXKDKS5644KPEAN6SE2V32
X-MailFrom: prvs=4191f139de=jovian.wysocki@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem installing UHD dependencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HL7UE2O4YT3MROLQ5YRTNJEM6Q4RYHCI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4414278369737144037=="

--===============4414278369737144037==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN4PR0401MB3710BEC1D4B930FFDAF26A3AFA879SN4PR0401MB3710_"

--_000_SN4PR0401MB3710BEC1D4B930FFDAF26A3AFA879SN4PR0401MB3710_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I haven't updated the script to include Ubuntu 22.04 but here are my bare b=
ones requirements for ubuntu 20.04. Try these packages instead.

apt-get update
apt-get -y upgrade
apt-get -y install -q build-essential ccache git libffi-dev \
  libssl-dev curl libboost-all-dev libusb-1.0-0-dev libudev-dev libgps-dev =
\
  doxygen cmake libgps-dev python3-dev python3-pip python3-matplotlib \
  python3-mako python3-docutils python3-requests python3-numpy python3-venv=
 \
  abi-dumper ncompress libncurses5-dev libncursesw5-dev ethtool

-Jovian

From: k1barrett--- via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, July 11, 2022 4:44 PM
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL] [USRP-users] Problem installing UHD dependencies


I am running ubuntu 22.04. I am trying to build UHD from source using this =
guide here.

https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux<https://urldefense.com/v3/__https:/kb.ettus.c=
om/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radi=
o)_on_Linux__;!!FbZ0ZwI3Qg!qeiYK0TqKebfvHRfVLKAsK65dLXi3y_5ln3WNWPoMmxUlZfh=
P-UkYAtfdN8QsMcTXPOJNzCx8OT7esmED9Npl_lzVA$>

However, when I run the following command:

sudo apt-get -y install autoconf automake build-essential ccache cmake cpuf=
requtils doxygen ethtool fort77 g++ gir1.2-gtk-3.0 git gobject-introspectio=
n gpsd gpsd-clients inetutils-tools libasound2-dev libboost-all-dev libcome=
di-dev libcppunit-dev libfftw3-bin libfftw3-dev libfftw3-doc libfontconfig1=
-dev libgmp-dev libgps-dev libgsl-dev liblog4cpp5-dev libncurses5 libncurse=
s5-dev libpulse-dev libqt5opengl5-dev libqwt-qt5-dev libsdl1.2-dev libtool =
libudev-dev libusb-1.0-0 libusb-1.0-0-dev libusb-dev libxi-dev libxrender-d=
ev libzmq3-dev libzmq5 ncurses-bin python3-cheetah python3-click python3-cl=
ick-plugins python3-click-threading python3-dev python3-docutils python3-gi=
 python3-gi-cairo python3-gps python3-lxml python3-mako python3-numpy pytho=
n3-numpy-dbg python3-opengl python3-pyqt5 python3-requests python3-scipy py=
thon3-setuptools python3-six python3-sphinx python3-yaml python3-zmq python=
3-ruamel.yaml swig wget

I get the error E: Unable to locate package python3-numpy-dbg

Any help would be appreciated.



Thanks


INTERNAL - NI CONFIDENTIAL

--_000_SN4PR0401MB3710BEC1D4B930FFDAF26A3AFA879SN4PR0401MB3710_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	font-size:11.0pt;
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
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I haven&#8217;t updated the script to include Ubuntu=
 22.04 but here are my bare bones requirements for ubuntu 20.04. Try these =
packages instead.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">apt-get update<o:p></o:p></p>
<p class=3D"MsoNormal">apt-get -y upgrade<o:p></o:p></p>
<p class=3D"MsoNormal">apt-get -y install -q build-essential ccache git lib=
ffi-dev \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; libssl-dev curl libboost-all-dev libusb-1.0-0=
-dev libudev-dev libgps-dev \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; doxygen cmake libgps-dev python3-dev python3-=
pip python3-matplotlib \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; python3-mako python3-docutils python3-request=
s python3-numpy python3-venv \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; abi-dumper ncompress libncurses5-dev libncurs=
esw5-dev ethtool<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Jovian<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> k1barrett--- via USRP-users &lt;usrp-us=
ers@lists.ettus.com&gt;
<br>
<b>Sent:</b> Monday, July 11, 2022 4:44 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Problem installing UHD dependencies=
<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>I am running ubuntu 22.04. I am trying to build UHD from source using th=
is guide here.<o:p></o:p></p>
<p><a href=3D"https://urldefense.com/v3/__https:/kb.ettus.com/Building_and_=
Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux__;!!=
FbZ0ZwI3Qg!qeiYK0TqKebfvHRfVLKAsK65dLXi3y_5ln3WNWPoMmxUlZfhP-UkYAtfdN8QsMcT=
XPOJNzCx8OT7esmED9Npl_lzVA$">https://kb.ettus.com/Building_and_Installing_t=
he_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux</a><o:p></o:p></=
p>
<p>However, when I run the following command:<o:p></o:p></p>
<p>sudo apt-get -y install autoconf automake build-essential ccache cmake c=
pufrequtils doxygen ethtool fort77 g++ gir1.2-gtk-3.0 git gobject-introspec=
tion gpsd gpsd-clients inetutils-tools libasound2-dev libboost-all-dev libc=
omedi-dev libcppunit-dev libfftw3-bin
 libfftw3-dev libfftw3-doc libfontconfig1-dev libgmp-dev libgps-dev libgsl-=
dev liblog4cpp5-dev libncurses5 libncurses5-dev libpulse-dev libqt5opengl5-=
dev libqwt-qt5-dev libsdl1.2-dev libtool libudev-dev libusb-1.0-0 libusb-1.=
0-0-dev libusb-dev libxi-dev libxrender-dev
 libzmq3-dev libzmq5 ncurses-bin python3-cheetah python3-click python3-clic=
k-plugins python3-click-threading python3-dev python3-docutils python3-gi p=
ython3-gi-cairo python3-gps python3-lxml python3-mako python3-numpy python3=
-numpy-dbg python3-opengl python3-pyqt5
 python3-requests python3-scipy python3-setuptools python3-six python3-sphi=
nx python3-yaml python3-zmq python3-ruamel.yaml swig wget<o:p></o:p></p>
<p>I get the error E: Unable to locate package python3-numpy-dbg<o:p></o:p>=
</p>
<p>Any help would be appreciated.<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>Thanks<o:p></o:p></p>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;" a=
lign=3D"Right">
INTERNAL - NI CONFIDENTIAL<br>
</p>
</body>
</html>

--_000_SN4PR0401MB3710BEC1D4B930FFDAF26A3AFA879SN4PR0401MB3710_--

--===============4414278369737144037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4414278369737144037==--
