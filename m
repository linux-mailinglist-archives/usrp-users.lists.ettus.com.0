Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B189683A33
	for <lists+usrp-users@lfdr.de>; Wed,  1 Feb 2023 00:04:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 12A0B38400C
	for <lists+usrp-users@lfdr.de>; Tue, 31 Jan 2023 18:04:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675206295; bh=9n7Q/4uUZZ7jYbBRudl4u1wisIHMWXFLT7Ru8DVePKo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nbHmd8SbVXY3b3R1VjFWP9a7LRsrGWlOrp5Oxmw8VvY2/G0EEvVCn1FSs9lOwDCPi
	 6hbyy/b37L5/e9G1+BrUGkfNBj/gmXiopzjWznGj0Hc+QRU/C/6CdKhCwGqV3tfcXZ
	 rA1ZesIYPMhW5YG9TZPrlTm4oEFkll9XdeRr8HfjkXp9vtUF7FQ+JHcg9I7y8bKjyS
	 /+gV70ZofBdCuACM+Hgp1ocTQaex8mQE7GBvJ5mtX8IDiiM9V4MT3Wa1zetnN/7M4s
	 sEkesHEmBDhtsxGk9eM7YoQtl4zbv3JEiM7bcZS73hYLhy+ieIiFBUG6F3wgZjn4XZ
	 CB20swFfNjG5Q==
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2054.outbound.protection.outlook.com [40.107.243.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 33C74383E84
	for <usrp-users@lists.ettus.com>; Tue, 31 Jan 2023 18:04:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="mTHfLeYO";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MJLv3s1oIDnjbG9OfW2ra4J9vOmpFxWnZ5jE2m5YeLKbTTMBXGHaNGx0OUs4cPYcU4vKPZHa+0z45XK+QMkJe2qKE3fZWSyuXQYr8Ln8YJGk1+VptnJm+ULYZw08ZViGgCMprxbbY6kJKGGr8v3KKGVSbDeWd7EFVIJ51LujUQ/OtQXHSgSSsfCQwbqab+t1g+dc2cwuOrDeLtmeOicLmfe/O1KE9iwgCua85KAIcr2PuJlBwwG2UP+oVkITfJ72QKFQ0XlqOOLwNf3LBqDA/XK2SlxAtBt65aRMsdAm3YlG/gBM3Gm7keBa4Q1tUT5dWPZwO1ztA7CxCUinUfHIzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H1gCfU/bDyFYa2rgfBfAigsJ98dG2ENa4/G7uBODE9s=;
 b=edQYrngXPl/pgw1XvFlEMLIjSCtWaZQWzW9cFl6BgMEPSTB5OgVnT4OPgx3zYwTgkZXAMXUgOBpW1zq1ePzB7jX5T8V0WqbBASDGAB6NbzKU+NfpaY7EwhhKxLZ0NS/W2utRkN/Cj0eWyk8yJV5Rjcfmb2K1OAYp18Hs3R9Yud37cV3vX16THN26OmDNm1ZnMfoEGtuXOb3P0hCcZF9wRl7OGowG9e6M+NZD5XxvMDjWoYDEZpbsUk7I6qVkIm/sKvqn8brPy629x40KMiy/D//DRutdjBaMEHpXrOfzgQr6dAm5AZ6YfERpBw4q9b2MN632TPOST2jC6g5GEFTgGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H1gCfU/bDyFYa2rgfBfAigsJ98dG2ENa4/G7uBODE9s=;
 b=mTHfLeYOJUUtXZYyUDSTRgnGF7n7SWf+7rtJ1qhArBci3uN0Vi+67TEFSjIm6cX/KQAqag4dzmGcXR/gZcksn83iMdQz+9Ya1zcDoCSjAzbgRPzASBP0xXPdXsw7jcz1KKYo4dL3x/nqUrv85BE8KHn+7TQMIs+l13bA1tN75NI4qgJrUT0Z+WbD6mdFmXBFwVkBXtFYi/4LkolTM4IwNrXDevz2Iin3AoBI/c2s1FnpZXefnvqpNk/PGgNmJIHotankwHvR6BSZE83LQVwabGVRtlb/qSFe1adkaMSGc5jl6wvEZ5poP7sB3eAiqBdOedmqEKTDL1ZgTUQVm6dx0g==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by DM4PR03MB5999.namprd03.prod.outlook.com (2603:10b6:5:38a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Tue, 31 Jan
 2023 23:04:46 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::b0ce:a57b:7946:39b5]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::b0ce:a57b:7946:39b5%7]) with mapi id 15.20.6002.033; Tue, 31 Jan 2023
 23:04:46 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "jmaloyan@umass.edu" <jmaloyan@umass.edu>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Error when synthesizing example OOT block : IP
 "cmplx_mul" is locked
Thread-Index: AQHZNcJJ+zOZIyLwc0quNEfWmSQD5q65HhxM
Date: Tue, 31 Jan 2023 23:04:45 +0000
Message-ID: 
 <BYAPR03MB4678F59BE3B3272608F8DB42D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
References: <UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ@lists.ettus.com>
 <BYAPR03MB467853DF27EFC17161E17D86D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
 <BYAPR03MB467806254313359B175385A6D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: 
 <BYAPR03MB467806254313359B175385A6D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|DM4PR03MB5999:EE_
x-ms-office365-filtering-correlation-id: 29acfa92-9b09-41c5-0544-08db03df8baf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 S5297v53uw1wzyBDAlA2PE0STsqMhvRlbKZBjASB9tHhycEKHqSYd9vtoX9g9dlKbbGwJV3mhgXgjWofzbWCTyD4BFb5Ors8gClvyEYoJ9D7+swDk0n38zgqSkQrFkEQ0YG7U2+NI18tNCanCuCPimEBs+w1NI86++Zhj3Et4bMGoEZzKmVXHiOtVdyxxL2kqk6zP4hPVf1sKsLlK8/QBkYm0rrNbV5UqktuYqeTV0tM8kt9yN+QveAUsDizCBo64YX0ym61VLMp11eI/ybjqD9b65MikvRGYlSitsEy4VcKLACN01WIvRYgVuIca9pF/dHT3b09RVGss78U+o+Un2DI5s2hAizpZUbnveYxXU24lGSCtWpAIB8brm/fywB9Hx2Fc7Q9iCzQTMF3d37IZIMlHmZpxOBgSXolt6c1nTFz/yCqSL2PkIP5WNNlxX6k0tVQbulRMDWvMPfBdrSm7z8pbH7Uyrg3tcuJnjNFIC8C9PT87bHDvEWDvEv24eXKwqSM8i/UC3w4pkk8Z4z0V+O0d54N0OFmyi4i+0j4Z6SZrJ81h8jRlsT/EeAl8jmIxCcKjrbN6qXiiloq8DezkAzlUlgmeZwGmygmRd2aYuZxmOxNfJD7I1osvLJfhIlrIJwxWYOxeZb9rKTKRZbvGJAklwJGGn/myudKruAKDOUzUnJQnncNtNTdymoQR1m8jbBo0EAlfz7gJ6lkCQP2gkZBKLDTtmvuA8beskPFXqs=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(346002)(136003)(366004)(376002)(39860400002)(451199018)(19627405001)(5660300002)(52536014)(2906002)(8936002)(41300700001)(76116006)(64756008)(83380400001)(66446008)(66946007)(66476007)(91956017)(8676002)(66556008)(75432002)(53546011)(7696005)(110136005)(966005)(478600001)(33656002)(71200400001)(6506007)(2940100002)(9686003)(26005)(186003)(55016003)(19627235002)(38100700002)(86362001)(122000001)(786003)(166002)(41320700001)(38070700005)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?kgg2p58bZ76WZw5lq4nJXq8w4S0/1KCgGdltf6R2LL1L7AEn+JkuYAUE?=
 =?Windows-1252?Q?n+oHvlp3CkFCyp8T3UqVoaTOhRzf1X+N+7/OapbLMa8f/0MUAgRHor2L?=
 =?Windows-1252?Q?BtziCTaXZ6m/OsiMfSlVd5QGR0C1wQlt/BoLwhtu/uAzp4fFGXP9FeKS?=
 =?Windows-1252?Q?JjkHPlqMjABTPcWbk/bIYwVHsBEtN3nzBDoipdNqPn5Y5v9IZ4SnyMHA?=
 =?Windows-1252?Q?qnLPhp8/1srE9eQbRhUoee/BZGOnomovYbl3l6qc1Ufhv/evJHGzkZCN?=
 =?Windows-1252?Q?MBassOpaF5Bvw9EX36uedj9hwUXLNSYShdVJoA6XySIsbzWAFENjYs6O?=
 =?Windows-1252?Q?nffskoukP3RpQHgOiGBvPHyjfaFMI56/PMdclPcgbdyAiJRK0ZMXMKCV?=
 =?Windows-1252?Q?yBfyYknCphhHivPj8wWix835IMmGQEWW5jguuCp322LazpS7si9OiL8f?=
 =?Windows-1252?Q?3Kgrs49WpkX/pHwR1RDRJ3hleFCuAQ/ruAG+pJkOrUz4bImGCci3eyRm?=
 =?Windows-1252?Q?o3EDOPiP2PGXoIMXP6vwA1h0eAwWXbJVTLTWz/7d5hFEelPs//NTaCA5?=
 =?Windows-1252?Q?XgE4PipTxSmrK3T8iCAx4PQ8LTQQOJ3UE8dCwqpcMTevfI0/lgYTT4j1?=
 =?Windows-1252?Q?DknMqkNkYF9O7cjaMjiI66WP88VtHyMdXtBF/2VBJ+07Ub1nXerWU2tj?=
 =?Windows-1252?Q?0i+TyBvAjWNNxHznebE0Cgh+4Y4mfVrLgsOInQ5hfAEovGb91RZrBpf2?=
 =?Windows-1252?Q?WNtuZF1SVJGFikNcBikRVxvBr6g1NcTWYsGBPsOukgZWxk2rf+8VI61u?=
 =?Windows-1252?Q?lIjLZXMU8FvHofKEly8fqs86+YjIGNYcURPo5wnm6aZBnwJItwW/k+b7?=
 =?Windows-1252?Q?PrB063VNlvdyTWg+KNJXAH5dPXKqhfBAzSXSgwKeIWHAEmirAUFm5wkY?=
 =?Windows-1252?Q?AUhtkPUKJmYz+GapnjycnLAwy0khh1zpPibNMcSwQ8t1RGZDMsWW/Gyl?=
 =?Windows-1252?Q?QUW0h83L7dGa/H2k7Hj7/ozJWmePvZRDXXFke1avYOA1+rSQ+bIQGSG+?=
 =?Windows-1252?Q?oPJrfU+5YgLx55/snwnyXJwMntEAnAKHSCJdrCsmDFxPKn0Sjq+VKzkR?=
 =?Windows-1252?Q?K453Hp6/mfXuz0q+tJc15p2VWhXiv5tNABIYnYk2033HqBsa+jGBMK4W?=
 =?Windows-1252?Q?WpHSaf4wBPsYmTGxcI/eWLHPyBydMqk0UlUF2GcwriGROZpIu8ARu0Jl?=
 =?Windows-1252?Q?Prwe89REEFSCbYNODVYZ8kc9+STK6D6yasZSRYUAIuBiE7eCI/0072Wv?=
 =?Windows-1252?Q?PGyVd2S1BFCx7LXxi9yvTfL9NYnNZ9aIYQDR+p9eLvhU84ena31TNybD?=
 =?Windows-1252?Q?EXyVKCHoHFKKKEP9MoytAPr5iU28veMYMlnExV7UpJwo0uKv7VF0QPWB?=
 =?Windows-1252?Q?zZ4ts/b1XKQkxJcTk/vJ8GqUsPcDCJEpz7mARhfmcPdt9+ilsJDGJKSq?=
 =?Windows-1252?Q?CUuNkUlSUzTqdLEYztU+n+IeBPR1eC4kwPkeX2QsPM8E2GWNwubN6dKi?=
 =?Windows-1252?Q?8z1nIgIHtDbs41Jm/Q79kR68xDnC3jzJt3FWOGja4+2xJ0gPcg05J/lZ?=
 =?Windows-1252?Q?mGRK1BmyJaTHUPqoKu9Hx0BwAW84qKnZq5v+fW+VZdRmzh2/uxWW73YR?=
 =?Windows-1252?Q?59oCNB0314+jq6TTufRqtvLILe1Dy4Lw?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29acfa92-9b09-41c5-0544-08db03df8baf
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2023 23:04:45.8838
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DHf420WKfFampXZbti5skkt1c/5+hSJR8s6RzvuAG1UiIdrTibN75yCaBlzhjnZlkDxbHIgqAHdRI6/mMtjKQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR03MB5999
Message-ID-Hash: 5GF5CZVR7X2ZFAJUYNAKERBZN627M6RM
X-Message-ID-Hash: 5GF5CZVR7X2ZFAJUYNAKERBZN627M6RM
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "cmplx_mul" is locked
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BKE6WSLFX3X76SYNIG65EC7J7MMLBKS4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2624423536190798608=="

--===============2624423536190798608==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB4678F59BE3B3272608F8DB42D3D09BYAPR03MB4678namp_"

--_000_BYAPR03MB4678F59BE3B3272608F8DB42D3D09BYAPR03MB4678namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

After reading about this conversation on the mailing list https://lists.ett=
us.com/empathy/thread/DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD
I went ahead and erased my UHD distribution folder and started from scratch=
. Here is how to reproduce what I did:

Given a patched version of Vivado installed on the system:

/tools/Xilinx/Vivado/2021.1/bin/vivado -version
Vivado v2021.1_AR76780 (64-bit)
SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.

Commands:

git clone git clone https://github.com/EttusResearch/uhd.git
cd uhd
git checkout UHD-4.4
<optional>
cd host
mkdir build && cd build
cmake ..
make -j10
sudo make install
cd ../..
<end optional>
cd fpga/usrp3/top/x300/
rfnoc_image_builder -c -d x300 -y ./x300_rfnoc_image_core.yml -t X300_HG -p=
 /tools/Xilinx/Vivado/

This results in the error reported below.


________________________________
From: Minutolo, Lorenzo <minutolo@caltech.edu>
Sent: Tuesday, January 31, 2023 2:20 PM
To: jmaloyan@umass.edu <jmaloyan@umass.edu>; usrp-users@lists.ettus.com <us=
rp-users@lists.ettus.com>
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "c=
mplx_mul" is locked

I tried installing Vivado 2021.1 and applying the right patch, using UHD-4.=
4 I still get the following error message:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Building IP axi_hb31
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Staging IP in build directory...
BUILDER: Reserving IP location: /home/lorenzo/uhd/fpga/usrp3/top/x300/build=
-ip/xc7k325tffg900-2/axi_hb31
BUILDER: Retargeting IP to part kintex7/xc7k325t/ffg900/-2...
BUILDER: Building IP...
[00:00:00] Executing command: vivado -mode batch -source /home/lorenzo/uhd/=
fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log axi_hb31.log -nojournal
WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
[00:00:04] Current task: Initialization +++ Current Phase: Starting
CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the foll=
owing file is locked: /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/xc7k32=
5tffg900-2/axi_hb31/axi_hb31.xci
CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/xc7=
k325tffg900-2/axi_hb31/axi_hb31.xci
[00:00:04] Current task: Initialization +++ Current Phase: Finished
[00:00:04] Executing Tcl: synth_design -top axi_hb31 -part xc7k325tffg900-2=
 -mode out_of_context
[00:00:04] Starting Synthesis Command
[00:00:04] Current task: Synthesis +++ Current Phase: Starting
WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products f=
or Synthesis target. These output products could be required for synthesis,=
 please generate the output products using the generate_target or synth_ip =
command before running synth_design.
WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources spec=
ified


Currently looking for a workaround before reverting to 2019.1 and UHD 4.2

Lorenzo

________________________________
From: Minutolo, Lorenzo <minutolo@caltech.edu>
Sent: Tuesday, January 31, 2023 11:48 AM
To: jmaloyan@umass.edu <jmaloyan@umass.edu>; usrp-users@lists.ettus.com <us=
rp-users@lists.ettus.com>
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "c=
mplx_mul" is locked

Same here.
Since switching to Vivado 2021.1 and UHD-4.3 even compiling the stock firmw=
are results in [IP_Flow 19-2162] IP 'axi_hb31' is locked.
Apparently, this error is well known https://support.xilinx.com/s/article/5=
8832?language=3Den_US

I'm trying to switch to UHD 4.4 to see if this error goes away. Everything =
was working really well in UHD-4.2 and Vivado 2019.1.

Best,
Lorenzo
________________________________
From: jmaloyan@umass.edu <jmaloyan@umass.edu>
Sent: Friday, January 27, 2023 2:17 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Error when synthesizing example OOT block : IP "cmplx=
_mul" is locked


Hello,


I have run into an issue when trying to synthesize the =93gain=94 RFNoC as =
described in the tutorial here https://kb.ettus.com/Getting_Started_with_RF=
NoC_in_UHD_4.0


I get an error that the module cmplx mul is locked. I found that in the ver=
ilog file =93rfnoc_block_gain.v=94, the module is instantiated there, but I=
 am unsure how I should proceed working around this.


Here is the output of the vivado -version

Vivado v2021.1_AR76780 (64-bit)

SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021

IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021

Copyright 1986-2021 Xilinx, Inc. All Rights Reserved

And here is the output of the error

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

BUILDER: Building IP cmplx_mul

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

BUILDER: Staging IP in build directory...

BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/=
xc7z100ffg900-2/cmplx_mul

BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...

BUILDER: Building IP...

[00:00:00] Executing command: vivado -mode batch -source /workarea/uhd/fpga=
/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojournal

[00:00:05] Current task: Initialization +++ Current Phase: Starting

WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:

CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the foll=
owing file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg=
900-2/cmplx_mul/cmplx_mul.xci

CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100=
ffg900-2/cmplx_mul/cmplx_mul.xci

[00:00:05] Current task: Initialization +++ Current Phase: Finished

[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z100ffg900-2=
 -mode out_of_context

[00:00:05] Starting Synthesis Command

WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products f=
or Synthesis target. These output products could be required for synthesis,=
 please generate the output products using the generate_target or synth_ip =
command before running synth_design.

WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:

ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources spec=
ified

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

[00:00:06] Current task: Synthesis +++ Current Phase: Starting

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

ERROR: [Vivado 12-398] No designs are open

[00:00:06] Current task: Synthesis +++ Current Phase: Finished

[00:00:06] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

Warnings: 3

Critical Warnings: 7

Errors: 8

BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/=
xc7z100ffg900-2/cmplx_mul

make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_IP_CMPLX_M=
UL_TRGT] Error 1

make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'

make: *** [Makefile:90: N3X0_IP] Error 2

--_000_BYAPR03MB4678F59BE3B3272608F8DB42D3D09BYAPR03MB4678namp_
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
=3D"elementToProof ContentPasted0">
After reading about this conversation on the mailing list&nbsp;<a href=3D"h=
ttps://lists.ettus.com/empathy/thread/DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD" id=
=3D"LPNoLPOWALinkPreview">https://lists.ettus.com/empathy/thread/DGJBPK6YAD=
KXM2ETKPEVQQ7F5ALJCIDD</a></div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I went ahead and erased my UHD distribution folder and started from scratch=
. Here is how to reproduce what I did:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Given a patched version of Vivado installed on the system:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1">
/tools/Xilinx/Vivado/2021.1/bin/vivado -version
<div class=3D"ContentPasted1">Vivado v2021.1_AR76780 (64-bit)</div>
<div class=3D"ContentPasted1">SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2=
021</div>
<div class=3D"ContentPasted1">IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2=
021</div>
<div class=3D"ContentPasted1">Copyright 1986-2021 Xilinx, Inc. All Rights R=
eserved.</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1">
Commands:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
git clone git clone <a href=3D"https://github.com/EttusResearch/uhd.git" id=
=3D"LPlnk350834">
https://github.com/EttusResearch/uhd.git</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
cd uhd</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
git checkout UHD-4.4</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
&lt;optional&gt;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
cd host</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
mkdir build &amp;&amp; cd build</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
cmake ..</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
make -j10</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
sudo make install</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
cd ../..</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
&lt;end optional&gt;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2 ContentPasted3 ContentPast=
ed5">
cd fpga/usrp3/top/x300/</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2 ContentPasted3 ContentPast=
ed4 ContentPasted6">
rfnoc_image_builder -c -d x300 -y ./x300_rfnoc_image_core.yml -t X300_HG -p=
 /tools/Xilinx/Vivado/<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2 ContentPasted3 ContentPast=
ed4 ContentPasted6">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2 ContentPasted3 ContentPast=
ed4 ContentPasted6">
This results in the error reported below.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
<br>
</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview_1 _EReadonl=
y_1"></div>
<br>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Minutolo, Lorenzo &lt=
;minutolo@caltech.edu&gt;<br>
<b>Sent:</b> Tuesday, January 31, 2023 2:20 PM<br>
<b>To:</b> jmaloyan@umass.edu &lt;jmaloyan@umass.edu&gt;; usrp-users@lists.=
ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] Re: Error when synthesizing example OOT block =
: IP &quot;cmplx_mul&quot; is locked</font>
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
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
I tried installing Vivado 2021.1 and applying the right patch, using UHD-4.=
4 I still get the following error&nbsp;message:</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
<div class=3D"x_ContentPasted0">BUILDER: Building IP axi_hb31</div>
<div class=3D"x_ContentPasted0">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div class=3D"x_ContentPasted0">BUILDER: Staging IP in build directory...</=
div>
<div class=3D"x_ContentPasted0">BUILDER: Reserving IP location: /home/loren=
zo/uhd/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/axi_hb31</div>
<div class=3D"x_ContentPasted0">BUILDER: Retargeting IP to part kintex7/xc7=
k325t/ffg900/-2...</div>
<div class=3D"x_ContentPasted0">BUILDER: Building IP...</div>
<div class=3D"x_ContentPasted0">[00:00:00] Executing command: vivado -mode =
batch -source /home/lorenzo/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tc=
l -log axi_hb31.log -nojournal</div>
<div class=3D"x_ContentPasted0">WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is=
 locked:</div>
<div class=3D"x_ContentPasted0">[00:00:04] Current task: Initialization +++=
 Current Phase: Starting</div>
<div class=3D"x_ContentPasted0">CRITICAL WARNING: [filemgmt 20-1366] Unable=
 to reset target(s) for the following file is locked: /home/lorenzo/uhd/fpg=
a/usrp3/top/x300/build-ip/xc7k325tffg900-2/axi_hb31/axi_hb31.xci</div>
<div class=3D"x_ContentPasted0">CRITICAL WARNING: [filemgmt 20-1365] Unable=
 to generate target(s) for the following file is locked: /home/lorenzo/uhd/=
fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/axi_hb31/axi_hb31.xci</div>
<div class=3D"x_ContentPasted0">[00:00:04] Current task: Initialization +++=
 Current Phase: Finished</div>
<div class=3D"x_ContentPasted0">[00:00:04] Executing Tcl: synth_design -top=
 axi_hb31 -part xc7k325tffg900-2 -mode out_of_context</div>
<div class=3D"x_ContentPasted0">[00:00:04] Starting Synthesis Command</div>
<div class=3D"x_ContentPasted0">[00:00:04] Current task: Synthesis +++ Curr=
ent Phase: Starting</div>
<div class=3D"x_ContentPasted0">WARNING: [Vivado_Tcl 4-391] The following I=
Ps are missing output products for Synthesis target. These output products =
could be required for synthesis, please generate the output products using =
the generate_target or synth_ip command
 before running synth_design.</div>
<div class=3D"x_ContentPasted0">WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is=
 locked:</div>
<div class=3D"x_ContentPasted0">ERROR: [Designutils 20-414] HRTInvokeSpec :=
 No Verilog or VHDL sources specified</div>
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
Currently looking for a workaround before reverting to 2019.1 and UHD 4.2</=
div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
Lorenzo</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Minutolo, Lorenzo &=
lt;minutolo@caltech.edu&gt;<br>
<b>Sent:</b> Tuesday, January 31, 2023 11:48 AM<br>
<b>To:</b> jmaloyan@umass.edu &lt;jmaloyan@umass.edu&gt;; usrp-users@lists.=
ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] Re: Error when synthesizing example OOT block =
: IP &quot;cmplx_mul&quot; is locked</font>
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
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,=
255,255)">
<span class=3D"x_x_ContentPasted0" style=3D"font-size:12pt; margin:0px; bac=
kground-color:rgb(255,255,255)">Same here.</span>
<div class=3D"x_x_ContentPasted0" style=3D"font-size:12pt; margin:0px; back=
ground-color:rgb(255,255,255)">
Since switching to Vivado 2021.1 and UHD-4.3 even compiling the stock firmw=
are results in&nbsp;[IP_Flow 19-2162] IP 'axi_hb31' is locked.</div>
<div class=3D"x_x_ContentPasted0" style=3D"font-size:12pt; margin:0px; back=
ground-color:rgb(255,255,255)">
Apparently, this error is well known&nbsp;<a href=3D"https://support.xilinx=
.com/s/article/58832?language=3Den_US" class=3D"x_x_ContentPasted0" style=
=3D"margin:0px">https://support.xilinx.com/s/article/58832?language=3Den_US=
</a><br class=3D"x_x_ContentPasted0">
<br class=3D"x_x_ContentPasted0">
</div>
<div class=3D"x_x__Entity x_x__EType_OWALinkPreview x_x__EId_OWALinkPreview=
 x_x__EReadonly_1" style=3D"font-size:12px; margin:0px">
</div>
<span class=3D"x_x_ContentPasted0" style=3D"font-size:12pt; margin:0px; bac=
kground-color:rgb(255,255,255)">I'm trying to switch to UHD 4.4 to see if t=
his error goes away. Everything was working really well in UHD-4.2 and Viva=
do 2019.1.</span><br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,=
255,255)">
<span class=3D"x_x_ContentPasted0" style=3D"font-size:12pt; margin:0px; bac=
kground-color:rgb(255,255,255)"><br>
</span></div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,=
255,255)">
<span class=3D"x_x_ContentPasted0" style=3D"font-size:12pt; margin:0px; bac=
kground-color:rgb(255,255,255)">Best,</span></div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,=
255,255)">
<span style=3D"font-size:12pt">Lorenzo</span></div>
<div id=3D"x_x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif=
" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> jmaloyan@umass.ed=
u &lt;jmaloyan@umass.edu&gt;<br>
<b>Sent:</b> Friday, January 27, 2023 2:17 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Error when synthesizing example OOT block : IP=
 &quot;cmplx_mul&quot; is locked</font>
<div>&nbsp;</div>
</div>
<div>
<p>Hello,</p>
<p><br>
</p>
<p>I have run into an issue when trying to synthesize the =93gain=94 RFNoC =
as described in the tutorial here https://kb.ettus.com/Getting_Started_with=
_RFNoC_in_UHD_4.0
</p>
<p><br>
</p>
<p>I get an error that the module cmplx mul is locked. I found that in the =
verilog file =93rfnoc_block_gain.v=94, the module is instantiated there, bu=
t I am unsure how I should proceed working around this.</p>
<p><br>
</p>
<p>Here is the output of the vivado -version</p>
<p><code>Vivado v2021.1_AR76780 (64-bit)</code></p>
<p><code>SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021</code></p>
<p><code>IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021</code></p>
<p><code>Copyright 1986-2021 Xilinx, Inc. All Rights Reserved</code></p>
<p>And here is the output of the error</p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>BUILDER: Building IP cmplx_mul</code></p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>BUILDER: Staging IP in build directory...</code></p>
<p><code>BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/=
build-ip/xc7z100ffg900-2/cmplx_mul</code></p>
<p><code>BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...</code></=
p>
<p><code>BUILDER: Building IP...</code></p>
<p><code>[00:00:00] Executing command: vivado -mode batch -source /workarea=
/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojou=
rnal</code></p>
<p><code>[00:00:05] Current task: Initialization +++ Current Phase: Startin=
g</code></p>
<p><code>WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:</code></p>
<p><code>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for=
 the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/x=
c7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code></p>
<p><code>CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) =
for the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-i=
p/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code></p>
<p><code>[00:00:05] Current task: Initialization +++ Current Phase: Finishe=
d</code></p>
<p><code>[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z10=
0ffg900-2 -mode out_of_context</code></p>
<p><code>[00:00:05] Starting Synthesis Command</code></p>
<p><code>WARNING: [Vivado_Tcl 4-391] The following IPs are missing output p=
roducts for Synthesis target. These output products could be required for s=
ynthesis, please generate the output products using the generate_target or =
synth_ip command before running
 synth_design.</code></p>
<p><code>WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:</code></p>
<p><code>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sou=
rces specified</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Starting</co=
de></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>ERROR: [Vivado 12-398] No designs are open</code></p>
<p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Finished</co=
de></p>
<p><code>[00:00:06] Process terminated. Status: Failure</code></p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>Warnings: 3</code></p>
<p><code>Critical Warnings: 7</code></p>
<p><code>Errors: 8</code></p>
<p><code>BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/=
build-ip/xc7z100ffg900-2/cmplx_mul</code></p>
<p><code>make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_I=
P_CMPLX_MUL_TRGT] Error 1</code></p>
<p><code>make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'</co=
de></p>
<p><code>make: *** [Makefile:90: N3X0_IP] Error 2</code></p>
</div>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB4678F59BE3B3272608F8DB42D3D09BYAPR03MB4678namp_--

--===============2624423536190798608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2624423536190798608==--
