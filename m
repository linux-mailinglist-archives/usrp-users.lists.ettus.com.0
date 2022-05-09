Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A688520124
	for <lists+usrp-users@lfdr.de>; Mon,  9 May 2022 17:33:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E4A5384599
	for <lists+usrp-users@lfdr.de>; Mon,  9 May 2022 11:33:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652110410; bh=0BsvlMkyhW/o/4Qqm5IjgyGd8yO5ZMTp92mqq2pZ/k0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vSWRwY+qLmMgj5e/Yx1qjFwmkSk+SrFav7xMHtdw2kXnfnjg8JA8QnxrPSql857LX
	 KTiJk281ckF9liaHv9UcpSf7KnHXaF+YSWVQUOF1NsxsZEq3B+SjbOeYFFw70hgJ2C
	 hPQx5hq6huvBJx3vCheZ7eWPBoa9pUAGr+Xg8bY4P32x9v9mKpnPLj+a+mv/57Ki2h
	 sbLH9HtATYpduHZ/no70N9N58oWvfslhpxiQIhxTArlAampDhnm2ATkq2jLwTfmP+9
	 xW9uHYOvD+7DfpDcNNqh76iM1pB7t6CXNtTwxM1iSKZWKENKVI8vPzTSh/wJdXX5CW
	 iVxsR6pP3giFA==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.164])
	by mm2.emwd.com (Postfix) with ESMTPS id BD85038430F
	for <usrp-users@lists.ettus.com>; Mon,  9 May 2022 11:32:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="RswzvI8u";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.48.61])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 2F73C120074
	for <usrp-users@lists.ettus.com>; Mon,  9 May 2022 15:32:18 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2107.outbound.protection.outlook.com [104.47.55.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id EF4A4C008E
	for <usrp-users@lists.ettus.com>; Mon,  9 May 2022 15:32:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GJzNMWuU9pQ7bLLVOgmunN2ZmT78ry3yPE1WmwLc1HwhVv3WA1/MNjKsL8tvy5x60iwocdP13orJ5ztoBhGQcAJUWqriwB1MeyVBCFJfRHIy10dH1CoER/S+hVlUBew2becetQLFZiCjM42nnmiRhy8zp05IdbkkMqwr4LR25Ux43n+WwhF91m3JieO7un99mfGeU2JX5fI2HAUJljMfIAXRlqrqEQ07cqohHxtBYz1UCKZqNdyxJJsHPxl5F23Mne5rySBtYo0DUI/CkoCiUIFpYedlt29XCyTM2gO1DCjPw4o3TOpeHjI87b3MTXRfrJp/9UhNdVl6BGa8CNm1xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a0JQpQjDF3/7yABT7MuyXxF8zqsgf4WB32OeZ3/AuWk=;
 b=IpCwhlknl1LmymUESc7sodZgica/54OMSBs7/K15YSg/O/Zo914jSSh9B126YCjYGDBX+1baK6oHzY1EwPSMrfUSW124bpWZqPqNOBfb4nt4h0W5NKq4Io7er8wByFV+XGe6LMz7pLcjY0opUgD7gIGY5hrCrjg4DaWM5pZWVZRfSteroCTMr8iQ74y3/ixaLrwVyIdtpIxqSom4H3q8DA4CWtDEF7xzMgwcuqG65cJjSgtkwGt2Zzp+KaCEXXpfbJsLft1EC2lQ60cGotSSuJAT8GfCkvqZnLa8HvFzUO/8Nh/voYA9VLO36f2fM5nkt2FfrNlJBHfxJ35GCbykNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a0JQpQjDF3/7yABT7MuyXxF8zqsgf4WB32OeZ3/AuWk=;
 b=RswzvI8uId9bWfNOz8HnvgLYrLvv2oxKbwnZIrccE0km727rdGj4OwcSz+3M0lyEjlr+OyKk4V3j2MtydHy1nR5rq7RbzsSobVND9lAgrPF24bnH82c2KBE/sJr2tXq9N2d3tqc2bxsfhvxtYIXb1kxrsiVruNZLCQJWyMJCIQg=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by CY4PR12MB1736.namprd12.prod.outlook.com (2603:10b6:903:123::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23; Mon, 9 May
 2022 15:32:12 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::2476:1b13:7af3:29f6]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::2476:1b13:7af3:29f6%7]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 15:32:11 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N320 TDC measurement errors
Thread-Index: AQHYXkP+Y4fg2AyFmESoC+vAlJapH60Wthda
Date: Mon, 9 May 2022 15:32:11 +0000
Message-ID: 
 <MN2PR12MB331244B919FBB63ECE92630FB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB33120210FE804565B1B42888B8C19@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: 
 <MN2PR12MB33120210FE804565B1B42888B8C19@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03dacfa1-4064-4f75-2363-08da31d11621
x-ms-traffictypediagnostic: CY4PR12MB1736:EE_
x-microsoft-antispam-prvs: 
 <CY4PR12MB1736F6C7A256357CB8659A8DB8C69@CY4PR12MB1736.namprd12.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SA5BVLSN7stNXtiAGAgyta+bZUPfw7u+cr7danE5WVX0vD5Nof/3uvllPNqiMiFAfjNIIGnhjl7+q0soVZQnjpJPLvUvAO83vmMvnu9d7G5XIV+nxjT7qGS6FBAS3s8ghGMfesJIlGWTE/tPDYgGNWCoP4emifDwSDCQRMJLsM5B8rhuzDSG1Qr4HrxP1SF/ozRUjBi4/Q5Nz9MO8C5Af57gkXzy8EQN/uXZnhvow75laEp2z0anaDOpNF6nGmjRcPoODv+EB+9awIPTlDvlNLuzT+YyR2CuPmJY6vzkAohIBLmXIonooYPohnthMsve0iiYKngK4rhFn98YXHIP0tNUFqWL0d+Lh9Qxsw+OTp9F5pNKvMLEMNZ3OL7HTu48cUcx8fMdS0+sJXqdjAmFbrqITg8NhAkInpd2dwMIDJlnM5W4s3/YVsbQaQX1ByXT9L6/omZ2RmbLOAcy/z2de6lVrbJsh3/CKrwe2ze9SpTsy4wpUSrhfybxS6CyLOFG/daboca72sDT9Ki70DrsSP2K3UCHnu6VR7Tq1RWGu1hwKXTJw8oDvcY9vOgzDiKTl42eKrn5LtjqGQJOpNVJ1xel/T0T2vjVM5RgZzOPoUX3moXev/oPonfVTbv5zDu/3KhUb6T+Q/I61J3/MrOiBXMBctVootnshvyrn12UZwXbhC95UqX/mMjnil9KADRWHLc4j5yHFuN8KQUMs3J5VQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(346002)(396003)(376002)(136003)(366004)(39830400003)(122000001)(9686003)(26005)(8936002)(71200400001)(86362001)(508600001)(5660300002)(66476007)(52536014)(8676002)(76116006)(55016003)(33656002)(66556008)(66946007)(66446008)(64756008)(316002)(2906002)(6506007)(6916009)(19627405001)(83380400001)(53546011)(7696005)(38100700002)(38070700005)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?tMsCQ843SIZxwtn785mTxVtw0QRy5JfFetuxz9RVcaAxRPDyLZFi6iHudA3C?=
 =?us-ascii?Q?gXd1ZXkUv2vljZeMueg7LV+3c1FLXff0yeesTXMWJisIB5opKfHJXWyM+32F?=
 =?us-ascii?Q?69kwJxuz3YXwynf00I7JJaD9+SgpUn//lhZ9Vk6GcLfDYwY4x93p73UtBxPx?=
 =?us-ascii?Q?eXgobiiagt0wQT1BmmHoOjHn5RDr3OIW1r7a+QGIae7R6u0b/lYeRJm7WMkH?=
 =?us-ascii?Q?CzxqUwCtWogj/5iVtsF2bdoTQpQLNDpHYQSgNoSjEbrnNILV32pWoN79T5tR?=
 =?us-ascii?Q?eyAWVe64lpnI1X/qp69aD3esnZvlp1WAjRA9dYA1og37Mvc9PBiHygRjSxSm?=
 =?us-ascii?Q?MD3UmtAIxxBktl+VZCImYUqRrKAzzX517HXsp4rTYQHKlIjJWwtMhzMfh7+0?=
 =?us-ascii?Q?fhddlRwOBZX14Y+tW2HwbbhPY2mmo8doLqbKC0Ly6P2/UFHn1Ga5i+RRCyyS?=
 =?us-ascii?Q?Zihphpio5b9s169+R5e30xpYMlFvP4qO8q9sk44FpjelwXuXTrRIyVUEHQK3?=
 =?us-ascii?Q?Wl4tTi5tPv3fTpXTcBG9C/US7QHX3T3zKG93+fpYG2g2gSIjfEpIqhuuv2Y/?=
 =?us-ascii?Q?ZKaRTCFlhsqAAxkaxpjP/wPLJS2yphVeu7xqeE+BZBRziObpOCfOrBFLF+Ez?=
 =?us-ascii?Q?PjkjZJQUSefQYbjGNt1fsjIQ5YaAJbU4cQXDpV+W5D4Zqu3IiJ/g2HH+q2fM?=
 =?us-ascii?Q?4/c9VZ4Dfs6wI98DeupxrG7k+LYCf0YoehD5RawyLC6H7I0akMsTsPqjnhbU?=
 =?us-ascii?Q?SbGKeNWqSf66ZvVkWebHZGhI4dev/1SRsjhs8hrVY3xCeI8AB/NtfZ4XrlSU?=
 =?us-ascii?Q?YrGXP9o/ngVOHfndGZmFlGCDVnOPBR9N36udVsg13pLkhW8xb0x2r3edcUdH?=
 =?us-ascii?Q?x1EN2IVmXXflnnVgT/YXfH8ktGmc0uQxVWFyeoLERlroK+RqWadgVXwNoVn/?=
 =?us-ascii?Q?2RKWsasGNcvBkA/n5p8V+6rEq8Vae1t1xtXEpQQGF79o5oBCBVHZMoz6a5Tu?=
 =?us-ascii?Q?JyOjJdwQhVCkPQAvTgk01ph3taF1dOB9OQIW0WNfMhl3hK6JA6cwyaff5dCf?=
 =?us-ascii?Q?8Cf+Ntvnv4Q3mP/zqS8X2EyRbQF5PwkxTFcOy4chmI7+vLLMy7mabrDFAyKZ?=
 =?us-ascii?Q?9plN1UOf7uN2yvODnBjfSba/UU5kzYbJjHNF1g6rjPYHn3f2C4p/zCQ2dSyU?=
 =?us-ascii?Q?+A2kifKrgHhcCKvhktElGFM76fojelzti3JFC8MHcUpbtC2m1PTn28zrDroI?=
 =?us-ascii?Q?LNiBGjMqiW/UsP4IHTDSiVEJwXBFHHcx//LQn96bP682xuta4FZyHe18t8J9?=
 =?us-ascii?Q?pHDk3jCnGJ3TWfQdpdHyOXyf7Yg86pButM+gCuRb1G8+x5XfGEFkaj2KJzXC?=
 =?us-ascii?Q?j1W5NieGgqeRWoAvI6Vo6ZO9VffpwIlWwOvWws6tgbKKbDpdzThH8hVj33sd?=
 =?us-ascii?Q?S/dA6e2sJ4x0f7EKpTXhzyY8JIiIVrmRqQ+zWwFSCJvs7tqN0L68R1Y2o0qQ?=
 =?us-ascii?Q?lzhsnneQH4xT6Uglh8kgaFyTmeGaAPgd7k4E683xlV6K4rj94aHKoI/j708L?=
 =?us-ascii?Q?5RUVZ2jag7NsOTNFvNA68K/+hUlodpHt+npG8mccozmnoavNInf1AdAn8Q63?=
 =?us-ascii?Q?Z/UZprFSHidLaqVYMZFzqE5MWYci3QkWf50H1dUbsw5iWgbAgCxV4AVDZGv0?=
 =?us-ascii?Q?yZPpVGuxi6HHbwYciLcv11VGi3enmZpjaIv1RbZUSB6WKHkX5odptzOti3QP?=
 =?us-ascii?Q?oIpWlqxbNEPDIWbXy9cSLVpFSZ6omK0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03dacfa1-4064-4f75-2363-08da31d11621
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2022 15:32:11.5230
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jcjxGpKeEZ8j+p6NcbCJQUjyjBaSF/umiwWKZPQ2EjlWtv3tkR0kaXA3nspNniV7DNEiut35I22OTwpjPwtb/CwQ3V8xDWvwZnnS7J8R51U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1736
X-MDID: 1652110338-H5Or4V9EQuPA
Message-ID-Hash: VMPBQYVPB6MBCZBZC5DFHJVBRQAARNT2
X-Message-ID-Hash: VMPBQYVPB6MBCZBZC5DFHJVBRQAARNT2
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 TDC measurement errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IGOSSB4QVF3LNUZX2AXWF326DUZFEKQ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4519194053363878552=="

--===============4519194053363878552==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB331244B919FBB63ECE92630FB8C69MN2PR12MB3312namp_"

--_000_MN2PR12MB331244B919FBB63ECE92630FB8C69MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sorry to bring it up again, but this is really becoming an issue for us, in=
 that we can't seem to use our N320 radios reliably with this TDC measureme=
nt error issue. When the TDC error occurs, our program or even uhd_usrp_pro=
be immediately errors out and exits. If anyone has seen this or has any tho=
ughts on why this might be happening or how to fix it, that would be greatl=
y appreciated.

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com>
Sent: Monday, May 2, 2022 12:59 PM
To: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] N320 TDC measurement errors

Hello,

Ever since updating to UHD 4.1.0.5 (including updating the filesystem and F=
PGA image on our six N320 USRPs), we occasionally get TDC measurement error=
s when trying to interact with the radio via UHD. It isn't easily reproduci=
ble, but it does happen on different radios maybe once a day or so. I've se=
en it when using either external time and clock sources or internal (doesn'=
t seem to matter which).

Here is an example of the output of a uhd_usrp_probe when this occurs.
----------------------
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
6bd0be9c
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=
=3DFalse,addr=3D192.168.40.2
[DEBUG] [MPMD] Claiming mboard 0
[DEBUG] [MPMD] Device args: `mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=
=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=3DFalse,addr=3D192.168.40.2'. RP=
C address: 192.168.40.2
[DEBUG] [MPMD] MPM reports device info: addr=3D192.168.30.2,claimed=3DTrue,=
connection=3Dremote,dboard_0_pid=3D338,dboard_0_serial=3D31EBB6F,dboard_1_p=
id=3D338,dboard_1_serial=3D31EBB94,description=3DN300-Series Device,eeprom_=
version=3D3,fpga=3DXG,fpga_version=3D8.0,fpga_version_hash=3D6bd0be9.clean,=
fs_version=3D20211215135436,mender_artifact=3Dv4.1.0.5_n3xx,mpm_sw_version=
=3D4.1.0.5-g6bd0be9c,mpm_version=3D4.0,name=3Dni-n3xx-31EDED4,pid=3D16962,p=
roduct=3Dn320,rev=3D10,rpc_connection=3Dremote,second_addr=3D192.168.40.2,s=
erial=3D31EDED4,type=3Dn3xx
[DEBUG] [MPMD] Found 8 motherboard sensors.
[DEBUG] [MPMD] Initializing mboard 0
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,mgmt_a=
ddr=3D192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dint=
ernal'.
[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[ERROR] [MPM.Sync-0] TDC measurements show a wide range of values! Check yo=
ur clock rates for incompatibilities.
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[ERROR] [RPC] TDC measurement out of expected range!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[ERROR] [MPM.RPCServer] init() failed with error: TDC measurement out of ex=
pected range!
Error: RuntimeError: Error during RPC call to `init'. Error message: TDC me=
asurement out of expected range!
----------------------

If I run uhd_usrp_probe again immediately, it always seems to work fine. I =
don't think this is specific to any of the 3 valid master clock rates, but =
I've seen this happen after a fresh reboot of an N320 with a uhd_usrp_probe=
 -- so it should have been set to default parameters. I also feel like it h=
appens after a radio hasn't been in use for a while, but I'm not sure if th=
at is always the case.

Does anyone have any idea what might cause this?

Thanks,
Jim


--_000_MN2PR12MB331244B919FBB63ECE92630FB8C69MN2PR12MB3312namp_
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
Sorry to bring it up again, but this is really becoming an issue for us, in=
 that we can't seem to use our N320 radios reliably with this TDC measureme=
nt error issue. When the TDC error occurs, our program or even uhd_usrp_pro=
be immediately errors out and exits.
 If anyone has seen this or has any thoughts on why this might be happening=
 or how to fix it, that would&nbsp;be&nbsp;greatly appreciated.</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jim Palladino &lt;jim=
@gardettoengineering.com&gt;<br>
<b>Sent:</b> Monday, May 2, 2022 12:59 PM<br>
<b>To:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] N320 TDC measurement errors</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hello,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Ever since updating to UHD 4.1.0.5 (including updating the filesystem and F=
PGA image on our six N320 USRPs), we occasionally get TDC measurement error=
s when trying to interact with the radio via UHD. It isn't easily reproduci=
ble, but it does happen on different
 radios maybe once a day or so. I've seen it when using either external tim=
e and clock sources or internal (doesn't seem to matter which).</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Here is an example of the output of a uhd_usrp_probe when this occurs.</div=
>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
----------------------</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
6bd0be9c
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,clai=
med=3DFalse,addr=3D192.168.40.2</div>
<div>[DEBUG] [MPMD] Claiming mboard 0</div>
<div>[DEBUG] [MPMD] Device args: `mgmt_addr=3D192.168.40.2,type=3Dn3xx,prod=
uct=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=3DFalse,addr=3D192.168.40.2'.=
 RPC address: 192.168.40.2</div>
<div>[DEBUG] [MPMD] MPM reports device info: addr=3D192.168.30.2,claimed=3D=
True,connection=3Dremote,dboard_0_pid=3D338,dboard_0_serial=3D31EBB6F,dboar=
d_1_pid=3D338,dboard_1_serial=3D31EBB94,description=3DN300-Series Device,ee=
prom_version=3D3,fpga=3DXG,fpga_version=3D8.0,fpga_version_hash=3D6bd0be9.c=
lean,fs_version=3D20211215135436,mender_artifact=3Dv4.1.0.5_n3xx,mpm_sw_ver=
sion=3D4.1.0.5-g6bd0be9c,mpm_version=3D4.0,name=3Dni-n3xx-31EDED4,pid=3D169=
62,product=3Dn320,rev=3D10,rpc_connection=3Dremote,second_addr=3D192.168.40=
.2,serial=3D31EDED4,type=3Dn3xx</div>
<div>[DEBUG] [MPMD] Found 8 motherboard sensors.</div>
<div>[DEBUG] [MPMD] Initializing mboard 0</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,m=
gmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=
=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'=
</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'=
</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[ERROR] [MPM.Sync-0] TDC measurements show a wide range of values! Che=
ck your clock rates for incompatibilities.</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[ERROR] [RPC] TDC measurement out of expected range!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[ERROR] [MPM.RPCServer] init() failed with error: TDC measurement out =
of expected range!</div>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span>Error: RuntimeError: Error during RPC call to `init'. Error message: =
TDC measurement out of expected range!</span><br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">----------------------</span><br>
</span></div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">If I run uhd_usrp_probe again immediately, it always seems to work f=
ine. I don't think this is specific to any of the 3 valid master clock rate=
s, but I've seen this happen after
 a fresh reboot of an N320 with a uhd_usrp_probe -- so it should have been =
set to default parameters. I also feel like it happens after a radio hasn't=
 been in use for a while, but I'm not sure if that is always the case.&nbsp=
;</span></span></div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><span style=3D"background-color:rgb(255,255,255); display:inline!imp=
ortant">Does anyone have any idea what might cause this?</span><br>
</span></span></div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">Thanks,</span></span></div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">Jim</span></span></div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
</div>
</body>
</html>

--_000_MN2PR12MB331244B919FBB63ECE92630FB8C69MN2PR12MB3312namp_--

--===============4519194053363878552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4519194053363878552==--
