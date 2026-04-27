Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMyuJ54O72kq4wAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 09:22:06 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7C446E4A0
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 09:22:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 66AC7389808
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 03:22:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1777274524; bh=57mX6r2IECNhz1K4eO24KgiL/xDLIBhqeoEFaea7OJ8=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=z4jzVDvRgOcv3d/3+djPemtGJSWOxG6+VRMYYcY4cznXh1gxAMPP05fD9MrfeMa0c
	 XvAKMV0xAb2s4U6R/BsjdztBHg1WGQ2dH3B4VPo2jgqav1+oshdtvtUaIZsNk9Ki8I
	 CBMXLNVFDiN/PLd5IMwdHw2DLlx+sgi9YSlL5MXuumtm3uyj6bvGKOpRT8kzUWNxVO
	 8G1gpspV+SrNmL9uUMD3n6DVM16NbB0jS9y6JHCSmbdBEfl7k2taIMEWzCJQR7Uz61
	 1LquPJzSLGSD+XkfOFiqkJJ5y31uKKfuTOA/DckaNdprIeZAavvrWn/pYHwzWacjAt
	 KjiVKAfPEX1Mw==
Received: from ss11.activegate-ss.jp (ss11.activegate-ss.jp [223.27.119.26])
	by mm2.emwd.com (Postfix) with ESMTPS id D03CF3893FB
	for <usrp-users@lists.ettus.com>; Mon, 27 Apr 2026 03:21:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=mobicom.mn header.i=@mobicom.mn header.b="dwDJ8hWL";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=mobicomgroup.onmicrosoft.com header.i=@mobicomgroup.onmicrosoft.com header.b="Uq208JSK";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mobicom.mn;
	s=20181210163905; t=1777274483;
	bh=643TJ6gK23OvBd2g16SaemH4K7Ch9NWSykE1xeGjjhQ=;
	h=From:To:Subject:Date:Message-ID;
	b=dwDJ8hWLIN988Fp3HlOLGPKL09CuZ7ex0YEizGmzmqquOrXn9Uw+W0gwuQ2iXYABO
	 E/+UQ2veplGxZKqJkFUPP8rww9p4J7tqEwCQPZrrqspKJdoU1VZEfRFzHHXuAC9BNC
	 qRJNClOl83pjbWOesfn7pQ6htNd4rsoh4wgbUyA0=
Authentication-Results: ss11.activegate-ss.jp; dkim=pass header.d=mobicomgroup.onmicrosoft.com
Received: from mail.d.activegate-ss.jp (unknown [10.16.39.40]) (envelope sender: <amartuvshin.ch@mobicom.mn>)
	(not using TLS) by ss11.activegate-ss.jp (Active!gate) with ESMTP id bPLQ01611B;
	Mon, 27 Apr 2026 15:11:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C+zusZuGiZVV76+GqsY48w0n0f/kzCHrQUcletpTkPrz8M6Sit86h/6IE6ud/hSqin0Fo/4EBWVJm/SKFSCblvtndE+YeatUNyx7V/LizyRbHz8QKffL9PgHm8tie+kkynHyNpOsuUvbKpzoi0MBz2wiEidGNQGp2psFPG6TVbJeQ5yv3UnM8yyWkUxPZj0fLu4U+UstUpqCVQk+8WKom90ajzbAZ4/1qG0/g+ivJGIKpnUD7UhWFU+z0FtuiTKQz4mLwwpbbfQWy2l4qnOSZAsSrbRaGzDpPmVfQNzgDvJgrJowNfOWnHjb/7Di/BBdemmDpPQH0m+j/lmOndV60w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=643TJ6gK23OvBd2g16SaemH4K7Ch9NWSykE1xeGjjhQ=;
 b=naZrbUg1QRSBSTjXVPKa6PwSXSIpuP1ENP//5V1bq8PK8o4iQFM9Qy2BRH6brQcVO1NwxwGYdWAtvALsfGFCP/DjUx4jfzOziNGHZtYILi9+9bZPOpWlEZmPlKnl2nmIiNNvwuyBui9+qbSRdEyWtxyoKRzBtk/MSQ1vsS8MnttZ1iBYOBaI7K5mzll5YH5iYLAqfBuxA2F8bbSKx10x1flaDysZeD3+fgQz4h9MXuZb7b8v4hvvRkRvICp+IWKorKBGDWfq0VWYY0Yu8yqbQBvyxYRiHZ0nfhic82jKwzpjMm/Cqi0Rx7vynLzZ8N+DI8YOprn2pCONCNWdOaCPXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobicom.mn; dmarc=pass action=none header.from=mobicom.mn;
 dkim=pass header.d=mobicom.mn; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mobicomgroup.onmicrosoft.com; s=selector1-mobicomgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=643TJ6gK23OvBd2g16SaemH4K7Ch9NWSykE1xeGjjhQ=;
 b=Uq208JSK5jdESvhJDhjwqCeivKFTSGyIc+Rj+2VH058leBfpMUJMn/U8UFjdoNoHHQBQ6ijTwPhfLu+b+l6FyiQTHI6rKtlW4WkgULLqszNpl/h2NpLAJ1v3RcDYReUM3EXYWw1aimK5JtIVwORQmnVUUEtO0rjIe84pT6KhB5HSWKnRn4ASJqOdjpp7KBnmkvTIxOxuY34yPpma8ytIiOUP2dpvlUXB1wE2UXTot2AV4iCuWg2j6oApI97XzQ13MpaC0ThdIvnCSI7FwHB5zkXPhSk7ykwpVOhkaM5XIqFz4vkIDqRDgvUchdhTX/DGT4g6TBZH0HO7X+O5lbBUjg==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [B210] Power LED flashes and shuts off when using official Ettus
 external DC adapter
Thread-Index: AdzWFQXCK0M4lFfnQ12W8+KZV4HmGw==
Date: Mon, 27 Apr 2026 15:21:19 +0800
Message-ID: 
 <JH0PR06MB64780D9FC2538B94A429B3C0EE362@JH0PR06MB6478.apcprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobicom.mn;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: JH0PR06MB6478:EE_|SE3PR06MB8432:EE_
x-ms-office365-filtering-correlation-id: 861ad610-ac70-4023-51b5-08dea42c2afc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700021|8096899003|18002099003|56012099003;
x-microsoft-antispam-message-info: 
 E5SYwmkILiQ4gsHniGlzUxbJNIZtFupCk026huH2HYnsBjTxReKfjhOWyrgig4buGYI1TXhLFstSdzHzyyNnT8He9NWbMb97OWJeRqwiq3J4fRnOxeChPGCbOl/trIQZ94okYLWHclCL63QVp9HeA2FIS7Omwx5gmE62b/Fz67CMVUvqTQ1rJ91zrHdCkt5P+f9htdgJEFOZ8k3U6saEMpMa+yA11KSsadf1nrgXH03VeXLy1mE+nBPQ9C+HtCG2SkQyFXTF7OVgm4Onkc5p3PilNgPaHeyS7B3VTpCt5zzXsS/v2aT2P64OOVN3Wdnzj4nJK9OCMhixYdTyhzS1h44Zg8zLiZa6xp6RCyTPMPL0Cqyxd7HWHPfjdoAbM0cw8NhVao8q3tP7Vj//7t5czxXoe477g+tULL9O2AQXi4vedWxeAkgsM6nvjjFhRcxCxUCdZwtvIDFpFvLxJPiuWcMqedTe09L+xqA1Fv/ZesqGcRJEYS+CcTQtp76nEzzYTYQ4tQL7C74vN1N3Dju0AnPbiCPjnUMO606yc9AARteP04Hx9lDeBFKSf7HqAnpq8G3RYu6ubtnqzlJ1LR+M1LvxXA7SFi3IlTkdVc8won5OB9pfAA/nPNKswIMuBcnadU3DPBQeqFV26Z+6x+6uXzLJsEVY/ZzvExeZ3bAQ34ybHSH7nxsW4hJd+SEy2Vk1Y++a66AVzuX8OGPjQJ+z0UXHzOShqhl5g0sywm1tRci7+MHcW/V5RJfW6H4LqfVsM2j5RmVPHfpBRqSH+4Dsxas925kLED5Ney278NHWI0c=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:ja;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JH0PR06MB6478.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(8096899003)(18002099003)(56012099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-2022-jp?B?NkRPdS9EUVNZclZEL0ZDUFdXa2p5TEU0TVpVOVNYTkExVnVJYkc2TUdD?=
 =?iso-2022-jp?B?cjk5VExDR2kvcEVHSlNIcERSTHB6UHRERDF0dzB4TDJ6N2JEM1JNWVRk?=
 =?iso-2022-jp?B?dytYcDhwV1dUcFFiTjZob3EreFA2eVpwWVdMWGdDVVJPUE96OG1oSnBN?=
 =?iso-2022-jp?B?YVAzRDFwNWN6UVhBVW1EQlUzeVZNQnRDZmpqZ2FTdmJPZVU1b2ZYay9r?=
 =?iso-2022-jp?B?UitIcDNTNnJCbG1UU2pXOHhDdWgzRVI4WitHZjlHdkNOUE9oZ1dJWVBY?=
 =?iso-2022-jp?B?SDdqVnFDZ2tRRHZqS1JwUVNzWGoxYXZqRUlYN1JBSE1IQlFKYWM5Z0NU?=
 =?iso-2022-jp?B?cFlwVVBOQk1uVGhGMXNUSkNPaVdhVHpWaDNjdk0zeTVSYitYMHZGemp1?=
 =?iso-2022-jp?B?ZzhSdUxpUjgySzlwa1BaRENKNTVJL25TcHJKM0hNY3h6cHZVWlJSTkJq?=
 =?iso-2022-jp?B?RE9IR25rVlliTlZUS1dqSnlhUmU1ODJxa3ZzSTY2QmpyYkdBMWFvendy?=
 =?iso-2022-jp?B?S0JLMTNjNy8wZk04VzloM3BlTW5lODlIbk1MRkM4VDBCQVBXSEszenJl?=
 =?iso-2022-jp?B?Qm1iVnlBdWt5ZmhOTzJjU0NmOThRUk9xZHB5M0pmY2hIcCtVUng4aGp2?=
 =?iso-2022-jp?B?SmxNMVlSSUxhRFgrb0VoUUxzeEwxSW0rYk15a3pFWXlheStIMWZoSUZP?=
 =?iso-2022-jp?B?aTh3U0pOSEtQNHF5TXJhTUZiZHZZaXF6dkppOHZjWGdJd202V2wxbUZP?=
 =?iso-2022-jp?B?cDlacW5LWGdWSWNJa2U5c0hLbGpObzZmSWFnREcraFU2L2xVSnh3ak56?=
 =?iso-2022-jp?B?K000c2FzeFhTOTc2aTV0VU90OHRnNjROdmREWjRmRFRCaDd5MnB0R3lm?=
 =?iso-2022-jp?B?OXVuc3RRRUNCS1RTZGlBWTNBUUdtekgwbkkrOGxSVURoYUVjREtOTUlW?=
 =?iso-2022-jp?B?cTVjL3BBUldqSmlxcTBxSXhmVTNEYStHMWdmU0kvODQ4VEJUNjcyRnBU?=
 =?iso-2022-jp?B?RzN3dUM3eDRMT2w4cjVNYU5mSWcrcG1GMTlEcEVlT1FBT09VTnJuSXcz?=
 =?iso-2022-jp?B?d0pDVjBuTXlndEhJWmJrM1lZMTQyWWJmQ09GRk1xWjZaMkhKSTk4eG0x?=
 =?iso-2022-jp?B?TTNuTzBFbDNuVmdEVWVVdUg5WWJuODg5MFl2WWVnRjV6TjBGcU5pOTdE?=
 =?iso-2022-jp?B?NGJzY0NneWRpc2x1WHlnWDU2Vjc1UEdNeThxV2FZZVowTWswMlRFN0Rj?=
 =?iso-2022-jp?B?b1Rza3RNTWlDenRnbTYyckJvT1B4OW5wRDBJOCtseDE0VVlNYlh0TnAy?=
 =?iso-2022-jp?B?dCthV2Y0bUpQQ2VMd2RDcFI0ek5MaFQ5bUZ5L3FNU3JwczZVK2syMHJJ?=
 =?iso-2022-jp?B?M3BuZUJUYTcvNXJhMjF4UDJVc1NNRHU2Y1k4Q3QxRjdGU0hQc29FQjZH?=
 =?iso-2022-jp?B?enoxZ0xiNnVQVkpUVVFIQkM0Uk1pb2Q3b2hzaEgvTS9rVjFla2VhN292?=
 =?iso-2022-jp?B?ZERkSU9JRjBlL05LdTRVaVpHOGpXSENJbGtzZTBabG9sV1A2WWFnbnUx?=
 =?iso-2022-jp?B?VGVDWEhKZ3pFN3cwamVVSzA4THZpZkVrZnV4aGFsMmZFVnVZMi95b3c4?=
 =?iso-2022-jp?B?Uk51eVZVNTRFa2hYQllGaFBmS2lpdEJWemNmUDFOQlR0VnhxUTFVU1ZO?=
 =?iso-2022-jp?B?cS9IYTRyMmxoOGM3ZHJ2QS9qekRzeGs5UlMzbWE0aml0eDBaM0hVZFpu?=
 =?iso-2022-jp?B?VmlObC8xZU5TQUtYaE1naWwrMUFKMmFNVjZ4V0ZGOE9uQlkzb1VlL2dr?=
 =?iso-2022-jp?B?UVNiM0FabXZyV2s4LzRvamJMYlNNMmtsVmIvM0piRHVHcVFBenQxQVBu?=
 =?iso-2022-jp?B?Vm5kL2hBRk5iTG5qUFlRdk9WSHJkZEVRNmRDUjNReXE0OENRcHdWbEZJ?=
 =?iso-2022-jp?B?a0prK0t3VTNER1RrOVBrNitOak1KQVAzbjlCZ05HRmRGNHVLL1Fqdm9i?=
 =?iso-2022-jp?B?eDhpUDNzTHJUNUNhZ1NHV0NrU2ZiQTdLbk5LZnRnM0RzZHIrNXF6enJU?=
 =?iso-2022-jp?B?TDdHNHROY2QxQjNMYkNQNmw4OHZsMEdoREFrZVFibTBGcjduVzF3ZUtL?=
 =?iso-2022-jp?B?SVBQdlVnNXJPSWNac1JFdmJrblpNbmxqYVRhcW9uQ2xLVks1TXBDdVQz?=
 =?iso-2022-jp?B?K1VDa3FQSjd1MEJ5RUpCK1ZhYWd4ZE5OY2d0eWoxZ1ZEZUM3NW0wWEk1?=
 =?iso-2022-jp?B?Q3I2TjM2Z0dueG5MMHNQU1FmZGVDaER5ZllpdHdNTzBXekdyS0JYVTJy?=
 =?iso-2022-jp?B?SE5JOVZuUDhzOHZleWxhOG9NNWMzZHhmK2psd3dQMnhkSU1McWVqNDlX?=
 =?iso-2022-jp?B?eVNhMnNZODFwUUZzTWlEdjBQWlFNRGo3VkhiR211QXVVVkFEUXNzc1pE?=
 =?iso-2022-jp?B?K3JHMGxMV3dzQWkzUDJiL0lKOXFyWGRrbmpZVDFQbUJQS0d2eEY3cVl3?=
 =?iso-2022-jp?B?SXVlcml6NDhtQkVUNkYxdWU5VDlnM2duMDczZz09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	HpAGjOFuH+secXA+I21gZlTqiwqb4u970MtnE2uMwHFYLqw7nKh9gkIoSN0+CduRBvTWLTOQEjoXizKH8QR1is0m065vj2hhKATj5ljDAVT5I85d62qnl/cLdKEVdZCbqP8l6bNnBDRZPjJK7Dc4NWlB9yo+orNzLgK5rLXkOvbVW3W6c6U58K/H31AS6t7v77q+TTCEp/T0RFsYKaA+wK/QWKIBup197GM1ufRD6vlyXMuTFq9YB/pf7Gxy1+P9/SPvfRIQlT4xoXj46j2TpuxpdHPfOCCpfTYsF+C4x/aRF3vWPQGbfIx0HoeCp4LAEoOsD4ewBYVJHD4NVhjO6w==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	v8tZk45oc03fCuFVAdRjWwLfSjO8VnD8t7ol21ck2ivNk/+dadJ0FN293aneuzZfN26ENUuJD+f4ihkWyu3gDTmfkd8PpyTlkJxXvFw21RifAretry1xFYTngei2KySrYtKHf9qm4YP5vlp8RDniQmd6eYmxRg23aWu94JZNMqtXP50UKaZpVtHHYUFvuYFfBCZ7X6rvEB40fXVewsWaufA1za3x/Cbvi+o3VxgRbIwtUbcp4MeDus4wsEci7u3f5qWqieoOzyh0FKhscDDtCNSdNTgDH2cCl2fI0fUPpYItHZwIdji27h6Ix2UMd69vwpKKFrrev53rjl8HPdFyEtUZhW9pr3xfB0VbwqBq6yjxQHqexKfXi8lUmSnKEiLz6wl2t/R4Gp2x0bvPCbHA7LCHFLcKooTDIstznYdhE8iUwaX4PGBGtVc2bSOTYX7rBWwlkrTcyxYfIJdLnOqIt0LxCqvTwmuh+QfBGJDI/kjfG0/Gcc9Isv1Dd9yNHYGzhrIMpEHiPPhMKgYTXZTy1hyao6ZHX6J7A4YeKyRPsNKvykfyl+cdUZD6v9kmaX04jaiMlvoapZkBqmDjhl+wfngHfKlKQtLMIGV71SFT2AfKBW150ZIQkguh+BT6+JUTDzmoFJrfk9qBXhVxX/brwoiV0ytu0MD5XhVsbMDPrBM=
X-OriginatorOrg: mobicom.mn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: JH0PR06MB6478.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 861ad610-ac70-4023-51b5-08dea42c2afc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 07:11:13.9457
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ca63e652-8b2e-4e0e-8b69-1fd46774bdeb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vumHLPlBN5h+HQJ9ZBXwOh21VgWtzpuFnSTPB6VKNbKge/GdkmHREAOpzASAOA8KKBVcQcUDbcuQJLC50EHhU9ZJmTTu99RTXg/UCBPM+d0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SE3PR06MB8432
Message-ID-Hash: XVHL6ZFRTW7YVUMLRSMZB374L25RLOGE
X-Message-ID-Hash: XVHL6ZFRTW7YVUMLRSMZB374L25RLOGE
X-MailFrom: amartuvshin.ch@mobicom.mn
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [B210] Power LED flashes and shuts off when using official Ettus external DC adapter
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KN33LNKJFU4EXWB57Y6DWY567H7T63UQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Amartuvshin Chagnaadorj via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Amartuvshin Chagnaadorj <amartuvshin.ch@mobicom.mn>
Content-Type: multipart/mixed; boundary="===============8864416305465646790=="
X-Rspamd-Queue-Id: BE7C446E4A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	R_DKIM_PERMFAIL(0.00)[mobicom.mn:s=20181210163905];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[ettus.com];
	TO_EQ_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[amartuvshin.ch@mobicom.mn];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[mobicomgroup.onmicrosoft.com:s=selector1-mobicomgroup-onmicrosoft-com];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,mobicom.mn:~,mobicomgroup.onmicrosoft.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,mobicom.mn:replyto,JH0PR06MB6478.apcprd06.prod.outlook.com:mid]

--===============8864416305465646790==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_JH0PR06MB64780D9FC2538B94A429B3C0EE362JH0PR06MB6478apcp_"

--_000_JH0PR06MB64780D9FC2538B94A429B3C0EE362JH0PR06MB6478apcp_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi all,
I am experiencing a power issue with two USRP B210 devices when using the o=
fficial external DC power adapters provided by Ettus Research for the B210.
Setup:

  *   2x USRP B210
  *   2x official Ettus-supplied external DC power adapters (CUI Inc, 5.9V =
~ 6V, 4A, 23.6W, barrel jack)
  *   USB connection: USB 3.0
Problem:

  *   When I connect the external DC adapter, the blue power LED briefly tu=
rns on and then immediately turns off
  *   The device does not stay powered on
Observations:

  *   Measured adapter output: ~5.9V using a multimeter (no load)
  *   Tried both adapters on both B210 devices =1B$B"*=1B(B same behavior
  *   When powered via USB, both devices work normally
  *   The same behavior occurs even when GPSDO is not installed
My intended use case is to use GPSDO/GPS synchronization, which is why I ne=
ed stable external power.
Questions:

  1.  Should the B210 be able to power on and remain on using only the exte=
rnal adapter?
  2.  Could this still be related to voltage drop or transient current unde=
r load, even with official adapters?
  3.  Are there any known issues or configuration requirements for using ex=
ternal power on B210?
  4.  What debugging steps would you recommend?
Any suggestions would be greatly appreciated.
Thanks.

=1B$B'.'o'U'o'T'U'o']=1B(B

=1B$B'?'_'o'g=1B(B?? =1B$B'h'Q'g'Z'^=1B(B =1B$B'j'e'e'U'Q'_=1B(B =1B$B'_'n=
=1B(B (=1B$B'g'Q'S'c'b'Q']'d'e'e'U'm'_=1B(B =1B$B'g'Q'^'d=1B(B) =1B$B'Y=1B(=
B?=1B$B'S'g=1B(B?=1B$B'_=1B(B =1B$B'o'_'o'g=1B(B?? =1B$B'^'o'U'o'o']']'Z'['=
T=1B(B =1B$B'g'Q'q'T']'Q'c'Q'_=1B(B, =1B$B'g=1B(B?=1B$B']'o'o'_=1B(B =1B$B'=
Q'S'Q'g=1B(B =1B$B'o'b'g=1B(B =1B$B'R=1B(B?=1B$B'g'Z'[=1B(B =1B$B'o'd'T'o'o=
'U'o'U=1B(B =1B$B'Y'`'b'Z'e']'Q'T'U'c'Q'_=1B(B =1B$B'R'`']'_'`=1B(B. =1B$B'=
5'T=1B(B =1B$B'h'Q'g'Z'^=1B(B =1B$B'j'e'e'U'Q'_'U=1B(B =1B$B'Q'T'e'e']'Q'T'=
U'c'Q'_=1B(B =1B$B'^'o'U'o'o']'o']=1B(B =1B$B'_'n=1B(B =1B$B'g'e'e']'Z'Q'b=
=1B(B =1B$B'g'Q'^'T'Q'Q']'Q'T'U'c'Q'_=1B(B, =1B$B'_'e'e'h']'Q']'m'_=1B(B =
=1B$B'Y'o'b'o'T'd'o'[=1B(B =1B$B'R=1B(B?=1B$B'T=1B(B??=1B$B'U=1B(B =1B$B'Q'=
]'Z'S'Q'Q=1B(B =1B$B'c'Q'_'Q'^'c'Q'b'T=1B(B?=1B$B'[=1B(B =1B$B'd'`'g'Z'`']'=
U'`']'`'`'b=1B(B =1B$B'd'Q'_'U=1B(B =1B$B'Z']'T'o'o'T'U'c'o'_=1B(B =1B$B'i=
=1B(B =1B$B'g'e'e']'Z'Q'b=1B(B =1B$B'g'Q'^'T'Q'Q']'Q'T'U'c'Q'_=1B(B =1B$B'o=
'b'g=1B(B =1B$B'_'n=1B(B ??=1B$B'b'i']=1B(B?=1B$B'T'U=1B(B?=1B$B'g'T=1B(B?=
=1B$B'[=1B(B =1B$B'p'^=1B(B. =1B$B'7'o'b'o'S=1B(B =1B$B'd'Q=1B(B =1B$B'e'T=
=1B(B =1B$B'h'Q'g'Z'^=1B(B =1B$B'j'e'e'U'Q'_'T=1B(B =1B$B'g'Q'q'T']'Q'_=1B(=
B =1B$B'Z']'T'o'o'c'o'_=1B(B =1B$B'g=1B(B?=1B$B']'o'o'_=1B(B =1B$B'Q'S'Q'T'=
i=1B(B =1B$B'R'Z'j=1B(B =1B$B'R'`']=1B(B =1B$B'o'_'o'g=1B(B?? =1B$B'h'Q'g'Z=
'^=1B(B =1B$B'j'e'e'U'Q'_'T=1B(B =1B$B'Z']'T'o'o'T'i'Z'U=1B(B =1B$B'g'Q'b'Z=
'e=1B(B =1B$B'h'Q'g'Z'^=1B(B =1B$B'j'e'e'U'Q'_=1B(B =1B$B'Z']'T'o'o'g=1B(B =
=1B$B'Y'Q'^'Q'Q'b=1B(B =1B$B'^'o'U'o'T'U'o'X=1B(B, =1B$B'Z']'T'o'o'T'U'c'o'=
_=1B(B =1B$B'R'`']'`'_=1B(B =1B$B'g'Q'b'Z'e=1B(B =1B$B'h'Q'g'Z'^=1B(B =1B$B=
'j'e'e'U'Q'_'T=1B(B ??=1B$B'b'Z'['_=1B(B =1B$B'c'Z'c'd'V'^'o'o'c=1B(B =1B$B=
'_'o'_=1B(B =1B$B'U'Q'b'e'[=1B(B =1B$B'e'c'd'T'Q'g=1B(B =1B$B'Q'b'T'Q=1B(B =
=1B$B'g'o'^'X'o'o'T=1B(B =1B$B'Q'S'_'Q=1B(B =1B$B'e'e=1B(B. =1B$B'4=1B(B??=
=1B$B'_'i']'o'_=1B(B =1B$B'o'_'o'g=1B(B?? =1B$B'Y'Q'g'Z'U'Q']'U=1B(B =1B$B'=
Q'T'e'e']'Q'T'U'c'Q'_=1B(B =1B$B'^'o'U'o'o']']'Z'['T=1B(B =1B$B'Q']'Z'S'Q'Q=
=1B(B =1B$B'g'o']'R'o'b'o'o'b=1B(B =1B$B'Y'Q'U'b'e'e']'Q'g=1B(B, =1B$B'g'e'=
e']'R'Q'b']'Q'g=1B(B, =1B$B'R'e'c'U'Q'U=1B(B =1B$B'd'Q'b'Q'Q'g=1B(B =1B$B'R=
'`']'`'_=1B(B =1B$B'e'T=1B(B =1B$B'^'o'U'o'o']'o']'d'o'[=1B(B =1B$B'g'`']'R=
'`'`'d'`'[=1B(B =1B$B'q'^'Q'b'S'Q'Q=1B(B =1B$B'_'o'T'o'_=1B(B ?=1B$B'[']'U'=
o']=1B(B =1B$B'g'Z'['g=1B(B, =1B$B'o'c=1B(B ?=1B$B'[']'U'o'g=1B(B =1B$B'Y'o=
'b'o'T=1B(B =1B$B'g'e'e']'n=1B(B =1B$B'R'e'c=1B(B =1B$B'R=1B(B?=1B$B'T=1B(B=
??=1B$B'U=1B(B =1B$B'g'`'b'Z'`'d'`'[=1B(B =1B$B'p'^=1B(B.

Disclaimer

This email (including any attachments) is intended only to be read and used=
 by the addressee. It may contain confidential or legally privileged inform=
ation, which is not waived if it is mistakenly delivered to you. If you are=
 not the intended recipient, please immediately notify the sender by return=
 email and delete both messages from your system; any disclosure, copying, =
distribution, or any action taken or omitted to be taken in reliance on it,=
 is prohibited and may be unlawful.

--_000_JH0PR06MB64780D9FC2538B94A429B3C0EE362JH0PR06MB6478apcp_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
p.isselectedend, li.isselectedend, div.isselectedend
	{mso-style-name:isselectedend;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:249044163;
	mso-list-template-ids:692352618;}
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
	{mso-list-id:599530285;
	mso-list-template-ids:-1829186078;}
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
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:721903369;
	mso-list-template-ids:1514971912;}
@list l3
	{mso-list-id:1794012495;
	mso-list-template-ids:1535699632;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I am experiencing a power issue with two USRP B210 devices when us=
ing the official external DC power adapters provided by Ettus Research for =
the B210.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Setup:<o:p></o:p></p>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l1 level1 lfo1">
2x USRP B210<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto;mso-list:l1 level1 lfo1">
2x official Ettus-supplied external DC power adapters (CUI Inc, 5.9V ~ 6V, =
4A, 23.6W, barrel jack)<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso=
-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l1 level1 lfo1">
USB connection: USB 3.0<o:p></o:p></li></ul>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Problem:<o:p></o:p></p>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l3 level1 lfo2">
When I connect the external DC adapter, the blue power LED briefly turns on=
 and then immediately turns off<o:p></o:p></li><li class=3D"MsoNormal" styl=
e=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3 level1 =
lfo2">
The device does not stay powered on<o:p></o:p></li></ul>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Observations:<o:p></o:p></p>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level1 lfo3">
Measured adapter output: ~5.9V using a multimeter (no load)<o:p></o:p></li>=
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level1 lfo3">
Tried both adapters on both B210 devices =1B$B"*=1B(B same behavior<o:p></o=
:p></li><li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto;mso-list:l0 level1 lfo3">
When powered via USB, both devices work normally<o:p></o:p></li><li class=
=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;=
mso-list:l0 level1 lfo3">
The same behavior occurs even when GPSDO is not installed<o:p></o:p></li></=
ul>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">My intended use case is to use GPSDO/GPS synchronization, which is=
 why I need stable external power.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Questions:<o:p></o:p></p>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l2 level1 lfo4">
Should the B210 be able to power on and remain on using only the external a=
dapter?<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso-margin-top-alt:=
auto;mso-margin-bottom-alt:auto;mso-list:l2 level1 lfo4">
Could this still be related to voltage drop or transient current under load=
, even with official adapters?<o:p></o:p></li><li class=3D"MsoNormal" style=
=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2 level1 l=
fo4">
Are there any known issues or configuration requirements for using external=
 power on B210?<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2 level1 lfo4">
What debugging steps would you recommend?<o:p></o:p></li></ol>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Any suggestions would be greatly appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Thanks.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div id=3D"footer" style=3D"background-color:#D5EAFF; border:1px solid #003=
333; padding:.7em; ">
<span style=3D"font-size:12pt;font-weight:bold; font-family: 'times new rom=
an'; color:#ff0000;">=1B$B'.'o'U'o'T'U'o']=1B(B</span><br>
<p style=3D"font-size:10pt;text-align:justify; line-height:10pt; font-famil=
y: 'times roman';">
=1B$B'?'_'o'g=1B(B&#1199;&#1199; =1B$B'h'Q'g'Z'^=1B(B =1B$B'j'e'e'U'Q'_=1B(=
B =1B$B'_'n=1B(B (=1B$B'g'Q'S'c'b'Q']'d'e'e'U'm'_=1B(B =1B$B'g'Q'^'d=1B(B) =
=1B$B'Y=1B(B&#1257;=1B$B'S'g=1B(B&#1257;=1B$B'_=1B(B =1B$B'o'_'o'g=1B(B&#11=
99;&#1199; =1B$B'^'o'U'o'o']']'Z'['T=1B(B =1B$B'g'Q'q'T']'Q'c'Q'_=1B(B, =1B=
$B'g=1B(B&#1199;=1B$B']'o'o'_=1B(B =1B$B'Q'S'Q'g=1B(B =1B$B'o'b'g=1B(B =1B$=
B'R=1B(B&#1199;=1B$B'g'Z'[=1B(B =1B$B'o'd'T'o'o'U'o'U=1B(B =1B$B'Y'`'b'Z'e'=
]'Q'T'U'c'Q'_=1B(B =1B$B'R'`']'_'`=1B(B. =1B$B'5'T=1B(B =1B$B'h'Q'g'Z'^=1B(=
B =1B$B'j'e'e'U'Q'_'U=1B(B =1B$B'Q'T'e'e']'Q'T'U'c'Q'_=1B(B =1B$B'^'o'U'o'o=
']'o']=1B(B =1B$B'_'n=1B(B =1B$B'g'e'e']'Z'Q'b=1B(B =1B$B'g'Q'^'T'Q'Q']'Q'T=
'U'c'Q'_=1B(B, =1B$B'_'e'e'h']'Q']'m'_=1B(B =1B$B'Y'o'b'o'T'd'o'[=1B(B =1B$=
B'R=1B(B&#1257;=1B$B'T=1B(B&#1257;&#1257;=1B$B'U=1B(B =1B$B'Q']'Z'S'Q'Q=1B(=
B =1B$B'c'Q'_'Q'^'c'Q'b'T=1B(B&#1199;=1B$B'[=1B(B =1B$B'd'`'g'Z'`']'U'`']'`=
'`'b=1B(B =1B$B'd'Q'_'U=1B(B
 =1B$B'Z']'T'o'o'T'U'c'o'_=1B(B =1B$B'i=1B(B =1B$B'g'e'e']'Z'Q'b=1B(B =1B$B=
'g'Q'^'T'Q'Q']'Q'T'U'c'Q'_=1B(B =1B$B'o'b'g=1B(B =1B$B'_'n=1B(B &#1257;&#12=
57;=1B$B'b'i']=1B(B&#1257;=1B$B'T'U=1B(B&#1257;=1B$B'g'T=1B(B&#1199;=1B$B'[=
=1B(B =1B$B'p'^=1B(B. =1B$B'7'o'b'o'S=1B(B =1B$B'd'Q=1B(B =1B$B'e'T=1B(B =
=1B$B'h'Q'g'Z'^=1B(B =1B$B'j'e'e'U'Q'_'T=1B(B =1B$B'g'Q'q'T']'Q'_=1B(B =1B$=
B'Z']'T'o'o'c'o'_=1B(B =1B$B'g=1B(B&#1199;=1B$B']'o'o'_=1B(B =1B$B'Q'S'Q'T'=
i=1B(B =1B$B'R'Z'j=1B(B =1B$B'R'`']=1B(B =1B$B'o'_'o'g=1B(B&#1199;&#1199; =
=1B$B'h'Q'g'Z'^=1B(B =1B$B'j'e'e'U'Q'_'T=1B(B =1B$B'Z']'T'o'o'T'i'Z'U=1B(B =
=1B$B'g'Q'b'Z'e=1B(B =1B$B'h'Q'g'Z'^=1B(B =1B$B'j'e'e'U'Q'_=1B(B =1B$B'Z']'=
T'o'o'g=1B(B =1B$B'Y'Q'^'Q'Q'b=1B(B =1B$B'^'o'U'o'T'U'o'X=1B(B, =1B$B'Z']'T=
'o'o'T'U'c'o'_=1B(B =1B$B'R'`']'`'_=1B(B =1B$B'g'Q'b'Z'e=1B(B =1B$B'h'Q'g'Z=
'^=1B(B =1B$B'j'e'e'U'Q'_'T=1B(B &#1257;&#1257;=1B$B'b'Z'['_=1B(B =1B$B'c'Z=
'c'd'V'^'o'o'c=1B(B =1B$B'_'o'_=1B(B
 =1B$B'U'Q'b'e'[=1B(B =1B$B'e'c'd'T'Q'g=1B(B =1B$B'Q'b'T'Q=1B(B =1B$B'g'o'^=
'X'o'o'T=1B(B =1B$B'Q'S'_'Q=1B(B =1B$B'e'e=1B(B. =1B$B'4=1B(B&#1199;&#1199;=
=1B$B'_'i']'o'_=1B(B =1B$B'o'_'o'g=1B(B&#1199;&#1199; =1B$B'Y'Q'g'Z'U'Q']'U=
=1B(B =1B$B'Q'T'e'e']'Q'T'U'c'Q'_=1B(B =1B$B'^'o'U'o'o']']'Z'['T=1B(B =1B$B=
'Q']'Z'S'Q'Q=1B(B =1B$B'g'o']'R'o'b'o'o'b=1B(B =1B$B'Y'Q'U'b'e'e']'Q'g=1B(B=
, =1B$B'g'e'e']'R'Q'b']'Q'g=1B(B, =1B$B'R'e'c'U'Q'U=1B(B =1B$B'd'Q'b'Q'Q'g=
=1B(B =1B$B'R'`']'`'_=1B(B =1B$B'e'T=1B(B =1B$B'^'o'U'o'o']'o']'d'o'[=1B(B =
=1B$B'g'`']'R'`'`'d'`'[=1B(B =1B$B'q'^'Q'b'S'Q'Q=1B(B =1B$B'_'o'T'o'_=1B(B =
&#1199;=1B$B'[']'U'o']=1B(B =1B$B'g'Z'['g=1B(B, =1B$B'o'c=1B(B &#1199;=1B$B=
'[']'U'o'g=1B(B =1B$B'Y'o'b'o'T=1B(B =1B$B'g'e'e']'n=1B(B =1B$B'R'e'c=1B(B =
=1B$B'R=1B(B&#1257;=1B$B'T=1B(B&#1257;&#1257;=1B$B'U=1B(B =1B$B'g'`'b'Z'`'d=
'`'[=1B(B =1B$B'p'^=1B(B.
</p>
</div>
<div id=3D"footer" style=3D"background-color:#D5EAFF; border:1px solid #003=
333; padding:.7em; ">
<span style=3D"font-size:12pt;font-weight:bold; font-family: 'times new rom=
an'; color:#ff0000;">Disclaimer</span><br>
<p style=3D"font-size:10pt;text-align:justify; line-height:10pt; font-famil=
y: 'times roman';">
This email (including any attachments) is intended only to be read and used=
 by the addressee. It may contain confidential or legally privileged inform=
ation, which is not waived if it is mistakenly delivered to you. If you are=
 not the intended recipient, please
 immediately notify the sender by return email and delete both messages fro=
m your system; any disclosure, copying, distribution, or any action taken o=
r omitted to be taken in reliance on it, is prohibited and may be unlawful.
</p>
</div>
</body>
</html>

--_000_JH0PR06MB64780D9FC2538B94A429B3C0EE362JH0PR06MB6478apcp_--

--===============8864416305465646790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8864416305465646790==--
