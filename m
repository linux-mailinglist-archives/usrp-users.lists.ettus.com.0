Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z5lmBdYRH2oPfAAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 02 Jun 2026 19:24:38 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A175630AC0
	for <lists+usrp-users@lfdr.de>; Tue, 02 Jun 2026 19:24:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b="e/3xPgZr";
	dkim=fail ("body hash did not verify") header.d=aero.org header.s=mailhub header.b=ZWYCbsDR;
	dkim=fail ("body hash did not verify") header.d=aerospacecloud.onmicrosoft.com header.s=selector2-aerospacecloud-onmicrosoft-com header.b=pXhROeie;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=aero.org (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0B5F386782
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jun 2026 13:24:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1780421075; bh=ZQg6SOlGnddt2WMDfrMUToawlXTswL/6v7y3JG71myo=;
	h=From:To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=e/3xPgZrIi6qjyklKaGPsTKYCf1ujh216UzHAdPtS6jKXHOQCvz1YMmFuK7sem6df
	 7rXrcVBm/rljsPfewgpO0ma8LqaBD2TF6Yq+x3O16J62kcuwdpMbsDRj6QUIvpnR0L
	 yKNuUrH+Rl8Bum3ompznRmU5Vk9XL4FQx1KHxfFZObeZnSQNFcWidT962ird4Vm5Qc
	 ck/LQtoFdnBTiRV+VwJThP60m+1+H+FSNGaHnj4Zh3qJpDpkOq3iKuxhwk9wymvFoU
	 oQSzimWGylQGhtB5dcCiPJVkMSMCsAnrAlsgrSB42JkOtymmiD+UA4dBTXObYoyJno
	 P6e9E684SLugg==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 80CB83866C6
	for <usrp-users@lists.ettus.com>; Tue,  2 Jun 2026 13:23:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1780420999; x=1811956999;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=06yd4y2/CPJTkzPlrQAgfBCLrmPvvFLq0q6Ug8gZ8WE=;
  b=ZWYCbsDRAgg7otKkBr3OX4Wxrhy+bBMnWW6Ite9zEMkR4COylsbTF/jT
   zqrlbmAxVCPZSFCYLxStbpjfTKuOlP0iYgUNiKOOqY3fUEs66JGJZ/GX3
   IwCV39S3hzKGdubuwbn0fJWvyGFcqgNmYyS9K+cwZ+Ms0CAVTAQ0v5nHk
   0=;
X-CSE-ConnectionGUID: K6CRJ2lEQqqco2ixtrPJJQ==
X-CSE-MsgGUID: IQpgZETVQZ+9mj69YfMNdQ==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="9329637"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600";
   d="scan'208,217";a="9329637"
X-IPAS-Result: =?us-ascii?q?A2FtAQAQEB9qjg8BXShXA4JZgT2BBEIBQwKBapZMl0eFA?=
 =?us-ascii?q?oFVgSQDGD8PAQEBAQEBAQEBBwI9FAQBAQMBA4ILgnQCjTQnNgcOAQIEAwIDA?=
 =?us-ascii?q?QEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHZQk2AgEBA?=
 =?us-ascii?q?QEBAQEBAQEBAR0CNQwqAWUBASYFDAERAX8nBAENDQGCeQGCHQcECwcDNhSzE?=
 =?us-ascii?q?xqBL4E0gQGCDAEBBgQE2ykYZIFnCYFNg36Bc4JMHAEFJUlsAYQVAYR7NoFVR?=
 =?us-ascii?q?IFXh2srEQmDToIvgiZ6EhuBJoMDgz2ID4FEIgMmMywBVRMXCwcFXlUzAyovL?=
 =?us-ascii?q?W4yHXAMJxIsFzNYGwcFgUqCP4EEhRUjHwM5gReBf4EraWkVFQMLbT03Bg4bA?=
 =?us-ascii?q?wSBNQWLEwdWFw+CS4EjAYEdNGk9kwKPQY5flGM0B4QfgWAGDIkJgSaVcBeEB?=
 =?us-ascii?q?I0UmVOZBiKNZ5VfhS0CBAIEBQIQCIFvCYIGMxowgyoJShkPjjqDaYUTw1F5P?=
 =?us-ascii?q?QEBBwIHDgMLgWiRfwEB?=
IronPort-PHdr: A9a23:E5FRqBTiusbr7FyTvayK1xk7Fdpso7jLVj580XJvo75Nc6H2+ZPkM
 QSf4Ph2l1bGUM3d7O4MkOvZta3sGAliqZaMuXwPatpAAhkCj8hFkwkpGsXQD0r9IbbjZDA7G
 8IXUlhj8jm7PEFZFdy4aUfVpyi74CQVXBLlOlkdGw==
IronPort-Data: A9a23:0MPmpq2ixryGItFOJ/bD5e9xkn2cJEfYwER7XKvMYLTBsI5bp2NSm
 jcXW2HVPavfNzb8f4t1O4W/9ENX6pTVzt8wQAVkqSg9HnlHgPSeCIXCJC8cHc8zwu4v7a5Dx
 59DAjUVBJlsFhcwgD/zYuC5xZVb/fjRFuKhYAL8EnksA1ciEWF50koLd9cR2uZAmcK+Dx6Gp
 eT8qsjePE7N8zNvOwr40YrbwP9UlKq04m9wUmAWP6gR4geAzyNNVfrzGInoR5fGatgMdgKFb
 7ubpF2J1jux1wsgDNqjjoH6fiUiKlIFFVXmZtJ+AsBOszAazsAA+v9T2Mk0MC+7vw60c+VZk
 72hg7TtEF1xZvWkdNM1CHG0GwkmVUFPFSSuzXKX6aR/xGWeG5fgLmkH4Ojb8uT0984uaVyi+
 8D0JxguMDu5pbiy7YuiU+Jr3MUzMNPTHqEm7yQIITHxVZ7KQLjpcvjy34cJ9wpo3pkIGuvCb
 c0EbzYpdA7HfxBEJlYQDtQ5gfusgX78NTZfrTp5p4Jruy6Cl0ooluGwWDbWUoXiqcF9k1uXq
 2TLuWvjCwAEOca3wDef9TSrnOCncSbTCdlIRePjqZaGhnWy/3QcOjAqa2KJ4qi8iBDvatx6D
 UAtr39GQa8arxfxEoaVsweDiGOfpAZZRsFdCfYS7ACW1rGS7hqFG3NCRTlEAPQqtdQ9WCcxk
 1CPgsngCT1omLKTVDSa7Lj8hT+7PykXIGsLTSIJCxYO59ClrY0u5i8jVf5mGa+xy8L4Ai3t2
 DmYqDBn2O1K1JZSiuO84EzNhC+qqt7RVAkp6w7LX2WjqARkeIqiYI/u4l/ehRpdEGqHZnrfl
 0Imwcyz1fkXBpbXlTyRWt0vPoj8sp5pLwbgbUhT847NHglBFlamdIFUpS5zP1t0Kc8WfSewP
 xeK4FsIudlUIWegarJxb8SpEcM2wKP8FNPjEPfJct5JZZs3fwiClM2PWaJy9z+3+KTPufhlU
 Xt+TSpKJS1FYUiA5GbvL9rxKZdxmkgDKZr7HPgXNShLLoZylFbOEu1ZbzNin8g87aiepx7S/
 coXPMyQ031ibQEKWQGOqdR7BQlTdRATXMmqw+QJLLLrClQ9QgkJVaSOqY7NjqQ5xcy5YM+Up
 CnlAie1CTPX2RX6FOl9Qiw5NuiyAscn9RrW/0UEZD6V5pTqWq73hI93Snf9VeBPGDBLpRKsc
 8Q4Rg==
IronPort-HdrOrdr: A9a23:hhPcKKrS8onvpMPOKeRtuG0aV5uVL9V00zEX/kB9WHVpm5Oj+v
 xGzc5w6farsl0ssSkb6Km90KnpewK+yXcH2/hoAV7CZniuhILMFu1fBOTZslrd8kHFl9K1tp
 0QO5SWaueAa2SS5PySiGbXLz9K+qjkzEncv5a7854bd3AOV0gP1WdEIzfePlx9RQFAC5Z8L5
 yB+8pBqQOnfHQcfu67CnMGU+WrnayBqLvWJTo9QzI34giHij2lrJTgFQKD4xsYWzRThZ8/7G
 nsiWXCl+iemsD+7iWZ+37Y7pxQltek4MBEHtawhs8cLSipohq0Zb5mR6aJsFkO0a2SARcR4Z
 bxSiUbToVOAkDqDyGISC7WqkfdOXgVmjzfIBSj8ADeSITCNUgH4ox69Mhkm1LimjYdVN0Q6t
 M340uJ85VQFh/OhyL7+pzBUAxrjFO9pT44nfcUlGE3a/prVFZ9l/1swKpuKuZ0IAvqrIQ8VO
 V+BsDV4/hbNVuccnDCp2FqhNihRG46EBuKSlUL/pX96UkhoFlpi08DgMAPlHYJ85wwD5FC+u
 TfK6xt0LVDVNUfY65xDPoIBcG3FmvOSxTRN3/6GyWRKIgXf3bW75Ln6rQ84++nPJQO0ZspgZ
 zEFEhVsGYjEnieevFmHKc7giwlbF/NLAgFkPsumKSRkoeMOobWDQ==
X-Talos-CUID: 9a23:KjbSLmNzg5508e5De3dMzmxOHu0ca2TWyy3RM1OiMURLcejA
X-Talos-MUID: 9a23:RAkoQwjaZkRO2GhRPhedL8MpFf5w7JaDNH40o9ZXvsvaZB1+HhGRtWHi
Received: from mail-westusazlp17011015.outbound.protection.outlook.com (HELO BY5PR09CU001.outbound.protection.outlook.com) ([40.93.1.15])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 10:23:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F0zh03Yedv6zlxP5DgFQ2LMx1HBe/VITMnUZxDqLAWCVDawOVqLM9KLoZTQufpiY3tpqXnkRK3mxHJIERzATh5BxPOwbnG3kqyLS49n4qOzVUhDoy1ezOoOwQF/d23In6kQDuzxiU33u4Im8E+JvtWuC6fj4jDRNz26/p65jBZMbWpUY7+KSLoE5X/Imb2qFLjoN30NPx6k9Lj2EyKf0faUm9wVB2J5+GJsrRUMxOQlaQuB3RY8r3gjx7QQ9cnazJEqhCjM0g67CbyIqqvHSL9onUAVODshqDNTPYUsfA18cC8VV6uUhI0XUSYVhE+RI56oqhB5jXkoCnxVdGMoenQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eSQDfkkuJPHCsG/6QEVtrb1EppoaOfV41qJQct0TnQM=;
 b=qbGlYbHpLF8d1xczpCrVPXZwLyiAVjCCmp/EKyOyNFReBRHQZkF9M0Zq+5gXnP8o1rbx6N9OyljwCEGeXvV5FSfuMsm/iKpccPh407XgyxH4Gzxpk0H7iwT58BLrJGrgdye3yAv9S/5to+d3ZVlCebrbvVzj2RFSIcgz2o1bz2GlWHg63UsUs783YgTWTi5cJGkU/fK0JZcKQLnyuyf6FsKUjUwrNALpZ0jsXikyJtQ4qhsITaG231Udq2WIWPfXi+j/o3zxc8LWbnv2U3+Xxf6R+rHOICxP2VD9NixYFYqPdJSyBYLmltJvWUqbcadv2v9d9viRRSo0vDVL7XGm5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eSQDfkkuJPHCsG/6QEVtrb1EppoaOfV41qJQct0TnQM=;
 b=pXhROeievT8TnNMSwEukZ8RdDupsocoVUnYIZpfdpyEdPxdSptO2KOKI19D452CvUoPiNgwKvAuQhy/JOxgeNW6C7CMtow0GwyxPQ3NYKSNJBDhUrDpcAsXpj0LOq7gvVIt25KjfFHPyZ/emhKGhfuFQl/hmdmBbyztRMLLIx8I=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by MW4PR09MB10342.namprd09.prod.outlook.com (2603:10b6:303:1f1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Tue, 2 Jun 2026
 17:23:14 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%7]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 17:23:14 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>, "discuss-gnuradio@gnu.org"
	<discuss-gnuradio@gnu.org>
Thread-Topic: IEEE Aerospace Conference 2027
Thread-Index: AQHc8rP9xz/pDrgPWEyrTKpUHVjiyw==
Date: Tue, 2 Jun 2026 17:23:14 +0000
Message-ID: 
 <SJ0PR09MB9126F37BE5A59A3C9588AB37EC122@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|MW4PR09MB10342:EE_
x-ms-office365-filtering-correlation-id: 77875af7-d0f3-48e1-f9c3-08dec0cba0b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|41320700013|366016|38070700021|8096899003|13003099007|18002099003|56012099006;
x-microsoft-antispam-message-info: 
 D+A9+Z3EGA2hRvxiHIpaMbXYCadoImu937jy2OL9ypqgMinwvkZTcW5eO4986kAwceSDyQjAVY0Q87+v1lUarrrdGRLPKXPYYSezdvV2VQCYb+nDF0VOByNmOkHJOn0RLfnniTO8yRGiY/I2IFYKjRS6cyMiT0La/hapA9hnKn9AFMB1V6HjTc6m3jrLjddDdlnPhHo5y3f0vZ///oFukUiTYbb7ESphJw16BMq8ZZjrzGvDP/l4sefkK0vj+0tSjr727PXVg5cnWeMQVLx4HPiud697UpI1ZCTp6QM3EuUILJj4mtHWRfCjraM3rlslqg38CuyUhe6nKdI0mrjbMSV8oe8WzjwJTOyxje326reIaovM3gPBD4Zrk2LRZjcIjDweEbOc+2p8vuxUbvS1Ih7ES2tRJv7YRrS0W/1VvJd556CGI5fkOBsseCiBqIcJIzEoelxATyU4BbDhmQ9QWopza/EIqp/+8om8pODW4LHtKhAF6espdBWV5BdRb49/BczlEjpeZRjOrDzTPwfeCOayOkQd2r6E5XNNU3cTgwMLIwPxlNSTAqteQ+xJARE0BowxMwUIoNky8v7Ydu7VKsrnMQUaqQEJ8V4ZySKWDumHulId2vOuNENJkdCIMrQLM5RqVAJPaOsbngBoZCzNNYL7/a9ZUSGGu/rH88u8FgYXBBOTo+JzOBwzuJWThH2tRTjfXuKIiAJb4z+DryqDEw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(38070700021)(8096899003)(13003099007)(18002099003)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?xoIlCHSuBbw7IFX8bf9aNzCuWkZYiH/vNXjnBo8gfQJdoXSL9QVVaxFF?=
 =?Windows-1252?Q?o5cSmtj/nNr1U0w+HcgxSpBW57Evx+4UWERS96kAm08BTRwMej5WjG+B?=
 =?Windows-1252?Q?dWd8Nswm6J3XpbN5/Pjc1D0RsZRv/ozS73S2mp/AD6E05DetBMMqQn58?=
 =?Windows-1252?Q?32jJpVjE1qm7mM+tGoPDuHUrrbR0Orgu6HBALqYUj3rJaRbyx40iZPiE?=
 =?Windows-1252?Q?StjRiOrqAT3eZd0NX0vhsS0b97orxH/3ePJlg+94NBgKwv9LOy/Jp8Cg?=
 =?Windows-1252?Q?g34M+gv2B70hf/EQRaAgSnrmxkLh2CBZgliqIidQzF+HqMGs0iLmrNqQ?=
 =?Windows-1252?Q?eCiYDdLQ9XOaT8OLhdVW8SjwjPRK7TGyiK9+8r8ZPF/hxNfTjMSF5rP7?=
 =?Windows-1252?Q?5zY3CwXrxYYfFqANG0ZPZbxGFpRKUTNNWjOzdEFBMb8wQ2FxNhBOQJMU?=
 =?Windows-1252?Q?HQRbR3pEXdwW7LNEGys4IBM0Yb+Tai6vWSsmdbCXdS1wCeyDzqqPUjK0?=
 =?Windows-1252?Q?K/8H7k4zfpygcCdjfYmt09mFOVCUOemkX/Ocm9FIqXfMH+8Y3lAYgchH?=
 =?Windows-1252?Q?UlaXj+xzVAQSH56X84Ey6uCTBPdbgMIqh0k2JAhcdGUxPHiaHU0utAjc?=
 =?Windows-1252?Q?+4PlA5JxDO8d3lw9FzDZ0ZKxFmm/OGTcCaSJL9mJsGLOHJmQHLuGs8rW?=
 =?Windows-1252?Q?5zYWDB9NfXAjKWwDMiDzKR4gGaiCYh/gBvWi7QQOW97kwNoPNdEvzieP?=
 =?Windows-1252?Q?6c0+hMyJOSGQYC6N6zMjZuKs8Z+kAXu7WiRKp9OiEg9mNmIM+cB3JQ2N?=
 =?Windows-1252?Q?cAt5HxhNcviV6x28fJ2DeLHcdaQMvzsa6rChjBv3OHSOy/SIIQjEgpMX?=
 =?Windows-1252?Q?5jRP3+NAwK+NHGdRwqXvvdc+FTpEFXU/cT53W0gABs5RJfbVPN4KOh1C?=
 =?Windows-1252?Q?RxAsjxcVMwNjAeMIexUWyAdb2DY8TYsend5rvPh5lfg48XLbLkSr3X6R?=
 =?Windows-1252?Q?CqEEzyurfKD+j0x8RHDu9JkCJIrqoy1a/X+yK+bCv2xtdSF8oe0Jza5w?=
 =?Windows-1252?Q?mX7Qg4Ze9o/nbjQRjSXeL7DpjA63NxPhDKYE9jluYEoSRzwPx9DN2JX1?=
 =?Windows-1252?Q?KMxrSsSS0m0WS6Eo3sLsZ0ABFQzmpf91Gk2aZdcdTNnCT49cfuu/XNER?=
 =?Windows-1252?Q?rFLf3+jFqb7x5cIW8F+6rIMHJs0wXQelZHlPljc1yPWicc4AUVfl6J6X?=
 =?Windows-1252?Q?e5yOfDS37nATP103TUutprWCEM+xzQRWl+YJYcBprs+jCOI3esc70jb0?=
 =?Windows-1252?Q?sNcIv0N+YBXJeKlrknZ4v+YGeGy9t0BfUbktaGORKsj8/pDizxgBjRyO?=
 =?Windows-1252?Q?dadH0f3FOdoP9EnAyyn8K9UOiOsmbHTdYLgu60cIbIbyc76J6l4mTS3u?=
 =?Windows-1252?Q?lwFqOSm28ziAZmV1UH3wcTTdhJIyPZbMFJ2BQ1dbhnHJdxjfWdxyQZ1M?=
 =?Windows-1252?Q?6bI1C4DuDT0sHNAhV2QxxGIJsRKnAb1IQ47SWdnMg5AONSYBUZND7Y+t?=
 =?Windows-1252?Q?y42ayRgih9cD66qsLuSbXqhP3aBvuLuLR1MDTbo+2ey7YICcpqpKkYzw?=
 =?Windows-1252?Q?fQb9JWNzCHjnQB53EL5vgY/1xuv+3qGACmmIsagUwF5T2GqM/YjUIepN?=
 =?Windows-1252?Q?N9VLSHxle60ZvghZk2GUw69Q/8wDQnY7hr/8foxP0HR8eokashWYX4h2?=
 =?Windows-1252?Q?XS9MjYkIpU5h7ICN4JDGLi0mPoTtuZTJDiInekGkBW908EguD9HmSGz+?=
 =?Windows-1252?Q?6RXUUymtM5uhEaKrObNmaHs5lkG/uoHSAtvwBpyZ7JPpokq7?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	FWYBxKBYJOW6OERK7wEatHRSrqw3O81ERLgwk0QGCGdJYPP/uDgtt9Q1ZyfTL8wwJetRIDE/bDQgSDlvR+LtzvxjNu1X57GNbQE7/bLHR/X7AeEU4K8MxtF8nGlIq5HQR0R53sOCjGjlJ/mpa1RQEX9+PAg7ilVtVHtre0VXaDQEP8VvOpAoHgAAuzsfvBAdpmSFs16hh/Zw/cQiaJj38nuCNXm0IIGLH9iHQADjhu/HaTZZ+mEE2EHsjAXYhB0jij7KKGNa8s2Q3Nat3gtpGeN83iYxCRo8FvYoQym6cmG2uVmKoD+BoMiu/j70RJlkFMFlJDyZ89uqS7Rv9Ff5/g==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77875af7-d0f3-48e1-f9c3-08dec0cba0b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 17:23:14.0369
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR09MB10342
Message-ID-Hash: SO7WMVZQ6OAKB6ZO7LSJE2OGG5Q3QFRI
X-Message-ID-Hash: SO7WMVZQ6OAKB6ZO7LSJE2OGG5Q3QFRI
X-MailFrom: prvs=6060c7cb2=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "danijela@ee.ucla.edu" <danijela@ee.ucla.edu>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] IEEE Aerospace Conference 2027
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OCOFQYNTZTYSECCMKKL2SGOKCCQSQLK7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8749418521929827607=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,m:discuss-gnuradio@gnu.org,m:danijela@ee.ucla.edu,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,aeroconf.org:url,aero.org:from_mime,mm2.emwd.com:helo,mm2.emwd.com:rdns,SJ0PR09MB9126.namprd09.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A175630AC0

--===============8749418521929827607==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126F37BE5A59A3C9588AB37EC122SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126F37BE5A59A3C9588AB37EC122SJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,



I am chairing the Software Defined and Cognitive Radio session at the upcom=
ing IEEE Aerospace Conference (http://www.aeroconf.org<http://www.aeroconf.=
org/>, https://aeroconf.org/cms/content_attachments/26/download).  This lar=
ge conference will take place March 6-13, 2027 in Big Sky, Montana.  The co=
nference provides a world-class technical program and provides excellent op=
portunities for both networking and recreation. This is one of the few conf=
erences where SDR can be put in the context of a complete system and can be=
 applied to new missions and concepts of operations.



Last year there were a few papers dealing with application of machine/deep =
learning to radio design.  I hope to see even more next year!

Abstracts are due soon, but I can take them later as well, while the full p=
aper is due end of October.  This session will focus on flexible radio arch=
itectures, including the use of GPPs, GPUs,  and FPGAs.  Reports of existin=
g systems and testbeds are of significant interest.  This year I=92d like t=
o introduce work related to machine learning as applied to wireless communi=
cations.



Please forward this to your friends and colleagues working in the areas of =
SDR, ML for signal processing, and cognitive radio.

Regards,

Eugene.


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB9126F37BE5A59A3C9588AB37EC122SJ0PR09MB9126namp_
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
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: rgb(=
36, 36, 36);">Hello,</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: rgb(=
36, 36, 36);">&nbsp;</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: blac=
k;">I am chairing the Software Defined and Cognitive Radio session at the u=
pcoming IEEE&nbsp;Aerospace&nbsp;Conference&nbsp;(</span><span style=3D"fon=
t-family: Arial, sans-serif; font-size: 10pt; color: rgb(5, 99, 193);"><a h=
ref=3D"http://www.aeroconf.org/" target=3D"_blank" id=3D"OWAb5452d02-f198-4=
61c-fe8e-2c7d66ae8648" class=3D"x_OWAAutoLink" title=3D"http://www.aeroconf=
.org/" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" data-linkind=
ex=3D"0" style=3D"color: rgb(5, 99, 193); margin: 0px;"><u>http://www.aeroc=
onf.org</u></a><u>,
</u><a href=3D"https://aeroconf.org/cms/content_attachments/26/download" st=
yle=3D"margin-top: 0px; margin-bottom: 0px;"><u>https://aeroconf.org/cms/co=
ntent_attachments/26/download</u></a></span><span style=3D"font-family: Ari=
al, sans-serif; font-size: 10pt; color: black;">).
 &nbsp;This large&nbsp;conference&nbsp;will take place March 6-13, 20</span=
><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: rgb=
(36, 36, 36);">27</span><span style=3D"font-family: Arial, sans-serif; font=
-size: 10pt; color: black;">&nbsp;in Big Sky, Montana.&nbsp;
 The&nbsp;conference </span><span style=3D"font-family: Arial, sans-serif; =
font-size: 10pt; color: rgb(36, 36, 36);">provides
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">a world-class technical program and provides excellent opportuni=
ties for both networking and recreation</span><span style=3D"font-family: A=
rial, sans-serif; font-size: 10pt; color: rgb(36, 36, 36);">.
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">This is one of the few&nbsp;conferences where SDR can be put in =
the context of a complete system and can be applied to new missions and con=
cepts of operations.</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rg=
b(36, 36, 36);">&nbsp;</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rg=
b(36, 36, 36);">Last year there were a few papers dealing with application =
of machine/deep learning to radio design.&nbsp; I hope to see even more nex=
t year!</span><span style=3D"font-family: Calibri, sans-serif; font-size: 1=
1pt; color: black;"><br>
<br>
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">Abstracts are
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: rgb(36, 36, 36);">due soon</span><span style=3D"font-family: Arial, sans=
-serif; font-size: 10pt; color: black;">,&nbsp;but I can&nbsp;take them lat=
er as well, while the full paper is due end of
 October. &nbsp;This session will focus on flexible radio architectures, in=
cluding the use of
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: rgb(36, 36, 36);">GPPs, GPUs,
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">&nbsp;and FPGAs. &nbsp;Reports of existing systems and testbeds =
are of significant interest</span><span style=3D"font-family: Arial, sans-s=
erif; font-size: 10pt; color: rgb(36, 36, 36);">.&nbsp;
 This year I=92d like to introduce work related to machine learning as appl=
ied to wireless communications.</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Calibri, sans-serif; font-size: 12pt; color: bl=
ack;">&nbsp;</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: blac=
k;"><b>Please forward this to your friends and colleagues working in the ar=
eas of SDR, ML for signal processing, and cognitive radio.</b></span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: rgb(255, 255, 255); margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: bl=
ack;"><br>
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: rgb(36, 36, 36);">Regards</span><span style=3D"font-family: Arial, sans-=
serif; font-size: 10pt; color: black;">,</span><span style=3D"font-family: =
Calibri, sans-serif; font-size: 11pt; color: black;"><br>
<br>
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">Eugene.</span></p>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature" class=3D"elementToProof">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Eugene Grayver, Ph.D.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Principal Engineer</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB9126F37BE5A59A3C9588AB37EC122SJ0PR09MB9126namp_--

--===============8749418521929827607==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8749418521929827607==--
