Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C89D7E3BB
	for <lists+usrp-users@lfdr.de>; Thu,  1 Aug 2019 22:05:02 +0200 (CEST)
Received: from [::1] (port=58940 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htHJs-000844-BL; Thu, 01 Aug 2019 16:05:00 -0400
Received: from mail-oln040092253075.outbound.protection.outlook.com
 ([40.92.253.75]:32416 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <snehasish.cse@live.com>)
 id 1htHJo-0007yp-Gt
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 16:04:56 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WiNHgLr5SJjRA4yuJ1vLq2bb1P9hQW54Zzx0YRkNwLbtplL2JSFGpnLKICfXT4s0irW3BEhrE5LstbcbfCZ1DA6XX3tugT3VeEDF47KEsTTZdFNOpc+SDjp4b7lG6+xgRJfPBpKv/3RU3Qr2bCqz7cKpZj1lPdCX/Vk4m1NQmYPLWzOq8WbLrW+WGfiS/qD+iMCyaEFhdU2m6zHeDOPB0lmiwhjml8spWg1/AtUkTlfdtKKL/Dqzk3UI5PxBURCEI3+r/dqMs1yg68urmgGKRUwoRos9xfgbMFp7R6WaVDD+KL84v6vWdEtnYU0W/CTn0U1aCPgpjzZg5SEKMnsKfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PgozqflmROKk41KBRugGHCdyWaKSEKk84XvOu3zkR6A=;
 b=jcuWLvYTUyCQ6zu1WK4NPqNI/XnU7o6tE6CEWLcxC0f1hU78YihHjeIrcn1Vuv4LMBY+uWOG7/kIfvPVDCevwmO5PN1+SHmjaqIImFxiOhyif2jAJIMi87F+fba4UBrEAxyBb5Tk2jJJiI9sxOcDwEf9eq2l/ZtS7qTKCLNAuoDDLC3l5gdQL+Car+OpbEmZwW4yU5vJo3lYwAxzNSK0Pwq3DY5QCBs6uonHEBolX5kJc38nu5Q8axwPXTzQrAMDAN7GYH7LVmFW9o26RwOBSJd9tovtp5S2AQosNSVZg7Run72na5aiDThAk2X8neo+nxqxWzc3QKNVSGPnl01Ihg==
ARC-Authentication-Results: i=1; mx.microsoft.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PgozqflmROKk41KBRugGHCdyWaKSEKk84XvOu3zkR6A=;
 b=hH11oiljeaM4OZmTqaN4rzE7Jz9NLh0HT4bREybXojmquiBsMAkWKcRz/7DoxoWkxRK9U6U25EJGRkq5/osNtclzWaX8X52JvMGXtmR9p6u8OQH2Gk07Vdt5FAuSQNODp+Uq1jbSbhTXyiHlUvWvFJsDgmXAptUqToh3zrkLmlliooIQ9qVKBPBESDrVLWqHfe8WpWtCWZWMH9FAY12WcdAdi6UxK98yliNI9hqnZT+1ESNzA+MLCeziqGLTJMvVR8D7QZy3yvp/gd5s1oiyiBMPtXh+OO1mseGsz4Xp+cRt4uPM8gaorkq6aU3CZwSKiVLSkqHPEPbuZ6vanjIS6w==
Received: from PU1APC01FT004.eop-APC01.prod.protection.outlook.com
 (10.152.252.59) by PU1APC01HT218.eop-APC01.prod.protection.outlook.com
 (10.152.252.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14; Thu, 1 Aug
 2019 20:04:13 +0000
Received: from MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM (10.152.252.56) by
 PU1APC01FT004.mail.protection.outlook.com (10.152.252.98) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14 via Frontend Transport; Thu, 1 Aug 2019 20:04:12 +0000
Received: from MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::dc85:9bf2:7b76:65ed]) by MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::dc85:9bf2:7b76:65ed%7]) with mapi id 15.20.2136.010; Thu, 1 Aug 2019
 20:04:12 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Status of Rfnoc pfb channelizer
Thread-Index: AQHVSKRJtIT/V8dSI0iTATrqJhjl1Q==
Date: Thu, 1 Aug 2019 20:04:12 +0000
Message-ID: <MAXPR0101MB16126AE6CB9EF13BE51CC15288DE0@MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:48F43B61F010E6B3C841C22A0D2E6C7131747185D07E2212AFF382859C468893;
 UpperCasedChecksum:1341E116A9FD896BB628D14B4118B0D24385D9038905171BC63A694A6708273C;
 SizeAsReceived:6597; Count:41
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [prNLhvMxUuUajhqBRbs8XpzRy9yAcRakyGI4a4DsPP4=]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:PU1APC01HT218; 
x-ms-traffictypediagnostic: PU1APC01HT218:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: o6kH6riXSVxeUrQgN9UkgD4+fdHQ30YAZ+z5RwFhV9D6h7fTiCH7YqUDN72xuY1z3IJHRUSocLVwWj4pUx0ayhzRgb/ksulsTMd/A3cwpjgC8/hteBt7wZneaopqu0jyTYk4fq8OiYiPcv0zsE3PckJwwnbV2hiywSS2J12Sj+p7x6b5CHBV+QlGsiBbgQUA
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 71afbd03-1d97-47b9-f61d-08d716bb6c5a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 20:04:12.4992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT218
Subject: [USRP-users] Status of Rfnoc pfb channelizer
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@live.com>
Content-Type: multipart/mixed; boundary="===============4648582487870529510=="
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

--===============4648582487870529510==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR0101MB16126AE6CB9EF13BE51CC15288DE0MAXPR0101MB1612_"

--_000_MAXPR0101MB16126AE6CB9EF13BE51CC15288DE0MAXPR0101MB1612_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gRXZlcnlvbmUNCg0KSGFzIGFueW9uZSB0cmllZCB0aGUgcmZub2MgYmFzZWQgcGZiIGNo
YW5uZWxpemVyIGluIHRoZSBldHR1cyBnaXRodWIgcmVwb3NpdG9yeShodHRwczovL2dpdGh1Yi5j
b20vRXR0dXNSZXNlYXJjaC9yZm5vYy1wZmItY2hhbm5lbGl6ZXIpLiBJcyBpdCBzdGFibGUgYW5k
IGNhbiBiZSBkaXJlY3RseSBiZSB1c2VkIG9yIHNvbWUgbW9kaWZpY2F0aW9ucyBhcmUgcmVxdWly
ZWQuDQoNClJlZ2FyZHMNClNuZWhhc2lzaA0KDQpTZW50IGZyb20gbXkgaVBhZA0K

--_000_MAXPR0101MB16126AE6CB9EF13BE51CC15288DE0MAXPR0101MB1612_
Content-Type: text/html; charset="utf-8"
Content-ID:  <F3DF4058BAFB6E44AB0220826CC913B2@sct-15-20-2032-17-msonline-outlook-a8adc.templateTenant>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGRpcj0iYXV0byI+DQpI
ZWxsbyBFdmVyeW9uZSZuYnNwOw0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+SGFzIGFueW9uZSB0
cmllZCB0aGUgcmZub2MgYmFzZWQgcGZiIGNoYW5uZWxpemVyIGluIHRoZSBldHR1cyBnaXRodWIg
cmVwb3NpdG9yeSg8YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC9yZm5v
Yy1wZmItY2hhbm5lbGl6ZXIiPmh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3Jmbm9j
LXBmYi1jaGFubmVsaXplcjwvYT4pLiBJcyBpdCBzdGFibGUgYW5kIGNhbiBiZSBkaXJlY3RseSBi
ZSB1c2VkIG9yIHNvbWUNCiBtb2RpZmljYXRpb25zIGFyZSByZXF1aXJlZC48L2Rpdj4NCjxkaXY+
PGJyPg0KPC9kaXY+DQo8ZGl2PlJlZ2FyZHM8L2Rpdj4NCjxkaXY+U25laGFzaXNoJm5ic3A7PC9k
aXY+DQo8ZGl2Pjxicj4NCjxkaXYgaWQ9IkFwcGxlTWFpbFNpZ25hdHVyZSIgZGlyPSJsdHIiPlNl
bnQgZnJvbSBteSBpUGFkPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_MAXPR0101MB16126AE6CB9EF13BE51CC15288DE0MAXPR0101MB1612_--


--===============4648582487870529510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4648582487870529510==--

