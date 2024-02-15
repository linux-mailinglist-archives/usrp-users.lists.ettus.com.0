Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6118566FB
	for <lists+usrp-users@lfdr.de>; Thu, 15 Feb 2024 16:14:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB33E3845E6
	for <lists+usrp-users@lfdr.de>; Thu, 15 Feb 2024 10:13:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708010038; bh=R+Lv9l4MJCjAYEUG6WGuLL14ozXAZds8lN9jwcDTPzM=;
	h=To:Date:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=wXpBW/6vTGa7umcX6bpNMBo9BnqiYUpMWJfhfyBJdH/rCMEypVXniqdKRJCwQHTnq
	 mqbSej6KHgztpu69dRRRrcxjP08i3MTAQl71GsKwIhgUSXBi7iqD2GHr1DHHVD2WMS
	 ryPXG7mdWT543qENwqfSrE776+wlnbWWrnjTBmTunR2sS5mgHKlUekV3ZCKqOPvqdt
	 9tQrWtB8hot80JnLYVu/QJNO2FQDekvk1Sj2sUTb9dkjLscZWHGVyLipeItdBtU7JR
	 aYf2hC8OjPAV5i0fxw+M3VLgR7AQgfGndfVRIWHRuGKC19fSH7DPh+VRLKHUkYc3OB
	 aAZ4UsW5LTP0Q==
Received: from mx0f-00336402.gpphosted.com (mx0f-00336402.gpphosted.com [67.231.155.131])
	by mm2.emwd.com (Postfix) with ESMTPS id A1606380C9B
	for <usrp-users@lists.ettus.com>; Thu, 15 Feb 2024 10:13:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dynetics.com header.i=@dynetics.com header.b="Izzw87MC";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=LeidosCorpUS.onmicrosoft.us header.i=@LeidosCorpUS.onmicrosoft.us header.b="E6OyE5SO";
	dkim-atps=neutral
Received: from pps.filterd (m0219683.ppops.net [127.0.0.1])
	by mx0e-00336402.gpphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 41F8vbWY018708;
	Thu, 15 Feb 2024 07:13:16 -0800
Received: from emp-mxpp103.dcs.leidos.com (emp-mxpp103.dcs.leidos.com [149.8.243.13])
	by mx0e-00336402.gpphosted.com (PPS) with ESMTPS id 3w8mm15bbr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Feb 2024 07:13:16 -0800
Received: from pps.filterd (emp-mxpp103.dcs.leidos.com [127.0.0.1])
	by emp-mxpp103.dcs.leidos.com (8.17.1.19/8.17.1.19) with ESMTP id 41F7uYwj029456;
	Thu, 15 Feb 2024 09:13:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dynetics.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=dynetics-2048-030121;
 bh=h44016n+gZegXVnUYZmL0wGqFy5jasd/0Df7d/gnMOI=;
 b=Izzw87MCrhMko2i7fbpethxdDgOqiJOItle5d3JdZPj1lfh3oFFtI5rWuuLELgrzdLhZ
 P2PAeUxpij0H+TQXc6aBisHupKsCOGAWlGLqNvC09tjgkqrb9d9TcEAoGxlu8fMPSt0l
 86ujj7oIaowgdtOwYtM7dYfmpwQk46wkXP/GcT5KNol0om+yGqEuBV5PpyvdMLveYWel
 fB8qUJEzfRScAUEN6FyLUGG8bOlIdY8/Bgx/MrLiZ724PSOQ20BlEbX1V00Yyb7XQODu
 oEN86qaex/GHmhGdX250dAHBynNPcCe/sJS9r4cqBpxRwCZiNCrKjqI/8V4763ayQMaD Bw==
Received: from epsp-dlp-prev21.dcs.leidos.com (EPSP-DLP-PREV21.dcs.leidos.com [10.227.23.21])
	by emp-mxpp103.dcs.leidos.com (PPS) with ESMTPS id 3w64554yeu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 15 Feb 2024 09:13:04 -0600
Received: from emp-mxpp112.dcs.leidos.com (unknown [149.8.242.102]) by EPSP-DLP-PREV21.dcs.leidos.com with smtp
	(TLS: TLSv1/SSLv3,128bits,ECDHE-RSA-AES128-GCM-SHA256)
	 id 3aeb_a63c_bbccc891_405e_4cad_bde2_95ee1ff31f30;
	Thu, 15 Feb 2024 15:12:49 +0000
Received: from EMP-EXMR181.corp.leidos.com (EMP-EXMR181.corp.leidos.com [10.128.180.21])
	by emp-mxpp112.dcs.leidos.com (8.17.1.19/8.17.1.19) with ESMTPS id 41FFCaL2011834
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Thu, 15 Feb 2024 09:12:48 -0600
Received: from EMP-EXMR181.corp.leidos.com (10.128.180.21) by
 EMP-EXMR181.corp.leidos.com (10.128.180.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.2507.35; Thu, 15 Feb 2024 09:12:38 -0600
Received: from USG02-CY1-obe.outbound.protection.office365.us (10.226.129.4)
 by EMP-EXMR181.corp.leidos.com (10.128.180.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.2507.35 via Frontend Transport; Thu, 15 Feb 2024 09:12:38 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=w+kABRy4nN70Y7WE7apnBEIac6AJDysxrljJSfTBmZTKk0MflezU2TaGcrmhJvo/tBP1/NTOk8ahx5UIpJen8GjHBtk7GQ85OZ56QVCsgpsiUjHZxzkSJHbRYvZUir1bcG5LY+YYmqczl0yc4HVCfZ85nNvO418MXiJu4tyyHP18XovZMBPcbxQf+LMWp5IaGXYAWLBSrbKydKbm9FakGdlz8SXLgWZeiIiAkZGhGylhlap4wrTEXHAzP8LEodina9pyX/V99ba37PNT5ns1TUmU7savCLAyN3FaKjSaJhMrW/R6/5qervvMSKWMruIuE8nvbpDBDciAjMcTVqbWhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qZfjizFJ2U9ObGNOxjK1LrrQK/LeXhYy1nShujJspCs=;
 b=s4kyj2Q/RMXBKEm6OULiBOZLPXPiSQkT6EpJZclEG+Cd3898QpPqGbs47Vyqhth8q+SeocznGxlzsCW1+PJCYlo+Z3xYtaj4GH+wFafErRVuPutci4JLZdyVMkLrtQ5CmxppNcoPWlN+7k1cRhmhDERZlifGPxleN4P3i3xYlkRSb2ysjcyqlOPviYBNnct5W1hR0btVacOEMBBCXpTInRNgZLSeiwpwRrjEx64HwLl2GjOr8e/GkJu4lLbVk22D+Tvi6BEVZDxweuOwODD7Qy1WueZR0VzOA+WERHsohDRLpUuPHP2qPrFC0dKuhteU8S6EFziJwyT3jt4WJoSNyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dynetics.com; dmarc=pass action=none header.from=dynetics.com;
 dkim=pass header.d=dynetics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=LeidosCorpUS.onmicrosoft.us; s=selector1-LeidosCorpUS-onmicrosoft-us;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qZfjizFJ2U9ObGNOxjK1LrrQK/LeXhYy1nShujJspCs=;
 b=E6OyE5SO64PsQTHJw+yXHmF8oTaBlaWK04Evo4/tX67YimDtHya4vb0PNaDcJC+JLbMyyiwBBYfzpG14zvN7cL9/WfdrvAKBr6npd0Su+XvK2uJJC+1d9K38Ze/7leNrFW9E6HZNllKn+4KdceiYyR897blqyDIXwsMz9gpWEcJWOX/R6RSpNrbRpNT4mqFI3HadqbvsB+0cp+YShbnBE8tTnY1fjozJHHdYzotqngk9qaIBhZDBBfWD+fW5/ylGLgrXwLEK5ZHH7c8P6GF1hNY9q7GZFh42jIM1AK3beOZp/N3PCM5IYtXzZkziCg1xlYdavO7kZ0wP54DdEdxvzA==
Received: from BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::16)
 by BN2P110MB1431.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.51; Thu, 15 Feb
 2024 15:12:36 +0000
Received: from BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM
 ([fe80::1742:44cd:7741:20c0]) by BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM
 ([fe80::1742:44cd:7741:20c0%4]) with mapi id 15.20.7249.032; Thu, 15 Feb 2024
 15:12:36 +0000
To: Steve Hamn <stevehamn311@gmail.com>,
        "Marcus D. Leech"
	<patchvonbraun@gmail.com>
Thread-Topic: EXTERNAL: [USRP-users] Re: GNURadio MPM major compat number
 mismatch after update to UHD 4.6
Thread-Index: AQHaX6tiM4NAY0xNpEqpJkJv70E4L7ELIQyAgABg5Bw=
Date: Thu, 15 Feb 2024 15:12:36 +0000
Message-ID: <BN2P110MB1027ABFD9BCFE7CEEDBC49E19F4DA@BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM>
References: <CAOYGa71Nf-o-kKYZBq-Oap0PAfjGR=rjOy6Fsjbp0O3SyYFnmQ@mail.gmail.com>
 <eb1ba171-c78a-4564-af54-5b0b90148b69@gmail.com>
 <CAOYGa70DM_A_8UtU3Tuc7W+CVGsEvgPPv=k658u+5D7Xa9+cog@mail.gmail.com>
In-Reply-To: <CAOYGa70DM_A_8UtU3Tuc7W+CVGsEvgPPv=k658u+5D7Xa9+cog@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_Enabled=True;MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_SiteId=b64da4ac-e800-4cfc-8931-e607f720a1b8;MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_SetDate=2024-02-15T15:13:09.592Z;MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_Name=Unrestricted;MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_ContentBits=0;MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_Method=Privileged;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1027:EE_|BN2P110MB1431:EE_
x-ms-office365-filtering-correlation-id: 3c0f0fbc-7d29-47a7-101c-08dc2e388b3c
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KgCkY6ptopIjMmFqHRnKjL5g76rjxsu6TW7qGlquNTdG5GRp2EIuBgdiCuIzLMJKto//vBGiMjVr8TCW8afSW0yt6GMxBGJ9datec9cpqlVGYHFQrzTJBG1KMdrrsXfi4R7i3d8D90R48Ld0UtN4z6sHxH82BpRGARf6PmSaTuUkfD4VgswJN48RDqbM0aNs79Z3Bs5NgNYbZ63Ji1xisATFPQVzP3kACkV0swglBNOwiyS7pjj32xa2VJ6N9rP9shsfz67inl22A4FOpIjwUPyHIqJ/gP4sFPJUsgZEkKOdTN0Cton3W+PvuIm8jS1NsYA9UCUOPcjM+SzGwKXQNejaDFIq2+//c27BDRYL3d2abndYnFoxfZ+C2zm32BYr4b3WBiecB4ONzDUFP61SCLWJVD4Vk3t8x7hBTYZWELteGHBC910Ybdhqymn2IMbRBRaiAJ4jwfmRmCJsPKN/861WAjHb+wqo02cq1iyeurqhuycxhKEp+NHVoSCrSRgFna6yy5g5AwRwu4b5bz4KsVeJqI7nC2wLFIewXoPPKE1n88nPDoxHYV5OjUIqodHLDbxav7cUHT3Y1vYcCoHsyuUGMy57KaJHKwHBFT+t0XEUxDcd5wRvYwvc59MFzzlg
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(230922051799003)(230273577357003)(451199024)(1800799012)(186009)(19627405001)(71200400001)(9686003)(498600001)(55016003)(66899024)(8936002)(8676002)(2906002)(4326008)(5660300002)(52536014)(15650500001)(53546011)(6506007)(7696005)(64756008)(76116006)(66476007)(66946007)(66556008)(110136005)(66446008)(83380400001)(86362001)(122000001)(33656002)(38070700009)(26005)(38100700002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y3lrSm9KU28zQmpvOHFvSEtSa09wWXVTcTRWQVN5cjZEQWR6dVYvdjRVcmww?=
 =?utf-8?B?QTFxZ3VUcUhQbzgyMGpIM3FCTDVic1lTWUF1VXhITDNMbXBCQnhPV0s0NlZo?=
 =?utf-8?B?RUVtOHoxd2loY0ZSd2daa3B3eTdkL0hIMnZpeEpSWTB0NjdhVGpPSVlTeWVG?=
 =?utf-8?B?Q2ovSXNnV2pZY2Q0cTVadjg2RUhGaWtOd3grRHZESXo0OFh5dEwyMGtxanRD?=
 =?utf-8?B?TzQxcGhJWU5JdnlHZndIWDVXQWQyVWI1YmF4c1hiYlRPd2dUYUttMzNTZkw4?=
 =?utf-8?B?RTU0SW9USndMaDcwaGd1MFNPSmhnSFd6ekdOdytIdXFtaS80d2FNTDJ3QytZ?=
 =?utf-8?B?QmVrUlVIUDZHSUowRXo1YURhd1lrd2F5dFdjYzVvVnRjWGEvNXluNitST2U5?=
 =?utf-8?B?Qm94QmNic1c0RjVSbGgrRFJZNCs0d1YyZzdid25iN2psbThZWVJJaWdOdHB6?=
 =?utf-8?B?TUEwOCt1MFNwMUhBTDdFb25VUGhOTXI4THd2bVV5cDRPYWhEVHZKampEUzNU?=
 =?utf-8?B?TGZMWFZiUWRkcTVpM3c4MFpyWmFQanBjMm9ZL05BbmtCUlQ5WFRsVmxoR0d6?=
 =?utf-8?B?ME1PY3BqY09hRHcxQWxYVVJYSVZHK2cwR3VPUnhUR3I2NnBBaWFZNHVuUGhx?=
 =?utf-8?B?Z2pYUGdxaThId1UwNERIRlZaejlHSkhEY21YRzEyT1pNRCtBcHZtUk14QTB4?=
 =?utf-8?B?QnY4a3FRTFJtRVE1d3NZa3NSdDVOeS9HUW40RVhyQlZMSlNJNEhJT1hwYTlX?=
 =?utf-8?B?RTY0aC9UTURPZkliUlNsRmdURkJvM1hKaUxBV0tqd3BBVGNWREI5YWlTYjR3?=
 =?utf-8?B?cHdkNEZJK0dUZlN1VmVwK2Zja05KU3lTUi9QY1pLdmRRMlNBTG84VlpkcFM5?=
 =?utf-8?B?V0ZhRUFjRytqUGJkelBxTDQveXRXYW9ab3hvOXU2eGpBRHA2Sk5vazF6ZGZK?=
 =?utf-8?B?djA2cTBEenZnNG04YW9UMjcrSDVlcUxUMS9EV0ZHOXo3NUc1UFRTeEpwdWlu?=
 =?utf-8?B?Z2J4ZmZETnh1MWhLL28rc1kzaWNPOWwwNHRId2xMYU9pTmc2dDB1ek81b3ZI?=
 =?utf-8?B?YjZiMDBQQklKK0RiZnVRbVliczgxK1NXdkYvRVJzaFN0cVNDQldoS1dHWko0?=
 =?utf-8?B?S1IrbVpjY0w5MjJFeFNJd1doYnFaaXBqYmhlcmdOblNWZ25FSFAvTlpqSnFs?=
 =?utf-8?B?NHJ6T0FsQURsS3FBVkphNTJrV1lYZlBYcHZhekdudktScm1SN2VGc0N6SWtx?=
 =?utf-8?B?a1FEM0xPQTE4VnUycnM5alQxeUdJRzRYV3pERTY1OE0zM3FhTE1zV0cxZi94?=
 =?utf-8?B?ZnpTcUdOZm40UldsT2RvTnRycTcvbFNZWDBtVndNOWg2bFlHTGFUYm9udXBO?=
 =?utf-8?B?MmNMQkpkVXpuenpGWmdLbjBCWmZMSUhoRzJ3d1l3Z2hvVUgrQ0tKZldHZzhU?=
 =?utf-8?B?V1R3NWdtVTgxL3ZtOStINFVweUdxMmxFTmJHK2t5dGNpcnFqZHcya0d0NWFu?=
 =?utf-8?B?QU9xT0k2akZ1SzQvMmVUcm80cGFCMVlyeFYyZ2pENVRiSWNGOGJXSGdBc3lB?=
 =?utf-8?B?Sm5Jb05BYXdQa1F3MEIxU05wajlJNTl1ZGxSK1ZLWEdwMlp2UFJhVldFU05a?=
 =?utf-8?B?WFYxTFdvQXpFWnpJeHVXclRUKzQ2aEdwcXZOYWMrcU95MkZjaHpKTjZEZ0Zi?=
 =?utf-8?B?WHZ6MXl4TlYyMlpDTHRGYXQxNGtWeW95UWgwYmp6b0FIMms5RW0zRUI3Tmx6?=
 =?utf-8?B?bXJHYlUyVUhmWitXTFZ4UnUrYjhhc0VrTlZHRGFZajhLYzZvL1l1c0pacGRB?=
 =?utf-8?B?S25QQTdoUkFOdGdlZlk0WmZtNW5ZV2ZoVXZ5NUJHc0RYejZUZENSY05QbVJY?=
 =?utf-8?B?cDd6SUo5YXR3aXc1d3ZhTFdFaEd3YXJ4bG94TjdueUN4eUdUd1VuOVcyU2sr?=
 =?utf-8?B?Y2Q2Nm8rMVdvcm9SUkRyTjNQU1g1YXU3ZTNpZmRSQUhEeXJMQVB5QStUNjUv?=
 =?utf-8?Q?coQAoRXPvQ2kx0g06DRQwMsuHa03xE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c0f0fbc-7d29-47a7-101c-08dc2e388b3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2024 15:12:36.8465
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b64da4ac-e800-4cfc-8931-e607f720a1b8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1431
X-OriginatorOrg: dynetics.com
X-EmailSecurity-Header: 1
X-RCIS-Action: ALLOW
X-Proofpoint-Spam-Details: rule=notspam policy=outbound score=0 suspectscore=0 spamscore=0
 clxscore=1011 bulkscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2402150123
X-Proofpoint-ORIG-GUID: kHzL1_EzctZT8RpAEVhUX_Gksz-kEg-X
X-Proofpoint-GUID: kHzL1_EzctZT8RpAEVhUX_Gksz-kEg-X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-15_14,2024-02-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 adultscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0
 clxscore=1015 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2311290000 definitions=main-2402150122
Message-ID-Hash: LGHRFWHIQR7ML5JK3EZM2Y4ZNTW7I274
X-Message-ID-Hash: LGHRFWHIQR7ML5JK3EZM2Y4ZNTW7I274
X-MailFrom: RYAN.SEAL@dynetics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: EXTERNAL: Re: GNURadio MPM major compat number mismatch after update to UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LGHRFWHIQR7ML5JK3EZM2Y4ZNTW7I274/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Seal, Ryan L. [US-US] via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Seal, Ryan L. [US-US]" <RYAN.SEAL@dynetics.com>
Content-Type: multipart/mixed; boundary="===============5575998094835805218=="

--===============5575998094835805218==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB1027ABFD9BCFE7CEEDBC49E19F4DABN2P110MB1027NAMP_"

--_000_BN2P110MB1027ABFD9BCFE7CEEDBC49E19F4DABN2P110MB1027NAMP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q0FVVElPTjogVGhpcyBlbWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSBvZiBMZWlkb3MuIEJl
IGNhdXRpb3VzIHdoZW4gY2xpY2tpbmcgb3Igb3BlbmluZyBjb250ZW50Lg0KDQpZb3UgbmVlZCB0
byBpbnN0YWxsIGEgbmV3IGltYWdlIG9uIHlvdXIgVVNSUCB2aWEgbWVuZGVyIG9yIG1hbnVhbGx5
LiBJIGhhZCB0byBkbyB0aGlzIHJlY2VudGx5IHRvIGZpeCB0aGUgc2FtZSBpc3N1ZS4gU2VlICJ1
cGRhdGluZyBmaWxlc3lzdGVtcyB3aXRoIG1lbmRlciIgaW4gdGhlIGRvY3MuDQoNClJ5YW4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpGcm9tOiBTdGV2ZSBIYW1uIDxzdGV2ZWhh
bW4zMTFAZ21haWwuY29tPg0KU2VudDogVGh1cnNkYXksIEZlYnJ1YXJ5IDE1LCAyMDI0IDM6MjAg
QU0NClRvOiBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPg0KQ2M6IHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NClN1
YmplY3Q6IEVYVEVSTkFMOiBbVVNSUC11c2Vyc10gUmU6IEdOVVJhZGlvIE1QTSBtYWpvciBjb21w
YXQgbnVtYmVyIG1pc21hdGNoIGFmdGVyIHVwZGF0ZSB0byBVSEQgNC42DQoNClllYWgsIHRoYXQg
aXMgd2hhdCBJIGZpZ3VyZWQuIEFueSBzdWdnZXN0aW9ucyBvbiB3aGF0IHRvIGRvPyBJIHRyaWVk
IHVuaW5zdGFsbGluZyBhbmQgcmVpbnN0YWxsaW5nIGdudXJhZGlvIGFzIHdlbGwgYXMgaW5zdGFs
bGluZyBVSEQ0LjYgb24gbXkgaG9zdCBQQy4gSSdsbCBhc2sgdGhlIGdudS1yYWRpbyBtYWlsaW5n
IGxpc3QgdG9vLg0KDQpUaGFua3MsDQoNClN0ZXZlDQoNCk9uIFdlZCwgRmViIDE0LCAyMDI0IGF0
IDU6MDfigK9QTSBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPG1haWx0
bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4+IHdyb3RlOg0KT24gMTUvMDIvMjAyNCAwNDowMywg
U3RldmUgSGFtbiB3cm90ZToNCkhlbGxvLA0KDQpJIHVwZGF0ZWQgbXkgTjMyMCB0byBVSEQgNC42
LCBob3dldmVyIG5vdyBJIGFtIGdldHRpbmcgYW4gZXJyb3IgaW4gR05VUmFkaW86DQoNCiJSdW50
aW1lRXJyb3I6IFJ1bnRpbWVFcnJvcjogTVBNIG1ham9yIGNvbXBhdCBudW1iZXIgbWlzbWF0Y2gu
IEV4cGVjdGVkOiA0LjIgQWN0dWFsOiA1LjMuIFBsZWFzZSB1cGRhdGUgdGhlIHZlcnNpb24gb2Yg
TVBNIG9uIHlvdXIgVVNSUCBkZXZpY2UuIg0KDQpBbnkgc3VnZ2VzdGlvbnMgb24gaG93IHRvIGZp
eD8NCg0KVGhhbmtzLA0KDQpTdGV2ZQ0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb208bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPg0KDQoNCllvdXIg
R251IFJhZGlvIGluc3RhbGwgcHJvYmFibHkgaXMgbGlua2VkIGFnYWluc3QgYW4gb2xkZXIgdmVy
c2lvbiBvZiBVSEQsIGhlbmNlIHRoZSBtaXMtbWF0Y2guDQoNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4NClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPg0K

--_000_BN2P110MB1027ABFD9BCFE7CEEDBC49E19F4DABN2P110MB1027NAMP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImNvbnRhaW5lci1mbHVp
ZCIgc3R5bGU9IndpZHRoOiA4NSU7Ij4NCjxkaXYgc3R5bGU9ImJhY2tncm91bmQtY29sb3I6ICNm
ZmZmZmY7IHdpZHRoOiAxMDAlOyBwYWRkaW5nOiA0cHQ7IGZvbnQtc2l6ZTogMTBwdDsgbGluZS1o
ZWlnaHQ6IDE0cHQ7IGZvbnQtZmFtaWx5OiAnQXJpYWwnOyBjb2xvcjogYmxhY2s7IHRleHQtYWxp
Z246IGxlZnQ7IGJvcmRlcjogMnB0IHNvbGlkICNGRkE1MDA7Ij4NCjxzdHJvbmc+PHNwYW4gc3R5
bGU9ImNvbG9yOiAjMDAwMDAwOyI+DQo8cD5DQVVUSU9OOjwvc3Bhbj4gPC9zdHJvbmc+VGhpcyBl
bWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSBvZiBMZWlkb3MuIEJlIGNhdXRpb3VzIHdoZW4g
Y2xpY2tpbmcgb3Igb3BlbmluZyBjb250ZW50LjwvcD4NCjxwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+
DQo8ZGl2Pg0KPGRpdiBjbGFzcz0iZWxlbWVudFRvUHJvb2YiIHN0eWxlPSJmb250LWZhbWlseTog
QXB0b3MsIEFwdG9zX0VtYmVkZGVkRm9udCwgQXB0b3NfTVNGb250U2VydmljZSwgQ2FsaWJyaSwg
SGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwg
MCk7Ij4NCllvdSBuZWVkIHRvIGluc3RhbGwgYSBuZXcgaW1hZ2Ugb24geW91ciBVU1JQIHZpYSBt
ZW5kZXIgb3IgbWFudWFsbHkuIEkgaGFkIHRvIGRvIHRoaXMgcmVjZW50bHkgdG8gZml4IHRoZSBz
YW1lIGlzc3VlLiBTZWUgJnF1b3Q7dXBkYXRpbmcgZmlsZXN5c3RlbXMgd2l0aCBtZW5kZXImcXVv
dDsgaW4gdGhlIGRvY3MuJm5ic3A7PC9kaXY+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIg
c3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0Zv
bnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJw
dDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSJlbGVt
ZW50VG9Qcm9vZiI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRk
ZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPlJ5YW48L3NwYW4+PC9k
aXY+DQo8ZGl2IGlkPSJhcHBlbmRvbnNlbmQiPjwvZGl2Pg0KPGhyIHN0eWxlPSJkaXNwbGF5Omlu
bGluZS1ibG9jazt3aWR0aDo5OCUiIHRhYmluZGV4PSItMSI+DQo8ZGl2IGlkPSJkaXZScGx5Rndk
TXNnIiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJpZiIgc3R5bGU9ImZv
bnQtc2l6ZToxMXB0IiBjb2xvcj0iIzAwMDAwMCI+PGI+RnJvbTo8L2I+IFN0ZXZlIEhhbW4gJmx0
O3N0ZXZlaGFtbjMxMUBnbWFpbC5jb20mZ3Q7PGJyPg0KPGI+U2VudDo8L2I+IFRodXJzZGF5LCBG
ZWJydWFyeSAxNSwgMjAyNCAzOjIwIEFNPGJyPg0KPGI+VG86PC9iPiBNYXJjdXMgRC4gTGVlY2gg
Jmx0O3BhdGNodm9uYnJhdW5AZ21haWwuY29tJmd0Ozxicj4NCjxiPkNjOjwvYj4gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20gJmx0O3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tJmd0Ozxicj4N
CjxiPlN1YmplY3Q6PC9iPiBFWFRFUk5BTDogW1VTUlAtdXNlcnNdIFJlOiBHTlVSYWRpbyBNUE0g
bWFqb3IgY29tcGF0IG51bWJlciBtaXNtYXRjaCBhZnRlciB1cGRhdGUgdG8gVUhEIDQuNjwvZm9u
dD4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8L2Rpdj4NCjxkaXY+DQo8ZGl2IGRpcj0ibHRyIj5ZZWFo
LCB0aGF0IGlzIHdoYXQgSSBmaWd1cmVkLiBBbnkgc3VnZ2VzdGlvbnMgb24gd2hhdCB0byBkbz8g
SSB0cmllZCB1bmluc3RhbGxpbmcgYW5kIHJlaW5zdGFsbGluZyBnbnVyYWRpbyBhcyB3ZWxsIGFz
IGluc3RhbGxpbmcgVUhENC42IG9uIG15IGhvc3QgUEMuIEknbGwgYXNrIHRoZSBnbnUtcmFkaW8g
bWFpbGluZyBsaXN0IHRvby4mbmJzcDsNCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PlRoYW5rcyw8
L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PlN0ZXZlPC9kaXY+DQo8L2Rpdj4NCjxicj4N
CjxkaXYgY2xhc3M9InhfZ21haWxfcXVvdGUiPg0KPGRpdiBkaXI9Imx0ciIgY2xhc3M9InhfZ21h
aWxfYXR0ciI+T24gV2VkLCBGZWIgMTQsIDIwMjQgYXQgNTowN+KAr1BNIE1hcmN1cyBELiBMZWVj
aCAmbHQ7PGEgaHJlZj0ibWFpbHRvOnBhdGNodm9uYnJhdW5AZ21haWwuY29tIj5wYXRjaHZvbmJy
YXVuQGdtYWlsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj4NCjwvZGl2Pg0KPGJsb2NrcXVvdGUgY2xh
c3M9InhfZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7IGJvcmRl
ci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpOyBwYWRkaW5nLWxlZnQ6MWV4Ij4NCjx1
PjwvdT4NCjxkaXY+DQo8ZGl2Pk9uIDE1LzAyLzIwMjQgMDQ6MDMsIFN0ZXZlIEhhbW4gd3JvdGU6
PGJyPg0KPC9kaXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj4NCjxkaXYgZGlyPSJsdHIiPkhl
bGxvLCZuYnNwOw0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+SSB1cGRhdGVkIG15IE4zMjAgdG8g
VUhEIDQuNiwgaG93ZXZlciBub3cgSSBhbSBnZXR0aW5nIGFuIGVycm9yIGluIEdOVVJhZGlvOjwv
ZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+JnF1b3Q7PGk+UnVudGltZUVycm9yOiBSdW50
aW1lRXJyb3I6IE1QTSBtYWpvciBjb21wYXQgbnVtYmVyIG1pc21hdGNoLiBFeHBlY3RlZDogNC4y
IEFjdHVhbDogNS4zLiBQbGVhc2UgdXBkYXRlIHRoZSB2ZXJzaW9uIG9mIE1QTSBvbiB5b3VyIFVT
UlAgZGV2aWNlLjwvaT4mcXVvdDs8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkFueSBz
dWdnZXN0aW9ucyBvbiBob3cgdG8gZml4PyZuYnNwOzwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4N
CjxkaXY+VGhhbmtzLCZuYnNwOzwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+U3RldmU8
L2Rpdj4NCjwvZGl2Pg0KPGJyPg0KPGZpZWxkc2V0PjwvZmllbGRzZXQ+DQo8cHJlPl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRh
cmdldD0iX2JsYW5rIj51c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4NClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb208L2E+DQo8L3ByZT4NCjwvYmxvY2txdW90ZT4NCllvdXIgR251IFJhZGlvIGluc3RhbGwg
cHJvYmFibHkgaXMgbGlua2VkIGFnYWluc3QgYW4gb2xkZXIgdmVyc2lvbiBvZiBVSEQsIGhlbmNl
IHRoZSBtaXMtbWF0Y2guPGJyPg0KPGJyPg0KPGJyPg0KPC9kaXY+DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPg0KdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj4NCnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tPC9hPjxicj4NCjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4N
CjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_BN2P110MB1027ABFD9BCFE7CEEDBC49E19F4DABN2P110MB1027NAMP_--

--===============5575998094835805218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5575998094835805218==--
