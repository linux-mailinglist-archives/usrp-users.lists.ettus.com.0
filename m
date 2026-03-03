Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAIDLe1Jp2n2gQAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 21:51:57 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C7F1F6F8C
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 21:51:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B600F386428
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2026 15:51:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772571115; bh=FLWDIlIa0FquK0ib2XFv77DqUD3f1DRkeUdlfvmcQbM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gj1dvkJef2dw2jTE+T815KF6UAWmJjbwjfc8gB6jefSwxyXeeUDawBtdoJHbH9tVO
	 i24cnY+fUq35weMhOnHuqRyqJtJN5azCOiEtcwLkD3BpbTO5+ahm7Iu32h266OXyMG
	 u3WStWKUaJHYu0fZqp9PjZ/BnWJJVsdWiOzfkAF03XjmPNV9WvDCyj/eE2NXZBpGLz
	 02TWJOcHkjQL8wNpUWCkc/GBHQ30BvX2vo+brdOXvSwDwuFWr6ek6ZrDn2NrRZHbgt
	 CNlAkrBtyiGDvnyC3/zW8AmIKu1nIeLdhq8yAAsnpECW4FG2n9kuFJ5FZD07B4ZWDw
	 /aaBkqptDkiGA==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 57FF438626D
	for <usrp-users@lists.ettus.com>; Tue,  3 Mar 2026 15:50:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="Q3J3qN72";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="tSHbfffn";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1772571051; x=1804107051;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=FI1vU2Mv3875d/gxjimSEL5aFTAoYT/2z2KyzcgsmNE=;
  b=Q3J3qN72V405IEHeB9dNY5MUfeJ1e5aVoZ+5vNTgVumWmmoi/LvrGyJp
   xNv9UQr/C5naaucAAQDSnOI0MosYHcV1dUZNrN35Gnj94SMeu6xt9hOjF
   gT7sNFWLXnU9KVdSekvT4DaP6C7dTqYyQs5Z3ATLK8vdPdbgpsJceM+vT
   I=;
X-CSE-ConnectionGUID: HpubNHHiSVqkNs+n8jNYbQ==
X-CSE-MsgGUID: f32IWUAfTPetV0aZKJZV+g==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="8638111"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800";
   d="png'150?scan'150,208,217,150";a="8638111"
x-attachment: image.png
X-IPAS-Result: =?us-ascii?q?A2F3AQBuSKdpjhIOXShXA4EJgVCBPQGBA0EBQ4Fslk+XQ?=
 =?us-ascii?q?4MPg0gUgREDUQYIBwEBAQEBAQEBAQQBAgIuAR4EBAEBAwSFAAKNISc2Bw4BA?=
 =?us-ascii?q?gQBAQEBAwIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPD?=
 =?us-ascii?q?YQHgSYBAQEBAQEBAQEBAQEdAjVVAQEBAQMBBAEfAgcSAQEqCgQPAgEIEQQBA?=
 =?us-ascii?q?QYBAQEmAgUPAQ4CCh0IAgQSAQYCBoJ0giUECwcDNqkQeIEBM4EBggwBAQYEB?=
 =?us-ascii?q?NsnGGOBXgkJgU2DfVplM4JZCwEBKhGBIgJqgXEPAoEQGYR6NoFVRIFXgjAHM?=
 =?us-ascii?q?T6EDgESAQgbFQomg06CL4ImehSBRYYhhDBchh5SgRQDWSwBVRMXCwcFXkVDA?=
 =?us-ascii?q?4EGI0sFLR2BIyEdFxQfWBsHBRIhKoIGeIIBD4ZreQMueA4iAjxcSj4LWgWBX?=
 =?us-ascii?q?wMLbT03FBsDBIE1BTsFBQwFAwQGFAEWBooAECENgThcP4NzdoFPom6CDJM0j?=
 =?us-ascii?q?BqBaDQHhB+BXgYMiCACj0qFRYJtF6priAORA6N8hRoCBAIEBQIQCIFvA4Ecc?=
 =?us-ascii?q?DMaMIMqUhkPji0NCYNexBZ4PAIHCwEBAwmTaQEB?=
IronPort-PHdr: A9a23:A14nLhM4i+vGpEGlJTQl6ncAWUAX0o4cdiYZ6Zsi3rRJdKnrv5HvJ
 1fW6vgliljVFZ7a5PRJh6uz0ejgVGUM7IzHvCUEd5pBBBMAgN8dygonBsPNAEbnLfnsOio9G
 skKVFJs83yhd0ZPH8OrblDIpTu19zFBcig=
IronPort-Data: A9a23:MNqd1K0D19hMydjcBvbD5V5xkn2cJEfYwER7XKvMYbSIYAOW5UVek
 zNIDHfGZKi61lGFfo1zPou2oB4C6pPdzd41G1FtqHs9FisU8MbPXouXIBz7Ni/Of53NHRs34
 8sXMtPKcck/HiTVqh6kb7a6pCghhMlkKlad5MvsY0idEic4E3px0HqP4tIEv7OEoeRVIiuD5
 4uqqMeOZQX8gmckbWge5f+N8Usxsqyr5mlD5VBjbqwS7A7VmlArV59OfqvZw1kU42V38k9WY
 86ZkdlVK0uAp09F5vWNzOajKiXmZZaLZFfX2hK6Y4D7314a4HV0iv1jXBYlQR8/oy2TmNxsw
 8l6u5W1SAM4VoXBg+11vyNwS0mSBoUYvuWeSZSDmZbLlROeKCO3m6wG4HweZOX0xM4mWQmiy
 tRFcFjhXjjb78qqzbSyTPVbh8hLBKEH66tC0p3I5Wix4ccOGfgvcY2TjTNr9G5YavR1IBrrT
 5FxhQxHMU2aO0UXUrsgIMlWcO+A3hETetDDwb6fjfJfD2P7lGSd3FVxWTZ8lxPjqch9xy6lS
 mz6E2vRIgkHPvq/6Tu+zGuvoPSMm3P5frMYLejtnhJqqAX7Km07MzRHbWHj8NKE0hbkHdVCN
 0YT5ywi67Ao81CmRcX8WBv+p2OYuhkbWJxbFOhSBAOllvKSsl3fXzRCF24phN8O7afaQRQny
 1CEmd6vCiZmoaOYU1qU+62T6zSoNkD5KEdSO3RUFFJcizXliI9o1DPwc/9tLJa4kuOtEAPT4
 QK07ydr0t3/iuZQjP/nojgrmQmEu4PTVkso/QjNRUqh7xhlf8ioe5C18h7Q6vMoEWqCZlyIv
 XxBgM+D8OAFAJeRjiWJXf4EDrWxvqndaWWE2A4pGIQ9/TOw/XLlZZpX/Dx1OEZuNIADZCPtZ
 0jQ/whW4fe/IUdGc4dXe5+7LeQKzJPeDNfDTbPSPthoU5JIIVrvED5VWaKG44z6fKERfUwXP
 J6adYO3CmsGCa9qyiasTuMAyrY5wjhnmjuKHciin1KgzKaUY2OTRfEdKlySY+sl7aSC5gLI7
 9JYMMjMwBJaOAEfXsU12dFIRbzpBSFhbXwTlyCxXrXSSuaBMDp/Y8I9OZt7J+RYc119z48kB
 E1RpXO0OHKk3iebdm1mm1hmabj1Wo14o25zNis2JT6V5pTXWq72tP13X8JuJdEPrbU/pdYqF
 aVtU5vbWJxnFG+YkwnxmLGh9uSOgjz331rWZ0JIoVEXI/ZdeuA+0oS5LlK0rXJUV3TfWAlXi
 +TI6z43iKErH2xKZPs6otr2p79tlRDxQN5PYnY=
IronPort-HdrOrdr: A9a23:FBzHsq2d7bDA65SHWy+tIQqjBSxyeYIsimQD101hICG9Lfb0qy
 n+pp4mPEHP4wr5AEtQ4exoS5PwOk80lKQFqbX5WI3PYOCIghrNEGgP1+rfKnjbalTDH41mpO
 xdmspFebrN5DFB5K6UjjVQUexQpuVvm5rY5ts2uk0dKD2CHJsQjTuRZDz6LmRGAC19QbYpHp
 uV4cRK4xC6f24MU8i9Dn4ZG8DeutzijvvdEFM7Li9izDPLoSKj6bb8HRTd9AwZSSlzzbAr9n
 WAuxDl55+kr+qwxnbnpiPuBtVt6ZTcI+l4dY2xY/suW3XRYzOTFcpcsvO5zXMISaqUmSwXeZ
 H30mod1oJImjnslyiO0GTQMwWM6kdT11byjVCfmnftusr/WXYzDNdAn5tQdl/D51Mnp8wU6t
 M944u1jesjMfr7plWI2/HYExVx0kakq3srluAey3RZTIsFcbdU6YgS5llcHpsMFD/zrNlPKp
 gmMOjMoPJNNV+KZXHQuWdihNSqQ3QoBx+DBkwPoNac3TRalG1wi0EY2MsclHEd849Vcegz28
 3UdqBz0L1eRM4faqxwQO8HXMusE2TIBQnBNWqDSG6XZp3v+0i92KIfzI9FlN1CIqZ4sqfasK
 6xIW9liQ==
X-Talos-CUID: 9a23:OUdb1GH5C1iecwuHqmJH7FMePOAFc0bj1XT2OAy+WWRPebesHAo=
X-Talos-MUID: =?us-ascii?q?9a23=3AHtURDQ9w/v7TdKmb8BC064+Qf8kzuYWRNWkDra0?=
 =?us-ascii?q?Lp/fcPB5TGQWjzzviFw=3D=3D?=
Received: from mail-southcentralusazlp17010018.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.18])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2026 12:50:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r8a9d51v4NM0QKVB3wePWqnzRCbzUeHdgGYnGt6Wu0skoVWF0pEXFnSb+WJlMuHkW37ttgVmAS497mj4EUch09kTsGD1G0V7yPF6hQQuib8/ECSx2aTRwHLhgUpE+t2nlPyefuJeVbi5Bu/GC6iT93hR2Z4Jxp4PcLDgzlkWZyvHi10h9MN7QEPe8CZmlZ8s5PMpviwxP5soSDSUjCYLoeOgmSnWEq5kAk4YLWHRMTxVxVCKTP3h7c81QSJPRFBKTuBWEw5WenZFYdo9qxTkMnfQt/1hAjBsrY5MjB36lPG1cGQKFFk1O29O9foh96syn7Q7UsV66n4BEjHvnxXM8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AJe5mgdzudjbFN+qETQ1gaRPKmT8BeX6NGEf87oYY94=;
 b=qQV4emjvcyvi0NqK2NmOiaPfHEfI9jRzbhIwFv2BBL+EIbDPUUavDVIctSqebtA7rxw4cqJuG6ALhxQL/r9FrtegjzG4UDhIHIx35wPnInT9lnjqiabb0akevTbjWh6jW0inFJUZ8J0RbzlqRj5Yt9JcnCsmVwh5kAQ8rQHga34tUuNniKQQihat0nne9KyHrc/q8Lj778xQWEUpepVkZHRmZ55ZhwtMet0InBdMFlmRnp1q9+4IRzwmUlcwU+hGBlvPZi/CG4qADc9y7+3wyrVSdGM1T4/JS8/RlxSHJ8T3r9pMk9doaKDkMOSnHuJ61b6Uq4dPiaE2ZPiS1bBT1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AJe5mgdzudjbFN+qETQ1gaRPKmT8BeX6NGEf87oYY94=;
 b=tSHbfffnsMxeB1IvCmB1ee8e1KYSHM4DZ8dyE0vrL4J0lrMXKY1VsDbAdCooFucBJfQZaVK+cxtQH0q2PIajVJrs1iwv32GJMUnwMLoKCZ3VnfT/Bknj2NIkjO2YLNmtI3eBxa3Xqf0GAq9ayIso9QbSREJsn36li813pSoD1UU=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA9PR09MB5008.namprd09.prod.outlook.com (2603:10b6:806:4e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.18; Tue, 3 Mar
 2026 20:50:44 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 20:50:44 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 - Phase alignment between two USRPs
Thread-Index: AQHcq0PA+NVuGtyXv0OXF+mkoqm4S7WdR9AC
Date: Tue, 3 Mar 2026 20:50:44 +0000
Message-ID: 
 <SJ0PR09MB912628687C3CAD61BD2B3D9CEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB9126F8AA5D78227FFCE1A9CCEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB9126F8AA5D78227FFCE1A9CCEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA9PR09MB5008:EE_
x-ms-office365-filtering-correlation-id: 61020aa2-b870-489c-afc3-08de79668a2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|6049299003|41320700013|366016|1800799024|7053199007|38070700021|4053099003|4013099003|8096899003;
x-microsoft-antispam-message-info: 
 KzuZGEZQY1pXGc+moBVdCPi3JfL1N3TNdYq7c/kvYSooXhJtrJhqBSKK3RCFzKiruoJCzI126FxmtzteV8S9BxBw9b06F9WcB8FHN+rRRRow2BQrZYPRtKebqrxZMVrIaxS+2DteftD6DF2/o96BG4dOJHNerjg82t/2q0GQpVSShvurhyN3WagL38CdDEmSC1/FzRiBBlGe4x08qmw2DGAyDMPi+53zB1ivhG+2KKeXP/pliVPcx33yeWSH5+wmaeSYJaP4DghcEDrbUVznZwS/519vAjjK2EitnIcD8bdlwrXgNI0UkLq6YfiAmO9Y2uo0+aDLIFg1SbrfHOVZ/1Cy/ksznDF+PGSJvmUSo4bkiIFY2/Ce7BDSbb+wyE28LfF9b5LUbpM3NNefY5+wg9Fm1P5oKfV92eVvBeRBUzKbOBpkv414u44GtGzXrrxscaYWo1hg3//jTu9enzaSpj2HF21ZicERI9Q8DmNrZbIgFZFXFKyxODUdnXbh2RtAvpgvyANgbyvsejhfPmR8n5SFuwJqXefovCLhLiNb3P73lPcp7yjoQmV+SqWazXdnN4G/Tjh2R2VlwKkytglSehsDY0s2AXV1kZsk0ogtxJpwq/0TWMhgP6fG4wwcSN9EkW3+G0uuDwm4la0+YRiVkpmuf0ZEUFm6zUccifDw5CI2kDZFClKl+Kno3blOx7+otSM84SdxsQZOM8UiZvPVmBmxLzcCg9kZwrNyqvPC3HcwpvitNjSXyNFMJMK9VcJ7xdZyoC+gzdqAVmf/G0mANxjpBXuAkUVPkgRvt6F1gls=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(6049299003)(41320700013)(366016)(1800799024)(7053199007)(38070700021)(4053099003)(4013099003)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?gtIg6cFCRO9VYY/8IK6oChMiJfd9jhNbGIhFlVQO9WjUOVaZBiDusG4L/gv5?=
 =?us-ascii?Q?BbOBxv8kkoDFO2R5oZZAvUtzj/Bg4kaWD4hWpjsN2AuT/gY67Ml2ORvErZR+?=
 =?us-ascii?Q?79xWBGyspmdCVTw5N6xmc3WVklODz3lGyVrXyFe67gvzX5ytLYhgYKHzrpnN?=
 =?us-ascii?Q?vQSMjdbah24kvvWYARY62F3iZpesb2DkTOtUP+kZszC5Vgig9h4E3aKR+S+p?=
 =?us-ascii?Q?4VrPCtw5DWqcpCOKss+j0OnnRrgm611EVt/MVdJrjm3aLa4ZS7WC2PPlg34O?=
 =?us-ascii?Q?w6SUKkSXO7glF7NgaAIdhvjjT6dYmhTUgVSZh8HcOG27lyz3L0kXCy3ZrSKL?=
 =?us-ascii?Q?jhc29qCDoRV7wR5hb0685EsWtoB0kgE2M2XV8BZPrGlA1XO8wSplEAaqAazL?=
 =?us-ascii?Q?uOUytxCyoXXnW3Dog5hkARpWbrjIIx/WhKzyvPIuY3t3J89pMIfQ2Wwgv+uK?=
 =?us-ascii?Q?YZH1G5toPMDjTtXkWG+P2m7oOkaA75uBwrhHEW1+6ZYxm3Ob+hwJK7kyQkmq?=
 =?us-ascii?Q?+nmRA/eXBoPJ90EfxUB1/2820d/pbuW0/eY8+qOuFQFS8DB6/6CGpZXVMLZb?=
 =?us-ascii?Q?R4D1dxlkTmxFpdWEGfRYlTjqg0VrcvVv/hfeUNuwDXgfCAFZMNYo7SDzdO0Q?=
 =?us-ascii?Q?HDtDw8fWo9b8b2GqY4mBPRIfqic1+QiYVSiuETaKpO7OAJmOKJykpA4DFpOW?=
 =?us-ascii?Q?vA5SmJ2EumKkfJ+mK5gTEDgfVePu0dHY+7oy/wv7w3SHMBuF4KXldxpFVCc+?=
 =?us-ascii?Q?xPHJt7mbdS7qPQ+U1ReKbMRc/M/JsHk2Sl0NogC9GWgUxbeD/JaTlswSCVwt?=
 =?us-ascii?Q?xHJAorw0zbLaX1zCigZghcNQuahr0PcX4kUtcuX31MgyT7UxI8xXXIhBsU1U?=
 =?us-ascii?Q?lnqmpdGvtdXokossgqaR47Ldy31QmQXsGXGD+HEVvNgtUuA6mPC6AoTBRuBF?=
 =?us-ascii?Q?sD1o/2x56Yxb0+mIM1u7CXfO/24rYSxxWP24uriiQjX7fR9qeXxHDF8tNFLt?=
 =?us-ascii?Q?t7mxl34KGCoBQKRX4Ch8C+1Ucj1w6UJqIro51VQnLAfceWfVdlCSww+tDTgE?=
 =?us-ascii?Q?ooqI4y1JKhvoHFVctMNZHSSwtYVzCYgaV8lkKr8kfd5o7PoJe3Y8CfQjzSx5?=
 =?us-ascii?Q?ZT38ZbfeoZkJl6BDjDaM2W++ym5sP6lCcL+GLR0B1cuXSXp645GdxVrzjpY5?=
 =?us-ascii?Q?yRDiuN/w3/eav10Dd3P2lgNDotwHd+IcAE2UCLmAnKYWKhNep5Rpdov2M0JL?=
 =?us-ascii?Q?sLMfRFx285+LnvHNUQ2zcIlIdBh2XSH/MMg3v74GXxGrQ6HltJlmcRQiYkif?=
 =?us-ascii?Q?FSfHO9FDqWSFw0UMC6YDB0KeTVUAXGpfl9+cqL7EmbWy5kOupZ3xUd9o7Qg1?=
 =?us-ascii?Q?xbNUD7XZyB4FnwLvIvLpzN85g7dyYnj+uaCYoDKZnTvoHIjiU5NYjkJ9Q+th?=
 =?us-ascii?Q?240UPncujfvgqJ2EE4r5NOJ6K/YBMp65KzPDMZERGWLQxz94V2d+795tHGlx?=
 =?us-ascii?Q?eOoBOjVSese649Zt/8Vr06qqhSDXsujpr/WF7BpCzuPT+1joj9i+pTUXRkSI?=
 =?us-ascii?Q?40U33QorOjG823CZKCMvM/RmkTE0U3qgBxWwlc977OdjgMMqL8l/IXMO1H27?=
 =?us-ascii?Q?QYKQH2SLHcxDOrLxKgDLqGlXjDjik/S8+wI3+WPhkhvn+PtV6TzHkBOag/8j?=
 =?us-ascii?Q?ZMjyMh+c3osLuMRusxOs082BeLzcqFtxHpDRBRlbgVpnzSiZ?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61020aa2-b870-489c-afc3-08de79668a2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 20:50:44.4826
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA9PR09MB5008
Message-ID-Hash: VPW2RF54XAI3WMOWKZ3C6TH5IPJFRGOL
X-Message-ID-Hash: VPW2RF54XAI3WMOWKZ3C6TH5IPJFRGOL
X-MailFrom: prvs=5153118e6=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 - Phase alignment between two USRPs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EI7SBV3AIMJX3OQPRIL3JBPJWJMSUJ3H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3775710575888920007=="
X-Rspamd-Queue-Id: E3C7F1F6F8C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/related,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:~,5:~,6:+];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email]
X-Rspamd-Action: no action

--===============3775710575888920007==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_SJ0PR09MB912628687C3CAD61BD2B3D9CEC7FASJ0PR09MB9126namp_";
	type="multipart/alternative"

--_004_SJ0PR09MB912628687C3CAD61BD2B3D9CEC7FASJ0PR09MB9126namp_
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912628687C3CAD61BD2B3D9CEC7FASJ0PR09MB9126namp_"

--_000_SJ0PR09MB912628687C3CAD61BD2B3D9CEC7FASJ0PR09MB9126namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I misread this statement.  I assumed that no retune happens if the freq/rat=
e are the same across restarts (not reboots).  Disregard the previous email=
.
[cid:7de6267c-4b73-4777-b7a0-f9fd3b6bb878]

________________________________
From: Eugene Grayver
Sent: Tuesday, March 3, 2026 11:36 AM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: X440 - Phase alignment between two USRPs

I have two X440 w/ X4_200 FPGA image.  I need to get consistent phase betwe=
en channels on USRP1 and USRP2 across multiple runs.  I must be doing somet=
hing wrong because I observe consistent phase between channels on any ONE U=
SRP, but not across two.  The phase appears to be random between the two on=
 each run.

Here's my setup:

  *
Common 10 MHz and 1 PPS
  *
Addr0=3D192.168.10.2,second_addr0=3D192.168.11.2,mgmt_addr0=3D192.168.1.10,=
addr1=3D192.168.15.2,second_addr1=3D192.168.16.2,mgmt_addr1=3D192.168.1.20,=
time_source=3Dexternal,clock_source=3Dexternal
  *
I modified the 'stock' rx_samples_to_file as follows:
     *
Usrp->set_time_next_pps(uhd::time_spec_t(0.0));
std::this_thread::sleep_for(std::chrono::milliseconds(1000));
     *
usrp->set_command_time(uhd::time_spec_t(COMMAND_START_S, 0));
// Set the rate, freq, gain, etc
std::this_thread::sleep_for(std::chrono::milliseconds(COMMAND_START_S * 100=
0));
usrp->clear_command_time();
     *
Each streamer is created in a separate thread
     *
    stream_cmd.stream_now =3D false;
    // Time was reset to zero before thread was created
    stream_cmd.time_spec  =3D uhd::time_spec_t(STREAM_START_S, 0);
    rx_stream->issue_stream_cmd(stream_cmd);

What am I missing?  I assume commands apply to both USRPs since I create a =
multi_usrp.  Do I need to explicitly specify the motherboard for some of th=
e commands?


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB912628687C3CAD61BD2B3D9CEC7FASJ0PR09MB9126namp_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I misread this statement.&nbsp; I assumed that no retune happens if the fre=
q/rate are the same across restarts (not reboots).&nbsp; Disregard the prev=
ious email.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<img size=3D"43581" style=3D"max-width: 856px;" data-outlook-trace=3D"F:1|T=
:1" src=3D"cid:7de6267c-4b73-4777-b7a0-f9fd3b6bb878"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Eugene Grayver<br>
<b>Sent:</b> Tuesday, March 3, 2026 11:36 AM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> X440 - Phase alignment between two USRPs</font>
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
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
I have two X440 w/ X4_200 FPGA image.&nbsp; I need to get consistent phase =
between channels on USRP1 and USRP2 across multiple runs.&nbsp; I must be d=
oing something wrong because I observe consistent phase between channels on=
 any ONE USRP, but not across two.&nbsp; The phase
 appears to be random between the two on each run.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Here's my setup:</div>
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;u=
norderedStyleType&quot;:1}" style=3D"margin-top:0px; margin-bottom:0px; lis=
t-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">Common 10 MHz and 1 P=
PS</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation">Addr0=3D192.168.10.2,second_addr0=3D192.168.11.2=
,mgmt_addr0=3D192.168.1.10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2=
,mgmt_addr1=3D192.168.1.20,time_source=3Dexternal,clock_source=3Dexternal</=
div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">I modified the 'stock=
' rx_samples_to_file as follows:</div>
</li><ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}" s=
tyle=3D"margin-top:0px; margin-bottom:0px; list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">
<div class=3D"x_elementToProof" style=3D"line-height:19px">Usrp-&gt;set_tim=
e_next_pps(uhd::time_spec_t(0.0));</div>
<div class=3D"x_elementToProof">
<div class=3D"x_elementToProof" style=3D"line-height:19px">std::this_thread=
::sleep_for(std::chrono::milliseconds(1000));</div>
</div>
</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">
<div class=3D"x_elementToProof" style=3D"line-height:19px">usrp-&gt;set_com=
mand_time(uhd::time_spec_t(COMMAND_START_S, 0));</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px">// Set the rate,=
 freq, gain, etc</div>
<div class=3D"x_elementToProof">
<div class=3D"x_elementToProof" style=3D"line-height:19px">std::this_thread=
::sleep_for(std::chrono::milliseconds(COMMAND_START_S * 1000));</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px">usrp-&gt;clear_c=
ommand_time();</div>
</div>
</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">Each streamer is crea=
ted in a separate thread</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">
<div class=3D"x_elementToProof" style=3D"line-height:19px">&nbsp; &nbsp; st=
ream_cmd.stream_now =3D false;</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px">&nbsp; &nbsp; //=
 Time was reset to zero before thread was created</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px">&nbsp; &nbsp; st=
ream_cmd.time_spec&nbsp; =3D uhd::time_spec_t(STREAM_START_S, 0);</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px">&nbsp; &nbsp; rx=
_stream-&gt;issue_stream_cmd(stream_cmd);</div>
</div>
</li></ul>
</ul>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
What am I missing?&nbsp; I assume commands apply to both USRPs since I crea=
te a multi_usrp.&nbsp; Do I need to explicitly specify the motherboard for =
some of the commands?</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" id=3D"x_Signature">
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Principal Engineer</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912628687C3CAD61BD2B3D9CEC7FASJ0PR09MB9126namp_--

--_004_SJ0PR09MB912628687C3CAD61BD2B3D9CEC7FASJ0PR09MB9126namp_
Content-Type: image/png; name="image.png"
Content-Description: image.png
Content-Disposition: inline; filename="image.png"; size=43581;
	creation-date="Tue, 03 Mar 2026 20:49:33 GMT";
	modification-date="Tue, 03 Mar 2026 20:49:33 GMT"
Content-ID: <7de6267c-4b73-4777-b7a0-f9fd3b6bb878>
Content-Transfer-Encoding: base64

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

--_004_SJ0PR09MB912628687C3CAD61BD2B3D9CEC7FASJ0PR09MB9126namp_--

--===============3775710575888920007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3775710575888920007==--
