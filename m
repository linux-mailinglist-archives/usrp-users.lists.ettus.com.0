Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C28CAFBAA4
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jul 2025 20:28:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A574385E9A
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jul 2025 14:28:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751912881; bh=jdAGF5+tbigXK4S5fcdGnRsgVjj+4sfSMGv9tVmdz4s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Cj8ka7NAVZ2zHTJfsUD5V0LN6E+79yER+cqsIaGddvMmGHKuEeKBJmiOcW6KfhF/6
	 gIsawkOXB2NUE9UmKP3WucTPFJOQRryjfvVz0RwoN+ma5eiqC4N3N0whCNCfK3fjzZ
	 WdS6ebRyh0IadS+1P+heamMyqXDtGX1R0hMpyarWEMxERMtqvsF6F7GFkuIz0IsFu4
	 Vsxo8olQR2Vafm/bCsPmNRIvAP3CPCobRIumZ98SOgHka+ZyRNNxjSUwtm54wESQCQ
	 J0eSkGwVxvcqprhpRAKuoswoYdkBboT6FI4ouOUtLW6Mr+/ianWbppiwjNt3IBUdmQ
	 zelOjaa0QnbvA==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 0CF9B385BD8
	for <usrp-users@lists.ettus.com>; Mon,  7 Jul 2025 14:27:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="bnUsgQMB";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="mZg5lTYe";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1751912825; x=1783448825;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=lkmxyky+GT4sGnjLO/iR2hXcMf+pB9+uFitMeOg9zDU=;
  b=bnUsgQMB5/m+tx664+Q3nM0k2D8BZ5tFrwPIXpHjDGEehi7lck7e1Wnb
   SWpNaW95oyHz6R1ahpklI4joONrkXOEFeAgBJaaeUvBTtoygdTaZ0zWUi
   vGXEYrayzn9cHZfQ6t5NVbf4Y/I/Il4abLoRqZt1Cr8vQfNhxiLiCMYM7
   E=;
X-CSE-ConnectionGUID: cvw07EU/Rwe2gKlcBPPpgQ==
X-CSE-MsgGUID: FcI1R28tSKG+FYZroNOFZg==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="7830665"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600";
   d="scan'208,217";a="7830665"
X-IPAS-Result: =?us-ascii?q?A2GMAQBnEGxojg0BXShaHgE8DAILFYFTgUGBA0ABPQKBZ?=
 =?us-ascii?q?Zoek2yFAYJ6Axg/DwEBAQEBAQEBAQcCNxoEAQEDAQOCDIJ0Aot7JzcGDgECB?=
 =?us-ascii?q?AEBAQEDAgMBAQEBAQEBAQ4BAQEFAQEBAQEHBAECAhABAQEBAQE5BUmFew2EB?=
 =?us-ascii?q?2UJNgIBAQEBAQEBAQEBAQEdAjUMKgEfAwNAAQEmBQ0PAgFOMSUCBAEaAYJ5A?=
 =?us-ascii?q?YIcBwQLBwMysDaBNIEBggwBAQYEBNshGGOBZQmBSYN9gXCCShoBBSVIa4QPh?=
 =?us-ascii?q?Hc2gVVEgVeHa4QTgi+CJoECFB2EXIQTiHaGW4FEIgMmMywBVRMXCwcFW1UzA?=
 =?us-ascii?q?yAKNBUcAhQvDxoyHXMMKBKGbYQqK0+EGHiBGYNVEhJtDwaBHIESQAMLbT03B?=
 =?us-ascii?q?g4bBQSBNQWRFwcSQ4NDgSOBHjRpPZMAjzuOXpRiNAeEH4FeBgyJCJcUF4QEj?=
 =?us-ascii?q?Q+ZUZkGIqNChS4CBAIEBQIQCIF+ggAzGjCDKglJGQ+OOoNnhRO8T3g8AgcLA?=
 =?us-ascii?q?QEDCY8mAQE?=
IronPort-PHdr: A9a23:zVuKhBQUphSMFixU2O2+voekS9pso7jLVj580XJvo75Nc6H2+ZPkM
 QSf4Ph2l1bGUM3d7O4MkOvZta3sGAliqZaMuXwPatpAAhkCj8hFkwkpGsXQD0r9IbbjZDA7G
 8IXUlhj8jm7PEFZFdy4aUfVpyi74CQVXBLlOlkdGw==
IronPort-Data: A9a23:46vRJqC506qnvxVW/7bjw5YqxClBgxIJ4kV8jS/XYbTApG9z0jEHm
 mEZWmCHPv/cMTH0ed0kb4jjpkMB7JTRy9VqTANkpHpgZkwRpJueD7x1DKtR0wB+jyHnZBg6h
 ynLQoCYdKjYaFeC9k/1WlTGhSAlifHXLlbEILeZfHg3HEk8E39JZStLw4YRmpRvjcWyHzSDs
 Nbzp9y3EFK+0laYCEpMg064gE0p5aqaVA8w5ARkOKgU5ACGyRH5MbpGTU2PByqgKmVrNrPiL
 wrz5OnR1n/U+R4rFuSknt7TGqHdauO60aCm0xK6aoD66vRwjnVaPpUTbZLwXXxqZwChxLid/
 v0Q7MboEV9B0prkw4zxWzEAe8130DYvFLXveRBTuuTLp6HKnueFL1yDwyjaMKVBktubD12i+
 tQTNi9VMT2+wNipzei0ae1nrPwbNMbSadZ3VnFIlVk1DN4McM37ef2bzuIAhG52gd1SF/HDY
 cZfcSBocBnLfxxIPBEQFY46m+CrwHL4dlW0qnrJ/exmuC6KilUquFTuGIO9ltiiSNhak0CV4
 G3c9nXnDwsyPdGFznyC6H3EaurnwnOgANxMSdVU8NZEi3zK/DZDFCY1ehiVkMujjWiZdeBQf
 hl8Fi0G9vNoqBPDosPGdxG5u3WZpQVZVNxNCeQ26QalxazJpQGDCQAsUyVbcJk7r8IsXhQu1
 0SVhJXkGSByq/ueTnf1y1uPhTa7OCxQMmIZeTIfRBkB+4C8+Nhq1kuUCNF+DKSyk9v5Xynqx
 CyHpzQ/gLNVitMX06K8/hbMhDfESoX1ohAd7RvIBj2I00RDe4P/aK+s4nLj1e5PFdPMJrWeh
 0Qsl8+b5eEIKJiCki2RXekAdI1FAd7Va1UwZnY/QPEcGySRxpK1QWxHDNhDyKpBN88FfXr2b
 VTPpBhY9ptLZSTyNPYvOtn3DNk2x6/9E9ijTurTctdFfpl2ckmA4T1qYkmTmWvqlSDAcJ3T2
 7/EK65A7l5DU8yLKQZaoc9Hi9fHIQhlnAvuqWjTlUjP7FZnTCf9pU05GFWPdPsly6iPvR/Y9
 d1SX+PTlEgGALegPXGHrtdNRbzvEZTdLcCtwyCwXr7TSjeK5El/WqeNqV/cU9A7wPkNyrmUl
 p1DchYAkAqk3SOvxfq2hoBLM+i1AckXQYMTOC0nJ1Gz3HY/KY2o9r93SnfEVehPyQCX9tYtF
 6NtU5zZWpxnE22XkxxDN8WVhNI5LnyD21nRVxdJlRBjJfaMsSSVoIe8JmMCNUAmUkKKiCfJi
 +b4hlOFHcVSFlQK4QS/QKvH8m5ddEM1wIpaN3Yk6PEKEKkw2OCG8xDMs8I=
IronPort-HdrOrdr: A9a23:wL6ZSaGTSZ7KNtHIpLqFdpHXdLJyesId70hD6qkvc3Fom52j/f
 xGws5x6fatskdoZJhSo6H6BEDgewKVyXcR2+Us1NiZLW3bUQeTTb2KqLGSugEIeBeOvdK1t5
 0QFJSWYeeYZTcVsS+52njfLz9K+qjlzEncv5a6854bd3AJV0gP1WdEIzfeNnczaBhNBJI/Gp
 bZzNFAvSCcdXMeadn+LmUZXsDYzue72a7OUFojPVoK+QOOhTSn5PrRCB6DxCoTVDtJ3PML7X
 XFqQrk/a+u2svLhiM0llWjoKi+quGRi+erN/b8yvT9Hw+cxDpAKr4RGIFq9wpF2t1HoGxa7e
 Uk5S1QdfibokmhAV1crXbWqnXd+Sdr5Hn4xVCCh3z/5cT/WTIhEsJEwZlUax3D9iMbzaZBOY
 9wrhekXqBsfGf9tTW448KNWwBhl0Kyr3ZnmekPj2ZHWY9bbLNKt4QQ8E5cDZ9FRUvBmckaOf
 grCNuZ6OddcFucYXyctm5zwMa0VnB2GhudWEANtsGczjATlnFkyEkTwtAZgx47heQAYogB4/
 6BPrVjlblIQMNTZaVhBP0ZSc/yEWDJSQKkChPhHb0mLtB1B5vgke+G3Fxu3pDVRHUh9upCpK
 j8
X-Talos-CUID: 9a23:+lKNrWFpplZ7zn/UqmJs6lFMRe0YNUfCwS3fAEuzI15RULKsHAo=
X-Talos-MUID: 9a23:r9HlDQYGF9pR/uBTmTTN3Qs4ZNtTwIvtJnE/i5IgnOe2Onkl
Received: from mail-westusazlp17011013.outbound.protection.outlook.com (HELO BY5PR09CU001.outbound.protection.outlook.com) ([40.93.1.13])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2025 11:27:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IEG+jfaHv1UJOi2NKqXotxxIDitpS+6j5Fx/tmNIQgRM2gb9ZQsILvMt5s2XSW/08PcpVf3qjM/bWKNNScevvtvA0OtTST9iM8rrx+SgS2sFBi1nFugho9EimkBKjUEndT3a6e4mqWoZSE5GRFKJL+eciMy+Z7Xe3vPGISl5q3E31hOqbZnVBuxV6RVXW+t52BpGgBshIh1vcl9jG37vjiwf9SR0KHQTCruVHdwcRNrMetN4gOnPjO3iIe1nQf7q0IR88DjKY3XHDk6VOuYBw1AA233ab1lYtphcEGpoLsxUqGIXaGqsWROJoV27hhMr3CfVbo9n2VkfFaxMTHDJSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K/bMUWH7qKL58AJRGWELYIbNl82l7Oiy81Jm1asgPgs=;
 b=eRh9Fxyzv2dQmXLujuuQ5oQ1oaAdO/sztCaIy3J91McQRiqj84qlzRyT3QYjD5kl/xTcT/TzB27lcG7kZRu+/LfCa2hP9EYr23OYLEtFdNUsMKdmXSnww6yUzY74X6MZzh0ybUaqOOi4qt/qPuSJR6rf4t+YS/wBauAUloUgtqm5TuiqmTTLRp2ilSMmr3mftenBE03CUVV0gdKxbsc/IE4VT5jdyl1HoPs7YUqPkeXJEJnG9Qn3Mg850p/zxH4xGnFJzqH2gHc6Qekb9cKsqKqheFbIh+ra7vIu7rPokAM1orfQis8kzZy8+AM/Y8ZzcW3itsd/ojw71KOzj8UN0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K/bMUWH7qKL58AJRGWELYIbNl82l7Oiy81Jm1asgPgs=;
 b=mZg5lTYehoNmiO6QlMnNjGuz8jkUpg13M1ULKTaQ2i9yhchA/EFw0R2okuQNBDQ+uzF3TRAshbx/FggvJ91/QfSNOXRrWrzGDricxDsKJDZCwsHFaUbOzvg+U8aeeLkp3W7vyRiaS1XeXAgDVMdtWyW3Ng7GIS1m/5Pfx83OBaM=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by DM6PR09MB5896.namprd09.prod.outlook.com (2603:10b6:5:26b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Mon, 7 Jul
 2025 18:27:01 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%6]) with mapi id 15.20.8901.024; Mon, 7 Jul 2025
 18:27:01 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: "'discuss-gnuradio@gnu.org'" <discuss-gnuradio@gnu.org>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: 2026 IEEE Aerospace Conference
Thread-Index: AQHb72y7eAP/GpLZ4E+/ftBoe0dqkg==
Date: Mon, 7 Jul 2025 18:27:01 +0000
Message-ID: 
 <SJ0PR09MB9126FD88DDEF75440C4C5B46EC4FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SN6PR09MB3726D7D87F81583127681C3FEC980@SN6PR09MB3726.namprd09.prod.outlook.com>
In-Reply-To: 
 <SN6PR09MB3726D7D87F81583127681C3FEC980@SN6PR09MB3726.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|DM6PR09MB5896:EE_
x-ms-office365-filtering-correlation-id: d97ee27d-1794-4538-cab1-08ddbd83ddc8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|41320700013|1800799024|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?PMR6JndnAPV6wbJA6icLddSjOuK4zug5LzD+Q0TrZDHUuWpP51Jjhb51?=
 =?Windows-1252?Q?WOzt7+Xb43eQO7E0kvE9WNV9QBtZHy/0FNtUF8e+tdypBwmDSxQNPuab?=
 =?Windows-1252?Q?Jt87BoJycO0F5ix5Sy2+mqPPahl0HmxxDU6IYMX2rJ/Dsl/9hsfyuUFn?=
 =?Windows-1252?Q?z4Mhjt1wSfSCxhiFcCiIK01VEkYnV9Tm7b56/Tgyl4xjC3tnY2Jr1inW?=
 =?Windows-1252?Q?0FHWrCN/iY+tCop9gDDSoFk6qnRPKHURGiM33l0Aq+hbLUks3PSTy0vU?=
 =?Windows-1252?Q?gv1S3NvL97qQhzCSkZ66Xa9hpWgDzCKj/pyL3HDJp6QpjFkC9P2guqXl?=
 =?Windows-1252?Q?b3VM/jtl3oWadbsHXsqJuHR/eZ7bJca1Z0KCIxSbPaVMeFfD+LavdZdG?=
 =?Windows-1252?Q?l1kaoZuVPdL1mSW3cBG/wiVQQsbOsR7SVCQBOYkr6jvNpW6qzyJjyMCD?=
 =?Windows-1252?Q?S7Cc5KsRP/kaZge2/vpxDO3pDzMJWoV7Q+8aSjx2Viw6cNRTIs6Ges9T?=
 =?Windows-1252?Q?LvZOaRcVBYAsoQXkIgKHFkN7+6mR1ONAcIk9UhvA+z6y8r+mbmQmSQ9Y?=
 =?Windows-1252?Q?I1TsoI3AjrZdeQJb3jwVRtvi0p11a+5WJQhBidA/kz1QwD7PNARehudE?=
 =?Windows-1252?Q?OpxgLxefjmPJvR2lWcMkg729dbnB8QNHSxiw0thZv4HyXQKviNh6k/Lw?=
 =?Windows-1252?Q?vraJgK9Ee2dUgV9Ib6hQJIaIaOygMyPevK5v/hbJnAHF4+R5JEXCVNoi?=
 =?Windows-1252?Q?Yh8d72tBXDt+vSC8hn/xyNzoCo7dyMO60eOYw1LcGvcr9I87MOEVz+Dv?=
 =?Windows-1252?Q?2emCent+5lQ3rxYUeija8UlJS22R5MQQRgYxzOMX9JySvizbSJzBLB2E?=
 =?Windows-1252?Q?c1o/CEMeMkJ4+OKMfuA9IkMlCw5GLAFWXFXt3kdiPknyfiK0UtSkV61W?=
 =?Windows-1252?Q?wRFz/05xAuKyiGlphf6DPrW9+okTNX54TUZV4u+qLZWfGO6X/33agruO?=
 =?Windows-1252?Q?EeYzaSDeUKoskjbOab9fvg2TwvMsZwNVZ/Or/cjdg1FlsITXb+8/dgy3?=
 =?Windows-1252?Q?hOYVrKsBACvEcTWRto37ZsmU20kJvrGsHHcqmUR0+oF8QOOcs8IWpoyU?=
 =?Windows-1252?Q?dhd5CgpOw4er16W6oJhvH39oX7S829U/AI2zClA8VI7y1nYJKtM27pTK?=
 =?Windows-1252?Q?8a1oH+rTr6ULDtK2uCU1QqGovSA5p0IpiXroczHh0Fy8wRQJn/NAHEob?=
 =?Windows-1252?Q?muhfG00/0N9g58fvaX33W+N613eVZDPbnvKzpA8jpya7KvBIvIeIdn7a?=
 =?Windows-1252?Q?dT0rAe1uZtO8ddgAwPhpB9+1r52fMGQiT4uEnahgljsqVezOptMnvd/P?=
 =?Windows-1252?Q?FoKFrRB89lV7cLbN3CtBA97gU+B+UDtjhQoYt+1p9lOsj4UvGbj+3R3P?=
 =?Windows-1252?Q?Zh16Pu3O4tIFZgeDhPQr2rDvdbhMP02HaTVrP4/JfXDLF0z0tpc+y76j?=
 =?Windows-1252?Q?SrBZHm6W21W14sTXEHNv8ghLxWZzxYt3hm8sk/ijOgTyP/5JqCo=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?ie7lRVb3vxT3/QaFfzAgYKQSau/kmvNCLR2QNLYZBEaCn4EUMJgHgFYd?=
 =?Windows-1252?Q?upCQZaUZ2pNms0qIXo88iYlKPXS1eulSJBLOFZ0hKjCxTdHFouX+g3gT?=
 =?Windows-1252?Q?6WS/kMaiM5Px/FUQrmkmTkr6ctlSUz8hUV/invRAdaC8yIHKa6BoXlra?=
 =?Windows-1252?Q?rnghgt0IRIzxdm6WdLbVMzDpuDDTKoSkQGeGhG5u59BhveZRrDj53l1Y?=
 =?Windows-1252?Q?QS0d9YaV5FdFTb4f9eZNY6WPia7mmbr0ylnn25wFqIWfwcX8QH3qXGvz?=
 =?Windows-1252?Q?eFzLNm6vI4asZnYKfcX9xKhEX5hUqFZ6guUM2EHHJe+uzlbp/g9ZFuD1?=
 =?Windows-1252?Q?xXDsoaO4Ebs5wWLxmaEK39xMctD+j7sabN4M3ck10x03YGvw3J4CJMKS?=
 =?Windows-1252?Q?WuUir09kYaHP9cXSYxZX2qIjkWsQBl1dn/cS9/WqIVnAIhADRmkm6809?=
 =?Windows-1252?Q?93rRObO+IQ5wLzRhQRl0P61USjPpLKw8QMxJVeUx8wkxV+vi9qZEFi2k?=
 =?Windows-1252?Q?mV7j7W8+4WJ1zmaNDgpkKynxVjDnB6JtQ3cPcx5nuMHkFCCgbZ4o7KD3?=
 =?Windows-1252?Q?3cVwCn2WNpForxYihxVVdgLtT8yO6eBZDqqjK9EiSVNzgCSE343BIy33?=
 =?Windows-1252?Q?/16zN3wQrf9JHhwtf5bheThCsCq18iu/5ERmf3EYHIN3U80mLpOmmxml?=
 =?Windows-1252?Q?T0lo+2U2/xe4+0y3HQT2i0y9qUaXwPLaCMUV6798JTv+vYFSxopArgoF?=
 =?Windows-1252?Q?8h1cSQPKOJKlWh2VLcSm89mfeMemBvoBrZD9QJ+n5a6KxJk2Du6Qeq+1?=
 =?Windows-1252?Q?n0dCJ9TJaCTcC8/2lAcUyEvJjDha44e9NnGb6vpgXzzw+PCMtjA9sVRA?=
 =?Windows-1252?Q?rurLAxHIXi0Wd4SjvOPp1hcTct/Whk0EClqMVOxyZHUBlKAPAQOmShMC?=
 =?Windows-1252?Q?ZqofZFEef6rHz7oYgQpuDdyjMqmDlFxeO3i4ss/ALmbW6Qco/qq9ei5b?=
 =?Windows-1252?Q?0Ok/M08dxh0L/FOORQihG6X2eGoRfcIiowkv3WZBx+TBABvxJFqhcynq?=
 =?Windows-1252?Q?fgsTs8hTmYeWT8J0GHUvfJGg536huXoIKefuUyknuSREt5FAKuFBU/5Z?=
 =?Windows-1252?Q?SUEUTsTkMAbkcW4Q+Ps+uwHRcaUpsZiPa+60cdxp6VyTcTKUpvMwktFr?=
 =?Windows-1252?Q?7fsjP5AP2HoF4DRrUaKBYY1iDLwY9ErrxmTlP4KhDa213G/IUxWFC8Lh?=
 =?Windows-1252?Q?4RD9KegzJYPWkJ1TraH0d12qSukRZTrsw4cz3AA9YZWTU71V2DMia9Zj?=
 =?Windows-1252?Q?EA72p49LYAcLncSkuHttTVGoGi6sQB2El2HQNzqMS20JlVj57+edKbTx?=
 =?Windows-1252?Q?+KkUDASP1UtED4aIyPb2Sxj07/AayE+IH/s49Hvo+ZwG1VSqJo3g4lnj?=
 =?Windows-1252?Q?vw6IHqvLBXBN2Yapgglu53AB+r48bQ7iM+s6KJJv33iAReYxE4g7jM6C?=
 =?Windows-1252?Q?uPwLUwLsNP19EGodr2cMK8kGqg4ZWONnZ3KI12HVrLuf+nMufRdQD5VD?=
 =?Windows-1252?Q?BM17EtnD0VnMhJnHcWnFn6Y9Kd7lGOa00xjOgGf512qqvPjbqh+zZqiM?=
 =?Windows-1252?Q?5AN9sDqipYD62SxYuB762jHrTnpSaVpDX7V4lYzaKirgBblJdxqUncd8?=
 =?Windows-1252?Q?N7aWBooQc1M=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d97ee27d-1794-4538-cab1-08ddbd83ddc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2025 18:27:01.5147
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR09MB5896
Message-ID-Hash: AFUNNL7AXPGLNXJAYOIBAOGBDYONJOFK
X-Message-ID-Hash: AFUNNL7AXPGLNXJAYOIBAOGBDYONJOFK
X-MailFrom: prvs=27645128b=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 2026 IEEE Aerospace Conference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y6UZ25FVEHEYKBZ55H673LCHNAQ7LIHV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1151069430595450202=="

--===============1151069430595450202==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126FD88DDEF75440C4C5B46EC4FASJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126FD88DDEF75440C4C5B46EC4FASJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable



Hello,



I am chairing the Software Defined and Cognitive Radio session at the upcom=
ing IEEE Aerospace Conference (http://www.aeroconf.org<http://www.aeroconf.=
org/>).  This large conference will take place March 7-14, 2026 in Big Sky,=
 Montana.  The conference provides a world-class technical program and prov=
ides excellent opportunities for both networking and recreation. This is on=
e of the few conferences where SDR can be put in the context of a complete =
system and can be applied to new missions and concepts of operations.



Last year there were a few papers dealing with application of machine/deep =
learning to radio design.  I hope to see even more next year!

Abstracts are due now, but I can take them a bit later as well, while the f=
ull paper is due end of October.  This session will focus on flexible radio=
 architectures, including the use of GPPs, GPUs,  and FPGAs.  Reports of ex=
isting systems and testbeds are of significant interest.  This year I=92d l=
ike to introduce work related to machine learning as applied to wireless co=
mmunications.



Please forward this to your friends and colleagues working in the areas of =
SDR and cognitive radio.

Regards,

Eugene.



--_000_SJ0PR09MB9126FD88DDEF75440C4C5B46EC4FASJ0PR09MB9126namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp;</div>
<div id=3D"divRplyFwdMsg"></div>
<p style=3D"background-color: white; margin: 0in 0in 0.0001pt; font-family:=
 Calibri, sans-serif; font-size: 11pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt;">Hello,</sp=
an></p>
<p style=3D"background-color: white; margin: 0in 0in 0.0001pt; font-family:=
 Calibri, sans-serif; font-size: 11pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt;">&nbsp;</sp=
an></p>
<p style=3D"background-color: white; margin: 0in 0in 0.0001pt; font-family:=
 Calibri, sans-serif; font-size: 11pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: blac=
k;">I am chairing the Software Defined and Cognitive Radio session at the u=
pcoming IEEE Aerospace Conference (</span><span style=3D"font-family: Arial=
, sans-serif; font-size: 10pt; color: rgb(5, 99, 193);"><u><a href=3D"http:=
//www.aeroconf.org/" id=3D"OWA05fae1a2-2995-9063-ba29-cf1833dc9828" class=
=3D"OWAAutoLink" data-auth=3D"NotApplicable" style=3D"color: rgb(5, 99, 193=
); margin-top: 0px; margin-bottom: 0px;">http://www.aeroconf.org</a></u></s=
pan><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: =
black;">).
 &nbsp;This large conference will take place March 7-14, 20</span><span sty=
le=3D"font-family: Arial, sans-serif; font-size: 10pt;">26</span><span styl=
e=3D"font-family: Arial, sans-serif; font-size: 10pt; color: black;">&nbsp;=
in Big Sky, Montana.&nbsp; The conference
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt;">pro=
vides </span>
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: blac=
k;">a world-class technical program and provides excellent opportunities fo=
r both networking and recreation</span><span style=3D"font-family: Arial, s=
ans-serif; font-size: 10pt;">.
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">This is one of the few conferences where SDR can be put in the c=
ontext of a complete system and can be applied to new missions and concepts=
 of operations.</span></p>
<p style=3D"background-color: white; margin: 0in 0in 0.0001pt; font-family:=
 Calibri, sans-serif; font-size: 11pt;">
&nbsp;</p>
<p style=3D"background-color: white; margin: 0in 0in 0.0001pt; font-family:=
 Calibri, sans-serif; font-size: 11pt;">
Last year there were a few papers dealing with application of machine/deep =
learning to radio design.&nbsp; I hope to see even more next year!<span sty=
le=3D"color: black;"><br>
<br>
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">Abstracts are
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt;">due=
 now</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; =
color: black;">,&nbsp;but I can&nbsp;take them a bit later as well, while t=
he full paper is due end of October. &nbsp;This session
 will focus on flexible radio architectures, including the use of </span><s=
pan style=3D"font-family: Arial, sans-serif; font-size: 10pt;">GPPs, GPUs,
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">&nbsp;and FPGAs. &nbsp;Reports of existing systems and testbeds =
are of significant interest</span><span style=3D"font-family: Arial, sans-s=
erif; font-size: 10pt;">.&nbsp; This year I=92d like
 to introduce work related to machine learning as applied to wireless commu=
nications.</span></p>
<p style=3D"background-color: white; margin: 0in 0in 0.0001pt; font-family:=
 Calibri, sans-serif; font-size: 11pt;">
<span style=3D"font-size: 12pt; color: black;">&nbsp;</span></p>
<p style=3D"background-color: white; margin: 0in 0in 0.0001pt; font-family:=
 Calibri, sans-serif; font-size: 11pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: blac=
k;"><b>Please forward this to your friends and colleagues working in the ar=
eas of SDR and cognitive radio.</b></span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-family: Calibri, sans-serif; fon=
t-size: 11pt;">
<span style=3D"color: black;"><br>
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt;">Reg=
ards</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; =
color: black;">,</span><span style=3D"color: black;"><br>
<br>
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">Eugene.</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-family: Calibri, sans-serif; fon=
t-size: 11pt;">
&nbsp;</p>
</body>
</html>

--_000_SJ0PR09MB9126FD88DDEF75440C4C5B46EC4FASJ0PR09MB9126namp_--

--===============1151069430595450202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1151069430595450202==--
