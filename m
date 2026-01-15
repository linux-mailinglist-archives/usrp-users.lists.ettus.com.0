Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3248AD25742
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jan 2026 16:44:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 109E3386CE1
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jan 2026 10:44:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768491867; bh=21hUV7s7gIDGOA+VFSOHFAjjpS7ftz5E+g4kpY5jp1w=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=q6fhyT/QwBzcUHPbkE5cmPNHIba5d2sgKQeRxi+vSFb4D0YFSBg0pDiPUnxBYa9if
	 dP3xND6SokvUIGHxcvARZrwNlRAasvlkmfxTp9T7Y0QmE4ZQ/qUumKEZlz2SLjpyC0
	 H9frwTpthyc+KvhSjm/E89BJoCe6a7Rgw5YKWLLS4GTksSclc64v4ODPeuKCoEeJku
	 2hJthDIPpurbH0amo6djOKqFmo8ax4Qeu71jImdPl5bOvyW8Bu8FlyyEH80b81IJQf
	 XNP5FFNqv+xrCGChMvGpBVwUr63r2mZdoxJtiIZWwhbQ9aL1qk5KTSeYxcRKyFoSOa
	 4QZSI9QuKnYOw==
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
	by mm2.emwd.com (Postfix) with ESMTPS id 7618E386CDB
	for <usrp-users@lists.ettus.com>; Thu, 15 Jan 2026 10:43:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="xUqrJzVu";
	dkim=pass (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="6WpOUFBe";
	dkim-atps=neutral
Received: from pps.filterd (m0484885.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 60FDW2vZ031564;
	Thu, 15 Jan 2026 15:43:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=4Rq6OMlgIa3WGBzzH90erJcqvdWN
	8S2cNCzMG3Ws/3U=; b=xUqrJzVuuh2ZC/pyQKFO2uavRC2FySyZl45swTcbD8F7
	81QPfkXbpVgnIXXZ914q7aRePvbqTByMecrw0DtPgTF6rEc2gefmidhWnxtWgnC+
	rBxA6xcDRzIms6pfppvARxqHMV8klnvXhnJR9VRAqnQKuxL8M4c6xq7mxA8VE1iM
	B+jaZLo945mcornzhUCg43ztqdGNDaVFSSYIZVshEULvVgIE2AIFpmfPY9Xtl7t8
	ajgrxSwon4vRgg5jffK5u7aAPCWsAum/YJ7kG8YuozJWmWmicBJ3WbDOA1mX0qbl
	IPIA9KFJIEITMpj43wXyLtQTIvVFUY6YA0bmVnDO6g==
Received: from sn4pr2101cu001.outbound.protection.outlook.com (mail-southcentralusazon11012020.outbound.protection.outlook.com [40.93.195.20])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4bpy20t324-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jan 2026 15:43:38 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yHXowk2pVBd+ZriKAM9lYpMwqj1+/fslYoG0V/XBhQfbHrlKPsKjBbV87rc6cHHEmCT7jOoLRM48YKHN02zBKTlLH3hvuWtacgGa6xQIOSsG6Bng6AYfvDwH+7M9WSFz2nOTh9+ErUOOj27WnAO0TuWlV0mjOLrjx6xLBIANU6Q8bsWeeywgGMkoxPFvcYRn1bew0uVsuMTF2D8lLQ2v/P8nTb9TOHAs6X51xh8i6zcUZnwdIvfOR2xoMcVA9lUJ6zLxqaJIEtnzKrrepZDzJsjArfeWi5gaYhApKWyy34zTPPH5QwyceNVVw5sVGUIzFWgiGx9zNm/rCrEBAiV6Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Rq6OMlgIa3WGBzzH90erJcqvdWN8S2cNCzMG3Ws/3U=;
 b=bbtL/+aM3UJbMDmOU9BwMwDq1AuWuFflaBxbe0W8lzrIk4pBXrKxCSLPfo1Z3+F48A30L6vgFK6/ugaLfZqWGVq3OQFY7CFsk1N6WRGKABDQwM5rc96xhPigyRXBktDjJPh/04yuXIx6ZHBry9B7o+gMivTFWpOG+XEEE/zz5/1/1Mn1CTa//Ne4zuDApcM4hXbhUiecBCCr3gKF+u/7Bxw7b2fRIApCXJDDGJxMdf3mnlk5ZTuYB7ANt5PmNwQfQIh6WBhKuStpWhIRfwxHJazDZ+jDVOhHfmg44pXEaGKvJ2zEbb6yXuEuQ4N3YYYoJN5kTSVxkxtkyz+Yt4Ifyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Rq6OMlgIa3WGBzzH90erJcqvdWN8S2cNCzMG3Ws/3U=;
 b=6WpOUFBetytd17+ItQokHT/PVb6bsF7NUYX4N6Ok75bfZCkpxu3OTmx9yUGQGebYmHGrPUskS51Mp4zRWYX0Sq7GaIBCM9FIW6gER0/mrixrSatQFv4XjSlRXEj7BLhRVfl3X50Xb03wQBxVZw/9KnqtQwaqRBUjx7vvPM1qr5JleKK2IoI6aqVG2aS7B4KKz2G4vr3/UWhbm5exisQgQP8uuL3aDchymbqFet/86O4QorpUiE7Pb/TMM/whyaSkbYzhkGdPY7BfCugdToMOyUf837oUj7FXpF9YulJB0kbIl9lNicf6VPunxbuyDoAdrlQL7xvkAZuaLi23cd9T+A==
Received: from IA1PR10MB6781.namprd10.prod.outlook.com (2603:10b6:208:42b::9)
 by CH0PR10MB5018.namprd10.prod.outlook.com (2603:10b6:610:d8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Thu, 15 Jan
 2026 15:43:33 +0000
Received: from IA1PR10MB6781.namprd10.prod.outlook.com
 ([fe80::bdba:6cbe:1a15:fe40]) by IA1PR10MB6781.namprd10.prod.outlook.com
 ([fe80::bdba:6cbe:1a15:fe40%4]) with mapi id 15.20.9520.005; Thu, 15 Jan 2026
 15:43:33 +0000
To: Philipp Niedermayer <p.niedermayer@gsi.de>,
        "USRP-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL] [USRP-users] NI-RIO error using USRP X310 over MXI
 with PCIe-8371 adapter on Ubuntu 24.04 LTS
Thread-Index: AQHchiSXKvoJ2TTT2kOCOC1ETK2KfrVTXXVQ
Date: Thu, 15 Jan 2026 15:43:33 +0000
Message-ID: 
 <IA1PR10MB6781FA3E2932DA465E6B24988C8CA@IA1PR10MB6781.namprd10.prod.outlook.com>
References: <2ce8603c-3e73-4dc7-819a-de10356057ba@gsi.de>
In-Reply-To: <2ce8603c-3e73-4dc7-819a-de10356057ba@gsi.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=afb0f7d4-b840-43ae-a2b8-c0e0969b2e28;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-01-15T15:37:35Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Tag=10,
 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR10MB6781:EE_|CH0PR10MB5018:EE_
x-ms-office365-filtering-correlation-id: 6be9b876-872a-49ea-3866-08de544cd6fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|1800799024|8096899003|4053099003|13003099007|4013099003|7053199007|38070700021;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?yxqbFHPvgtPyCnY3eCWRBFlxTBSlGqL5dqUDhQxlCEjm4PPBKokmxsqJWJ+h?=
 =?us-ascii?Q?HcACw/7rAzrrexMRxqiB64qsd6ZKEbfTKLd7qpayieb4cbg6fUR1deVubXXq?=
 =?us-ascii?Q?+DIElvtAJCbQGvwfhk8aTYpKJyh1IkdE8N0IpbfBDlQ5/frzeB2dxjc/Y9DQ?=
 =?us-ascii?Q?C31f2dT1/cA6AVpMFeGufKkQAF9QqAfwb8lgosTG3jZ2VXi2st8e9uZCic4b?=
 =?us-ascii?Q?uHBZKShRVq4bTDaV2SQNlcnAI3iCybYWkE6U+ElpYVbHHekJ+03XssYDRMZf?=
 =?us-ascii?Q?hAa2QB5aBYqhV+N141vWYM7ukb7BvZWJwbTk1Xu5uamsIt5FxBvXRQ7WBQVE?=
 =?us-ascii?Q?C0hlmuojr+PcT+hgxutK5vH4at/KnuWlBwVXFrDakOMl9TS6n0g+8POP0kC0?=
 =?us-ascii?Q?sX3K8yzp+vwWUUyCvQRySWBdbrTeAuH1p4Z2f8F2Kt3sYnsHf8ffLagTJQNg?=
 =?us-ascii?Q?79n9uD3s6EM/9Z0UdspbDXqvApVVMXAGC1yVbQvlqnvNfXpiezxYlpoOQG+G?=
 =?us-ascii?Q?t55mc075g+462pCGiEMl0p5tzp7sm+xgDnMEeANBSvtB8KjxLSgT+sSILkQo?=
 =?us-ascii?Q?IuubE8CcfwkXRmGkGfkRUfq7aLfMNkUD1t3QJ31qXAN8FLCXk7xuZoiCIScL?=
 =?us-ascii?Q?nGnWMblnJp2cT9I3TTJTDc1GcAG6K8DlmwM6DWlCVhTmE7qbpaQgqoYM75J6?=
 =?us-ascii?Q?QLRgAjklApv+5PGm4Cnu38zvYyHpKhjFgrJibWm+J/krRgpTI/wLG2gdAQQp?=
 =?us-ascii?Q?yHcb32gcYdzmZfWWwxeZr8cJtFyEe6R362HIQMjJfN56xMiH5l+dXoO/wb+n?=
 =?us-ascii?Q?BhANSuY5QrwqwCOIlzO8qZ1EgQmhZLjfUZB/PCfUVCciVk+Y3fF9eBmLyWLz?=
 =?us-ascii?Q?GIGBCTdAh3ykoU55g+OAIez5q1IaG24+wdZ5nYOmHhHU5+iCaol8v0IeXnEY?=
 =?us-ascii?Q?Jq6ze6N0Aj18z5F2myn2EzJ0ZMrq4+xnD63FdVcXo6dUxJXCmhk6D3oaTczC?=
 =?us-ascii?Q?p8CZgHxJfOwV0CCqLEYYo4qxzeedI3cjzrmcjn7hIWSbDGLHr+LWTpupmo8G?=
 =?us-ascii?Q?l1LqlFVt+yhmORBQiYnY0M9HtOcHjXl/kupdcKFaSJCvGl9FT4yy92HFerif?=
 =?us-ascii?Q?sJM/R+bIlJm4kgxZp4ZsaAChPFo16R9agG4/kUDWfBbotTbL0MYBFqTbKtS9?=
 =?us-ascii?Q?LVhLNaN6cvCJS9AXXYkKcObaGbobVzgs9+gjqPSuiGH4lmV1Ex5xWKG7LVYv?=
 =?us-ascii?Q?nLv3g2hRhLHVmdHe6PPh2/Gf8SUgOPCWqLvSyAMd5y3XCJLlbR4Ml3K7ISDx?=
 =?us-ascii?Q?d1IZKYu3liq6I8LtcPtPflHuEqQM5WPwAU/dFOewgAxVydMmJSQDjjavHDes?=
 =?us-ascii?Q?a7TLUTqy0CQ8DnA5r3cwvBMWcreMx9DdGmcAIiXGEEIBKZIIYxOoFAS6VlSg?=
 =?us-ascii?Q?d6aFIlwvKYwdaFo9H6IJnaJ4OSxa9ZL4BihRgf0W6EJTsE0BHAQ1U2a0UtMT?=
 =?us-ascii?Q?yyAf3c/ChO+dwAAkX3ZjyzlRuZ+LemX02n6xAJ98uRk8wfAV5bIzlh2fQ6Me?=
 =?us-ascii?Q?CGwQkBkoS/Kv+Bf79HvtbKwGscKyT3t+vVx5eEZ8?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6781.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(8096899003)(4053099003)(13003099007)(4013099003)(7053199007)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Ijv+aqZGtybqQgDxMDgUwbzzstwcbb5VxO6aRjZNM172fDfUmq8qKf7HRHI0?=
 =?us-ascii?Q?FdUoT/s3dLHS8nGnTrw7bTcJAVaQbB+pL37Pe8Ad4UUinpkye1reqCaBYuwb?=
 =?us-ascii?Q?7uJPhsfqaUfl/IzKwmk6rluKQKDVAfoC5qJVV+195NkJXw/0SA96NBGmmgUd?=
 =?us-ascii?Q?B2QIXY/WDwtX+uGENTmYoiTYU08UOlkqC+JuEajQjtqdK5YtwlaE9Yyl9bkv?=
 =?us-ascii?Q?8JmJ4A/xIzzEXXxCK+U6KKnrh/SujusqV8z2D5d64MggKCAi6wataVSs5/r1?=
 =?us-ascii?Q?rHiYMwjoBx6LP6kbCPQ3offjRI6nif6Ohv2CZ1cCqMzDYTw8ehwMfhQu8fHT?=
 =?us-ascii?Q?2W/HF6+s9HmkAkAJ5C3Lgql1wmb2ZFVB5VGSQE43aaO9PjbxvnXBSaQB71jM?=
 =?us-ascii?Q?fFXRh+S1sqWaq+pG7o2Tf+EHfTZmob/VfMHxmZKNuj/9JJR3edflnFoj4WD5?=
 =?us-ascii?Q?M7mISKRdt5q5JLWyh27NS9B6FD6w7Ff8bj1l5FKfHIV0zavUsS001Vz/wL2f?=
 =?us-ascii?Q?7VimUFI7VqAhjzDOezUsP78mbiDOopYKUPLjltEaO1WH0suo83Ypmsk6e3Pp?=
 =?us-ascii?Q?6j04bCYtY6W2cMWHVDU3WJUNjI5BuCpP1quIYDv1uTLSc5Ha00q+U9je/Y32?=
 =?us-ascii?Q?Wq+wpkdI8pePANoShmSmj9LmoQmK32GTETqDvQh/g3/qTFVWZsZ03P8qyjoF?=
 =?us-ascii?Q?EtXWXmDlouVZocWgRZDmnOVMdF1XT1VoKfQJBOLuZuwi+3p8hB5Ziz7JTbhW?=
 =?us-ascii?Q?GO6ndUw5CLmIAr6HeJp4VlG7FQtGkWtIDcD04SzhAyzy1elYkPNS+21OQZlK?=
 =?us-ascii?Q?wHOBoj+d3i6WkZtPb3M8Vtzdd034l5KkBu8b1sdtJlCl8aPWJUDojEgJSvVU?=
 =?us-ascii?Q?00XF+Yf9uOKlUTNZDnTDzLubq1EfKY6ZYZJPEUHldt7/gIi/qMR6o3NmmMZs?=
 =?us-ascii?Q?pqBfp5zVNg4Hed+CB9frIOSJJm6JLfOd3EOm1t0iDVF8aFk3NF5Gs55kwSb1?=
 =?us-ascii?Q?yJ8TnhIbURay7Kw183KbCFMPMyjDUFGuC6vyYKorevMf0yeAAzZ+NHnIE9SW?=
 =?us-ascii?Q?hjNQGl83ReH9WOIK0odogrvd/qrLMdHw4De2we1Ko/lXXXXlmjRK40sgyCuG?=
 =?us-ascii?Q?saLKazah+IX9NUeP+Y3jBH/TO9oQ3S2j3PamQDGUnIdLRAsjN7eWfwWENnST?=
 =?us-ascii?Q?Swlzqq6KdQsPg0DL4ZQ9lPy+FoYRwWJInMtU9jI0FmFF6GVsGK8LcJpDjzih?=
 =?us-ascii?Q?e7EhHBE+ANDLy6sb/r1+E8T+l0itH8E8TEtZdmeoq4++gRY6jqiIP0mAsOT/?=
 =?us-ascii?Q?7JQQYSiUSNDXa/33apt2Y20WR/i0/100HMcDsRyMinlX8N9nbGbAJgGKLXLE?=
 =?us-ascii?Q?1KRyBE1UyyZXj9Js8yXVU5DC+TAzR43SMKQ28ltxQ+8PISw3fhatFZ6vizxa?=
 =?us-ascii?Q?2V68Md21mNLqGg+bCt/gVLZj3SpU6F3ydO2ru4e5fMbi89peyRk0MUHpQZl9?=
 =?us-ascii?Q?2bG0KxFr7bBA/a/mum6s0SxwY/Ky73TjKHOOwlrpu5zDf1JhudRTVX0WGuau?=
 =?us-ascii?Q?5YpZEnlMQjXT0k9f6epJW+nSiDGJFWCP5ZgBHMUrvAryI4LkjgoaUQfBC7Ag?=
 =?us-ascii?Q?AfmRV0kE2wl4490G/lzU8yC69qATV0TNKYQcQnbeFkWNaewmy66RCQqWhCWG?=
 =?us-ascii?Q?0CxmR9Wks2rTZ7htXFwkSuepywR7p2VGDOvrIlKFYPYOMzRN29y71WLJJo2q?=
 =?us-ascii?Q?rOqGQuzjAw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6781.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6be9b876-872a-49ea-3866-08de544cd6fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2026 15:43:33.3539
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UZlmaJZGc0HTYCkDbaHbCD2ckx0mO/rGKbWMIksbsqCSXt4XmuYfqGB0bpuLfSew5xbGQovM0NfCdU80vb1zqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5018
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDExOCBTYWx0ZWRfXxG8Gnkd7hbZ3 Rot08EQveTqewjh5iPYd6/HfXBWc5Atia8vb8EQjY1IcFHBhU029bokp/zduSrU2kwENzSMOWWI xo7flHCDqF4DxiZHA+Ss1kazKmaJVW1UaKtgYszMhj/TmcBy9M4p1B7URN6Ofti+1VjYrR/Le2c
 vm73C7SjHoKPw3PgbzCcxdVMuVEcbFMVBLd5IdN/qrj+K+I9cC3pDJD2SdXmb8MS7xymNhIex2Y bmHEm1SIM72XfokAV76sYR1i2CGe427LnAfEw8DQP1zDDwZ7jepQZNfKflN6MWKwlktRWsvPXDP QFbXYblfBokvVWvqZXleuuOLgspBv1m9KQUi5WFgGcFkkFwwwNNEQq3plw0uoMojfYOKpThRNRY
 2PwFwgdruRpf1okojdYMm/SoVvUh4O1ItfdwJtBUjXpKofi3WHGTR22f1iJOltrdiDSqa8Z0acL MizgcLckFaRcYFpNaCQ==
X-Proofpoint-GUID: UFYdkzPgz70sMto6Qgfs3zpcnxsVA5WS
X-Authority-Analysis: v=2.4 cv=e6sLiKp/ c=1 sm=1 tr=0 ts=69690b2a cx=c_pps a=88sJ5CXPnL4yMuzzfZxD4w==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=k_p11zb-AAAA:8 a=gVGD3344AAAA:8 a=etiEgX_XAAAA:8 a=NkbM3LhXVPrpSp5lFRMA:9 a=qcg49hLlgF0N60+LroqrWnV/Vu4=:19 a=CjuIK1q_8ugA:10 a=R447CehbIQQA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=LM7uqwuObX5sz9B7:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
 a=frz4AuCg-hUA:10 a=lqcHg5cX4UMA:10 a=HXjIzolwW10A:10 a=T6a71-JsGAwA:10 a=efKuqfzc83ZnGvMRJ9Bq:22 a=xQEvYfgLW3QvObN0DhJi:22 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-ORIG-GUID: UFYdkzPgz70sMto6Qgfs3zpcnxsVA5WS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_05,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 suspectscore=0
 spamscore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2512120000
 definitions=main-2601150118
Message-ID-Hash: 2XJJEFJYFU2W5247UET6BQ5SWOIB4YAC
X-Message-ID-Hash: 2XJJEFJYFU2W5247UET6BQ5SWOIB4YAC
X-MailFrom: prvs=24752a0cb1=lars.amsel@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] NI-RIO error using USRP X310 over MXI with PCIe-8371 adapter on Ubuntu 24.04 LTS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X7N6CWUXA7ZUVARS5SM3FRBUSHHRWAZ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Amsel, Lars via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Amsel, Lars" <lars.amsel@emerson.com>
Content-Type: multipart/mixed; boundary="===============1061280083524125369=="

--===============1061280083524125369==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_IA1PR10MB6781FA3E2932DA465E6B24988C8CAIA1PR10MB6781namp_";
	type="multipart/alternative"

--_004_IA1PR10MB6781FA3E2932DA465E6B24988C8CAIA1PR10MB6781namp_
Content-Type: multipart/alternative;
	boundary="_000_IA1PR10MB6781FA3E2932DA465E6B24988C8CAIA1PR10MB6781namp_"

--_000_IA1PR10MB6781FA3E2932DA465E6B24988C8CAIA1PR10MB6781namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Phillip,

I cannot say much about the MXI issue in newer ubuntu versions but if you c=
oncern is that you cannot download bitfiles using network images without po=
wer cycle you should consider using the openFPGAloader. You will need a USB=
 cable to access the JTAG interface of the X310. Then you can download the =
images within a few seconds without power cycling the X310. As the openFPGA=
loader does use the JTAG interface to download the bitfile, the bitfile wil=
l be lost after power cycle and you have to reload it. The openFPGAloader i=
s available via apt on Ubuntu.

First, connect the USB to the JTAG frontpanel on your X310. Then do a

lamsel@DRE-S178:~$ openFPGALoader --scan-usb
empty
Bus device vid:pid       probe type      manufacturer serial               =
product
001 003    0x0403:0x6011 ft4232          Digilent     25163520B2FC         =
Digilent USB Device
001 012    0x0403:0x6011 ft4232          Digilent     2516351DDCC8         =
Digilent USB Device
001 006    0x0403:0x6011 ft4232          Digilent     2516352430A4         =
Digilent USB Device
001 008    0x0403:0x6010 FTDI2232        Digilent     2516351DCD3E         =
Digilent USB Device

It should tell you which interface are available (if you have only one you =
might skip this step).

You can download a bitfile using

openFPGALoader -b usrpx310 usrp_x310_fpga_XG.bit

If you have multiple JTAG's connected to the same host. You can tell openFP=
GALoader the correct one with -c or -d.

Documentation https://umarcor.github.io/openFPGALoader/index.html

HTH

Lars

[NI]



Lars Amsel
Principal Software Engineer
SDR
Test & Measurement Group
+49351206931427 | ni.com<https://www.ni.com/>


From: Philipp Niedermayer <p.niedermayer@gsi.de>
Sent: Thursday, 15 January, 2026 14:40
To: USRP-users@lists.ettus.com
Subject: [EXTERNAL] [USRP-users] NI-RIO error using USRP X310 over MXI with=
 PCIe-8371 adapter on Ubuntu 24.04 LTS


Dear all,

we are using the USRP X310 connected over MXI with a PCIe-8371 card. This u=
sed to work well up to including Ubuntu 22.04 LTS. Now after updating to Ub=
untu 24.04 LTS we are experiencing the connecting issue described in the fo=
llowing. I am aware that 10G Ethernet is the recommended alternative, but t=
he PCIe connection is beneficial for us, as it allows to quickly switch bet=
ween FPGA images for different applications on-the-fly without having to po=
wer cycling the X310 (remote operation). According to NI, RIO is fully supp=
orted on Ubuntu 24.04 LTS so it should work.

Does anyone have experience with this on Ubuntu 24.04 LTS or any suggestion=
s how to identify and fix the issue would be welcome!



Issue description:

The USRP X310 is discoverable using "uhd_find_devices" and shows up correct=
ly as resource RIO0. It's correctly enumerated in lspcie using niusrpriok d=
rivers and the niusrpriopc service is running. However, everything beyond t=
hat does not work, i.e. any flowgraph fails. Even the "uhd_usrp_probe" fail=
s with the following after a clean reboot:

$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.9.0.0+ds1-1=
~noble2
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
[INFO] [X300] Using LVBITX bitfile /usr/share/uhd/4.9.0/images/usrp_x310_fp=
ga_HG.lvbitx
Error: RuntimeError: x300_impl: Could not initialize RIO session. Unknown e=
rror. (Error code -63150)

$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.9.0.0+ds1-1=
~noble2
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
[INFO] [X300] Using LVBITX bitfile /usr/share/uhd/4.9.0/images/usrp_x310_fp=
ga_HG.lvbitx
Error: RuntimeError: x300_impl: Could not initialize RIO session. A fault o=
n the network caused the RPC operation to fail. (Error code -63042)

And every subsequent try results in the same network fault error.



Setup:

  *   USRP X310 connected over MXI with a PCIe-8371 card. Ubuntu 24.04 LTS =
x86_64 with Kernel 6.8.0-90-generic
  *   UHD 4.9.0.0+ds1-1~noble2 and GNU Radio 3.10.12 stack installed via th=
e ppa:gnuradio/gnuradio-releases repository
  *   NI drivers 2025 Q4 installed as described here: https://files.ettus.c=
om/manual/page_usrp_x3x0.html#x3x0_hw_pcie



Does anyone have experience with this on Ubuntu 24.04 LTS or any suggestion=
s how to identify and fix the issue would be welcome!



Best regards
Philipp



--_000_IA1PR10MB6781FA3E2932DA465E6B24988C8CAIA1PR10MB6781namp_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
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
/* List Definitions */
@list l0
	{mso-list-id:1670794245;
	mso-list-template-ids:1089368690;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1774326698;
	mso-list-template-ids:594303030;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Phillip,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I cannot say much about the MXI issue in newer ubunt=
u versions but if you concern is that you cannot download bitfiles using ne=
twork images without power cycle you should consider using the openFPGAload=
er. You will need a USB cable to access
 the JTAG interface of the X310. Then you can download the images within a =
few seconds without power cycling the X310. As the openFPGAloader does use =
the JTAG interface to download the bitfile, the bitfile will be lost after =
power cycle and you have to reload
 it. The openFPGAloader is available via apt on Ubuntu.<br>
<br>
First, connect the USB to the JTAG frontpanel on your X310. Then do a<br>
<br>
<span style=3D"font-family:&quot;Courier New&quot;">lamsel@DRE-S178:~$ open=
FPGALoader --scan-usb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
empty<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Bus device vid:pid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; probe type&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; manufacturer serial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; product<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
001 003&nbsp;&nbsp;&nbsp; 0x0403:0x6011 ft4232&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; Digilent&nbsp;&nbsp;&nbsp;&nbsp; 25163520B2FC&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Digilent USB Device<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
001 012&nbsp;&nbsp;&nbsp; 0x0403:0x6011 ft4232&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; Digilent&nbsp;&nbsp;&nbsp;&nbsp; 2516351DDCC8&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Digilent USB Device<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
001 006&nbsp;&nbsp;&nbsp; 0x0403:0x6011 ft4232&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; Digilent&nbsp;&nbsp;&nbsp;&nbsp; 2516352430A4&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Digilent USB Device<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
001 008&nbsp;&nbsp;&nbsp; 0x0403:0x6010 FTDI2232&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; Digilent&nbsp;&nbsp;&nbsp;&nbsp; 2516351DCD3E&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Digilent USB Device</span><br>
<br>
It should tell you which interface are available (if you have only one you =
might skip this step).<br>
<br>
You can download a bitfile using <br>
<br>
<span style=3D"font-family:&quot;Courier New&quot;">openFPGALoader -b usrpx=
310 usrp_x310_fpga_XG.bit<br>
</span><br>
If you have multiple JTAG&#8217;s connected to the same host. You can tell =
openFPGALoader the correct one with -c or -d.<br>
<br>
Documentation <a href=3D"https://umarcor.github.io/openFPGALoader/index.htm=
l">https://umarcor.github.io/openFPGALoader/index.html</a><o:p></o:p></p>
<p class=3D"MsoNormal"><br>
HTH<br>
<br>
Lars<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"450" style=3D"width:337.5pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:75.0pt">
<td width=3D"102" valign=3D"top" style=3D"width:76.5pt;padding:.75pt .75pt =
.75pt .75pt;height:75.0pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"100" style=3D"width:75.0pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:60.0pt">
<td width=3D"80" style=3D"width:60.0pt;padding:.75pt .75pt .75pt .75pt;heig=
ht:60.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:27.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><img border=3D"0" width=3D"90" height=3D"90" style=3D"width:.9375in;=
height:.9375in" id=3D"Picture_x0020_1" src=3D"cid:image001.png@01DC863D.4BC=
E98B0" alt=3D"NI"></span></b><b><span style=3D"font-size:27.0pt;font-family=
:&quot;Arial&quot;,sans-serif"><o:p></o:p></span></b></p>
</td>
<td width=3D"20" style=3D"width:15.0pt;padding:.75pt .75pt .75pt .75pt;heig=
ht:60.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"80" style=3D"width:60.0pt;padding:.75pt .75pt .75pt .75pt;heig=
ht:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td width=3D"20" style=3D"width:15.0pt;padding:.75pt .75pt .75pt .75pt;heig=
ht:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td width=3D"348" valign=3D"top" style=3D"width:261.0pt;padding:.75pt .75pt=
 .75pt .75pt;height:75.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt"><b><span style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Lars Ams=
el</span></b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
sans-serif;color:black"><br>
Principal Software Engineer<br>
SDR<br>
Test &amp; Measurement Group<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,sans-serif">+49351206931427 |
</span><a href=3D"https://www.ni.com/" target=3D"_blank" title=3D"https://w=
ww.ni.com"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif;color:black">ni.com</span></a><span style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"mso-ligatures:standardcon=
textual"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Philipp Niedermayer &lt;p.nied=
ermayer@gsi.de&gt;
<br>
<b>Sent:</b> Thursday, 15 January, 2026 14:40<br>
<b>To:</b> USRP-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] NI-RIO error using USRP X310 over M=
XI with PCIe-8371 adapter on Ubuntu 24.04 LTS<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Dear all,<o:p></o:p></p>
<p>we are using the USRP X310 connected over MXI with a PCIe-8371 card. Thi=
s used to work well up to including Ubuntu 22.04 LTS. Now after updating to=
 Ubuntu 24.04 LTS we are experiencing the connecting issue described in the=
 following. I am aware that 10G
 Ethernet is the recommended alternative, but the PCIe connection is benefi=
cial for us, as it allows to quickly switch between FPGA images for differe=
nt applications on-the-fly without having to power cycling the X310 (remote=
 operation). According to NI, RIO
 is fully supported on Ubuntu 24.04 LTS so it should work.<o:p></o:p></p>
<p>Does anyone have experience with this on Ubuntu 24.04 LTS or any suggest=
ions how to identify and fix the issue would be welcome!<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p><b>Issue description:</b><o:p></o:p></p>
<p>The USRP X310 is discoverable using &quot;uhd_find_devices&quot; and sho=
ws up correctly as resource RIO0. It's correctly enumerated in lspcie using=
 niusrpriok drivers and the niusrpriopc service is running. However, everyt=
hing beyond that does not work, i.e. any flowgraph
 fails. Even the &quot;uhd_usrp_probe&quot; fails with the following after =
a clean reboot:<o:p></o:p></p>
<p><span style=3D"font-family:&quot;Courier New&quot;">$ uhd_usrp_probe&nbs=
p;<br>
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.9.0.0+ds1-1=
~noble2<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...<br>
[INFO] [X300] Using LVBITX bitfile /usr/share/uhd/4.9.0/images/usrp_x310_fp=
ga_HG.lvbitx<br>
Error: RuntimeError: x300_impl: Could not initialize RIO session. Unknown e=
rror. (Error code -63150)</span><o:p></o:p></p>
<p><span style=3D"font-family:&quot;Courier New&quot;">$ uhd_usrp_probe&nbs=
p;<br>
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.9.0.0+ds1-1=
~noble2<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...<br>
[INFO] [X300] Using LVBITX bitfile /usr/share/uhd/4.9.0/images/usrp_x310_fp=
ga_HG.lvbitx<br>
Error: RuntimeError: x300_impl: Could not initialize RIO session. A fault o=
n the network caused the RPC operation to fail. (Error code -63042)</span><=
o:p></o:p></p>
<p>And every subsequent try results in the same network fault error.<o:p></=
o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p><b>Setup:</b><o:p></o:p></p>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level1 lfo3">
USRP X310 connected over MXI with a PCIe-8371 card. <span lang=3D"DE">Ubunt=
u 24.04 LTS x86_64 with Kernel 6.8.0-90-generic<o:p></o:p></span></li><li c=
lass=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto;mso-list:l0 level1 lfo3">
UHD 4.9.0.0+ds1-1~noble2 and GNU Radio 3.10.12 stack installed via the ppa:=
gnuradio/gnuradio-releases repository&nbsp;<o:p></o:p></li><li class=3D"Mso=
Normal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-lis=
t:l0 level1 lfo3">
NI drivers 2025 Q4 installed as described here:&nbsp;<a href=3D"https://fil=
es.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie">https://files.ettus.c=
om/manual/page_usrp_x3x0.html#x3x0_hw_pcie</a><o:p></o:p></li></ul>
<p><o:p>&nbsp;</o:p></p>
<p>Does anyone have experience with this on Ubuntu 24.04 LTS or any suggest=
ions how to identify and fix the issue would be welcome!<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>Best regards<br>
Philipp<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_IA1PR10MB6781FA3E2932DA465E6B24988C8CAIA1PR10MB6781namp_--

--_004_IA1PR10MB6781FA3E2932DA465E6B24988C8CAIA1PR10MB6781namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=23947;
	creation-date="Thu, 15 Jan 2026 15:43:32 GMT";
	modification-date="Thu, 15 Jan 2026 15:43:33 GMT"
Content-ID: <image001.png@01DC863D.4BCE98B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAZAAAAGQCAYAAACAvzbMAAAACXBIWXMAAAsTAAALEwEAmpwYAAAE
9GlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0w
TXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRh
LyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgOS4xLWMwMDIgNzkuYTZhNjM5NjhhLCAyMDI0LzAz
LzA2LTExOjUyOjA1ICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMu
b3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91
dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJo
dHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8v
bnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2Jl
LmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3Ag
MjUuOSAoTWFjaW50b3NoKSIgeG1wOkNyZWF0ZURhdGU9IjIwMjQtMDctMDNUMTE6NTk6MTQrMDI6
MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDI0LTA3LTAzVDExOjU5OjU4KzAyOjAwIiB4bXA6TWV0YWRh
dGFEYXRlPSIyMDI0LTA3LTAzVDExOjU5OjU4KzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIg
cGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDoxMTUzN2E0
ZS04Zjk3LTQ5OTItOTI1ZS02ZjhkZDFkNTA4YWUiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6
MTE1MzdhNGUtOGY5Ny00OTkyLTkyNWUtNmY4ZGQxZDUwOGFlIiB4bXBNTTpPcmlnaW5hbERvY3Vt
ZW50SUQ9InhtcC5kaWQ6MTE1MzdhNGUtOGY5Ny00OTkyLTkyNWUtNmY4ZGQxZDUwOGFlIj4gPHht
cE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RF
dnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDoxMTUzN2E0ZS04Zjk3LTQ5OTItOTI1ZS02ZjhkZDFkNTA4
YWUiIHN0RXZ0OndoZW49IjIwMjQtMDctMDNUMTE6NTk6MTQrMDI6MDAiIHN0RXZ0OnNvZnR3YXJl
QWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCAyNS45IChNYWNpbnRvc2gpIi8+IDwvcmRmOlNlcT4gPC94
bXBNTTpIaXN0b3J5PiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4g
PD94cGFja2V0IGVuZD0iciI/Pigfu+MAAFg9SURBVHic7d13eFxnmffx7ynTZ9SLZcu23Etc49ix
kzg9JCGN0CEsnaUssMAC20JfYNldlqUu7PLSlxI6KSSk92o7jnuVZcuyujSafur7xxnJsuMiHUtW
8f25LmETa+Y8085vnnYfhd/efhdQCzgIIYQQp6cCzTpww1i3RAghxISzUgUOj3UrhBBCTDgH1bFu
gRBCiIlJAkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBF
AkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQv
EiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8
kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjh
iwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjhiwSIEEII
XyRAhDgV1RnrFggxbkmACHEyCpSYOuB6/0cIcQwJECFORLeosDS+2DmVkKuCao11i4QYdyRAhDie
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
RU5ErkJggg==

--_004_IA1PR10MB6781FA3E2932DA465E6B24988C8CAIA1PR10MB6781namp_--

--===============1061280083524125369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1061280083524125369==--
