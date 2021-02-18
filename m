Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6404A31E977
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 13:07:25 +0100 (CET)
Received: from [::1] (port=42930 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCi5Z-0000y4-Il; Thu, 18 Feb 2021 07:07:21 -0500
Received: from mail-eopbgr80099.outbound.protection.outlook.com
 ([40.107.8.99]:18606 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1lCi5V-0000ns-4J
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 07:07:17 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JUnOfQmVLPbp56VyC5MX5SKyy3gh0BIb/ZV2ZUWS/8HqGhvsPd5iyjlWIMQOU60+xYuyTqy25izB9GlzyHzIAahthAbi5fH3zmMU6gRVBePPZWRPGJoNnxuueuzxJrBJpprFNrr/HRb0DIazLooW2YX20fbjqxPEgEI7NUk4EjACm46IFtdYU/fOdCHbChXwIFPebnihGVUe8b6MiqTWitCZwkExl8d/fGCJNz1vhjxBv3ix6/yNyLCOHzyH8lDgnn6Ibi8gGa7et+jg4AoMROSo2qj+Kmho9Rw91rhoKk7vq0Jzwxvq5kxGtJouQxF9JrDOWR/gLGq619yqdISXLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o7LVovmC7AhkfqBjv/1fo5lYHk1d8Vb1cM5qZuuMpAk=;
 b=eASEQIMFkk+gqvZePhCco7Xm74w9wYeiu92Sy4u4ojveCM09u43OoicC2C+3QzzyvYfdUsKlH1uF5IBeWa/BjUbbU/Okp1VQdK6UyisJP1Jv766PoFhSI1v+81PijyHHuMakjavRoAeBLEU6Bs7K6enP9XkffU2AEimW2hCaeuJdRnLZXJasTSB3oZdGCIPTr79U88hMUcjRXWTed0/4I1fj74B+RkwU5XoY7V2LfVZM4KK2euOBoaayiYInGJfPT+Utnv8DyvvP4hNxJ1EzIwYyw2FdedtbbpcO44mnCiM4gg9ySSD/f/kF9GTKAD9IC1fNdilQf/xQiJi6VLDm/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o7LVovmC7AhkfqBjv/1fo5lYHk1d8Vb1cM5qZuuMpAk=;
 b=f6IddiKEL+0drdT8hGR16aCwJlw1louvy45JSFcnzzwcqa7qWWGFuZ1NJKAFKoTjQCtHzqWLpf0Itqb+2EZUkED9WRfjrlSsdC/VjR9aHjcfxdyAxSEHXHnbECkFlpUBLypKzfeXEri4vudlsx7iNxLuzgXZ42oPNY/NQX2N9I0=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=ant.uni-bremen.de;
Received: from AM6PR04MB6680.eurprd04.prod.outlook.com (2603:10a6:20b:f8::12)
 by AM5PR0402MB2849.eurprd04.prod.outlook.com (2603:10a6:203:96::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Thu, 18 Feb
 2021 12:06:34 +0000
Received: from AM6PR04MB6680.eurprd04.prod.outlook.com
 ([fe80::a1ba:a7bf:5bb0:5adb]) by AM6PR04MB6680.eurprd04.prod.outlook.com
 ([fe80::a1ba:a7bf:5bb0:5adb%4]) with mapi id 15.20.3846.038; Thu, 18 Feb 2021
 12:06:34 +0000
To: usrp-users@lists.ettus.com
References: <9e13de43-c871-8622-c3b6-d4143fbe7ad6@ant.uni-bremen.de>
Message-ID: <9bb07e02-0567-9d12-299d-26daf430015d@ant.uni-bremen.de>
Date: Thu, 18 Feb 2021 13:06:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <9e13de43-c871-8622-c3b6-d4143fbe7ad6@ant.uni-bremen.de>
Content-Language: en-US
X-Originating-IP: [77.21.223.96]
X-ClientProxiedBy: AM8P189CA0013.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::18) To AM6PR04MB6680.eurprd04.prod.outlook.com
 (2603:10a6:20b:f8::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.24.142.155] (77.21.223.96) by
 AM8P189CA0013.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:218::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Thu, 18 Feb 2021 12:06:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0542943c-eca3-4624-88ad-08d8d405a287
X-MS-TrafficTypeDiagnostic: AM5PR0402MB2849:
X-Microsoft-Antispam-PRVS: <AM5PR0402MB2849E5649728E96AA56A9A1CA9859@AM5PR0402MB2849.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xarMZorYSN1OvFE0eJVlbX02nZj+p2A984RHk2QcVRuFKLqxvk/cE9MVDLibuNdnynI1Y5zo7PK5+/F38wp4YLK0QVS6cLoVyQit1WnZPUACRWHyq3wNaLNWJpoHolLVfX8UmIvxN/k66H1EFCpySN+5zrPaU6b6X5lJB331jqaZbNR6Sbenk3QOYOJAPCaR1oKNBy5LjUDOzECtxWpkDwoHeu6YFGpoq2JC7aElMu8nCgfwyn+/bL+D+fsWHTV7cKigJUFsSIHw43628vxtd5+sW5ZXFsLlFw/0NvZFL/Wm+C6Wc2/qq31CZF2AF/p4Qn/4BVUPT1olmVTTQVTb5sRmiiaHLKjXieWyZqjMKMdFPFA3pGsAbVdMiHx7k6tFt/8oTCrjrSYlsatIF1JfwQiK4zwo0AmJoG3Di5X8i9cAt4kaSo1Dt3O1Q6EDDfV+YLqDmiw0m90IxZngve8fDAeeC6CTieqJsAwe2GzJOcunCiA8INcp15x0z59DWIJZbCK7oRLjDiEUk7q0nr8RfJIprOp+4KkH9KTajkbRLbgRZClIVGZBAGKtcZ1dFcdXvMRPHhIkV+Inst+/26+EdRqEJ8piYe3TkwQBx0OecZc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB6680.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39830400003)(396003)(366004)(346002)(376002)(8936002)(53546011)(66476007)(2906002)(52116002)(66556008)(86362001)(8676002)(6916009)(16526019)(186003)(26005)(31686004)(316002)(66946007)(31696002)(6486002)(786003)(83380400001)(956004)(2616005)(478600001)(5660300002)(16576012)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NVNEVVB2VmR3THVtcjJGU2oySWgvcHQvR3NnWSsvUm5QcnF5K1FNaytudVRW?=
 =?utf-8?B?UG95UEFPUjJpdTQxeSt6cXJacldsOVJmZHY1UHpsRHA0T0hmbE9NbHBBUGcw?=
 =?utf-8?B?L0VjU01HV01iUzBGYXVvTHF5MFJ2N0xrYmsyU2d4U3h0d25teU94eElWMjBK?=
 =?utf-8?B?K3FMZDVTMWJoY0I1NHVINWsyM2tGS1dkZDFCVC85cEFyWUVkYXVra1dSdjBI?=
 =?utf-8?B?K29SMWFBTjVZd01yVklwUG1jNEFGaWpveEhtaS91VUVkY2xUWWUzeW1Ja1R6?=
 =?utf-8?B?VVdIZ2xhYjlTeU0yMHVyM0gzUCtiZjFPUEkzUDNLNksxVFdRZ1p0QnM0VThT?=
 =?utf-8?B?MFFCV0NaRVFaS0tHc3N5RERlV1BkYTRibjdoRWx1TG4rS21vNDJRc1VOQ1NI?=
 =?utf-8?B?Y1UyQUVGczlIbjRNQW91aDY0eXRJRUlkOW1qcDJPVTJlRkp0TlI5Z1VmRDcv?=
 =?utf-8?B?RXBrWkJaU0JWRU9XajFITnJ6UlNpekhnMXJpUkF6dHMzTER5eWdGaXJpSXBx?=
 =?utf-8?B?ek5hanBRRWF1Mk56N1g2TmRZSEY5eVhtRUNMMFdUQlJOVFNBWnBLL2VWMmc4?=
 =?utf-8?B?YkdMcXl0dmZQZFQweEV3Wk5qaVNsTUpKeW4xWnB3eXBxZWxKL25uMUJrK0xS?=
 =?utf-8?B?TkNKcGZnSzdKbEF1K3VWTHFjYVowVWJTL0VwZWpkc3FOcU5oTW1SakxWNHlE?=
 =?utf-8?B?ckJERlp6NnlUUkFxYWpaMGJrY3I5YnBrMnN6ekxoN0dlTDJwbksxZW8wUThp?=
 =?utf-8?B?KzBwRVd4Wkl3QlRqNmcxbHpPc3ZIZHhoNnBKYVgzamxDZjdUSzNEUDQ1aThq?=
 =?utf-8?B?R2NuT1UrYlBIVUp6ZjFFTWl0ZEU3NlVLd09BWXpFSzlXTGZqemc4cHhaSzYy?=
 =?utf-8?B?VTVPSHg0dGhmNEJMTG9BbUxhK1B0eTh2azVyQ3gvNDRCZ09wWVI2cGdMbkdw?=
 =?utf-8?B?TVdBQVcwem9QWnNhTVlmLy9WSDBWbi92ZnREWkhmM0hQSDlMcXExOG0yd2Ev?=
 =?utf-8?B?d3gyK0NsdVdQYTRnS0N4cFhqaUcvdWl4RHBua2l4U2l5Nm15M0RWMEpiNW1M?=
 =?utf-8?B?ZnFOdzE2aUczQzV0ZkthSEtzenk3UkdYVHgyNnpUTWU3cjJudHB1QitxM3hl?=
 =?utf-8?B?a3NsZTFBeXI2NFM5bmVYMzJ2L25qUGdYYitDbjlYYVpaQ3h0dnMrTkF3KzF2?=
 =?utf-8?B?UzE2Mk5RM1FqOWpTUXNtVG05RzMyK1hvYkw5Vm55bDlSZHBwSXJmY0N5aUwr?=
 =?utf-8?B?NlhPV0t2WnNuYldBK3ozZWs5M0IreWlrVThCakVwbVM3SnNOZjlCZktYaktp?=
 =?utf-8?B?dUtFY3JXc0lBTUJDUy9UalN6MUhlQU9od0dJMFEzaERrYlcxRmFKOGRLTmU2?=
 =?utf-8?B?cHgrTGFqc2JYd3RlaC9PTmNRUy9Za0VlbXFzSE4yYUtmR2d2N0E2dGJMazd2?=
 =?utf-8?B?UlFSMGNjaGFqeWhCbFNWMDNoVnBGMFVrQ09BRm9qM2hmVWJmSU9adWM2ZTNF?=
 =?utf-8?B?UXBmUkdCZFpoTzVOV1Z2R3FWait1S0NuS3hKTzJ0Y2ErelVtREFXY1NvRy9U?=
 =?utf-8?B?TElUNGsxeVJodGwvRkY0QTFUdko3dzBJR0NLNjhsN2MzRjRVNmdZMThxYkNH?=
 =?utf-8?B?M1VNdjJLektaZXRDYXcycjZIVFEvdjRJRk12MVY1OFVVc3hFbTZiNXVIMmpk?=
 =?utf-8?B?clNQbldrOFR4RWJKRTh4N0s2UXdNQ0ZVb0hWbXBYakdpOEZOR3JoQ3psd1ZM?=
 =?utf-8?Q?PdwoqFp7dXFu5rwulA8ZqngCAYVzhgrhv5Pipej?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0542943c-eca3-4624-88ad-08d8d405a287
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB6680.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2021 12:06:34.2319 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +dhGizRK1PYhPE3PL8l+2vILGaCIbH7ClSXX1p82vdqGxe2jpudqoIOv0twl7zeLaAYobt4ChI4vKQTlX5hyUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2849
Subject: Re: [USRP-users] GPSDO fails to lock
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Johannes Demel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johannes Demel <demel@ant.uni-bremen.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

SnVzdCBhIHF1aWNrIGZvbGxvdy11cC4gVGhlIEIyMTAgZmluYWxseSBnb3QgYSBHUFMgbG9jay4g
KEkgaGFkIHRvIHdhaXQgCmZvciB+MmgpLiBUaG91Z2gsIGFsbCBOMzEwcyBzdGlsbCBkb24ndC4K
Ck9uIDE4LjAyLjIxIDEwOjEyLCBKb2hhbm5lcyBEZW1lbCB2aWEgVVNSUC11c2VycyB3cm90ZToK
PiBIaSBhbGwsCj4gCj4gSSBoYXZlIHNvbWUgTjMxMHMgYW5kIGEgQjIxMCB0aGF0IEkgdHJ5IHRv
IHN5bmMgd2l0aCBhIEdQU0RPLiBBbGwgb2YgCj4gdGhlbSByZWNvZ25pemUgdGhlaXIgR1BTRE9z
IGJ1dCBmYWlsIHRvIGxvY2suCj4gCj4gTXkgcGhvbmUgY2FuIHNlZSB+NyBTYXRlbGxpdGVzLiBX
ZSBoYXZlIGEgUlBpIHdpdGggYSBHUFMgbW9kdWxlIHRoYXQgCj4gbG9ja3MgdG8gR1BTIGluIHRo
ZSBzYW1lIGhhbGwuIFdlIHN3aXRjaGVkIGFudGVubmFzIGJ1dCBzdGlsbCwgd2UgY2FuJ3QgCj4g
c3luYyBhbnkgb2YgdGhlIFVTUlBzIHRvIEdQUy4KPiAKPiBJIHRyaWVkOgo+IAo+IGBgYAo+IGxp
Yi91aGQvdXRpbHMvcXVlcnlfZ3BzZG9fc2Vuc29ycwo+IGBgYAo+IGFuZAo+IGBgYAo+IGxpYi91
aGQvZXhhbXBsZXMvc3luY190b19ncHMKPiBgYGAKPiBidXQgZXZlbiBhZnRlciBhIGRheSwgdGhl
eSBhbHdheXMgcmV0dXJuICJHUFMgZG9lcyBub3QgaGF2ZSBsb2NrIiBhbmQgCj4gIldBUk5JTkc6
wqAgR1BTIG5vdCBsb2NrZWQgLSB0aW1lIHdpbGwgbm90IGJlIGFjY3VyYXRlIHVudGlsIGxvY2tl
ZCIuCj4gYGdwc21vbmAgb24gdGhlIE4zMTBzIHJlcG9ydHMgMCBTYXRlbGxpdGVzLiBCdXQgaXQg
aGFzIGEgbGlzdCBvZiAKPiBzYXRlbGxpdGVzLgo+IAo+IFNpbmNlIHdlIGhhdmUgc2V2ZXJhbCBk
ZXZpY2VzIGluIHRoYXQgcm9vbSB0aGF0IGFyZSBhYmxlIHRvIGFjcXVpcmUgYSAKPiBsb2NrIGJ1
dCBub25lIG9mIG91ciBVU1JQcyB3aXRoIHRoZWlyIEdQU0RPcywgSSB3b25kZXIgd2hhdCBpcyBn
b2luZyBvbi4gCj4gRG8gdGhleSBuZWVkIGEgdmVyeSBzdHJvbmcgc2lnbmFsPwo+IAo+IENoZWVy
cwo+IEpvaGFubmVzCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20K
