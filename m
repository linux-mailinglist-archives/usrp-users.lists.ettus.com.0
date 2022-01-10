Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A89E448A403
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jan 2022 00:54:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8CA413852D2
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 18:54:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="EtqKXKhW";
	dkim-atps=neutral
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2062.outbound.protection.outlook.com [40.107.93.62])
	by mm2.emwd.com (Postfix) with ESMTPS id C2F97385173
	for <usrp-users@lists.ettus.com>; Mon, 10 Jan 2022 18:53:01 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YRBXXHU0zfbnPi7f4pAOXvYKQvFzHX5rPc6Ced+BUcMEaJhKghK3/O8vvQhV3kjKp+MBwsi77Sm/JPjlOQXL8zhtQ6aeIhXx0kiU2zniKJt+L2an3ti3cbMI6WPma3ztiyxHyswiIFrj8PMnmaEJH8s4SJThHVrhlT5cxIP9t1ihC3sDQYBa1LPuRZ7MB1c7SvHmh8Vz1SGuvH+rDWuJDvDMMEwtZVKBuTJ3wGscKSDBAUf4vTE75NPyL/sdqLTXtJXhStJji4B0KaCL8rvUd7kkJ1LpqK0yLDjpe4dp7fo7dLVDEkrmmLapv5ADIOxXEaHLqwsT56aEEBGLY3hZZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JaVF04d81pSO1dIiqggR1nDLdeIzSSn8Ro5mv4EvPXk=;
 b=DY1EP8oY57NaEdpFblb+92QgckEJ2c0V2S9I6VJeEDJBmwXgIaCOlKgXqFmsFOd8FxxHabQZELMXJ81okxr+QEZZtiQrFFqMDlVf7gYNBJzwjdgMUS9a5EDeofge/2xV6myfOel3yeZTDQ7lQvwZ8snD9HVFrxSFvcS1u0BrUx8AmD2dbGkKe/za2/L45FFYwZH6bzXNTi782sSPdEZULqDlk0KPcp3cNxn/rpHoii2rYq7fHxeLX1HxJleLp/HCjMMNi6Jc4xvj9fwCHXf2lTFThvCi6kcagYqyJS32JCn2IZgN3t3zRMopV/2MQqe1Idj2Z3x0hYpOUmJv4riciw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JaVF04d81pSO1dIiqggR1nDLdeIzSSn8Ro5mv4EvPXk=;
 b=EtqKXKhWxv9ngo2gulTLaZwBDx3z4Ip1+CLqFoosXo1fu5lyX5g4RsB7W36VnD0l4h5omTISYQIOg6/bT0EiGUr6cIAux6vKvFR8YKqVAMsnTi0eYgiPdm6LXA8sQP+VAaCyoOpzKfZRHLCE4WVZYsRlwrH+mwjJN44qTjk5YR8=
Received: from MN2PR16MB3502.namprd16.prod.outlook.com (2603:10b6:208:16c::17)
 by BL0PR16MB2657.namprd16.prod.outlook.com (2603:10b6:208:76::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.7; Mon, 10 Jan
 2022 23:53:00 +0000
Received: from MN2PR16MB3502.namprd16.prod.outlook.com
 ([fe80::454:755:8d15:4c24]) by MN2PR16MB3502.namprd16.prod.outlook.com
 ([fe80::454:755:8d15:4c24%3]) with mapi id 15.20.4867.012; Mon, 10 Jan 2022
 23:53:00 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: using GPS with the X310
Thread-Index: AdgGe4DlXdxR38RLTpKIoj1c8etmlg==
Date: Mon, 10 Jan 2022 23:52:59 +0000
Message-ID: 
 <MN2PR16MB3502AEDC036FC6333D881B8FB9509@MN2PR16MB3502.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 661fa0ef-8236-47b1-f473-08d9d4945549
x-ms-traffictypediagnostic: BL0PR16MB2657:EE_
x-microsoft-antispam-prvs: 
 <BL0PR16MB2657AB20EB852E8019F4699AB9509@BL0PR16MB2657.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 z8sPfMmC+3/u2CtS/tVE7jMnFaZ3icnNo24mE4g2MyhxGP19qrpdGb/Dv7Bu/xtwAE16ATXtVIMJwa1Cm0kzchgnKmRPuS8Mt6RyTYt6m6xbHvAerxqZAkMRxcoPTKgfqGEAkZAFGg4541O91eZEZf05Yd5ma6aTwoIIlOtHCK8rSBrepoMn5j5wtcQr25KYi3COQ/gn+TCuhiIGpO60ofWkFoKI7ZTukU+H7oo5QGusXW0bVghUXHxe+Hi5pJ1hP1SD6sIj4aRUf85CuFkArxnwxkZL1UsUzfgC43aX1u7pYJFXBwMB/UKQxahrwPJbVECZce14VTMbg4RiS2c6OXlJVfwcaHC3uK3MgCIqioVjenbsGDJHGoyfIS4Ls0fgjv+1NIih0NOAVioAPcWn6lGUJ3D7A0Yy9H5FQGVj/LE7SXy7OsFG8pW4tUAKMCSB/Y8KmZZYhNo3hJD22YQG5KSqZP3xPypBjZp7ZL0aqSWnIsftTLp1p9FJsYmaj6HQL7nXBiTl2X0cNV83HDYoxliwlaJQujcLF/n6bEvxQLWR+Q59TqB3Sye2shmiKA2lRAITBiHf1Y70GMDqxIOgZNPzzRaLd5G7AW6fe6dr+dEXG4h0PBwb8zcsmu1LkYglmjaNEDbCPkfuz/k8TEzNahicTGAxcUP+BNDPZ5/oW8LX4Ov6bqABe9T7ehVpfJ0oUK7E/i9Od2E2ysjNXBvvyQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR16MB3502.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(39830400003)(396003)(346002)(136003)(376002)(2906002)(76116006)(7696005)(38100700002)(33656002)(55016003)(66476007)(316002)(66446008)(66556008)(64756008)(66946007)(26005)(6916009)(52536014)(86362001)(186003)(6506007)(508600001)(8936002)(8676002)(5660300002)(9686003)(38070700005)(4744005)(122000001)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?hAvCeyyT0O4/eOyNWnB2+eEg7DwvoN473mFh7eeIrWoHItTd1V90LCsVKuh+?=
 =?us-ascii?Q?C1bYedweZWd6S7+qDHceWsFlSscWfVeEWe5iRJOYbxBHYLH8ncwRwKBUDVDj?=
 =?us-ascii?Q?HQPFhC/PUY4ZOK1cTsjgFFYVE1HWPvD3rxGMmKOsYW1hsGi4GqmoemFIVMYs?=
 =?us-ascii?Q?GdpCFxssv0bP0MgYRkssmbtdOzjFy8wJQcyXbHOgnvndzgLA9ffsL3vSqnXN?=
 =?us-ascii?Q?stL0StrNZPzDKrIyZH0PBMvZJuqgnl7aBgeevPF6k1lRv7H/CQiqI3IwVzMT?=
 =?us-ascii?Q?HLHsoaUM0pcHxOVCD1YPtW1JL+oKRWKE5pYKHmBXdzuR9Y20N1vgxGZHDUyw?=
 =?us-ascii?Q?4vxWHVIK9gF9R5AEVx1tGjAaGoLT6Gu+MkfgOeayR1owfY0ToOGM5V8rIDfI?=
 =?us-ascii?Q?cbg4DSmtujRDkb4RcP3RkLKbM+V89uX83fgii66M61DcOX+G6D8VjBRCtPBl?=
 =?us-ascii?Q?gIjNPXncEy4KUnqHSsMlVf/3GfJqQysVw3Zf64YGY5USq13L7JhAT04xbAX/?=
 =?us-ascii?Q?X/VXEJzIyagsjMD371lESy5f2yrjrIyO0EYtT9BXA3Qb83FqM9gsFaXrePIr?=
 =?us-ascii?Q?ufV873TH391O+6nGUuvYBGc3A7UlQRUsGfP3rWqmReukO3VoW00dBysJqG1y?=
 =?us-ascii?Q?wgnh2i5wKdftsyveMvicQCORdofdiUXJKgnRf4MDoe8fDj0NgTbpIZN5vfgR?=
 =?us-ascii?Q?mQTLKzfH5WM7prEaMMB18muU0sRn2yXyJ7b7SqbuPIE8kyVSDjAwgj7/61CC?=
 =?us-ascii?Q?xmAgafrjokCuGbW3Tcny+SSURY2ywY3nhw/i66a9SgXd2KsMTiw2Btbu0Yum?=
 =?us-ascii?Q?aK6hk+NqV2goQ9QPOBOKpJ/Ljk66OcGLMBxkKPAIyLuNDZdTFl57t0iNmQhV?=
 =?us-ascii?Q?lZPVM2haaZ9BDqJu67lMEmSIT9AhuhCa8wVRDpih5WZgl0SZqEVLpNQzZDXD?=
 =?us-ascii?Q?3VVogbBvaxdHMLS2sOvc7P8fvB5gAL/rP45LkxjDRrz93j+B1iMaJo7Vmpv5?=
 =?us-ascii?Q?3YXiWf/x+xHr/aYebsYoUYlHb+Rp1+OHGBiWP8cFoVMrk9KS9cd9Na+wMU0q?=
 =?us-ascii?Q?3IJwBtVKH6IGA0Sf6ooHFtowa7pFCi0lv6SIVyXguEFKXP5aeb9SgvlJotCj?=
 =?us-ascii?Q?HXupoAROcSHZ5X8e2xZ0xKJAJk0k2w+1oNMWpbiUIBMLS1PoeHQqPhkmhPJ8?=
 =?us-ascii?Q?60MAAs4WVMZrc06TU80J72/+e3mXW5+MXIK1wLmwbL02GOd6NMKYipH9tJH4?=
 =?us-ascii?Q?5ZRc/dfKttGCBLY9mWJeM3Ypg3WmkPjQMwAZmHw4mCLh2Tq/EEu4V6EpKBDB?=
 =?us-ascii?Q?5ZpgINqdsfOOaIQm30zN0qGqNPDAiIH+fYAToNfWV3I+6Uhc6UxTiJKAkA6N?=
 =?us-ascii?Q?vwR8JXOIkdTpmxKRmfqPCW3QcKsHM1loi8hF/D50A2T/JUAurnB5iModU32b?=
 =?us-ascii?Q?l+a0d9+g3d0nAjIBksiVeCs7YEhLjy6guuP5BfvV58lOYwcims5XAYSOj+wS?=
 =?us-ascii?Q?e2hu9HHM+NjfVbnXuJHVM4e5Rq+ZUstGRyYDH3/2Jk7a54XR4mXktsXQy/dc?=
 =?us-ascii?Q?MWoCTVgQ4jOJYncSKVBf0MOstN4AUbVa8d0701DH4oqa3Ec+R1AbuY3pk9fi?=
 =?us-ascii?Q?ng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3502.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 661fa0ef-8236-47b1-f473-08d9d4945549
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2022 23:52:59.9231
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X3p6gKgXYK6uRcoW1o83GAqB0aOtcf+3NmQf6eBon4Zb1jzSnuZAAgKkcxh7uwPc93FHiaPQMwqo05zE1VkNKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR16MB2657
Message-ID-Hash: Z7JOXNBQXLJVFM5MQ4G76NIVRT4QOQ2T
X-Message-ID-Hash: Z7JOXNBQXLJVFM5MQ4G76NIVRT4QOQ2T
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] using GPS with the X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2LWA6WYETBP5FERZN7EF6G53ZJCLH7NI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Hey radio buffs.

We have an application requiring the use of an external GPS with an X310. I have been looking through the uhd api methods and can't find a solution that suits our arrangement.

Is it possible to somehow set the system time on the X310 so that time is reported accurately by the X310 with respect to an external PPS signal?
Is it possible to feed the NMEA data string into the X310 (eg via GPIO configured for serial traffic) so that time is reported accurately by the X310 with respect to an external PPS signal?

By "possible" I mean simply and without rewriting HDL or the ZPU programming; or wring the GPS signals into the GPSDO connector.

Kind regards
Jonathan Pratt
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
