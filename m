Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 909A758993A
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 10:24:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D694C383B4E
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 04:24:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659601457; bh=sbH7Wjgy4qH/LwyN4lHhBSrlUWFVdl6AZQJ4GoTIXz8=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=OzLks/bF6jHVouz3vPH8NJBf3ViEIed68Zri35rHDNDaZIAWNOsZ2O5ono6xadB7p
	 U/Uhm9crde45rPtS0nuWp2lnN+wySrJo0kj4rM3+y/5Hb28f4td4cAeLhiNQeskpAA
	 ZWrUmgUoggvJ4dyxt0MgdUmzNI8LrPYq/JN6+wjcsVW9Q9SFE3sysfuK6k8ZrH1EJk
	 WExlBt8PEeaFg+XGMABM7V6CFC8SRutfR1J13vRXuqanmqY1yj6Lb26Uhg0nQc6Tc5
	 pBcjaA0+yuNtgxvhzEQzcC9VxUoB0oHNQb3zChh648dYWRRaK5mDjMFPxl5iLfN22T
	 MSx2f+eW3tizg==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80112.outbound.protection.outlook.com [40.107.8.112])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CA8B381136
	for <usrp-users@lists.ettus.com>; Thu,  4 Aug 2022 04:22:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="WWAolgMi";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gr/8BMYuk8NNmBf0zIceN3fSR5F5cLlrDJv5qjOtSqSvuijaE4GpJ2BYs89y3BfHEnzzKu/ts1Kajw9374fMXrXy3ZxHTVytr8fnJ09IZc/UaFFwA366LeHDESKr2mDnYryuxKjVb7L9mHKoY9hqkWbh+5X8Zo/cbxnHPbfSLB+hjBs8OPyTYbKN/n1lhzikethfnsMDa+gtXdzBEvzKBDXPrREeTeWPFkfaUbvLbM7Qk0j3qQkMH5WJ3ab2UHDHnlGNNJthUAFNYIGrtx4ocR3cLS9suwRHGmw2/zWmiE8NpiohgyZ5ARIizo36jD8jlIMMMrnQmDN0qfmA/bQ6zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xKsFOiHnrcJwinSqwL/TnPFOQ545yU+eo5DPbWzyazo=;
 b=LRij2tNPGjAUeuVRn8lWnfLeJ0+HWYbH/udx5uwvOTeHTtMx1O87Od9cGF9Q4JDZjCnUQOwBBW6EU9XFLt/FWv1ObT79/1xz1VK7Jn/lcj7xOwlkF+l2kw/ibr4Ce4Cppid728q4X6ZvTCDtK6sZdpUpDwhjd4jZNILi65roXfD67SyD+wPsRNWkjd3PdSXQe4mmOUh4CREg83ZlMgtNWuVw3P1vIY6ek/wH+RgqFz6wg84HtysCnlD3t+FEtNG+yadPkthLj/DWDK1D973DRjV5WL/HGem8ATPFWnWbwj7QykHTpvOqDI8S15AgEe89sPbh+pLNKJitI2YZUTXC5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKsFOiHnrcJwinSqwL/TnPFOQ545yU+eo5DPbWzyazo=;
 b=WWAolgMiT4WUnN+gpvIx2e9VdyWZFcTqXeykI3n8LdriFrFB+noSaL9rxC4oF2Mu4qKM2gDzCBjE59SmQfaO9CYiG60l3aWMzf8UWu54kCnmfKyJfJJJexaCZKy5+jXDM/spgFGs5LN7yiMX1feqvMz9hv3yFh6KpL5Nv+UTbb0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 DBAP190MB0998.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:1a6::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Thu, 4 Aug 2022 08:22:56 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::e47c:7fa9:a65f:1228]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::e47c:7fa9:a65f:1228%4]) with mapi id 15.20.5482.016; Thu, 4 Aug 2022
 08:22:56 +0000
Date: Thu, 4 Aug 2022 10:22:54 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20220804082254.u56t2v3zbsfit6yc@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <vL8mbFeHtkOt3nSpm7MhDVbDohBvQIiWjzCQv3Egp8@lists.ettus.com>
Content-Disposition: inline
In-Reply-To: <vL8mbFeHtkOt3nSpm7MhDVbDohBvQIiWjzCQv3Egp8@lists.ettus.com>
X-ClientProxiedBy: FR0P281CA0122.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::12) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 795a7bba-d2ee-4f22-b933-08da75f2887c
X-MS-TrafficTypeDiagnostic: DBAP190MB0998:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	h6K0tJcLBRImnfgoFKI1luKFwMn47O4Fycc3vdbj3+BKfSK6nfCperOysH5OMZ58aOz9/D9sZrNLy87gSrGUA+PNFz/J8I1cBNMYdRbkaYXz3eM9d3KEFf11YKZ6rmJnxqHQR139vzrqTQ/CFvEL6yt26dPVRIo4pSJuoPBupGWMAip0Po4YwcY4t27aLQIdXxBIzgvYSFrxqvXGeIhEUVCIGWkZA3pfTtHeISTkF3wcff19LQ3r9U8lycAYs0J0pRqcRzSk1B5Zd0tiw28UZTiouMlVRB0s0DfTjVAJCIuYd49HWZc+oCRp/x2YdW3OnBs6wVIhUa3ZtmkI6ym69bJLx+LkxPxjzrBWCU9x4w76YfkP7QnITNYGN0jNZvDbEcOu0fIQuLsEHq4HbqPtzRioruFgT07A8ALK8LbjjjP+8lssoHHMPJqJQ8UkyqIwf0ubsdbjZjgZW1oSf3DCFiV9fIj+T3dzRNio6rkTx15t7ptD+lrdpgAkE/oyz2b9f7Xg/85xYuJao3HGokcnqpxBm/vntNaItINNaualM7FxWzjfCk2DdcDU/8OBlCTpUrOHclZTMvJ2eYbYr9y+xVRicwDSvvLdns2KQ22G87+W/dt6Yhh2xnNnu1/twcVI2QaBzpNXjJ/XF9innHZiYnz28lDVcJyFO+xtSbjcIE5GHOQ2lE2phlCN/Zz2ZeLg5eQdpOCakPQS2xxL9ga1LnxVDuZmF9WZE6Y2K55Tg3oPptnt0HYW3fAi6B5v2Kiu8Z7SLxyMkYf7nkiJL/ZNxx7bmfAKndsFfGEPW3Bgos4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(7916004)(396003)(346002)(376002)(366004)(39860400002)(136003)(86362001)(2906002)(26005)(786003)(316002)(41300700001)(9686003)(38350700002)(6916009)(38100700002)(66574015)(33716001)(4744005)(6486002)(8676002)(66556008)(478600001)(1076003)(41320700001)(186003)(66946007)(6506007)(53546011)(66476007)(52116002)(8936002)(6512007)(5660300002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TkxjRmlqTzlaT3QxQm5NVFFodzE3L3ZzZDNjd0FzQVR0YzErZkovT2RmcTZX?=
 =?utf-8?B?K3REa3MvQnBTdXI2cis5b25VbURVMTdIYW9yMGNVdDNyK2RRVDFvYi82Q2po?=
 =?utf-8?B?a0lNMVhtZEtrSEZ5WVVTWDBoQ0U0bzRRby95Y0pSSldmak1lNmErY2RsUVhC?=
 =?utf-8?B?L0g2bkF2NFY1aUZ3MFVvR1IxZDl0em9NZ2U3WlcyNjdEWDdzSFprOW1YT3BD?=
 =?utf-8?B?dTRGK2N5OFIzcjlnUmdWc0lQaFdFWllsdkY0V05Genl2SWhmTEFmMkdMSEVI?=
 =?utf-8?B?emlEYTd5eDNyK3NYUGdFT1NUNWVTVUp0dE9FemYwYlFxdzdxeHRlQWJLcllw?=
 =?utf-8?B?RG5CTmFKVmZGTnU4V2NBenNadENhMHF1eVBmVW5jWks0WERaOThsOEZtcmth?=
 =?utf-8?B?TkhVcXBFQlVva21PY2JFNGJQeDlxT29ORDZmekk3WG01WlA1dzlyVDYxclBU?=
 =?utf-8?B?c2RMaG03eUJVK21WRWxLMDlXNnBFWDVoT09HYkRRT2U3cVVpVmsyQmNPMS93?=
 =?utf-8?B?TjFzLzQwNm81S0UxNGFuZVl0YTUzNkZKQVhBeUxvbDViZ1dReG84QkhldEJi?=
 =?utf-8?B?dTFoS0RWbmJ2Z1p1U1YxZ1E3VU9Kdk5pcFpESFBtdmlLMkRWM3YzYklpb2NI?=
 =?utf-8?B?aTE1eTZ4alB3WUg2QmhiNDNZZnlBZXBzL2lsOE1NcXM1bnJkZ0NYaVhWNnN1?=
 =?utf-8?B?OUZ3clNPbkozOWNuZUNKQkZELzJ5M1RHU0hOYm5Dc3RZV0JTYXNaVXUrVmFL?=
 =?utf-8?B?U3hLcWh0aDIxcjZpblpUOFVNUVc1cXZLY0NGTFZkSEY0NjlNcUlkaEI5cncy?=
 =?utf-8?B?b3pPL2ZDN1AwOWY0a2MxUGRzMmhMOHdPVXJlSHVIZUlSNklBQnh2OXBFbWF1?=
 =?utf-8?B?TnArZnhPTnQxS2t6LzkrT2duUitKSzJOd3pGeHdNZGdOYTMxVTd2MTJ5bkNO?=
 =?utf-8?B?dGV0bEhIbmRuWTF0TTZqREEyY3IwUzN1Y1U4Z1BuSlBHOHFwU250aGlaZ29z?=
 =?utf-8?B?TzI4ZWdnVEdhbXVXS1EzQTRiQkMvRWxaQnlhcGU4RzNwbXF1R3YxdXZzN3Nl?=
 =?utf-8?B?djdqdGhTSVlUWlJJbFlybmJnQ3d5cGNkeHdoRzFDV3dQckVLQVN4VEptdThR?=
 =?utf-8?B?TDNXSkVOb3gyaDg3dXlMM0pIcmRGWkF1T3N2ZmNyNWlpY0FjTDVITEFMOFAv?=
 =?utf-8?B?QkR5eG5nZlovNG5qLzZEdWROZkE0VldjSUlqZ0JOc0E5eEQ2RjZtOS9Ha25R?=
 =?utf-8?B?Uk5HM1UwanVQQm5Fb3V2YmZGZlFxUkhRcU1wZjZvWEtmNnF1TWxBNkxMUVNT?=
 =?utf-8?B?VDY2U0ZTd3hLZWNBQis4Skxteis5SnFYZ2lkZkZhTHlRcEFjRzdlZWMxcytL?=
 =?utf-8?B?VkNCNlBHK0w3cktPZS9mdEh0MnY0eE9Oc2EraXpiMnZuT0ZWTVlMdjJYa0xU?=
 =?utf-8?B?MWxWTzR4MFgzMHRFQWpHWEYzSEJTR3BndnVad29aa285QXFuYzVYRWxvWjBS?=
 =?utf-8?B?MGpXamtYYlZ6bVRDSEY0c2wyWkFvczN5aURFd2NkSlI1aXhCYWRCTzJhYVlB?=
 =?utf-8?B?WTR5VmZpQVM4dm41aDZEbDZENDczTW9pNDA5N2pGVUh4aU1WL01TaEJtZ1BN?=
 =?utf-8?B?WHp4WGlFZHpNbkRmT05FTVZDcFhPM09lRUhZdzdGSGdMN2pSamZ2cEJFM2d0?=
 =?utf-8?B?OFNMUmZsYVdRdTFBaFNLSHkzRnVENERFbUlJNGVEVFpQNUxGbG01SDJweXVI?=
 =?utf-8?B?WXBxRCsvd2hHN0RMbkFacG1tdUJEVkFsY05VNGptTFJoeGduQlM5UkhGcFc1?=
 =?utf-8?B?ZGtCWWg3RTJzdlNWYTJxZzRxZFZ6VGtiVmQ1Z3d3YlVmR1lTN3FCUkpVU3Bw?=
 =?utf-8?B?WllFWWJVZDhKY2VleWdTM0lqQ1Y1L1dXbE9OQzJtN0h6d01qSERxMFk5alNN?=
 =?utf-8?B?a01aQm80VmNMdzFabUJSYklkR3l2UktlQjhnYnU2b1NUTXdJV2JpYmlhUEF1?=
 =?utf-8?B?aUN1cnhyRlByT24xMGRWSWRBdzA4S0szdFYwNkhQQkdqbmF3cmJ6TjA3T2tW?=
 =?utf-8?B?MGRrOXJhUlBhQWc3SU1rd2M4Tjh2SndyTHdEcElGc00vQXpGSkREMEt1bFVv?=
 =?utf-8?Q?V6QPPIYn2JpFQzcdu1Au1nKM9?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 795a7bba-d2ee-4f22-b933-08da75f2887c
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2022 08:22:56.0787
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ztyTtaLYnS/0YejPWlx2WcdQ/xGKWIVsC9qKnDNULrVaI0kne8EmhnznQNHumst71hwfxKwDv+PLtOcvYKlVcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAP190MB0998
Message-ID-Hash: AWZZ2O4V3CBC43QJW46HYQ7FTV7ROZAP
X-Message-ID-Hash: AWZZ2O4V3CBC43QJW46HYQ7FTV7ROZAP
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Decreasing Power at Higher Frequencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AWZZ2O4V3CBC43QJW46HYQ7FTV7ROZAP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSGVucnksDQoNCk9uIDIwMjItMDgtMDQgMDY6MDUgKzAwMDAsIGhlbnJ5LnBvd2VsbC54eEBn
bWFpbC5jb20gd3JvdGU6DQo+IEkgZGVzaWduIGEgc3lzdGVtIG9uIEdOVSBSYWRpbyB3aXRoIFVT
UlAgYW5kIGNvZGVkIGl0IGluIFB5dGhvbi4gSSBhbQ0KPiBob3BwaW5nIGZyZXF1ZW5jeS4gVGhl
biBJIHJlc3RhcnQgdGhpcyBwcm9jZXNzLiBJIHNhdmUgYWxsIG1heC4gdmFsdWUNCj4gYXQgZGlm
ZmVyZW50IGZyZXF1ZW5jaWVzLiBJIGFtIHNoYXJpbmcgZGF0YXMgd2l0aCB5b3UuIEFsbCBkYXRh
IHlvdQ0KPiBjYW4gc2VlIGluIHRoaXMgZG9jdW1lbnQgSSB0YWtlIGNvbm5lY3Rpb24gd2l0aCBj
YWJsZS4gSSBtZWFuIEkNCj4gY29ubmVjdCBUWCBwb3J0IHRvIFJYIHBvcnQgd2l0aCBjYWJsZS4g
SSBrbm93IHBvc3NpYmxlIGRhbmdlcnMuDQo+IA0KPiBNeSBwcm9ibGVtIGlzIEkgZXhwZWN0IGFs
bCBkYXRhcyBhcmUgc2FtZSBldmVuIHRoZXkgZG9u4oCZdCBiZSBzYW1lDQo+IGZyZXF1ZW5jaWVz
LiBJIHdvdWxkIG5vdCBleHBlY3QgdGhlIGRCIGRpZmZlcmVuY2UgYmV0d2VlbiAxMDBNSHogYW5k
DQo+IDZHaHogYWxtb3N0IDQwZEIuDQoNCklNTywgdGhpcyBpcyBleHBlY3RlZC4NCklmIHdlIGNv
bnNpZGVyIHRoZSBGcmlpcyB0cmFuc21pc3Npb24gZXF1YXRpb24sDQppdCB0ZWxscyB1cyB0aGF0
IHRoZSByYXRpbyBiZXR3ZWVuIHRoZSBwb3dlciByZWNlaXZlZCBhbmQgdHJhbnNtaXR0ZWQNCmRl
Y3JlYXNlcyBpbiAyMOKLhWxvZ18xMChmKSBbZEJdLg0KRnJvbSAxMDAgTUh6IGZjIHRvIDYgR0h6
IGZjLCB3ZSBsb29zZSDiiYggMzYgZEIuDQoNClJlZ2FyZHMNCi0tIA0KDQpDw6lkcmljIEhhbm5v
dGllcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
