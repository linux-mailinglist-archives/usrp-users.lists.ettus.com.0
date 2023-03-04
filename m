Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7D16AABC5
	for <lists+usrp-users@lfdr.de>; Sat,  4 Mar 2023 19:10:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 956AD3808E7
	for <lists+usrp-users@lfdr.de>; Sat,  4 Mar 2023 13:10:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677953407; bh=KY6mvwAXuxh/hjZtxl9VkdUD0whgRJsdqCmMg7AXc1s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mDbvo9F/f92zFfcdA6LLV579GilI17sNKI73qVsfQWJ63bsEYP1FG5hkIMwfafp5G
	 jqEr2JznzgOlW96xhkg4l4JUCYw/u8QPnkO0hptgyubsO9eV1t6ThqYwAglPkpDqGx
	 ++Q8BpiKY+aAQ2o9soQoKMvLUPUqcInPHg3fxCJSMsZ3KkKNRCu3tCAZ3ycnZTOvWz
	 H5+yz8BrpWS/vj0E0KgyeTpgh16UO/7dgsWsshiU3KbyEdyDSFTNXg/TsOyxFf9tex
	 eMRBYHNYvwYjpix5UdYcnD7Imv8ld60uOftjfwYbokAra6fuOeL5GqIO7ac0dZdjil
	 llTFfC2AzW/sQ==
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by mm2.emwd.com (Postfix) with ESMTPS id EBD2A3845E1
	for <usrp-users@lists.ettus.com>; Sat,  4 Mar 2023 13:09:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="SRfFLXAP";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="qIFYeRNu";
	dkim-atps=neutral
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 324GlQEU001720;
	Sat, 4 Mar 2023 12:09:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : date :
 message-id : references : in-reply-to : content-type : mime-version :
 subject; s=PPS11062020; bh=tIK6L3fRCiAcV0DpDlsYXgeij+pOlJxf62B4Go0NOGc=;
 b=SRfFLXAP+n9ZCKE0iTNYwr6JYf12twd2nN8EJ8bq7tsdvACJT7f24LwFCDs1zWbBSMyu
 niI5D1VtQtb7seai/plQWUyYvDsQ5cu4bqSDOEj831rG3tt1t17tLyt1o2Jj+C+8/Lai
 Y6TVOp02nf7C7Apa5Xe2Cu6YwWbLKqu0B7fQTj2LxDPQvxbDgy5zdwsNkilg2iNIPLVH
 DQbcv/zR4u5wreG+tm3BD+RGbUCmhrs5HQJVszI1wG8lKRXh2YdYRQN8pRyjQmW/rI0L
 7hV/FO2PqlNpnRtbcjbLC+i9v/dvVj2kzdZsVkbWa0AiMPLK36UCgkj4UhtyeGLeevKF 6w==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3p44pc8gtt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 04 Mar 2023 12:09:26 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q1jo4qnHxs/L8FaDv5ph3kHJDirzPERgQLao+hBZ1pR2I+EI/6qwW3BkktyiK6lAKl4MuDmT1sb1HODKHTD1EFG+dI5hgr9KhgkD5R5t3qgw07/wBS6kkVzOFQMa2dxj0ycr0KaGXMfY3K1x0iun2EsBsyL1IsM//hGeqTbCA7XTFaZdIwc2VYSREItE66CtdlqP41NdlGMslu1YThnGoiglnzLguWewLnt8uLKwg2bgft8Dk/xBqxhW9Ks7+vtraUEKLMzP4Hs9jS7JExyC0Vqh03w0zKKS5VuLWIL/E4gOnpJVE3DMC6otPX0pHcz5M6Pe9ge+W74hBUs+uQ4R+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tIK6L3fRCiAcV0DpDlsYXgeij+pOlJxf62B4Go0NOGc=;
 b=CDyh2JlWF7anmIoMS4wnJnIJiQqJObFgKT9m+rQ/PRA1qVNmUn6whZaK7q/5saOK+BMK4jK+dzYRQyAcOX42E4cja3YEUhIUUfuH4nTF9Jo1iHkzG9iwxalqVsOvVTGqT4dQOXwZng3RTU77bnWca7BOqBDHiDnfaZuuUNnvAKscNQx6hJ++K5VInW02oKP2/bnMloL35s2ZZTJeVvJCq863iUA8+qYak01QmPZP3gN4NPA00t6d72C14dQt7geHMHaZrL9tim3L4bv3z9t6lTqn2g/NONEhMcHvDp14m5VEEshoiKR7ygGSjZ6MsBrbdTSNJ5frj8t/IVAG5amMfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tIK6L3fRCiAcV0DpDlsYXgeij+pOlJxf62B4Go0NOGc=;
 b=qIFYeRNu5hTbTx+MBrFZxkho8ssjkm9M/q3hiEdEAQP7Qozs/ekxA1G25aYa3R+hliGSe+J+g1r7/8VMliQeeKHu3GUN7WIya51cYWeP+ShEIC7YCZGk9BVlcLuxnlDUPb5myrnOUn2Wo5teHefPw0OnAK9SCiAdkA80NtmasgQ=
Received: from SJ0PR04MB8328.namprd04.prod.outlook.com (2603:10b6:a03:3e0::13)
 by BL3PR04MB8044.namprd04.prod.outlook.com (2603:10b6:208:347::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.23; Sat, 4 Mar
 2023 18:09:24 +0000
Received: from SJ0PR04MB8328.namprd04.prod.outlook.com
 ([fe80::3611:ae0b:8239:9a02]) by SJ0PR04MB8328.namprd04.prod.outlook.com
 ([fe80::3611:ae0b:8239:9a02%4]) with mapi id 15.20.6156.023; Sat, 4 Mar 2023
 18:09:24 +0000
From: Abhay Samant <abhay.samant@ni.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL] [USRP-users] Re: Error updating fpga image on n320
Thread-Index: AQHZTsHAFwusvPsMVU2mraHkjplXaK7q58CAgAADmME=
Date: Sat, 4 Mar 2023 18:09:24 +0000
Message-ID: 
 <SJ0PR04MB832895E5D4CE860EB46A057BEBB09@SJ0PR04MB8328.namprd04.prod.outlook.com>
References: 
 <SJ0PR04MB832815197030088DB1468B6CEBB09@SJ0PR04MB8328.namprd04.prod.outlook.com>
 <9d0647bc-b671-3350-a9f0-e5b11106b44a@gmail.com>
In-Reply-To: <9d0647bc-b671-3350-a9f0-e5b11106b44a@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=True;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2023-03-04T18:09:24.204Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR04MB8328:EE_|BL3PR04MB8044:EE_
x-ms-office365-filtering-correlation-id: 572d75e9-5b37-4ba1-06c4-08db1cdb962f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 WOmbGaGP2IPXVAkEmgMgJltufjTkMBDLazVyjRx/40nVRyB3UeooTHNiWEIeralwpMWEOCZ4Utyj0gChYva+xQZug1lzxQ0SIZS7oRCfxRAxyjXZr2lEbQplKNJQnTPo/IErjJHOvMqtNQLWfOVem6dt96bz0uxBnJZRiaT7s44hFvQQVRoICu2fY8Ee5Uk1ibyMLvlJzZPzUy92MXJxVfhhrD4U83/tkYjtT7r3nSXYLANwSK/ssApOos0p3jv/iKGhZXWxVHrtFCuLPKSGzYvMMR7EHKVMpjonGBH8t3/Tr7CaSwgNI5WZ9Jxa7higIgQs3ARqU1qUINiAMbXYXRTe/LjnkNQXJOVV7DycSodK5Tl3tE4C6jBR4s80k3t4qS3mocSVmNYtCPtvcVmR2nZJ9GCTZ3lezM/e6A5Kg1lfKUbzR6tkc6OSkvxwaBSB7AroWhXmAbnUMGyHhqr2ZJ2Ujr6hCrLZoufr1ogbYhjERVU2kOXVfuX3KXBj70SXL82NQR14QEWI3N53S3i9VyCBebfRxPwmlMxRFBGa9SG6HX4SLtXeJqMbA5yFj0+F9Y384hfQGukqtOHLe0XlX53mve6reeY+qcS9Il17GcB8RJPR1YfFwGzPt5AhPqZ8kMRy0w4opCJxAMHiT+ewTNcb9FBnLxGWKU2VtNwbZkgpFO/smKPphu5xCxGx65tq12bYe1GIh/ZCTqyi6MRFUw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR04MB8328.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(346002)(396003)(136003)(39850400004)(376002)(451199018)(33656002)(83380400001)(478600001)(7696005)(71200400001)(6506007)(53546011)(26005)(186003)(52536014)(9686003)(8936002)(41300700001)(2906002)(8676002)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(5660300002)(86362001)(44832011)(122000001)(38100700002)(110136005)(38070700005)(55016003)(91956017)(316002)(66899018)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?BYjj7sVuKPi3/RLJ6fwt99PTXmErR01zJLKNjr0nS9yX+/POEYTOkGVP?=
 =?Windows-1252?Q?4mGS1ZcGIHPPzqMwOATfAyZLnFSgIcAn93QlEuNImbqMQ4KgzXXsGRWs?=
 =?Windows-1252?Q?+H9OwzD/HKnX68xJ3zlpdzDyr4veDQn71a03n10VTtQMEG9zSBBNzdlX?=
 =?Windows-1252?Q?6uaH3X881jHMoEpsUOUguipQ7OBXfC+nOr8ywkIfQwJqTsg9BL6gUYZo?=
 =?Windows-1252?Q?FMvE/Rsg5ehN39yPowcGpusUcTirO9rPtGISWFhD0/joHN8B9FTDX2Rq?=
 =?Windows-1252?Q?hqiqJAjgXe5ODzUo15v2eQUL7JMgmKcbMLyTZFK8sTkwKlvpJH4OdkvM?=
 =?Windows-1252?Q?dVN5EQxCH/pxrTHJ/qUNM+g+G82B7j7SUHHDV3gWB2KNh+zVb25Jn0Io?=
 =?Windows-1252?Q?awLYKmAkpHzSoMPJV16Gv/uT7yRyBva3xAN9TvWo6/aq/7ecCSpg5SG9?=
 =?Windows-1252?Q?Dx0x3DRnpfpmef5mXgpMPmpNR0qCbASoqtAAU39sBkqL2BGvm+7nZhzs?=
 =?Windows-1252?Q?IZg8nFT38r652CPG10oVrtS785t3sduq7b7Lq5hlnfaFX4OJJmQWe1hI?=
 =?Windows-1252?Q?/w4uvFflqgvnIu31j6JYW2nt9uWIXqDSwBmkKqkRctAWscAOdKsbtaSV?=
 =?Windows-1252?Q?EiTZDSUpiZzxTQShBsmbeFrfSwnRJ3JP4zKeJJJUbNE5/g4Z0bazlHq8?=
 =?Windows-1252?Q?E/YFjPLUPWWdDmaq/2DOUeUae/KJSKjq11HKLUKVwQLQLS1/SKwwsna8?=
 =?Windows-1252?Q?EzNQ/ixeoXWmMzNP3h/M3C7qDtrl5T1MsAicy3H0ZLitjjpGCY7lM8H7?=
 =?Windows-1252?Q?jfivgDmQRAxq94ccz1h/5HBKEcXKVYxekxgoAO/XO5CD3Z7wsAaBqgGw?=
 =?Windows-1252?Q?7fCIFdPR+FUgBG/Xyse8DcYJEDt5rHOrbsLLMw/bZ1+CkYBPXRUqIk1/?=
 =?Windows-1252?Q?yYtaN1TMUaPNA7Py83GB4F2VvhxxIjMVig4YkrtevpklgWUgpPpBUhoV?=
 =?Windows-1252?Q?rjURyOCMKB1le0XlE/tgqXOKjrhRdulJ+09rNs4m+JD7uzoDHClJlmH+?=
 =?Windows-1252?Q?x0YTV+uaFJKdYsmvziwLdIYOlDWOdNaGBJOpUq3cg3QMO6QELRtdstrK?=
 =?Windows-1252?Q?Tt3D68rvx/l2qTsYjPF39cfJz50/D958ANxpyFth+jqgzauVS1Wh0bg7?=
 =?Windows-1252?Q?moy6oCqvkInLz+YiMyNuq+G5w1qKgPzfnr8SVAea1fU+SXXIxzvD7jO5?=
 =?Windows-1252?Q?qfu8FIO1B12kTX0m+LbiaYJuMXVGbo+jL8E5ZykZnl0qjDkz4YvLCYNQ?=
 =?Windows-1252?Q?BeqBcffv9bYDKqvQyrtso3GQs8V7UvtxvuWiSbv+cRWaN75DceJ9YPh4?=
 =?Windows-1252?Q?Cql2nMSQRxHRv5osOMjjDOh6LWEfTRhWSG+KDuSatZ8nbyqhfX90+iZo?=
 =?Windows-1252?Q?0bPvSXNcg6GKMHeOGbyaKzGgoPhK/0EuqNY2mWauilYpg0xS6sil1jOq?=
 =?Windows-1252?Q?1+eNrHf/CaC7TuthYxdu9d7JTTifXTG3iWXqnagGWEmwKcrWciPobJfy?=
 =?Windows-1252?Q?xovHmgEg+vsPM0q3GjIk6v6OrSlDozSKyvmaf8nkRiAiwQg0K3g43zr9?=
 =?Windows-1252?Q?m08xhSW/H365n7Dd3X8fdAAm2hUCgmSGCOiITGWTcQ6HjS+5aT1CcC4x?=
 =?Windows-1252?Q?I/2Liw+QUe7NClHxU/SVX+J2VwheXsOq?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR04MB8328.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 572d75e9-5b37-4ba1-06c4-08db1cdb962f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2023 18:09:24.5824
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ECgbB8RZ4gOVQPP9ue5b8b7avjVYpIaqf+JmInheQX/aaOOYIcLaR7glIYmkhvD8L8H8ca0639GbrKfwuSl0PA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR04MB8044
X-Proofpoint-ORIG-GUID: TxG5-5RCGsYcNhzZmpGMrSm7XqvbPTXX
X-Proofpoint-GUID: TxG5-5RCGsYcNhzZmpGMrSm7XqvbPTXX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-04_10,2023-03-03_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30
 lowpriorityscore=0 impostorscore=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 spamscore=0 mlxscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1011 phishscore=0 classifier=spam adjust=30
 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303040156
Message-ID-Hash: B4Z6W7GYPGQCNECIAVRFK45AFHMFTRHJ
X-Message-ID-Hash: B4Z6W7GYPGQCNECIAVRFK45AFHMFTRHJ
X-MailFrom: prvs=24275ad269=abhay.samant@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error updating fpga image on n320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CV7QVRB36N4SJXNIXCYKAF6KIWTIFLF4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3750658594757367697=="

--===============3750658594757367697==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR04MB832895E5D4CE860EB46A057BEBB09SJ0PR04MB8328namp_"

--_000_SJ0PR04MB832895E5D4CE860EB46A057BEBB09SJ0PR04MB8328namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,
Thank you for your quick response on a Saturday.

My network profile that I use to connect to USRP was earlier configured to =
use static address 192.168.10.1, which I had used this IP address with the =
image loader call.

Nevertheless, based on your feedback, I changed the IP address to 192.168.1=
0.2 and still get the same error

uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.2,fpga=3DHG"
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.=
2.0.1-0-g321295fb
No applicable UHD devices found
[ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a single device

I can ping to this address successfully. I have also disabled firewall on U=
buntu (sudo disable ufw) based on some other answers that I saw related to =
same question.


Abhay Samant, PhD

Chief Software Engineer =96 Aerospace/Defense/Government Business

NI
abhay.samant@ni.com

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Saturday, March 4, 2023 11:56 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [EXTERNAL] [USRP-users] Re: Error updating fpga image on n320

On 04/03/2023 12:52, Abhay Samant wrote:
Hi,
I am trying to update fpga image on my n320 on an Ubuntu 20.04 machine and =
I get the following error

$ uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.1,fpga=3DHG"
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.=
2.0.1-0-g321295fb
No applicable UHD devices found
[ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a single device=
.

I have downloaded all the images using uhd_image_downloader command.

Has anyone else run into the loader only supports a single device error.



Abhay Samant, PhD

Chief Software Engineer =96 Aerospace/Defense/Government Business

NI
abhay.samant@ni.com<mailto:abhay.samant@ni.com>

Your IP address is almost certainly incorrect -- try   192.168.10.2



INTERNAL - NI CONFIDENTIAL



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>




INTERNAL - NI CONFIDENTIAL

--_000_SJ0PR04MB832895E5D4CE860EB46A057BEBB09SJ0PR04MB8328namp_
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
<span style=3D"font-size:12pt;background-color:rgb(255, 255, 255)" class=3D=
"ContentPasted0">Hi Marcus,</span>
<div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)" class=3D"=
ContentPasted0">
Thank you for your quick response on a Saturday.</div>
<div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"><br class=
=3D"ContentPasted0">
</div>
<div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)" class=3D"=
ContentPasted0">
My network profile that I use to connect to USRP was earlier configured to =
use static address 192.168.10.1, which I had used this IP address with the =
image loader call.<br class=3D"ContentPasted0">
</div>
<div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"><br class=
=3D"ContentPasted0">
</div>
<div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)" class=3D"=
ContentPasted0">
Nevertheless, based on your feedback, I changed the IP address to 192.168.1=
0.2 and still get the same error</div>
<div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)" class=3D"=
ContentPasted0">
<br class=3D"ContentPasted0">
</div>
<div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)" class=3D"=
ContentPasted0 ContentPasted1">
uhd_image_loader --args &quot;type=3Dn3xx,addr=3D192.168.10.2,fpga=3DHG&quo=
t;
<div class=3D"ContentPasted1 ContentPasted0">[INFO] [UHD] linux; GNU C++ ve=
rsion 9.4.0; Boost_107100; DPDK_19.11; UHD_4.2.0.1-0-g321295fb</div>
<div class=3D"ContentPasted1 ContentPasted0">No applicable UHD devices foun=
d</div>
[ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a single device=
</div>
<div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)" class=3D"=
ContentPasted0 ContentPasted1">
<br class=3D"ContentPasted0">
</div>
<span style=3D"font-size:12pt;background-color:rgb(255, 255, 255)" class=3D=
"ContentPasted0 ContentPasted1">I can ping to this address successfully. I =
have also disabled firewall on Ubuntu (sudo disable ufw) based on some othe=
r answers that I saw related to same
 question.</span><br>
</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<p style=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sa=
ns-serif; color:rgb(32,31,30); text-align:start; background-color:rgb(255,2=
55,255)">
Abhay Samant, PhD</p>
<p style=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sa=
ns-serif; color:rgb(32,31,30); text-align:start; background-color:rgb(255,2=
55,255)">
Chief Software Engineer =96 Aerospace/Defense/Government Business</p>
<p style=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sa=
ns-serif; color:rgb(32,31,30); text-align:start; background-color:rgb(255,2=
55,255)">
NI<br>
<span style=3D"margin:0px; color:blue; text-decoration:underline">abhay.sam=
ant@ni.com</span></p>
<br>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Saturday, March 4, 2023 11:56 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [EXTERNAL] [USRP-users] Re: Error updating fpga image on n3=
20</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 04/03/2023 12:52, Abhay Samant wrote:<b=
r>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
Hi,</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
I am trying to update fpga image on my n320 on an Ubuntu 20.04 machine and =
I get the following error<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
$ uhd_image_loader --args &quot;type=3Dn3xx,addr=3D192.168.10.1,fpga=3DHG&q=
uot;</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<div class=3D"x_ContentPasted0">[INFO] [UHD] linux; GNU C++ version 9.4.0; =
Boost_107100; DPDK_19.11; UHD_4.2.0.1-0-g321295fb</div>
<div class=3D"x_ContentPasted0">No applicable UHD devices found</div>
<div class=3D"x_ContentPasted0">[ERROR] [MPMD IMAGE LOADER] mpmd_image_load=
er only supports a single device.</div>
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
I have downloaded all the images using uhd_image_downloader command.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
Has anyone else run into the loader only supports a single device error.<br=
>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<br>
</div>
<div class=3D"x_elementToProof">
<div id=3D"x_Signature">
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<p style=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sa=
ns-serif; color:rgb(32,31,30); text-align:start; background-color:rgb(255,2=
55,255)">
Abhay Samant, PhD</p>
<p style=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sa=
ns-serif; color:rgb(32,31,30); text-align:start; background-color:rgb(255,2=
55,255)">
Chief Software Engineer =96 Aerospace/Defense/Government Business</p>
<p style=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sa=
ns-serif; color:rgb(32,31,30); text-align:start; background-color:rgb(255,2=
55,255)">
NI<br>
<span style=3D"margin:0px; color:blue; text-decoration:underline"><a class=
=3D"x_moz-txt-link-abbreviated" href=3D"mailto:abhay.samant@ni.com">abhay.s=
amant@ni.com</a></span></p>
<br>
</div>
</div>
</div>
</div>
</blockquote>
Your IP address is almost certainly incorrect -- try&nbsp;&nbsp; 192.168.10=
.2<br>
<br>
<br>
<blockquote type=3D"cite">
<p align=3D"Right" style=3D"font-family:Calibri; font-size:10pt; color:#000=
000; margin:5pt">
INTERNAL - NI CONFIDENTIAL<br>
</p>
<br>
<fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.=
com</a>
</pre>
</blockquote>
<br>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;" a=
lign=3D"Right">
INTERNAL - NI CONFIDENTIAL<br>
</p>
</body>
</html>

--_000_SJ0PR04MB832895E5D4CE860EB46A057BEBB09SJ0PR04MB8328namp_--

--===============3750658594757367697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3750658594757367697==--
