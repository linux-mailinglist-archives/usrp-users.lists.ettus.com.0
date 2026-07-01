Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d6r/HZ5WRWq++goAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 01 Jul 2026 20:04:14 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9156F07E2
	for <lists+usrp-users@lfdr.de>; Wed, 01 Jul 2026 20:04:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b="0LlqXkG/";
	dkim=fail ("body hash did not verify") header.d=aero.org header.s=mailhub header.b=gJ8FvCS7;
	dkim=fail ("body hash did not verify") header.d=aerospacecloud.onmicrosoft.com header.s=selector2-aerospacecloud-onmicrosoft-com header.b=DH+bfUTe;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=aero.org (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DC2B386957
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jul 2026 14:04:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1782929050; bh=rGpTyTrsz3scubVLdYnAyUb7KtNSaf06lLzfgetWcsc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0LlqXkG/AwtXy8bpDHepXSIXYodFhFWMZfV6liyXZgxRtn2ctY8CX3wrwX1YlHOyQ
	 iBSuT5NVe8suYJ7LKanF4NsX5XuC5Fp6oyrpo+5UdHj60Vv3oTRzNpfE4sZj0nvrlW
	 OxU/Bun1yu/9JTyomQ7zlPu8c8G+13WwBPa+Q1ztrC+LIVoWxnuG8y7wTc3X2qP3OP
	 HOmnjPBpQuDRqMcYSUlP3NVChJCpwFDlEWmO2tU0bYYZkZIa1QYeB6FTWkW9r35Ii6
	 LGDiySbxqYyHFOeKJaocSpe9Rgx29Drqij39JdfkRAfkDiHA7Kqn1FWtkHebSBvP64
	 GLpG0ngmK/o7w==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id A22633868C3
	for <usrp-users@lists.ettus.com>; Wed,  1 Jul 2026 14:03:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1782929004; x=1814465004;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=R6vFKxxAADZcvnE2ifEJrMwFBfhkzAL27H5uuNjeFmk=;
  b=gJ8FvCS7mo9K+23nTddHl2CidmXtwsp+nIUbU9qe+hArQOYkNVnoGrG9
   RduXGGPTZW0mUBEFE3WAqL3w4a0nwJE+tlBN1DVhdyI9p08mGzIVCQGZM
   8wbOyHk3dFbU6qTS523MsTXGhEeGfKHJkAID1igHJn1TBgXbtDRzJ+uyr
   4=;
X-CSE-ConnectionGUID: 2lADaZNeRqWESGjwv3WQQA==
X-CSE-MsgGUID: IzXY4oKYQVejpIO08gFKew==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="9544171"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000";
   d="scan'208,217";a="9544171"
X-IPAS-Result: =?us-ascii?q?A2GMAQA7VUVqjjUMXShXA4JZgT0BgQNCAUWBbJZMA4ETn?=
 =?us-ascii?q?RyBEANRBg8BAQEBAQEBAQEHAi4BIgQBAQMEhH8CjU0nNwYOAQIEAwIDAQEBA?=
 =?us-ascii?q?QEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHgSYBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEdAjVVAQEBAQMBPwEBOA8CAQgRBAEBIQENJwodCAIEEwiCeoIeBwQLB?=
 =?us-ascii?q?wM2uyx4gTSBAYIMAQEGBATbKhhlgWkJgU2DfoFBMoJpAQEqgTWCXYEhGYR8N?=
 =?us-ascii?q?oFVRIEUAUKCMQcxPoQGIxwfBQEgg06CMIImehIbgSOBCoERQI0kUnIiAyYzL?=
 =?us-ascii?q?AFVExcLBwVeRUMDgQYjSwUtHYEjIR0XFh5YGwcFEiAqQUUjAydZQTgLQwWBW?=
 =?us-ascii?q?QKCCU4jHwM5f4EvdVhmFTA1gQMCEB4KbEIkgR4DC209NxQbAwSBNQWMKwdcF?=
 =?us-ascii?q?w+BS1JCWRMBMIJFLZJGLo9PR44ZlGM0B4QggWAGDJdtiDIXqmyZCKN9hRoCB?=
 =?us-ascii?q?AIEBQIQCIF+UoEuMxowQ4JnUxkPjjqDac4MeT4BBwIHDwKBc5ACLYFQAQE?=
IronPort-PHdr: A9a23:ECLxtRbqyINfwj9XXOz8A6T/LTAqhN3EVzX9orIriLNLJ6Kk+Zmqf
 EnS/u5kg1KBW4LHo+lFhOzbv+GFOyQA7J+NvWpEfMlKUBkI2skTlhYrVciCD0CzJfX2bis8S
 cJFUlIt/3yyPUVPXsjkYFiHq3Co6ngVABqsXTc=
IronPort-Data: A9a23:vlqedKBPsegFXhVW/yHjw5YqxClBgxIJ4kV8jS/XYbTApDklhGMPz
 TRNXj2HaPvfamukeo8jbdzj8R8Au57VnIM2TANkpHpgZkwRpJueD7x1DKtR0wB+jyHnZBg6h
 ynLQoCYdKjYaFeC9k/1WlTGhSAlhfrULlbEILeZfHg3HEk8E39JZStLw4YRmpRvjcWyHzSDs
 Nbzp9y3EFK+0laYCEpMg064gE0p5qmaVA8w5ARkO6gU5AaGzBH5MbpGTU2PByqgKmVrNrPiL
 wrz5OnR1n/U+R4rFuSknt7TGqHdauO60aCm0xK6aoD66vRwjnVaPpUTbZLwXXxqZwChxLid/
 v0Q7MboEV9B0prkw4zxWzEAe8130DYvFLXveRBTuuTLp6HKnueFL1yDwyjaMKVBktubD12i+
 tRCLBkhZyKlitiv/5+AZetzmJ8cFfDCadZ3VnFIlVk1DN4MZ8D7ef2bzuIAhG52gd1SF/HDY
 cZfcSBocBnLfxxIPBEQFY46m+CrwHL4dlW0qnrJ/exmuC6Klkosi9ABM/KMEjCObchIkUueq
 yTJ5W3oHBwAHNWS0z3D9Wij7gPKtXKmBN5LS+TQGvhCoU+j9zAUKywva1a5udie0h6xdfFSN
 BlBksYphfNprhD0JjXnZDWlu2Sc+wMHVsBLO+k78x2WjKfI/xuCQGMDS1Z8hMcOscY3QXkn3
 0SVgsizDC5rqOTKESvHrurP6zSvJSISMGkOIzceShcI6MXip4d1iQ/TStFkE+i+idid9SzML
 y6i9iwXq7whq8MxzpqWxn/FnCz3maHwZ1tgjunIZV5J+D+Vc2JMWmBFwV3S7PIFIY+CUkSa5
 nEWn9DHs7hXV8nQz2qKXfkHG6yv67CdKjrAjFVzHp4nsTOw53qkeoMW6zZ7TKuIDirmUWCxC
 KMwkVoBjHO2AJdMRfQpC25WI5hypZUM7fy/CpjpgiNmO/CdjjNrAx2ClWbLhDqxzyDAYIk6O
 JyBdt2rA2pSAqN91FKLegvp6pdynnpW7TqKHfjTlk37uZLAPiL9YeleajOmMLtmhJ5oVS2Jq
 b6zwePWkU0HCIUTo0D/reYuELz9BSJmVcqo8pAJJrbrz8gPMDhJNsI9CIgJI+RN95m5XM+Rl
 p1hcie0EGbCuEA=
IronPort-HdrOrdr: A9a23:+S2ALaPyEL+UBsBcThijsMiBIKoaSvp037BL7TENdfUxSKelfq
 +V/cjzqiWE7gr5NEtNpTnCAtj4fZqkz+8P3WBJB8bZYOCEghrVEGgB1+vfKlTbckWVygc678
 hdmsNFZeEYY2IVsS6GiDPIa+rIFOP3kpxB+Y/lvhBQpHlRGsJdBvBCe2Km++RNNWx7OaY=
X-Talos-CUID: 9a23:6EgrYmCSrBLwnzL6E3Nj3WIdKOYoSGTi4Uz/IVCmUllQcZTAHA==
X-Talos-MUID: 9a23:vhodLgrRoubMkoSvbO4ezxBwBPY05IefMX4Ak40nnJHUOgJTNijI2Q==
Received: from mail-eastus2azlp17012053.outbound.protection.outlook.com (HELO BN8PR09CU001.outbound.protection.outlook.com) ([40.93.12.53])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2026 11:03:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z+tM2sV0EksjxRruSBCKBTGvsCuEJrmx5fDP75yK+Cav9wAMmbxihvOptt/8Ysl5J+Q+E/4ngIkqieo01teQt/lxlufty7hwaHFSJPh6gW6QKsVBLtcVMn1UUsBpgqZWg19E2l1buLIAZOPNt4pNq+BE0hPsLMm/krdgo7OMYq5B157Cmapy/dJIydsabK21Q/hYGCFDMDIgQ2Zdj8X8m4ARCitGRY33DGTi5bIYWxqruOAuTzNZR8sA8NBzqAYtIJL3I25Es9G/GvP6GJh34lll16gag/oTfm55ByAjpJ58W7yr7xWzJ6s3AK+Csgh7Vy99fw1PVZfPZW92HYMuLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZBzrrnm/9yIpCwL8Scf2p/4OL1pDsIt5NEYHaq/KVmM=;
 b=CyREUX/6R2h5hHIU/VovVL8fSBxWCl4dAB8cy2p36Pew2KALM619RXnqWyKbsvqNvXw1NnXsx+KuRq6sD7v5yasLb6xJakFhnCGeWGRFKAxVHjlB5qKheipU18s1WeUAtpKT6T1sk9c40wyEvIQ2tSO5NZy2NTqpPtIbGpIcQPP4UzRuwSSfwoBMKX9x+iNOS6nudr9NjrP298eje5RuNMfkWOLrmtijdAMLrqWatDFIhkhnnXW/FgQA4Nx1YfbCvUEo2bjkYcd3KuBj3JbaXaevAT9bMdbF+4ZcJ0GCsZXofdRp0Qdqqi1MsWYq5BiO1R0TA4mQsWUDUC0o0DW3PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZBzrrnm/9yIpCwL8Scf2p/4OL1pDsIt5NEYHaq/KVmM=;
 b=DH+bfUTePOTGrblv1jn3o/i2d6XbNLrayFllvw2YXA0AhNydXL0Zmn8u+HdWTaM+R8JDzNa6TIsRBHrEPqN+dURY7anp5+eoR3gG7BuQq5GohVy3XyJn/ztXvf7fg+VleKzkBkB2dDUsypFjZxcAkSeedLb1YPLiPl5Ap5ejEjc=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by PH8PR09MB10300.namprd09.prod.outlook.com (2603:10b6:510:18f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Wed, 1 Jul 2026
 18:03:20 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%7]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 18:03:20 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 RFNoC build with TX FIFO
Thread-Index: AQHdCOeSaclwuRlUrEyueQFJgPeIyrZY9bl2
Date: Wed, 1 Jul 2026 18:03:20 +0000
Message-ID: 
 <SJ0PR09MB9126DC2ACEE891812F0FAE53ECF62@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|PH8PR09MB10300:EE_
x-ms-office365-filtering-correlation-id: d6a367b2-4a5c-4262-7e31-08ded79b08ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|41320700013|23010399003|18002099003|22082099003|38070700021|56012099006|6133799003|8096899003|3023799007;
x-microsoft-antispam-message-info: 
 7JvkhIsYdmhisrJDxohtaRJnQDj7kNj0imGE0ez3eJb03RxQveDnXJkjgv52Giwjf/VlkZKz+gj+NfLHEjFUv2t3cTj1FuQVFZ1sqjYK5HGelUEURAomUvGiXwyBMOsx0Bb7d0X+wv6Aq0X4T9MOjdtb2n9Kzc/Af5SOkHsO6btmDwEt1Zdk8taUX+uA8ScsGaw/LHHu8euzLXtSwsRPMAoEjY1s4E6/w8TbrMI4V/Vv9nmeHNq3t1yG6GGJbz7cj0LQIZevLjsaIcyy82g/OijgpJ8CFDPGxt/mwuEHsk0EkWR1kxdTmhiZ0ytGkrKyiPCrqQcg3RxcRry7bRQil782L++BoXe6GkYlTr7JoNCn2zqIY2okOMC9XMFYPkepxCb6Iv9G/D4Kd57lpuyJBw9KGZm0iQdZjFn5KCSkLGsPIJGow2V0TBuhDzIoOqxftFjeZYAiCxifIGLdoWld70Iu9A2n+t5gr3oS+V0uqIOh6UkXh2uIX0oug8+v18qnKsKO+I6rmhTDvLl+Hg++5+mwKc5qiYS4n8ghxJuCvdCl25nGFsMPX3VmiZiu8yM8m4qtKX8y23VFxLYNrnQcTACb21GpPCH0N7DAVbHnv/SzDxJTuuH4U0VQuMCkVwNMyhkpfAaxulEaDU9hpXlOgaVOpKAYEf5eMFWxjLmPBkMLKW4FU0QgNME61X6XpeftoAaeVO6Z1B5hQD5umNHBiWix6ym7fpGJU5ZZts3R+RU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(41320700013)(23010399003)(18002099003)(22082099003)(38070700021)(56012099006)(6133799003)(8096899003)(3023799007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?1KbCiyNJgwNa5SB3/7Fs54LYL9rd9HwlrLHvXesS8ZKInVdft6QBghVhd3Bo?=
 =?us-ascii?Q?ufScKqACS610rM63k2YERIyV3e31WbNROjtKTw2Hm8NqSx+r2dlH2VM4fdl4?=
 =?us-ascii?Q?GebyAOTMRii6jETf9oKLh9mePxHqF9Cmsf1ajtwVD2GWBrJI3l3xJ1++PkNO?=
 =?us-ascii?Q?1DqoTUlMi2z0tD1I+tmeEklbYQFfQrOgzMHFMywD0dwB9kPv6XlkW6fpFRR3?=
 =?us-ascii?Q?3gKNSF6nKI3CCHAoB7ZCEq+xtmhWbgxTyKtnIOfc7pOPlYccJMf0ejoEhcAC?=
 =?us-ascii?Q?8xKbiD/bh4+0lFzOW4ay9kxuHduLoL0IxV1qSNNTWaBZWaa8AWQj5XIaMiV6?=
 =?us-ascii?Q?0vg1qOSMvg9x9FNzYmRr1vQ/Fr23Pv98nG4R0yP1iTSLFEhE7nXoR32XzXFe?=
 =?us-ascii?Q?VZnEOz8AJJizdWSpZkID5k/C8PE6pkqucPzdGlEMnPXepJIMDshl4pnwdyDh?=
 =?us-ascii?Q?FmLlTHvzPMM1pZB+579jwx6qYMjiapw76qUv8KCRfDubMUHCfWE+0H2ynStE?=
 =?us-ascii?Q?wnkF9spQ32nZDStG8Z7ZCvVNSw1OtVmz+r8SDJdKQ5ZMvaBxl4Pe2s0ueH09?=
 =?us-ascii?Q?7bTRf/YVS+0Q9FM/wAYY3x1jXyCWviQO7NlQh3xqAHbnN2sSgJYmeVA+MxRl?=
 =?us-ascii?Q?d/lqi0cu6bbDYrTFCf5AlY2nVyh5c9lVLN70uBCUOB//3z3ZuhM3hmPyAhjl?=
 =?us-ascii?Q?KxD8CySuU4rKQPcQeN8trwJbvzFXjnBdSxFVZT9XE4B5vy0PQjUAcRrU+R7b?=
 =?us-ascii?Q?aX/mqUkWX7PXfPPxrFFGm3DFAw+OHw1czQFNAQLkcTEdTZSk9/d1lAQCJiV4?=
 =?us-ascii?Q?JQ0/jVPMphuR+qsus00LaOmo7OlfRyMWVKLLtSTwngnUxqRoyBFZ3ve17Ayw?=
 =?us-ascii?Q?SA6VPTybLyUR8fxkBcuE9wK1pL+FN5XTC4V15SCp8o/EGi7WudAVVh5LqFq9?=
 =?us-ascii?Q?Ew1rMWQEb4LRnlFhaQtamCBjyT6juKw76sYs4amOzUqlINN5WFOVtierldk8?=
 =?us-ascii?Q?mUW4o4dDJtpg3fkMIWqX/4r3ESlLQ9ZspDudwADfTySJx23pj173cY/lWsyv?=
 =?us-ascii?Q?p2H/Opq6FB4yabPdYQeWMTkSehXqrVpApjEZ47HBSeqYUg6sbz8Yk0by0aRg?=
 =?us-ascii?Q?G8VytLBwVFYVTKFctc+BUabPv2B7Q8+HWWyqeDkG0BpBD88ODZUfeAzgdkgX?=
 =?us-ascii?Q?vqSBmWPO407+xFaqk2LjgumdIbsZSDOWrZUJF7uiMopjazfZH4ADVm4meW6E?=
 =?us-ascii?Q?gCPYexON37uwMT97Zs2OrXYhaRHNYLT8KeI7xOLvGez2olGddx8fCKYGiMOr?=
 =?us-ascii?Q?6MCc1e0dVUdBYGHuUx9O6tJgGczm/EhKn/CbeMQDyiOqEQ8/s5osQOFJWN+A?=
 =?us-ascii?Q?mwQN8jWvpZRuBXwN5w7aH4b3GadboXab08tOoEH4YmcDO/GTSHYpnUyjUzyj?=
 =?us-ascii?Q?R/TuXkaRN9kE4GUuxIeCHoOBy1LkcQfR+CGRSPAuL4v3YFAp2b5jHDvzsDKL?=
 =?us-ascii?Q?b9OfJc2GhdtsN54vdgC6ojhfJlJeH6Nj1Gx6WQQVs+2+EY+UmxCQoDbqHwQc?=
 =?us-ascii?Q?jc0vW+py6SP3vjZXpWQmt04tY+PQl+/ykMFcdW6ctDJfsnjOfUJRIz+Hc/72?=
 =?us-ascii?Q?DK9wJPFDnyrVIFQQ/OX4W8jCMsA1Od3Uai7ehVjAKsxgBPGGlCNPNAjgJN6R?=
 =?us-ascii?Q?52twjmuq/KDFVN6nv2AMjPSn2/9ICq52LedYgcbUQ4o2L7RA?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	mS8v86eRexClSn/1bM8nIjvL7zsO0NLuxUHC6X09Ehx9cBR7XG+xvzPNTlP+dJli0hNsvmL4A/lx0UNTJnN1UTXIY9pN4edkKeeUfMbjeT0gdEV2r2jmjtc4rrSzMyI0TgEBTfOK2xvR/Zngs+/U6Wpk5mwwhDesTez4N4KsFAfvy1n3bO7/ogASIJYU/Huk47Ze8m8HCTfsmWox7JaSZ3mh5GPZSfmT/QC5fkGkO2kOFTJ7jOxR/ytTEzm8GTOP4Cz4vhyr7hKqnXgGdc3dwOGlprAt7fhKdx5Sj1YalzuMLuKWoUNHx7orvZ+RtfJ6yJ4vugj25EaWeQb99fJKfg==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6a367b2-4a5c-4262-7e31-08ded79b08ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2026 18:03:20.2924
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR09MB10300
Message-ID-Hash: XDP4KEHAIWIRYQAK5AE4JECWGBAEDH4Y
X-Message-ID-Hash: XDP4KEHAIWIRYQAK5AE4JECWGBAEDH4Y
X-MailFrom: prvs=635f5c779=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 RFNoC build with TX FIFO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DGLWAH3ANJUW22IB5YEAANYZ6LD7CO5X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4472705113234504914=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.ettus.com:from_smtp,SJ0PR09MB9126.namprd09.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F9156F07E2

--===============4472705113234504914==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126DC2ACEE891812F0FAE53ECF62SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126DC2ACEE891812F0FAE53ECF62SJ0PR09MB9126namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Turns out even rebuilding the stock .yml results in the same error.  Is the=
re something wrong with either my build or with the version of FPGA code ch=
ecked in?
Eugene.
________________________________
From: Eugene Grayver <eugene.grayver@aero.org>
Sent: Tuesday, June 30, 2026 4:33 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: X440 RFNoC build with TX FIFO

Hi,

I am trying to work around the underflows on the TX.

I added a AXI DMA FIFO and rebuilt.  As far as I can tell the yaml is OK, b=
ut when I load the new bit file,

uhd_image_loader --args type=3Dx4xx,addr=3D192.168.10.2,clock_source=3Dinte=
rnal,time_source=3Dinternal --fpga-path ./uhd-4.9.0.1/fpga/usrp3/top/x400//=
build-usrp_x440_fpga_X4_200_fifo/X440.bit

I get an error:

[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable: 1:0

Note: I had to rename the resultant bit file from x4xx.bit to X440.bit to a=
void an error related to a missing .dts file (since the DTS file is correct=
ly named X440.dts).


Here's the .yml file.  Note that I removed the RX DDC to reduce the FPGA co=
ngestion.

-----------------------
# General parameters
# -----------------------------------------
schema: rfnoc_imagebuilder_args          # Identifier for the schema used t=
o validate this file
copyright: >-                            # Copyright information used in fi=
le headers
  Copyright 2023 Ettus Research, a National Instruments Brand
license: >-                              # License information used in file=
 headers
  SPDX-License-Identifier: LGPL-3.0-or-later
version: '1.0'                           # File version
chdr_width: 64                           # Bit width of the CHDR bus for th=
is image
device: 'x440'                           # USRP type
image_core_name: 'usrp_x440_fpga_X4_200_fifo' # Name to use for the generat=
ed output files
default_target: 'X440'                   # Default make target
inherit:
  - 'yaml_include/x440_radio_base.yml'
  - 'yaml_include/x4xx_x4_base.yml'

parameters:
  RF_BW: 400
  ENABLE_DRAM: True
  NUM_DRAM_BANKS: 2
  NUM_DRAM_CHANS: 8
  DRAM_WIDTH: 128

# A list of all stream endpoints in design
# ----------------------------------------
stream_endpoints:
  ep0:                                  # Stream endpoint name
    ctrl: True                          # Endpoint passes control traffic
    data: True                          # Endpoint passes data traffic
    buff_size_bytes: 262144             # Ingress buffer size for data
  ep1:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep2:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep3:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep4:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep5:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep6:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep7:
    ctrl: False
    data: True
    buff_size_bytes: 262144

# A table of which crossbar routes to include
# -------------------------------------------
# Rows correspond to input ports and columns correspond to output ports.
# Entering a 1 includes and a 0 removes that route from the crossbar.
crossbar_routes:
  #  eth0  eth2  dma   ep1   ep3   ep5   ep7
  #     eth1  eth3  ep0   ep2   ep4   ep6
  - [ 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth0 (QSFP Port 0, Lane 0)
  - [ 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth1 (QSFP Port 0, Lane 1)
  - [ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth2 (QSFP Port 0, Lane 2)
  - [ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth3 (QSFP Port 0, Lane 3)
  - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1 ] # dma
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep0 (radio0.0)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep1 (radio0.1)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep2 (radio0.2)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep3 (radio0.3)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep4 (radio1.0)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep5 (radio1.1)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep6 (radio1.2)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep7 (radio1.3)

# A list of all NoC blocks in design
# ----------------------------------
noc_blocks:
  radio0:
    block_desc: 'radio.yml'
    parameters:
      NUM_PORTS: 4
  radio1:
    block_desc: 'radio.yml'
    parameters:
      NUM_PORTS: 4
  duc0:
    block_desc: 'duc.yml'
    parameters:
      NUM_PORTS: 4
  duc1:
    block_desc: 'duc.yml'
    parameters:
      NUM_PORTS: 4
  fifo0:
    block_desc: 'axi_ram_fifo.yml'
    parameters:
      NUM_PORTS: 4
      MEM_ADDR_W:   32
      MEM_DATA_W:   128
      MEM_CLK_RATE: "300e6"
      # Create 4 non-overlapping 2 MB buffers
      FIFO_ADDR_BASE: "{32'h00600000, 32'h00400000, 32'h00200000, 32'h00000=
000}"
      FIFO_ADDR_MASK: "{32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF, 32'h001FF=
FFF}"

  fifo1:
    block_desc: 'axi_ram_fifo.yml'
    parameters:
      NUM_PORTS: 4
      MEM_ADDR_W:   32
      MEM_DATA_W:   128
      MEM_CLK_RATE: "300e6"
      # Create 4 non-overlapping 2 MB buffers
      FIFO_ADDR_BASE: "{32'h00600000, 32'h00400000, 32'h00200000, 32'h00000=
000}"
      FIFO_ADDR_MASK: "{32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF, 32'h001FF=
FFF}"

# A list of all static connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys
#   - srcblk  =3D Source block to connect
#   - srcport =3D Port on the source block to connect
#   - dstblk  =3D Destination block to connect
#   - dstport =3D Port on the destination block to connect
connections:
  # RF A:0 TX
  - { srcblk: ep0,    srcport: out0,  dstblk: fifo0,  dstport: in_0 }
  - { srcblk: fifo0,  srcport: out_0, dstblk: duc0,   dstport: in_0 }
  - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
  # RF A:1 TX
  - { srcblk: ep1,    srcport: out0,  dstblk: fifo0,  dstport: in_1 }
  - { srcblk: fifo0,  srcport: out_1, dstblk: duc0,   dstport: in_1 }
  - { srcblk: duc0,   srcport: out_1, dstblk: radio0, dstport: in_1 }
  # RF A:2 TX
  - { srcblk: ep2,    srcport: out0,  dstblk: fifo0,  dstport: in_2 }
  - { srcblk: fifo0,  srcport: out_2, dstblk: duc0,   dstport: in_2 }
  - { srcblk: duc0,   srcport: out_2, dstblk: radio0, dstport: in_2 }
  # RF A:3 TX
  - { srcblk: ep3,    srcport: out0,  dstblk: fifo0,  dstport: in_3 }
  - { srcblk: fifo0,  srcport: out_3, dstblk: duc0,   dstport: in_3 }
  - { srcblk: duc0,   srcport: out_3, dstblk: radio0, dstport: in_3 }
  #
  # RF B:0 TX
  - { srcblk: ep4,    srcport: out0,  dstblk: fifo1,  dstport: in_0 }
  - { srcblk: fifo1,  srcport: out_0, dstblk: duc1,   dstport: in_0 }
  - { srcblk: duc1,   srcport: out_0, dstblk: radio1, dstport: in_0 }
  # RF B:1 TX
  - { srcblk: ep5,    srcport: out0,  dstblk: fifo1,  dstport: in_1 }
  - { srcblk: fifo1,  srcport: out_1, dstblk: duc1,   dstport: in_1 }
  - { srcblk: duc1,   srcport: out_1, dstblk: radio1, dstport: in_1 }
  # RF B:2 TX
  - { srcblk: ep6,    srcport: out0,  dstblk: fifo1,  dstport: in_2 }
  - { srcblk: fifo1,  srcport: out_2, dstblk: duc1,   dstport: in_2 }
  - { srcblk: duc1,   srcport: out_2, dstblk: radio1, dstport: in_2 }
  # RF B:3 TX
  - { srcblk: ep7,    srcport: out0,  dstblk: fifo1,  dstport: in_3 }
  - { srcblk: fifo1,  srcport: out_3, dstblk: duc1,   dstport: in_3 }
  - { srcblk: duc1,   srcport: out_3, dstblk: radio1, dstport: in_3 }
  #
  # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: gpio0=
 }
  # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: gpio1=
 }
  # BSP connections are inherited from YAML include files
  - { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport: dram0 }
  - { srcblk: fifo1, srcport: axi_ram, dstblk: _device_, dstport: dram1 }

  - { srcblk: radio0, srcport: out_0, dstblk: ep0,    dstport: in0  }
  - { srcblk: radio0, srcport: out_1, dstblk: ep1,    dstport: in0  }
  - { srcblk: radio0, srcport: out_2, dstblk: ep2,    dstport: in0  }
  - { srcblk: radio0, srcport: out_3, dstblk: ep3,    dstport: in0  }
  - { srcblk: radio1, srcport: out_0, dstblk: ep4,    dstport: in0  }
  - { srcblk: radio1, srcport: out_1, dstblk: ep5,    dstport: in0  }
  - { srcblk: radio1, srcport: out_2, dstblk: ep6,    dstport: in0  }
  - { srcblk: radio1, srcport: out_3, dstblk: ep7,    dstport: in0  }



# A list of all clock domain connections in design
# ------------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys
#   - srcblk  =3D Source block to connect (Always "_device"_)
#   - srcport =3D Clock domain on the source block to connect
#   - dstblk  =3D Destination block to connect
#   - dstport =3D Clock domain on the destination block to connect
clk_domains:
  - { srcblk: _device_, srcport: ce,         dstblk: duc0,   dstport: ce   =
 }
  - { srcblk: _device_, srcport: ce,         dstblk: duc1,   dstport: ce   =
 }
  # Other clock domains are inherited from YAML include files
  - { srcblk: _device_, srcport: dram,   dstblk: fifo0, dstport: mem   }
  - { srcblk: _device_, srcport: dram,   dstblk: fifo1, dstport: mem   }


--------------------------------


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB9126DC2ACEE891812F0FAE53ECF62SJ0PR09MB9126namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Turns out even rebuilding the stock .yml results in the same error.&nbsp; I=
s there something wrong with either my build or with the version of FPGA co=
de checked in?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Eugene.</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Eugene Grayver &lt;eu=
gene.grayver@aero.org&gt;<br>
<b>Sent:</b> Tuesday, June 30, 2026 4:33 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> X440 RFNoC build with TX FIFO</font>
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
Hi,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
I am trying to work around the underflows on the TX.&nbsp;</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
I added a AXI DMA FIFO and rebuilt.&nbsp; As far as I can tell the yaml is =
OK, but when I load the new bit file,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
uhd_image_loader --args type=3Dx4xx,addr=3D192.168.10.2,clock_source=3Dinte=
rnal,time_source=3Dinternal --fpga-path ./uhd-4.9.0.1/fpga/usrp3/top/x400//=
build-usrp_x440_fpga_X4_200_fifo/X440.bit</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
I get an error:</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable: 1:0</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Note: I had to rename the resultant bit file from x4xx.bit to X440.bit to a=
void an error related to a missing .dts file (since the DTS file is correct=
ly named X440.dts).</div>
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
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Here's the .yml file.&nbsp; Note that I removed the RX DDC to reduce the FP=
GA congestion.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
-----------------------</div>
<div class=3D"x_elementToProof">
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# General parameters</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# -----------------------------------------</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
schema: rfnoc_imagebuilder_args&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Id=
entifier for the schema used to validate this file</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
copyright: &gt;-&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Copyright information used in=
 file headers</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; Copyright 2023 Ettus Research, a National Instruments Brand</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
license: &gt;-&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# License information used=
 in file headers</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; SPDX-License-Identifier: LGPL-3.0-or-later</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
version: '1.0'&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # File version</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
chdr_width: 64&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Bit width of the CHDR bus for this im=
age</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
device: 'x440'&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # USRP type</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
image_core_name: 'usrp_x440_fpga_X4_200_fifo' # Name to use for the generat=
ed output files</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
default_target: 'X440'&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; # Default make target</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
inherit:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - 'yaml_include/x440_radio_base.yml'</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - 'yaml_include/x4xx_x4_base.yml'</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
parameters:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; RF_BW: 400</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; ENABLE_DRAM: True</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; NUM_DRAM_BANKS: 2</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; NUM_DRAM_CHANS: 8</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; DRAM_WIDTH: 128</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# A list of all stream endpoints in design</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# ----------------------------------------</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
stream_endpoints:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; ep0: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Stream endpoint na=
me</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: True&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes control traf=
fic</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes data traffic=
</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; # Ingress buffer size for data</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; ep1:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; ep2:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; ep3:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; ep4:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; ep5:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; ep6:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; ep7:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; data: True</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# A table of which crossbar routes to include</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# -------------------------------------------</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# Rows correspond to input ports and columns correspond to output ports.</d=
iv>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# Entering a 1 includes and a 0 removes that route from the crossbar.</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
crossbar_routes:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # &nbsp;eth0 &nbsp;eth2 &nbsp;dma &nbsp; ep1 &nbsp; ep3 &nbsp; ep5 &=
nbsp; ep7</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # &nbsp; &nbsp; eth1 &nbsp;eth3 &nbsp;ep0 &nbsp; ep2 &nbsp; ep4 &nbs=
p; ep6</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth0 (QSFP Port 0=
, Lane 0)</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth1 (QSFP Port 0=
, Lane 1)</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth2 (QSFP Port 0=
, Lane 2)</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth3 (QSFP Port 0=
, Lane 3)</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # dma</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep0 (radio0.0)</d=
iv>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep1 (radio0.1)</d=
iv>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep2 (radio0.2)</d=
iv>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep3 (radio0.3)</d=
iv>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep4 (radio1.0)</d=
iv>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep5 (radio1.1)</d=
iv>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep6 (radio1.2)</d=
iv>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep7 (radio1.3)</d=
iv>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# A list of all NoC blocks in design</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# ----------------------------------</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
noc_blocks:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; radio0:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'radio.yml'</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; radio1:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'radio.yml'</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; duc0:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'duc.yml'</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; duc1:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'duc.yml'</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; fifo0:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'axi_ram_fifo.yml'</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_ADDR_W: &nbsp; 32</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_DATA_W: &nbsp; 128</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_CLK_RATE: &quot;300e6&quot;</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; # Create 4 non-overlapping 2 MB buffers</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_BASE: &quot;{32'h00600000, 32'h00400000, 32'=
h00200000, 32'h00000000}&quot;</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_MASK: &quot;{32'h001FFFFF, 32'h001FFFFF, 32'=
h001FFFFF, 32'h001FFFFF}&quot;</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; fifo1:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; block_desc: 'axi_ram_fifo.yml'</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; parameters:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_ADDR_W: &nbsp; 32</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_DATA_W: &nbsp; 128</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; MEM_CLK_RATE: &quot;300e6&quot;</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; # Create 4 non-overlapping 2 MB buffers</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_BASE: &quot;{32'h00600000, 32'h00400000, 32'=
h00200000, 32'h00000000}&quot;</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_MASK: &quot;{32'h001FFFFF, 32'h001FFFFF, 32'=
h001FFFFF, 32'h001FFFFF}&quot;</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# A list of all static connections in design</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# ------------------------------------------</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# &nbsp; - srcblk &nbsp;=3D Source block to connect</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# &nbsp; - srcport =3D Port on the source block to connect</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# &nbsp; - dstblk &nbsp;=3D Destination block to connect</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# &nbsp; - dstport =3D Port on the destination block to connect</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
connections:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF A:0 TX</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep0, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_0&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_0, dstblk: duc0, &nbsp; dstpor=
t: in_0&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_0, dstblk: radio0, dstport: in=
_0&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF A:1 TX</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep1, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_1&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_1, dstblk: duc0, &nbsp; dstpor=
t: in_1&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_1, dstblk: radio0, dstport: in=
_1&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF A:2 TX</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep2, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_2&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_2, dstblk: duc0, &nbsp; dstpor=
t: in_2&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_2, dstblk: radio0, dstport: in=
_2&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF A:3 TX</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep3, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_3&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_3, dstblk: duc0, &nbsp; dstpor=
t: in_3&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_3, dstblk: radio0, dstport: in=
_3&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; #</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF B:0 TX</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep4, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_0&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_0, dstblk: duc1, &nbsp; dstpor=
t: in_0&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_0, dstblk: radio1, dstport: in=
_0&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF B:1 TX</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep5, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_1&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_1, dstblk: duc1, &nbsp; dstpor=
t: in_1&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_1, dstblk: radio1, dstport: in=
_1&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF B:2 TX</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep6, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_2&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_2, dstblk: duc1, &nbsp; dstpor=
t: in_2&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_2, dstblk: radio1, dstport: in=
_2&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # RF B:3 TX</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: ep7, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_3&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_3, dstblk: duc1, &nbsp; dstpor=
t: in_3&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_3, dstblk: radio1, dstport: in=
_3&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; #</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: =
gpio0 }</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: =
gpio1 }</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # BSP connections are inherited from YAML include files</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport: dram=
0&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: fifo1, srcport: axi_ram, dstblk: _device_, dstport: dram=
1&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio0, srcport: out_0, dstblk: ep0, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio0, srcport: out_1, dstblk: ep1, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio0, srcport: out_2, dstblk: ep2, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio0, srcport: out_3, dstblk: ep3, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio1, srcport: out_0, dstblk: ep4, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio1, srcport: out_1, dstblk: ep5, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio1, srcport: out_2, dstblk: ep6, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: radio1, srcport: out_3, dstblk: ep7, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
<br>
<br>
</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp;</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# A list of all clock domain connections in design</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# ------------------------------------------------</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# &nbsp; - srcblk &nbsp;=3D Source block to connect (Always &quot;_device&q=
uot;_)</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# &nbsp; - srcport =3D Clock domain on the source block to connect</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# &nbsp; - dstblk &nbsp;=3D Destination block to connect</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
# &nbsp; - dstport =3D Clock domain on the destination block to connect</di=
v>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
clk_domains:</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: _device_, srcport: ce, &nbsp; &nbsp; &nbsp; &nbsp; dstbl=
k: duc0, &nbsp; dstport: ce&nbsp;&nbsp; &nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: _device_, srcport: ce, &nbsp; &nbsp; &nbsp; &nbsp; dstbl=
k: duc1, &nbsp; dstport: ce&nbsp;&nbsp; &nbsp;}</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; # Other clock domains are inherited from YAML include files</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: _device_, srcport: dram, &nbsp; dstblk: fifo0, dstport: =
mem&nbsp;&nbsp; }</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
&nbsp; - { srcblk: _device_, srcport: dram, &nbsp; dstblk: fifo1, dstport: =
mem&nbsp;&nbsp; }</div>
<div class=3D"x_elementToProof" style=3D"line-height:19px; font-family:Apto=
s,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
<br>
</div>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
--------------------------------</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div id=3D"x_Signature" class=3D"x_elementToProof">
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
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

--_000_SJ0PR09MB9126DC2ACEE891812F0FAE53ECF62SJ0PR09MB9126namp_--

--===============4472705113234504914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4472705113234504914==--
