Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAB84A9E98
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 19:04:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 957E5385E8A
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 13:04:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="ldMwZBPv";
	dkim-atps=neutral
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0067.outbound.protection.office365.us [23.103.208.67])
	by mm2.emwd.com (Postfix) with ESMTPS id 06B20385E7F
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 13:03:37 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=JeeHB35+NxJuYYAB6b7yiyHrtD+9XHjDbZQjVG/M9kz0uXsc+RGHVrVua/lZt4xx8VAttcwMbG/Usg27aNQxBk6B7Yi2KZurL9NF9O8w79JESzVQetWYYy04TL5GVMZS7spCXC4KV6GFErVOwQfESRbWvUncfGPy4kwWkVsU8YlSFga00bh8Nf0mTUdfhq81n7ZyI0uLpTi8OWTv7VQN8WSW5RlXaKE0VZKk7J2rkXbsWbraCGPqWDi9LTpsk8OMQNcfGJTyT3q/MkDnwYjF6iwCOsw7F4j3+jl5XHfJAkpDJlBwefLNswTTNEq1W7QD+HHzJwAInz8Nv7K572X5xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DPgWXPJcQuAzuOxEm/VGX98KcSR7WQhTF9w2riEBrlw=;
 b=vJTfbAjzYRUbsUxEqrRoTURSr+yQPpVNsk22sh3/Vzg/fhLDe4XiZ6IDVVvc+fisc4/9SaeL45LkUh9GZHqbwa7fWGD675KIESfK1t13eE5soBVWu8XqT5tTa6fNjkJrO1UqEDBym/5jtj7PgNFEoH2DFc+wnq+puvFajNxSud9lr77kqfpw14M1+G+H6TCqiT40Ibq4qL3LJkQ6wb2aPLxzzJeIZ1NHRV8Jt75+hYCoExkpedG/Y79qjCKPptUIrFmef8prsEDV5oBYSbo2RqSMIgJxVK9ucqjTYOBYTjxalxy4VGRfwcYyNMLsYf+cth7wrzUapKMkdZS0IjnGWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPgWXPJcQuAzuOxEm/VGX98KcSR7WQhTF9w2riEBrlw=;
 b=ldMwZBPv1k4W7KS61QQGC3gi/SvP6GBQaWDE29EW6LyOqhjM14UWT7/Guso23vKnfGmYI99FHNZManvx8zBOcAKxtrxxwc/K1rAGgPG2BZO49cByuzMyW5t3p8q+RWRM4p6Fju7zXvz5tPs7OoSWEJt1gKK1uKmz5hCGP/QTyuKqzSXer0nbgIIzNynZHK7+pslHMnzoJDQ22SLrm+DV5W6ItgCFUUWgeEjfPusNam3qHP8SRswZAHZZdA655y5NUBiBCYywofUKMASt889Ih1A4rZSBcucqbtT4uKQgCmPYaKUBwYvGKfc8gbQyH1Gp6/bxV9JPG+JOO4UFSR1jwA==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Fri, 4 Feb
 2022 18:03:34 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870%2]) with mapi id 15.20.4951.016; Fri, 4 Feb 2022
 18:03:34 +0000
From: David Raeman <david@SynopticEngineering.com>
To: David Raeman <david@SynopticEngineering.com>, Jim Palladino
	<jim@gardettoengineering.com>, Dustin Widmann <dw2zq@virginia.edu>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: AQHYGeLJhXQImns6uEGxDA4tHuSCqayDkziAgAAMbDCAAA6HcA==
Date: Fri, 4 Feb 2022 18:03:34 +0000
Message-ID: 
 <PH1P110MB16658F1344FC1B3E38756972B7299@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
References: 
 <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
 <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAB__hTT+rMDuE_Z2G-WPfmL5pa4Gp8WuaxNM8hU2hxK77rwQZQ@mail.gmail.com>
 <MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12.prod.outlook.com>
 <425a8e78-fc35-7c7e-a036-87cc6e97408c@virginia.edu>
 <MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12.prod.outlook.com>
 <PH1P110MB16651B03DE879BD8955F7E96B7299@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH1P110MB16651B03DE879BD8955F7E96B7299@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 93f9ca29-e4ad-4b3a-17c0-08d9e808a921
x-ms-traffictypediagnostic: PH1P110MB1683:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB1683232AF21E8AD6C7115D29B7299@PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UpZ7I1wF20rzLl9tYNJSMLrnNtO6KJmCsKexZvC/ml0SzT6bajRgqFDcy7IC7HzBnXkt6CN56QIuK/UQ6SpASYPCOJj/REpzFeMW21sCjx3AzlQij9ulkw7o0hK1/Y3KLrlhD/DE6fcYdsVuoSc2Qauwc7SQYwuplc8KafdDcveXTaC30JYIQDmL8dEdFuQW0GdeTk5euTM0ckOXcvxynOLv1qZS+p3Szl00gjS8m1ZobHi03txNSJ3/bxq36Bn6Hje6UUyGU4t0mOklYl8Zk8WTjj/ees8AKbypPPgoSNkJGc8VpBQwE35TZCiqpmeAa41ijfVsCekIKemo1e6JJEqCxRWKPJ5CupaEWIeK4G9ugeZ7/puviO9mXNelQ4dfR7K5KGygS5bHsBeIV/2tTXqEJjjkcOsbM6+DP7FDdZeIxMBoJhoilHTu1t3cUBmyU91bDL4uRuGLujhIJ1RDdF0vjZUCZ+i64S8+1HadH4iqcTqlX+cVYunRujKjfH4SMTQFekEbh+XKmA7k6YEQeYieTvbZpooxkr1FrKGVEn5GEcPRLWEb38KBv7Flr07UMQGAy5sFSeAs+Hbh+wb5SEmuihzFiagKu0wUisiEd1zn5h3YiSfNtTHNtEwCCRvVV/Pkpp8E3dFqoKygS71g0w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(71200400001)(86362001)(508600001)(2906002)(33656002)(316002)(38100700002)(52536014)(55016003)(2940100002)(4744005)(186003)(110136005)(122000001)(7696005)(6506007)(8936002)(66446008)(76116006)(66946007)(66556008)(64756008)(66476007)(8676002)(83380400001)(38070700005)(5660300002)(9686003)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 wMDSLL4jNtiM9AYVyitsJdwaorLItBeY5JJ7w11n6POUSpWF9349XoYtjR1TfPSGQqkmlRiwhnbV4tYKrLO6DFzQKEZXwYkVXAGpeasnFAJPW0A/g3b7mXSZeUfQhaEUQ5nxomfI8ONiaHxdUvPOs2F+54ngiQuPC5OquW5FTLta/1/xxm9J+rwNNQxmsJJ572+KM7Y91ilm+jR/IB3Jpw==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 93f9ca29-e4ad-4b3a-17c0-08d9e808a921
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 18:03:34.3598
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1683
Message-ID-Hash: MTHV75LDW2DHB2AF5PWS55HWPCCDI7SS
X-Message-ID-Hash: MTHV75LDW2DHB2AF5PWS55HWPCCDI7SS
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FF5E5DLM6XTYANUL5MQBBAUFWPDY34WP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

.. Now that I look closely at test_timed_commands, I'm more confused. My understand of set_command_time is that it sets an FPGA register of the future time at which to process subsequent commands, but none of the calls will block. If the application wants to wait for the timed command to occur, the user code needs to include a manual sleep. So how are timed commands useful with UHD "get" functions, such as get_time_now in this test app?
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
