Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF656C1E42
	for <lists+usrp-users@lfdr.de>; Mon, 20 Mar 2023 18:40:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAC2D3844AA
	for <lists+usrp-users@lfdr.de>; Mon, 20 Mar 2023 13:40:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679334012; bh=g2dO2rOPgY2NJayW4zYVn7TcU4u0emVVw/E/bz9zA0Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RQftcAYPHeUxUtg5hcrEsFGeQ6dSGlG/heQUxtoi5/19tEk02M3ioIaKalQkniwW/
	 DudFV/LZSlUr+oOz1tALNmPfgG8XyQ7xJUsRjopPtj80vGYv/rB/VEQ8A1uO1BfT1/
	 9KUlAXT3MQv+fOJCfJPX+UJWRKP2MGV69rlTe1Q/1fqBtl9f+mkFgngv0ViVaX6AAe
	 nX5spjVP4f/oelD8muop2DlqFZtpmsrcCpBM2tqgrerR12SMxZ8yUbswGY/9H0yMUd
	 orrAKa/gvVx+NJuIbwsOK19tLXWFoWPVFTkxO43HHHmDfzHSMehNt0Yf6BDPyYTDfQ
	 wiYSg5RiNEApA==
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 3F9C838424B
	for <usrp-users@lists.ettus.com>; Mon, 20 Mar 2023 13:39:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="k5e+a0r/";
	dkim=pass (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="RLD94shO";
	dkim-atps=neutral
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32KDU4Ed026175;
	Mon, 20 Mar 2023 12:39:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS11062020;
 bh=WRrMZo8kWWQiZLnUMZVyH7EPpObvNkqWV32W4o87ZAo=;
 b=k5e+a0r/5J55m5V1BStzSnUaDrft4Wx6d9wxn9Dodpv6juReL/zkKlS2ECs8QLhxcljs
 RoJb1xDawX1bwywXw4YMTH+2uX8rvUOb27cKKq9UTvCBKJkaxNJGEPz5B2Q3hNqQ/FTA
 0601WUyn935Am/UWC6Ggpnafw1nkKmwr9oXBZ85uahomIY/aF9nUst/uSjMUmv634oYI
 sOChTzDAjjth/AB6uBpPZ+4Z59rXHOvoXpry8AXzVieHgU7O7CTgh2fXLW+4JOCk53aF
 qu/ozUGrvIg659WHcAhdo+iDb/WLu1KniXUz0w4G4Xz3wI0BNsGSRNdLoQ5gdBH/cbh7 GA==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2176.outbound.protection.outlook.com [104.47.55.176])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3pdb48b1g5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Mar 2023 12:39:23 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UixadG69WBuXdaqc5y+UKJK+mGkUn11EsETN9RcIOixLwEmF/1RoRDphpDvWocxn8vtpCfehdc4spi0RSQryRJDPh4vBhtXCUpOiZaEU8RDhFm0L7qd0obv1G0MGHsE8vCOZWCI5wonc6rF3uHhHO6Jn/gHtmavkg0v5vp42cAmJxU+0l64AyBtpEvdETC4cwu66tAD930E/hQ0fn9Vxm/JFOKOR8c/UkO2E4jto+o0e9f/6we5akFDYBd+Lwfimj7srF/fHgrSM0AkcjnKDpLmYI98pR/IMunzKLY0naG0aB6K0cvKmrd9+n07OF294eT/0IsO/K+mBoELhsV60uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WRrMZo8kWWQiZLnUMZVyH7EPpObvNkqWV32W4o87ZAo=;
 b=Vo0x2xARHNYa9z9jJTLY8TVpnctfcXWTKlB4ZSMoe2Eqz5kD0sW6DZRcVJtEEX99q6WDjErrJvbf1hy/jHIxYXEuDsbZ3YdN/z+xUhIIFvGN1VfAmTNPdxm2hV7qstnCuJizKvV8NuAoE3RqTfCuIZvNjWFIiKfrdEIomaljtGaenw4xFTZhwFsN4vGSTS50Lc6W+W2Nrtn5/Z676lq4INz61pOtpnyqn1thW50kyfmd2N9Rc3L8svUVhskxgod4ADMWx61dnFQ9Bt8apb0AKGt5uUNQ/HsxaIsfXDylA9P7n3ZpVLmHobtHrCim2zeQwY40OTLpQlSjuZaFP6ZzxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WRrMZo8kWWQiZLnUMZVyH7EPpObvNkqWV32W4o87ZAo=;
 b=RLD94shOFWJPrL3IZzlHm5wytrMjHKh8ljVe3oBJbt11PCTqUyZjTXHb2cHNV1al51BwK4+2lAywRxw/W5Ciw9y2ANvjr/CV47wXR/8m2jP8iqfwWiAkr4MMphTZkoTFLWMUzrkO4W0Uo6duWKgu/K0KdiNVhdIlEXawuED+Fyk=
Received: from SN6PR04MB5053.namprd04.prod.outlook.com (2603:10b6:805:95::12)
 by SA3PR04MB8628.namprd04.prod.outlook.com (2603:10b6:806:2f8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 20 Mar
 2023 17:39:22 +0000
Received: from SN6PR04MB5053.namprd04.prod.outlook.com
 ([fe80::e323:8888:fca1:a67]) by SN6PR04MB5053.namprd04.prod.outlook.com
 ([fe80::e323:8888:fca1:a67%7]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 17:39:22 +0000
From: Haydn Nelson <haydn.nelson@ni.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Just a test
Thread-Index: AQHZW0y4NTZ81NuOMU+67gQm15bw8a8D7yYQ
Date: Mon, 20 Mar 2023 17:39:22 +0000
Message-ID: 
 <SN6PR04MB50535C2A7E066B96DA1C9F51F3809@SN6PR04MB5053.namprd04.prod.outlook.com>
References: <3d0a4761-13d6-1a52-d5ec-ef85ddcd28b4@gmail.com>
In-Reply-To: <3d0a4761-13d6-1a52-d5ec-ef85ddcd28b4@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ActionId=fc95eaad-6ff1-4ae5-b97e-3d3a0d4e6892;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=true;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2023-03-20T17:39:08Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR04MB5053:EE_|SA3PR04MB8628:EE_
x-ms-office365-filtering-correlation-id: 9c959ebe-e8a2-40b7-f453-08db296a0a99
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 fw/whAbzo1EjWRvkpD3rsaMgpT9PA2+gP8StYQWkF1fp8R8X7LfVJeSXtmY4QMaQNKx1tyhmg0bWxoNbp56KFYaDfOkv7Yw8rzWW2w07Zm6goWh8IBm6X92Dz0TOXkEj5hbwU1JBGqc96BU2vCIDUSrq/jE3ihrKGNQh0HYUTZj9ClstDDdLxZbl1KyeanJsSORgRyMq1GQWrULQsZVid5ta4YFe5eyxdTfF2ft+UZbKS7n79287TTeoTsFkdbdDOGKmrbRDN8UCrzPhx1zOJmJ9cR+M09BqFqqenm1Xxde0YpUJMeG9RehTfPJX68onBCHL2e6f1xGFYnCJ5jTnPwyy2M4dGTMY05qAKf+epo61jqgrxsnG7CRzUcpMfkzf64DVvKQlwWe30Zd8IP3npe3HCC5uLZJkNs61AuI+eZFTivSBztBFpTi5iT0xXDyUXyZ2k1oFyugD/BAtmDmDMdDgPjoX6txFj0xl6KHOFBdppVVfkbK5FWaFTWLLBpL01ut0OPT4XTN+zHcHThhSGHPlemp30PcZiNkfgn7wVI8YA0JoZ6FI3bHxScdyiwb5Xjfsyem1ueU1M8aimWzHZ2bM4bV89zqXcLMZmVfL3qPf8TEjvobav2yIUPGuenE3sQuAng9fKPIxceDmZigZqJA6UPgMOk4HmBv9AZFCDpuz8BZHpFQKIKpRmKLLEy0VK1Uap+H8BOKPLK9uUE32BbbY8bD6NK2UNpNNVcopBfM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB5053.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(39860400002)(376002)(136003)(346002)(396003)(366004)(451199018)(41300700001)(52536014)(4744005)(2906002)(8936002)(44832011)(8676002)(64756008)(76116006)(66446008)(66899018)(66476007)(66556008)(66946007)(5660300002)(316002)(86362001)(110136005)(478600001)(71200400001)(40140700001)(33656002)(55016003)(26005)(186003)(6506007)(53546011)(7696005)(38100700002)(83380400001)(9686003)(38070700005)(122000001)(130860200001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?CbheLrsBHlLfCEsHVxqftN0NSlqbIeSTZQYegY0mxDf0UrW4jv2Ksm8wNy?=
 =?iso-8859-1?Q?CWpj567Vma+aOMJy8GEleMpJyWVsOEhvfabxqqAV4pw7a+uKjF7WFbSjZD?=
 =?iso-8859-1?Q?r8ouR65taEKE92By/qBm7JqYkNu8kclJrTQ+0BgYaKhfpFjIK1wXdZp+Ko?=
 =?iso-8859-1?Q?4+BhY79T45WwiKocWaHOxuRoa7wAWZccvGjM/ToLVHRuEbGqmx9mWEu/nx?=
 =?iso-8859-1?Q?RA8H0aTwxUh3puwCGM6Gh8Bgfbv+b1ShTXzfGrewkHCPBivxAVAvRgZA2P?=
 =?iso-8859-1?Q?nMhPHDtByIRSuffdCAAZOht78OW5z7e7b0sMNOuMN6yRTI9QLO+oHDzxf1?=
 =?iso-8859-1?Q?n2bqoPOYwb6mgXxhBgpS1+/E1FVBL+Fcv10m6TLHOkqAlF910p+g8bdxgK?=
 =?iso-8859-1?Q?5WQDgpa+/X/cFURBb5/rb/+D+OcN9rcuk7+SZ3Sj5XdiwlsvtWnIVi/2Ef?=
 =?iso-8859-1?Q?fwPurWSV7UgyZgEVPV4fuMvNbLS+DAJbkw38UZypKrWl0wLndU1TY46qrW?=
 =?iso-8859-1?Q?/r/aMe5tmZwnIJtzuEoG7Pcrj8J7xDpPHt78QP3jdlBK/44xgOnWCiF846?=
 =?iso-8859-1?Q?37dyT1bQ9tK7b0YmHBANduYLdHiqu3vfqp+AYkGSlQFBOX3CuOyRzT7o30?=
 =?iso-8859-1?Q?nlZs1b2miS9gC0HSIoS/TGpgHqKHoxOkSLtP1INq+axRL+ts4mXn5PG8Kd?=
 =?iso-8859-1?Q?3+KQJNWYwwRJTP4HZgRTRGubCZ8z8OKTwDQn73q6C7oCaHB5UzA4LGN1a8?=
 =?iso-8859-1?Q?3AcifIJPsHgJNUC4+kbgpAYShvmN/4v8NYQtTdvtTw5f1puu8GZ5Z7Y2Cl?=
 =?iso-8859-1?Q?7oP7h9GCnQN1Wqdo2+sKtlaWQgf7OpnGiCcBbm30AMcv7eOIvJqorWwQM0?=
 =?iso-8859-1?Q?FaYYIdu8Z29ZylO7LemvaZB/P+0JRC2e0uIOQHX3X8mLESihVRGuHB0VL/?=
 =?iso-8859-1?Q?5Lmgu4w+ghq0W12qQyB3kC4ttQoFJU5NBkUDCDyTmKuDGZUGT3W2SOeAja?=
 =?iso-8859-1?Q?od8LUCN/oaim9iyS5OMMAjPiHOgJSlK0St96t32+BaugDDdZnZhShYskG3?=
 =?iso-8859-1?Q?9Ha3hO9GyleHApyG8HtPR1W/k6BCNzGQr9LXEi3X3mO8Ia2VWXINIG9dqQ?=
 =?iso-8859-1?Q?nYngSFitSv1tsR/Jmt5eF+Tg9j2x1lLOD+1DPc7rX7AaW/Il5ZU0B5JoFR?=
 =?iso-8859-1?Q?/wV+ncdjmJVbKgfs3i0f6BuyYn3Ee3iEHpOp7HkxfZ2eXdqlJ+P4/NiK0U?=
 =?iso-8859-1?Q?LghQZZq4upD02/xbe/C7Rp19jB86FXp8pdCH+ut/D+u1cpWLYXIIcrXskZ?=
 =?iso-8859-1?Q?2uppUtv73JBHujVMi7bbUZmk2pZOgd0XbKWWb9fLFWD2UHreLTU0KdqPX8?=
 =?iso-8859-1?Q?m055LklPhBrsa2oO1zXyd7XVKGSBV1pfQ5L4tg1mnsVN5GiLqBrXaMESOD?=
 =?iso-8859-1?Q?pqPMI5D0Nx5D5vi2gWhhKXhjKB5QdHd0vBUO4bmL7okFYUS1rtlqnDSG2G?=
 =?iso-8859-1?Q?Vjv7Qpas4TwbjQjnKJ6hR/faSXe4XmmYhhEgozUod/2IyIBi8ptKDMrR8L?=
 =?iso-8859-1?Q?aMShoNoeuVA6HQO654PghAkhmUIeqYthRBgP50xfWCvyzjfctOnyaZZ0ck?=
 =?iso-8859-1?Q?+mHhUz4wUqV9/yLzCMz2x+Edd7eBqkB5DB?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB5053.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c959ebe-e8a2-40b7-f453-08db296a0a99
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2023 17:39:22.3878
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hKgsyNimRhX5KCIF2g/Tgf/26TG1xGujiTnSlqso2PByPvg8maJUcQVq+t5knbvg9hHgrSBscIAciVwHnfEoIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR04MB8628
X-Proofpoint-ORIG-GUID: 00CSMj9hpIX35DlzKkIMQClvxKYELfLG
X-Proofpoint-GUID: 00CSMj9hpIX35DlzKkIMQClvxKYELfLG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-20_15,2023-03-20_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 mlxscore=0
 malwarescore=0 suspectscore=0 clxscore=1011 impostorscore=0
 mlxlogscore=716 priorityscore=1501 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2303150002 definitions=main-2303200149
Message-ID-Hash: LXEZ23DELWOYUCNUZL3SW3RNUL24KBZE
X-Message-ID-Hash: LXEZ23DELWOYUCNUZL3SW3RNUL24KBZE
X-MailFrom: prvs=2443574c45=haydn.nelson@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Just a test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LLYJ2W6JVY3LB6HM32QQUJVQC42D3P4E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Test complete....


Haydn Nelson
Business Development Manager
Radar, EW, & EOIR Test Solutions
Aerospace and Defense
+1-512-731-7251 |  ni.com
IEEE Radar Conference 2023 Exhibits Co-Chair


-----Original Message-----
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Monday, March 20, 2023 11:55 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Just a test

Am I still subscribed?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leave@lists.ettus.com

INTERNAL - NI CONFIDENTIAL
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
