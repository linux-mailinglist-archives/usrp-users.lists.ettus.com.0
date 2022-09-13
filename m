Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B445B7C49
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 22:46:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AABE5383E9F
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 16:46:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663102014; bh=2qIlmFbaIVMIGUXcv3yII56vQ8tHa8DkN1z3rYzU3bg=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RNKa4lHB8ZFRM73vCBGO+coFBAsKlv9CimcLy3cWIdKei8T7yASCiaCL7j9ZMBR9z
	 Q4rV3Sr7RylTjwYNjQSMx43+9nVe2ztHyKfkwAGaB1tOG0mJmG2vOqY4uJtPOF1xCS
	 yNA55aOloPD2JtOQkRnFbKP5s0o8w7nH6oQqINaFPsRDU/LbRxhsQo2JDGZEhjUqhU
	 S8Njs8Y2V/1ZCWToacHb5rrEB8cf08c9n1eaF8HzmNWgwLW9DON9ZWeb3H8+3gbRuH
	 tzhwR5G0BazTw3msOS6OkcCArhbN5ZnC8nGk0LyDuuWmVnfn/jKIIEG+ad5TL8KBoG
	 7MxlGz5K4akbg==
Received: from na01-obe.outbound.protection.outlook.com (mail-westcentralusazon11010005.outbound.protection.outlook.com [40.93.198.5])
	by mm2.emwd.com (Postfix) with ESMTPS id B591F383823
	for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 16:46:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=minersutep.onmicrosoft.com header.i=@minersutep.onmicrosoft.com header.b="o1odHbPP";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=crU8wRnN9zMftHvcNshLKwhZgIK4GDxx9/IqYskeq/3Zpy5QdMjgKIbanx3i8A7zNfjuq8a6yytzTeEgiPY+hJKRUh6UuArJFrvHRfqmEUOxxyRV7+k+0/pYnZieINQDlUlV05ur7DY1an0Eb1pNvaw7/3l3V/v5JeAZPjMFmauf976R4yuJT6HAlSEeqHc92mP5lwfaHfnuV1p004H9RGQ68QCDhVgKBL0bStwlZ8pgESiNfxpMLuDlchME49lHgai73XKf/qezfMf/EENtlRASRTpRQzHzQlh6LkPKbpY5i6yvUtxF6FFmx1Qvg4p2AOVrlogh7yRl2TAIbVxLlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9R9OIzdRGNbVcAB4xVefcvxqmht64KIh3IH2ANDhQY4=;
 b=jOw+QHC91BqcnVOo9dXK/H41I5NKuJ2Tb/y+TIExe4OawVAlGAjrGIzpq0t51ClKP3a5jxwY+d3j7hrAqDa+BxVFTs2uj1hELxQF6IVm+6DZ0gFCzJfOjT7ZAxm9qwOeqsqGOauGffFrFilrse0chWKP0glixHPOksFnGlDB1Ks7/kz1BJ/yKEcerp7C7WtN4z3AWDRz0ljQu5ZwZ1iuea9ehtQAyDm97AE4BxSDDCl2SOUz885OCjIAinJtCvgUK8t9fJt2WXJRYXcisDU0uZq3wlkG03Qgc6/ti+0Fwr3yu0ryeQKs7nXUTlTHUJ0hDxWlswC5vVf7nD6+smjCkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=miners.utep.edu; dmarc=pass action=none
 header.from=miners.utep.edu; dkim=pass header.d=miners.utep.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minersutep.onmicrosoft.com; s=selector2-minersutep-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9R9OIzdRGNbVcAB4xVefcvxqmht64KIh3IH2ANDhQY4=;
 b=o1odHbPPhRoBcDDdox5G7fz/v+NPNINa2Vn75ICazNkRDTHSlR6xSEPGUUAz8qAq6AQf9i4kx+Vcj0izsi0H4zlh1PLHyBeSEW9Gq1RLkc57K7OzANLYIBQYjKHVlEsGDmkfKTWDUut8iD0r2vH/xOWomaXc8FjWnCcURoVGKgE=
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 (2603:10b6:803:4a::25) by MN2PR05MB7135.namprd05.prod.outlook.com
 (2603:10b6:208:193::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.10; Tue, 13 Sep
 2022 20:46:03 +0000
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::9:e275:61a1:9f47]) by SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::9:e275:61a1:9f47%3]) with mapi id 15.20.5632.012; Tue, 13 Sep 2022
 20:46:03 +0000
From: "Avila, Jose A" <jaavila5@miners.utep.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Companion issue
Thread-Index: AQHYx7C1gqykDzG39ECtz9GZ4EWPYg==
Date: Tue, 13 Sep 2022 20:46:02 +0000
Message-ID: 
 <SN4PR0501MB3919B694DACDED2A6BAE0C61D9479@SN4PR0501MB3919.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=miners.utep.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN4PR0501MB3919:EE_|MN2PR05MB7135:EE_
x-ms-office365-filtering-correlation-id: 3bdafc6c-6cae-48aa-df95-08da95c8f903
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 M/ZiGkLt/k0v8Hh9PrTBThJRHid8BDgEnq5Ac695Vu0UDcoJxAclgyuUrzjoFHWy9PPhQVZpHb10gCvHjPQHGmMgOQCbfVNcjDn0W0rdPQ2KOsnVYwe3dnnr/2HABp1SXSk+xCza7SqfEDmV7ER3h6KUXjH0jWtblc6g+3AC5ZQQ4XnZSUyC3I/Nd2U8NuuPjCWsFLF4BRxSLIY3lh1rRN0HvL96Fq3yJLIGbWr07E+H2Eh3X2LGpIVMeyU2KvN+44VkSN8guaIXI1chKDB38aBrqHpv0bvaJFmSdvWP1IJC/AGbLfoGPoGhZ8nc0SD6kr8huyHgWCfAYKPNs/Qv9NWhKmOJDpqQlDvTn9bMpxCnym03DWViUJj3mJcqfXIthbgEBwnuLQUh2JDOJyr0WCO3+ZEx0v/gDz7SriKpyfp9FfhKpYkRxKSrEr07f+0hdWG+hZbt0wgGH6QMtbBfcgRMIvt9SM7WFwGbUtFj2/3BQG7mM3VoIK9eykMO/gMzfdO/dfFGoL1mWEmfDx0IaRdLHMITbpbUEVFVKSAC7pX3IctputjSuVA7beFoiLDpVSKMxvV4yFPNsXmd6bc8rEYIXVsYVZsbVK4pYTSYJsAXeniWak83EzeH1Q/e1WMJeZRAU+uErptwndY9bXJZhZiC6RFKUYsNtmt00R9bE9GSZoy01R3p3okkqNlSdQPSUj4BdkELFPPcnqCoRn9/l0ZpEUxj2JhWzF8vLz7EiG9lZPe6bVf5YJhFymUBMSQo
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN4PR0501MB3919.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199015)(52536014)(55016003)(316002)(786003)(76116006)(5660300002)(86362001)(66556008)(33656002)(3480700007)(66946007)(478600001)(38070700005)(8676002)(66446008)(122000001)(66476007)(7696005)(38100700002)(6506007)(64756008)(91956017)(8936002)(186003)(71200400001)(83380400001)(41320700001)(4744005)(41300700001)(9686003)(75432002)(6916009)(7116003)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?/MVq1Pz09NoEIwqzeHZ2bHurXz8zPh699lgeFbQ6q0Ax9+q1Nngj+TR+qILc?=
 =?us-ascii?Q?90WHFOmPl7wcTRgUDvUNqegFDjLTtUFHMdQAb+A42GQRm/EYQqXYUm57AfIi?=
 =?us-ascii?Q?BKiFeBpzrnUEs0231Ru5xMbyYVdtx8tqX6ZkDhx9078evVW1swngEcyOYTAR?=
 =?us-ascii?Q?K2EN2uJKrmUjXomq2KobcQPrMADISBtBHiXvGcIGPiPN6ivT/3lWJcGX84uD?=
 =?us-ascii?Q?CDu/v9YYRvkjqxjuo4aPO+wJSg0j5NdsAZI2Lsbh8gbto7Zkvj6NK/rgNWzl?=
 =?us-ascii?Q?uljhcqAS79R8z/AAZ4dZLH4nYMPUP38sKfJ7g69jBsapdq25ZxGvIxyYx2Vj?=
 =?us-ascii?Q?JAj1n3IvfRakS74m/mtEFqPEhpYwqXkKuVN0V/q3aL0NfBK5fYgQsZqmqmuD?=
 =?us-ascii?Q?2AMUptiLCA06DDNEhXm87MEEsY5MVy7h18lpnuy6ZY7kvbotfqP3iuwImxpS?=
 =?us-ascii?Q?9j3oquQ7d7OpaX4y7BQfy2wsZjT4QZxFQKGvKLz8J1HduhqMrGrcyE81W9SW?=
 =?us-ascii?Q?Sv2+ggL4oiTKGsbxjCt21gHpi90q/dlp6FWoYI7flNR/pA0GcPzcgMPxuguC?=
 =?us-ascii?Q?JqKw+a3TA+yADm2x03Sp0HrE6HzuPqT/DSLKdylpLK1LcqOpwFfg5QTwlm3M?=
 =?us-ascii?Q?+9NRlrpFC7TARzH2xwHi+GiNHJpdyQnKeOLCnnF3a80/vAzIACbdSHQ+OKd2?=
 =?us-ascii?Q?4CwB+VR3UFVmGx1YyJJCs7jZCtQywDl5Kat3NKm6Ag5vIo7QfrQA8SNPXv+W?=
 =?us-ascii?Q?0fPMZrAPuZxOb6pq5jumnHk7zpejZQAhwcyMEoPTcUKsN+Nf+wOBL/Z9a+hR?=
 =?us-ascii?Q?lYfB5ko0wcgNQtQfunYGfNKxTOIS9VzngJNl8FJCxWHJgJ/tVRgEOSelx6bu?=
 =?us-ascii?Q?9UA29VJ4vR6Yf3sVfJC7cLVlf3h9STXk2WvPTsA99DiuxlQfg0OIA7ajICdq?=
 =?us-ascii?Q?EHrGWMSOIu1xLhEbmXEUjQuH3DicdvoGV2yKdERdcuBkpCDDGdOmpYzr6OcP?=
 =?us-ascii?Q?+VNhqka3J0oFxxxqXg5Bjmdq5VHMvQkxNInNsQ8xFHd7c+VkxXlStFZnzxst?=
 =?us-ascii?Q?uAF9QomIXGqqU9dHb8QVgbGmS61CnEVguZO5J0f7WmsrD+jz4Qrdn1lf46ce?=
 =?us-ascii?Q?2lBpTJWL+18BhVloTYX/2Cpn44hanlVhhDYUq7xIIaUKCO7Cg8dkrOJ0adjz?=
 =?us-ascii?Q?nOYuRQZIPWNSwldiI8OwKoonIz6176vDR8DilIHq6BrYt8oEGrwJfOwBT/Lw?=
 =?us-ascii?Q?nfQoKlT03xgdgO7Wt/hEmyXxX6YLpxfRPVpgJvrZZxWneRr1OFbIwzbp34hV?=
 =?us-ascii?Q?8VGQylJ3f7fovHWh8p3IbhQseM9GfO0YwpTkfAztJCC5FSQ5qZWsBYioDyjg?=
 =?us-ascii?Q?XMOz77eVv+QNDvizAGP3UlteA13qKz0706oy41ghbvAcbvvy6JlsbR2+1Fzx?=
 =?us-ascii?Q?iRekVlVfza2kRXDEMTBZquifDuiAhTKPDPk+CA2Kx5Zgys1XcmTMCoWxoiOP?=
 =?us-ascii?Q?fqbrVo5/rHyNeUbgA5wO9AkdQeiaKS9bv3CAPOU7aTFTO2ySVpwufp++SnA9?=
 =?us-ascii?Q?+nxJszY2eFpPXi/X7cebGJ/hE73do28MU7Vqgz6MLYoon76lAHG3FY85fqL2?=
 =?us-ascii?Q?V9hO/tIkmAPrgvEhfGggGF2EtBa6WTOF+YFPAmLVgQGQKBOuKo5lkjlgBLwc?=
 =?us-ascii?Q?taQyRyG4/pCFtM8SZIFpD2Udz9Q=3D?=
MIME-Version: 1.0
X-OriginatorOrg: miners.utep.edu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR05MB7135
Message-ID-Hash: OEQFR55PKO4GWVFFZSPMPI6WAI25NCS4
X-Message-ID-Hash: OEQFR55PKO4GWVFFZSPMPI6WAI25NCS4
X-MailFrom: jaavila5@miners.utep.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Companion issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S4CIQQU3PIGTQCA64OLHRUPJV67VMCBA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8990821819731319380=="

--===============8990821819731319380==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN4PR0501MB3919B694DACDED2A6BAE0C61D9479SN4PR0501MB3919_"

--_000_SN4PR0501MB3919B694DACDED2A6BAE0C61D9479SN4PR0501MB3919_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Im trying to downgrade from gnuradio 3.9 to 3.8 both from source. I install=
ed 3.8 and deleted as much as I found of 3.9. When I check gnuradio-config-=
info --version it shows the right 3.8 version. However when I run gnuradio-=
companion it tries to grab version 3.9 and errors out trying to find libgnu=
radio-runtime.so.3.9



--_000_SN4PR0501MB3919B694DACDED2A6BAE0C61D9479SN4PR0501MB3919_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div style=3D"">
<div>Im trying to downgrade from gnuradio 3.9 to 3.8 both from source. I in=
stalled 3.8 and deleted as much as I found of 3.9. When I check gnuradio-co=
nfig-info --version it shows the right 3.8 version. However when I run gnur=
adio-companion it tries to grab
 version 3.9 and errors out trying to find libgnuradio-runtime.so.3.9<span>=
</span></div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
<div style=3D"direction:ltr" dir=3D"ltr"><br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SN4PR0501MB3919B694DACDED2A6BAE0C61D9479SN4PR0501MB3919_--

--===============8990821819731319380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8990821819731319380==--
