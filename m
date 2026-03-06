Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMGIGqVEq2nJbgEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 06 Mar 2026 22:18:29 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77772227DBE
	for <lists+usrp-users@lfdr.de>; Fri, 06 Mar 2026 22:18:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00A1B38656C
	for <lists+usrp-users@lfdr.de>; Fri,  6 Mar 2026 16:18:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772831907; bh=bS0QwnhRlivdGNovMDAwWIJRugj+d0xxIgfe01TYc10=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AU734Pejc5XaeViINc9GOLkSX0T3gIQsldUwL/A/TdpzPsoQW88kar4ko2qNrS5pU
	 iHVMr3f5QuK2DQUVa/3VEN2aUrDzaRUxABYtJPnGcoDYKUjWKr6bejOo1oR8zGUpRq
	 gWK/SYROjtGv7zJ+yomgN+Rt/HZStJHmIHHTWO8AY1PZ03FjdEkCJlB6/qhcn+6+yd
	 gbUtcmcMYjMF+cD6zzCpI97xUtulcQ4EYBO6Xd8RQTdfVoUjCsDRBKwowTxYj7l64/
	 hiN4fsHb7Zr3dgjgTeLnH8ztwu5s3FSMifaUbJp+7nlc994kXYJVHSXL8HK8VII3pT
	 4GPtA/fUHcGKQ==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 268D138644F
	for <usrp-users@lists.ettus.com>; Fri,  6 Mar 2026 16:17:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="myt3xAq1";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="wcOfkeh9";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1772831834; x=1804367834;
  h=from:to:subject:date:message-id:mime-version;
  bh=BarBttShd2wzqSR5lmaUg0nqh3t9DHQAv8F19HJufuM=;
  b=myt3xAq14+9e6UuhfwuNFPOxxLCW5/s6r74Uxq+nYc5trXkZTNrL6lVR
   MqcNvIGsIW+MV7BRhq4UR/4QRsp68rPC8Q1uNzioV/fAaiPYrjdLrewZc
   qj/EFEI52jQBkUJb2Z/eZTrwv+NJlOidZNSUT7zRLB4eraSCQnj6mwL58
   g=;
X-CSE-ConnectionGUID: k2Gt44miQJqkDdn46WHLvA==
X-CSE-MsgGUID: 6wZQFXDKQbS4yASHcQdsnw==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11721"; a="8670181"
X-IronPort-AV: E=Sophos;i="6.23,105,1770624000";
   d="scan'208,217";a="8670181"
X-IPAS-Result: =?us-ascii?q?A2H8AgBdQ6tpjjMMXShXAx0BATwBBQUBAgEJARWBUoE7g?=
 =?us-ascii?q?QRBAUOBbK4Sh3wDVw8BAQEBAQEBAQEHAhQTKgQBAQMEhQACjSInOBMBAgQBA?=
 =?us-ascii?q?QEBAwIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHg?=
 =?us-ascii?q?SYBAQEBAQEBAQEBAQEdAjWBHAEBOBEBfycEG4J6gh4HBAsHAzatOYE0gQGCD?=
 =?us-ascii?q?AEBBgQE2ycYY4FnCYFNAYN8gXKCZQEqgTUBhBSFMIFVRIFXh2sfJoNOgg0ig?=
 =?us-ascii?q?iZ6FB2BKIYLhDCHJ4FEIgMmMywBVRMXCwcFXoEIA4EGbjIdgSM+FzNYGwcFh?=
 =?us-ascii?q?T8PilSBE4MAAwttPTcUGwMEgTUFjRYHVT6Dc4ItAaMFo0I0B4QfgV4GDKAeF?=
 =?us-ascii?q?6prLogakD6pFgIEAgQFAhAIgX+BfzMaMIMqUhkPjjqDZ8g5eDwCBwsBAQMJk?=
 =?us-ascii?q?2kBAQ?=
IronPort-PHdr: A9a23:GpZr0RfW0EVz1UB/4EJ+hoFhlGM/toqcDmcuAtIPh7FPd/Gl+JLvd
 Aza6O52hVDEFYPc97pfiuXQvqyhPA5I4ZuIvH0YNpAZURgDhJYamgU6C5uDDkv2ZPfhcy09G
 pFEU1lot3G2OERYAoDwfVrX93S/9zlUHQ/wZmJI
IronPort-Data: A9a23:6e+ZkqwJL4fmf6xUaId6t+c/xirEfRIJ4+MujC+fZmUNrF6WrkUEn
 GIaXGmAbK6DZGWkKtsiPISwpxsDvcKAz4NgGVY9qC00HyNBpOP7XtnIdU2Y0wF+jyHgoOOLy
 +1EN7Es+ehtFie0SjGFbOi59RGQ8onRH+WmUYYoAggoGEk8Dn5n0Uk78wIAqtYAqcCjBA+Qs
 s/FrcTaOVu0sxZ5KWt8B5ir8HuDh9ys/mlD1rACTaoT5gGGzCFLVMt3yZyZdhMUfKEFRoZWe
 M6elNlVzkuBlz8xB9WslKrMc0FiatY+6iDT4pb+c/HKbilq/kTe4I5iXBYvQR4/ZwGyojxE4
 I4lWaqYFF5zZvWU8Agqe0Iw/ylWZcWq8VJcSJS1mZT7I0buKxMAzxjyZa2f0EJxFutfWAlzG
 fIkxD8lbUqsm77qxbOCaPBvqsglcJfUHKcBkyQ1pd3ZJa5OrZHraYOa3eUAjRwN3pgXW/HDe
 8AedDxjKgzaZAFCMUsWD5R4m/q0gn74cHtTr1f9SagfvzCVnVc3ieKrbYO9lt+iHK25mm6Vu
 23L+Wm/DQsTJcKS0xKM/2irwOjVkksXXapCSuLgr64z6LGV7jIMOiQ4ZXeYmPOC1l+XYPJUE
 kAP/DV7+MDe82TwFYOhAHVUukWsowUGQ59NCOAg8ymJy7HI+ECUGnQZVXhKb9lOiSMtbTkj1
 1vMktryGSF06rSHTWrEqe/N92vvYG4SMHMIYjICQU0d+d7/rYovjxXJCNF+DKqyid6zEjb1q
 9yXkMQgr7ZJotJXi6C6xHLegB6goMSXcS4R+CyCCwpJ8ThFiJiZi5tEAGU3AN5FJYedC1SIp
 2QZgJKX/uQWVM7VzXbVHbxLG6y17fGYNjGamURoA5Qq6zWq/TikYJxU5zZ9YkxuN67omAMFg
 meM4mu9B7cJZRNGiJObharqWqzGKoC7S7zYugj8NIYmX3SIXFbvENtSibGsM5DFyxN2zf5X1
 WazdMenF3EBDqp7hDGxXf917ILHMhsWnDuJLbiilkzP+ePHOBa9F+1ZWHPQNbpRxP3f/23oH
 yN3a5HiJ+N3DLemOnG/HE96BQxiEEXX8ris9ZcGJrLYfls4cIzjYteIqY4cl0Vet/w9vo/1E
 ruVAye0FHKXaaX7FDi3
IronPort-HdrOrdr: A9a23:1eHV26pSO07Pdq6eGeTlXE4aV5vJL9V00zEX/kB9WHVpm5Oj+v
 xGzc5w6farsl0ssSkb6La90dq7MArhHP9OkP8s1NKZMDUO11HYSL2KgbGC/9SCIVy2ygc+79
 YGT0EWMrSZYjZHZK3BkWqF+qMbsby6GdeT9IXjJhlWLT1CWuVF1UNUGwybGkp5SE1tHpwiDq
 eR4cJBun6JZWkXRt7TPAhPY8Hz4/nw0L72ax8PABAqrCOUiymz1bL8Gx+Emj8DTjJ0x6s4+2
 StqX2y2kzjiYD39vbv7R6d031koqqu9jJ3Pr3BtiFaEESstu/iXvUYZ1TLhkFPnAjo0idjrD
 CEmWZcAyx+hkmhBF2dsF/j3RLt3y0p7GKnwViEgWH7qci8Xz4iDdFd7LgpBycxxnBQz+2U6p
 g7rV6xpt5SF1fNjS7979/HW1VjkVe1u2MrlaoWg2ZEWYUTZbdNpchHlXklZ6soDWb/8sQqAe
 NuBMbT6LJfdk6bdWnQui1qzMa3Vno+Ex+aSgwJu9CT0TJRgHdlpnFosPA3jzMF7tYwWpNE7+
 PLPuBhk6xPVNYfaeZnCOIIUaKMexzwqNL3QROvyHjcZd860ij22uLKCZ0OlZ6XRKA=
X-Talos-CUID: 9a23:8rAhd2M89qQC6+5DW3NI6BJIH8EcUGTe4HvWfxGHKUJ3YejA
X-Talos-MUID: 9a23:a1kM8wQvyiEWxa2eRXSymwNbGvdEwJ2kMxwcuK4msPCILipvbmI=
Received: from mail-eastus2azlp17012051.outbound.protection.outlook.com (HELO BN8PR09CU001.outbound.protection.outlook.com) ([40.93.12.51])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2026 13:17:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kikCyXEQtyNjpeNf4STaQ8LvMCzCdl6Lz0CQM73EsN5Jrpgdlc5y6B5j9makQ9Q6QA5fD2cVfj2Btx5TNWQByZ0VJa7Lp6XDQx+UaWLCwarJuUjly4sSbQ30VgVRpDp9mvcxYc4Xbu39zd2rHuWhiv7fxQtqXzlQIJAwVnbDglmopRb6Dn29b/9LGMvAljf6pcXhEFcKWFGrRxdI1dXuPeFYWWjRYvGbcxkt2Rf8rcCaVWNUAnQY8u9VUEm/y0+qWM4MlKyVKLswb67TwMHIZh7/GW+3hrTI6OJYsI+5LfpOIvTEYkW/9TrAHfRKRi6Si1aC9Qk8AWJE462TarFtIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s16l5XWjaftJMnrFTyp098brafOlNOvRhKdgcaX6kSI=;
 b=vxPyLzvIwBNFWXy1CO9xOEX9X3sBiV8gOZJ0bvsnEv6vkJUa76OueIS6hcQLS4QtwJHWOcCj7/PdDlmTDqDSfed99rBTEpvotN+mnkbJVJ66i1m65LlYdWwjJFKTkOua0RSeLxHEZWeFU4IAo7V7egW3tVuE4ks6mwWZrZivoKTIO/KofXU9XnTNOvF391+JeYqSwj+tXT/jHcr/lJ6fC6LSbYMJTp6+6ImcTytv/aKoBJZuab4aD2IY3hH11zk8fHWgTkTYfyqX4nIXon82fS8dM1/qZb2pyZ4cF8H1M4aFG2TCOMG+mU0L8qTnCikOefknLp7TI7MlrIDLSAfQvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s16l5XWjaftJMnrFTyp098brafOlNOvRhKdgcaX6kSI=;
 b=wcOfkeh9P1JPDnxXGoliVidaMQOt09uRPYLfBNVVDbU2x9g4WC/suTPReDExc0lwZnRfKL2FAfPLi43tYroEMyP2omDRXm/uDdQwXeRDh8tgM6nF8dtDUUHKEebDNdQZ88d7Sj5N8abb0k03ksQlLgNbdYBkFTqWC1esoJ/Vbqs=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA1PR09MB11756.namprd09.prod.outlook.com (2603:10b6:806:36d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.20; Fri, 6 Mar
 2026 21:17:09 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9678.017; Fri, 6 Mar 2026
 21:17:09 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 X4_200 image TX underflows
Thread-Index: AQHcra1pIGa4J647DkyptKq4MYHpkw==
Date: Fri, 6 Mar 2026 21:17:08 +0000
Message-ID: 
 <SJ0PR09MB912604328C9A23C7AD07A357EC7AA@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA1PR09MB11756:EE_
x-ms-office365-filtering-correlation-id: 51f33a72-df21-4b00-bc42-08de7bc5b9bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|41320700013|366016|8096899003|38070700021;
x-microsoft-antispam-message-info: 
 y/+2YQTW0EKFlA9SUgbgxNbIaSXD3D1dDk1MZUmZyEfQikhw0GEec6ShLQxGzxhslOIonlBnhnD9UKLFJDjLUAGRHZieuisDCqPTmDpxUNc+RdKkBTNJ+fzMaOLGV9aogJJF2Yby9cqnaliJ/By5bvTzhdvzMIZksDKea0VKtvPnuUvCqpJHCZaeTWEQsyPxLH5fX69My5BhOkpNXTNNcfbAikkYIQwvV/lJdhGr5ASkRINjpwF4pV1CO484ziVDzlgisrsvDf3OxbBBAOaYC6jZ0Fuko5wVgwSekN4wqiwY2S5WSERx4hcgERMG98kjlkz5Xi/0x4rKKNLzyx68MJuQWJpfT0eB32YpKmcOWTQ0l8GVcLEVLjS6EcQevzxtqfGl6xhBBaFwtMDGHaQkvtk1d65+y5c1tTAOwhSGxBYBnk7jW0GsFr0mJcoWjf4ZGkSTwe9sJAxlcMTyIm9j0Ywdh3yyKT/geazRW9bGmk8ldsRgPqcRSkcweKEGQMVWb+9GapGvOc9PuIqahP3x+R0ezYKul/lpNe9QNfosMYioebX7Vdn50AXqkzxAPLcCm6Nx2yJuZbCGPUjF2ttK9HRE7WkUaXUpcT96zBp92BRR4aKwPnVwNwuuvLYSH8B63VL4+1ZVXLZOJEM/cKWAh3G1XG+coc3AhJtBrM4aH2IivBIZs84DuR3Pv87s+16vZHV3O6nPtyuABe9FoNAuqmD/cuBcq7plJf6bjjY3+xA2Gcwb7GN78WDd4wrYXAUDSB8Wz5rPi8WPLRvq5fgipn//cEnoaBpUI1NMdm4RNRM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(8096899003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?Wnxn0tXQyM7eFV/R42vuSklv1+PY+iOPVHrLku9FgWDQfNr8Zl1gcs8J?=
 =?Windows-1252?Q?eR3R3gQSDtSE5HEZcyJ9OmG6g3tcYrFbdCLLlE1/EBGkZwyXcCRCOrlX?=
 =?Windows-1252?Q?G05F6GjGbob1rUWwkhAEYqiHP7MZ7weh5q9smI+yAYWYDbdSOQnFsVW7?=
 =?Windows-1252?Q?3bqJuUlGFoUADqxMnJHA+mA5uXs+fL3dfAh98FpD4MkF+LYrR6iwTJit?=
 =?Windows-1252?Q?vgVe0TuBVJr/i2Lju1c3XyuOxmprRoUpKmz8b3G2h+v4M7AMrK7wkUfz?=
 =?Windows-1252?Q?UtSzRmpuFko6RcODVYnhZQA+Zq2Uc/CwdImXYaqT/oGg0rZfqnYLKhJx?=
 =?Windows-1252?Q?f7yBUez0SpdjBqcE1tdZoI9vzeSff2rQnh6UhlRh3QrqZ/q3B8goXgYR?=
 =?Windows-1252?Q?cRO0Mk172wW3EcSXZCvr3JKuxhngtfkvTaIlMKxh6N8lNgAH6fJ20jdT?=
 =?Windows-1252?Q?6KRfq8tKkzN9ZaAtU+YAgZ/WhQ3wiYX5eTm9VGWfEqX1Se/5MaFjqRP/?=
 =?Windows-1252?Q?dK+bLZj1tYIUNUIv7tx54tN5ZsEo4u0u0LjMrj5q2jl6Py+iyA96xjDX?=
 =?Windows-1252?Q?xdxgXR2D67ZHhokGTN7kKsDi/CfKQkBWlNGTf0aX0a1ajtW7h1oR+9D3?=
 =?Windows-1252?Q?0fuWWrEahjz8OsNG5lU88jczuUKbsZODj35IBRAfMFUQg08BoR4kYaoF?=
 =?Windows-1252?Q?4S4TpcMMWMZVajc1ENcXYuPX/znApr4Ivz8amGf7NHIy3llSGBHlVNEL?=
 =?Windows-1252?Q?8XSZ3tRtq3k05OH0S+YlrF3wq7XYGjA/ewgqDjRg+CMZz+nSUKLpJod8?=
 =?Windows-1252?Q?O9zq0b+hf8hhWCaisIIEGxpA4Ka0Es5y8yT8qZ4kVC23vdNnyOdYewU7?=
 =?Windows-1252?Q?U5362fbHwmY6JJhNbnKdVwqwue6+hzhM2ooq7qUM5z0DaOMe/waftIAO?=
 =?Windows-1252?Q?74d/LR97QCYWj+ReVaT0TvYW67Sg/pmCL1SKQ84TZq8ckXSTojbZVhxn?=
 =?Windows-1252?Q?MD6vI/5Jk2uQ34zFJt04UUlMQUWwxx+ssFnJc8jtxwTVhpdcnGtNxTmE?=
 =?Windows-1252?Q?VgTrugEEd05u4VBRE//7dPG/xrL48RC2Xye4L3jJPElQn7kaZ1hwgvTS?=
 =?Windows-1252?Q?1x/1sOMlfhFrETwxJatcel8GGuMuk/ecB62WLVa+UE4CIrVOmOWG4yhT?=
 =?Windows-1252?Q?JCnaSLXcr3yLX9hY1m1rMM1bqfYRY7I3fVn2zWIw9mqwNSvHaS9+BbTr?=
 =?Windows-1252?Q?5DqmdVQotWQqbPCzcUXl45YzJCiWrjMyhfx5QRJwR2v9hqNbCtPtq0Jw?=
 =?Windows-1252?Q?+OZKxwxp+LMHrcuZqAoZIJl7iks9O8R/lkUhX6/rvtHqAI/d6igs/1iS?=
 =?Windows-1252?Q?I2kdOaRKPxCRk8UbEcUVFzf+9w8vsDgwi3zCQwKi32ZbJPlf2HjulR/v?=
 =?Windows-1252?Q?hLRMqDgRnob1MIRSjXbpQAdiXQg11hKwneqXTL522ZQRnmpgo5X3Vjmg?=
 =?Windows-1252?Q?vObvZXpqa5iG2FCmm7x1v+EeKgbP3HaL6dogLED3z8fh6e16Zxap7ai2?=
 =?Windows-1252?Q?9d2QshwS90+TZAn1a9eNIde/mGDOx9rSU/ho0fG/rha3v/9I1Zzau3gl?=
 =?Windows-1252?Q?3b0bprdN1lN/H7Cp165ZdIz9j478D4wwi4wWBXjM4Ha48/30fzaoGAp+?=
 =?Windows-1252?Q?MWTco6dEnAnqBXCt3rBK0x6s5KQa8Um+Lqz6iPY/974Bex5N5F/gblJ3?=
 =?Windows-1252?Q?9mEYabnHuP+zop0zayjBsge0VW6Y3paCX9vRM4TpmfX3Un61hroWobRX?=
 =?Windows-1252?Q?SM8RhYWCtICMvjPTT7TCT23Etc2HF4wyQ/egUUdUyWDFo3x2?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51f33a72-df21-4b00-bc42-08de7bc5b9bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2026 21:17:08.7785
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB11756
Message-ID-Hash: 6ND4WB33BA7MLVZ4ICUY37S53RUWN62H
X-Message-ID-Hash: 6ND4WB33BA7MLVZ4ICUY37S53RUWN62H
X-MailFrom: prvs=51832ae1a=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 X4_200 image TX underflows
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GP6TIKMERLVENE62ZD2LAC6SQLIRU3OM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7947902872085475323=="
X-Rspamd-Queue-Id: 77772227DBE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	NEURAL_HAM(-0.00)[-0.990];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Action: no action

--===============7947902872085475323==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912604328C9A23C7AD07A357EC7AASJ0PR09MB9126namp_"

--_000_SJ0PR09MB912604328C9A23C7AD07A357EC7AASJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

  *
I am trying to send out 16 channels of 40 Msps data from two X440s.
  *
Getting many underflows (~1/s or more)
  *
As far as I can tell the X440 are synchronized correctly
     *
Set time to 0 on next PPS (external)
     *
Start TX at a future time (5s) using a time_spec in TX metadata
  *
Each TX streamer is in a separate thread
     *
Each thread pinned to a different core
     *
CPU utilization is about 20%
  *
I am NOT reading anything from disk =97 just sending the same buffer over a=
nd over
  *
wmem_max size is 25 MB
  *
MTU is 9000
  *
UHD 4.9.0

What could be wrong?


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB912604328C9A23C7AD07A357EC7AASJ0PR09MB9126namp_
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
<ul style=3D"margin-top: 0px; margin-bottom: 0px; list-style-type: disc;" d=
ata-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;unorde=
redStyleType&quot;:1}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">I am trying to send out=
 16 channels of 40 Msps data from two X440s.</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Getting many underflows=
 (~1/s or more)</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">As far as I can tell th=
e X440 are synchronized correctly</div>
</li><ul style=3D"margin-top: 0px; margin-bottom: 0px; list-style-type: cir=
cle;" data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Set time to 0 on next P=
PS (external)</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Start TX at a future ti=
me (5s) using a time_spec in TX metadata</div>
</li></ul>
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Each TX streamer is in =
a separate thread</div>
</li><ul style=3D"margin-top: 0px; margin-bottom: 0px; list-style-type: cir=
cle;" data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Each thread pinned to a=
 different core</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation">CPU utilization is about 20%</div>
</li></ul>
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">I am <b>NOT </b>reading=
 anything from disk =97 just sending the same buffer over and over</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">wmem_max size is 25 MB<=
/div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">MTU is 9000</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">UHD 4.9.0</div>
</li></ul>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
What could be wrong?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div class=3D"elementToProof" id=3D"Signature">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Principal Engineer</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912604328C9A23C7AD07A357EC7AASJ0PR09MB9126namp_--

--===============7947902872085475323==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7947902872085475323==--
