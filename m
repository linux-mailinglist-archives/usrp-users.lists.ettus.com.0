Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 703316AA809
	for <lists+usrp-users@lfdr.de>; Sat,  4 Mar 2023 05:47:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AC2D3848A7
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 23:47:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677905246; bh=oAfne1XlmBzfYDqvTNQw8YSgS71m1r1LWeLPa2JGZfA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PSb6r21woko9q+rgb6QekQ2n6F+mUCjIjxzBaNVn6guBqozGsNvoLuhBoAXlpYKtW
	 5BJXcj+Tl+m3A6rPOUEepQsuuNoc9mUFA1qU68DVs+72v4l6jVTUc+FZdWemhOYrhR
	 UvjtMiBtT4+B0jExOFHlhMY/4QcDaWcrWyo3ApW1UOBgcPb0IxUtQi8AKbEcW6lrP1
	 yLlnWbQ/V2riBEetht8jeIHFHbbM3Rp+ILCXuEBsE35Beob0JMgHMjaN3cUSFXrUPD
	 fn4UgTsoS9AyvUHuyKpxa8w3BfKU1lvjZk1PecclHexxJ84OGRv55s+COm+8AlGyAa
	 iYhUS3W5M8P2g==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id C1014384681
	for <usrp-users@lists.ettus.com>; Fri,  3 Mar 2023 23:46:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="nPK7+C3g";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="CDjgw3fL";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1677905196; x=1709441196;
  h=from:to:subject:date:message-id:mime-version;
  bh=o2t9MBWSlnPMmc8upzWqceS3GjcbeqgENVavOYQBCfE=;
  b=nPK7+C3ghAKe7kJu0BiU/ciUsTzzZTZCp2CnCgTZD+r7KJ5J1P91a0w9
   lsPJRepuRYanyxDLXsDaK2GFVBbDLA0tTuh3XY5xXDUC2HzdlqfXIiqwI
   ep93hXvm568b+wroG5KgdvivVVN79Oib81Nxo6wnWznzzflXTJxNjkT0G
   Q=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="152970"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400";
   d="scan'208,217";a="152970"
X-IPAS-Result: =?us-ascii?q?A2HFCADbywJkh2xBL2hXAxwBAQE8AQEEBAEBAgEBBwEBF?=
 =?us-ascii?q?YFPAoEogQNzgVyVc5cDhk0UgREDGD4PAQEBAQEBAQEBBwIUEx0EAQEDBIR+A?=
 =?us-ascii?q?oUxJjQJDgECBAEBAQEDAgMBAQEBAQEDAQEBBQEBAQEBBwMBAgIQAQEBARkJF?=
 =?us-ascii?q?wcOEAUihWgNg1ZNOwEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQUCgQiBFQEBOBEBPUMnBBuCdoIXDQYDMbBrgTSBAYIIAQEGBAScTBhdg?=
 =?us-ascii?q?V4JgUABg0qFS4hOgVVEgRVDgjeEfTdFg0qCLpY5aoE0dIEhDoE9gQkCCQIRa?=
 =?us-ascii?q?4ESCGiCAEECD3ILDoEHBzYDRB1AAwt1PzUUIQUEVYEbJAUDCxUqRwQINgUGT?=
 =?us-ascii?q?xECCA8SDyxEDkI3NBMGgQYLDhEDTYFIBHGBFgoCUZwURx8GgTB2kjkyjWeBe?=
 =?us-ascii?q?owsk2k0B4N9BYFJBgyfNRaDfZNPkXCXX6duAgQCBAUCDgiBYoEmcDMaMIMqU?=
 =?us-ascii?q?hkPjiwNCYNQj3l1OwIHCwEBAwmLJgEB?=
IronPort-PHdr: A9a23:gOsIMR8DFZRTh/9uWCboyV9kXcBvk7n3PwtA7J0hhvoOd6m45J3tM
 QTZ4ukll17GW4jXqpcmw+rbuqztQyoMtJCGtn1RfJlFTRRQj8IQkkQpC9KEDkuuKvnsYmQ6E
 c1OWUUj8Wu8NB1cFdz5IVrIrS7a0A==
IronPort-Data: A9a23:99j1+KOvWUqyXo7vrR0+l8FynXyQoLVcMsEvi/4bfWQNrUp232BSm
 GJNCGzSOK7bMGD9c9p+YY+39x5X7MLQyd5iGgZtpSBmQlt08seUXt7xwmUcns+xwmwvaGo9s
 q3yv/GZdJhcoln0+Er1atANilEljf/TFtIQMMadZmYrA1YMpB4J0XpLg/Q+jpNjne+3CgaMv
 cKai8DEMTdJ4RYsWo4vw//F+UMHUMja4mtC5QRlPasT5zcyqlFMZH4hDfDpR5fHatQMdgKKb
 76r5K20+Grf4yAsBruN+losWhBirhb6ZGBiu1IOM0SQqkEqSh8ai87XAMEhhXJ/0F1lqfgsk
 Y8V7cTYpTABZcUgkMxFO/VR/roX0aduoNcrKlDn2SCfItGvn9IBDJyCAWlvVbD09NqbDklu0
 /M8FSsjbiyepKGE/+y5Te48vOU8eZyD0IM34hmMzBn2Jt1+G9XvZv6P4tVVmjAtmspJAPDSI
 dIDbiZiZwjBZBsJPUoLDJU5n6GjgXyXnz9w8QrJ4/ZopTaOilUpgNABM/KMEjCObchIkUueq
 yTJ5W3oHBwAHNWS0z3D9Wij7gPKtXqmAtNNTNVU8NZXhRrPnn4MLSZRCwagrt2b01yCWpV2f
 hl8Fi0G9vFprxTyFLERRSaQvWWeplsBQNdKCMU+6RqR0ezZ/xqEHS4PSTspVTA9nMo/RDhv2
 lrSkNjiXWZrqOfMESLb8aqIpzSvPyRTNXUFeSIPUQoC5Z/kvZ03iRXMCN1kFcZZk+EZBxnQ5
 T+ukTMQh4kOro056Pu5+leXuROz882hohEO2i3bWWes7wVcbYGjZpC15VWz0RqmBNbIJrVml
 ChU8/Vy/NziHrnWy3PQGLRl8KWBoqfaYGeF0DaDCrF4r2z1k0NPa7y8992XGauEGsMNeDusb
 EqItghavMVXJCHzNf8xZJ+tAcM3y6SmDc7iSv3fcttJZN52aROD+yZtI0WX2ggBcXTAc4lgY
 v93ku71Uh727JiLKhLqF4/xNpd3nUgDKZv7H8yT8vhe+eP2iISpYbkEKkCSSesy8bmJpg7Ym
 /4GaZTVm0sPCregO3GOmWL2EbzsBShqbXwRg5wGHtNv3iI8QwnN9teNn+J+Ktw9wMy5aM+Tp
 CHmCx4wJKXDaY3vclzRMSg6MtsDrL56rHkhOjcrM0rg0mo+e4vH0UvsX8pfQFXTz8Q6laQcZ
 6BdJa2oW60TIhyapWh1RcSj/eRKKk737SrQZHDNSGZkIPZdq/nhoYKMkv3Hr3VVUUJadKIW/
 9Wd6+8sacZdGV85Vp2MM5pCDTqZ5BAgpQ67ZGOQSvE7Rakm2NECx/DZ5hPvH/wxFA==
IronPort-HdrOrdr: A9a23:YS42Ua/r/s4ecjQ/AIxuk+E6db1zdoMgy1knxilNoENuH/Bwxv
 rFoB1E73TJYW4qKRcdcKO7SdC9qBLnhOhICOwqUYtKMzOW3FdAQLsC0WKA+UyoJ8SdzJ876U
 4IScEXZ7PN5DNB/KXHCXyDYrMdKa68gcKVbInlr0tFfEVPUeVN/g15AgGUHgldXw9dH6c0E5
 Ka+45uuyegUW5/VLXxOlA1G8z44/HbnpPvZhALQzQ97hOVsD+u4LnmVzCFwxYlVS9Vy7tKyx
 mOr+W53NTvjxiI8G6S64bh1eUZpDLV8KoOOCXDsLlVFtymsHfRWG0oYcz4gNlympDm1L9iqq
 iwn/8tUv4DkU/5byW7pwDg1BLn1ytr43j+yUWAiX+musDhQikmYvAx8L6xXyGpmHbIhusMop
 5jziacrd5aHBnAlCPy65zBUAxrjFO9pT4nnfQIh3JSXIMCYPsJxLZvi399AdMFBmb3+YonGO
 5hAIXV4+tXa0qTazTcsnN0yNKhU3wvFlONQ1QEuMaSzz9K9UoJu3cw1YgahDMN5Zg9Q55L66
 DNNblpjqhHSosMYad0FI46MLuK46z2MGPx2U6pUCra/fs8Sg7wQrbMkcoI2N0=
Received: from mail-dm3gcc02lp2108.outbound.protection.outlook.com (HELO GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.108])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 20:46:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G43rhKpyfw2qQITdQiAGMHQn9SWjT1SRwSh9h2BSrGa0c2172oLheN2xRBDD/kxFvd4TfPxUXkowCCzyRDmZtr19Sj1vt7QXg8KaOOINx5lo33U0kxF/17EQokOUgA6BHh8c7wq79rnX846hgQ+h5z8iJoqVBmswm6hVCLL5mmA7LgKl1bVA7IgoFxLf3/CJC8i78rcoUv4ARjxWZDmaSAnxIF2JP1XgSyoNsTKuVix+hbGBuYZ3iVGb+88Rap0qfMMf9KWTs3lP8BO8vvZnmghr+KxYQs4DpLsD6VnA6B70IrJJyJyfxFgaZ4MR9eQmi4Wwc9dqtXLyP9uv+ZUjow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x1juHhNvM2uRzbV/4aqwKLXOo4ZSKX0/uJwIZuQCbUI=;
 b=GQzeMm2NAMckikLXEfJRrNgPtar7p3Jr8LHkOa77zHPrgxtszfFQGeRMd46QAnaFmtusgbykXcWIMwyOPvzdURq5lmJjQwUYmqFABGjnW38bDSEVvfW/zEy9I3xsmwdKrl4vo6ZyLFG4eFyxU1rS0821eIoQf8tHaGNS7R7r3XHSUEZgnmaeIC8q2oeGKr48N7O0UQ+42DTcOYVJpmNe3PHL101plchVV/daiY3Hp4KRuW6UwfmpCr26tAg1SYj7MKfJuqOMnv6YX+eirRMINv+GZK3CTU7ps3aDbEPGujxYbZRaXZHCwM2XgwY9reNKslkxNwPqfKHUaocxDCaosQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1juHhNvM2uRzbV/4aqwKLXOo4ZSKX0/uJwIZuQCbUI=;
 b=CDjgw3fLaLmmYZcRROpKw8Ow50QL7GJG4Y29SPYW1QhUa+g1qSLJr21FVlU8vMgn/yCNhIaRCf6FWBR4fwexnOe6616X36ShbK+l480s7gN3czaAK1KQASeSzJ2mZl8Pqv1gZQ+pXdYEv+mhrJfQJhuwB8nD4Yw/zeiKvPxwUEU=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA1PR09MB8874.namprd09.prod.outlook.com (2603:10b6:806:28b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.20; Sat, 4 Mar
 2023 04:46:33 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::d44e:83bd:1602:373]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::d44e:83bd:1602:373%9]) with mapi id 15.20.6156.023; Sat, 4 Mar 2023
 04:46:33 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Underflows every 33s at 200 Msps
Thread-Index: AQHZTlPJdRRHs0tn6U+SApUhXbZFew==
Date: Sat, 4 Mar 2023 04:46:33 +0000
Message-ID: 
 <SJ0PR09MB91269742642DD28DA4D48DC5ECB09@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA1PR09MB8874:EE_
x-ms-office365-filtering-correlation-id: 1c7c6046-5304-44cb-2a3f-08db1c6b6dcc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 sfLdcHbo477MPksAwujYYldiDLVUU2PFiNBR14p8vOJQ8x4KKZrhhWBdb3A8zy8lXQFhF/zgWrHRue9g60iy5U5cJlBib9t0QwtYp6QYOVHsCwha1w/ZyTqEQyZolU/nafCCY1KrYsRAPKlCbg6QiRxS2K8DMi8ENb8PrFfrm2Sa85gjNpC/TpEn0KLv5cadH8NBN+Fqe9tKb8A0deK8jq1Ekcq28yKXzGppNQDRDwxTIGrB4IaSV4ul3vOyNg9D3BFI3N7FAIw7gTWuY4vV1IJN1iiAh8fJXjZWO4SWP3zY72KH2+QcKxa/u+KS0K+244fzVYYIuGwTwALNnpYekg6bgnxFf2KBQV4LC4XPHy0iphOKYjgrA0V9yEYl61mnrDw8zX+S5lnC7+A8eP2fabj7pnvuKIG4oCoULRKpVGxDIxbrUacYSVYruGxwe2StRkgrL9AvqAZy7p/X7TrVM8/eQMmjv5OVbqEWAQ/i78URdMlRYsUR8dJh4ScHfTwLCHikrPccQ4GCbjWh+jNInluh75vk2EzW39s/orMPXed4gjVnKL7heKSvuKQoojGt5BN7SxJGlDt7nemKZX2LcYwi8iutidaBcqJbYhXNTVLN7nliq87cggR5d59HaU/6kTxZRKATJcK3gMakIZl3hqxAXdCKFRDt4Dkz7mPrBzzB4tT8WiYgDss2vVfWSFvwaQXADGFkmPijLpAak9h2BQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(451199018)(33656002)(40140700001)(83380400001)(7696005)(508600001)(71200400001)(26005)(6506007)(9686003)(186003)(52536014)(8936002)(8676002)(64756008)(66446008)(66476007)(66556008)(6916009)(66946007)(76116006)(2906002)(5660300002)(86362001)(44832011)(122000001)(38100700002)(38070700005)(55016003)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?vnJbdkdTothYW9aPO0QpVuugYxQ6+aqxhoycbxpRUUwSNreMgW9wjU11mb?=
 =?iso-8859-1?Q?Y9K7zAGrYrdl85xa/vcax9gYkPVV2U7CzmxEisOpyO+4D0SOeJMvUzEwmC?=
 =?iso-8859-1?Q?ZxxbYrrpPsk3rxImUq8kmjifXOXYGbhPUsrAOuabPiH4nzz7l9yroii/bz?=
 =?iso-8859-1?Q?A9Px5LchlXgO9wpGBGkNANjqg20hHX/Xrn2EyzYW0P0f0HB4PIg8QVPtKq?=
 =?iso-8859-1?Q?q4O0psHO7v3zIkPefIlOxcl+9M3dI0yn4GBOzG4CMKryH0b/WK6bUoy88a?=
 =?iso-8859-1?Q?ehp1i+soTMj/rBee1IQcowLQVD5xmzSAKqkAoGYd27XL4O5OJadu1u0FpI?=
 =?iso-8859-1?Q?vstbUtsFzWlsWtFVfE61i7wo3x5Z1iyug8WPA94xLVQ2Ey7Jt907i1HYKZ?=
 =?iso-8859-1?Q?I6o/bdYnNVO2gn8884jILVMo07CDBcUnMAJMJ5Y4Fx/XDpSOCfcVXRgYUE?=
 =?iso-8859-1?Q?9Sv6+xI8roRh4IwEjRrru+kQOSEtVMUnSousj141cmiKV7DNVDhXLAXB3t?=
 =?iso-8859-1?Q?wZawHUWIjFlA2V1fOhksqdASE2ZN+FuZdwXt9//QHN83VS6Uu/YRsFyZlL?=
 =?iso-8859-1?Q?6PBxDvacyuDYx7R/CRpc7Onmcn36I4nn1scPOZ1F+5YIo9Ko0jO6XQ5aOz?=
 =?iso-8859-1?Q?J2zXM+LgokKjyeNDdkQLa9pCD36ZNstvyjzhjc3YWhbyF9wJBdaX3wvJ+b?=
 =?iso-8859-1?Q?5CqubvDHwKuKJasG5Mi0xx/MB3OnvXWQ0k1MnCoLZmyiLyp7okrH1Oj8YW?=
 =?iso-8859-1?Q?6SAgGratgI8fFEzs5eJep9mpkLJAu1YwMsjDOwEreefhA/coN5dp591mYT?=
 =?iso-8859-1?Q?uPavHx9NK9r+12zKAuknCqfbYy0Tabw2I4eVxHNr2OYCqlasFQGlEJmKby?=
 =?iso-8859-1?Q?fFLm63DQoWZ4PgUkc4nybOJwD7r+PseARgT20Jb2HALb2JOgVGmTaCz0Vo?=
 =?iso-8859-1?Q?K7J8YQgyKdQlKBDRUhjr1f8fwK8928V7zCzJ0sGGoGz8I5qBNPOKdpckBz?=
 =?iso-8859-1?Q?FGKhvA05RVNYJwkgysbfQN4RfoiXiXPaCnN7P+pPnvvDT8CIE5u+jk+glv?=
 =?iso-8859-1?Q?OlrAQZQkDG+xFQTZObNfq+3CPK2EJmaPKfUbzTLGdlNU7TjTDu0HcqiqKE?=
 =?iso-8859-1?Q?vLllJUnC2JPRSDYE2NPOcWLpINPoU43Lzx8IbxuU6T3gboXWziW7/Mh8fN?=
 =?iso-8859-1?Q?gUFs3iaCsBoS5wj61NukpLfGk8SwQP9ltfvBLftFSCF7OtwQfDencrnqxr?=
 =?iso-8859-1?Q?rWaV/BXCGBsZ/sHVZXzIKy1cZlftdCaAA7NaHoi1dwk6Jny/lj0MPYy7AI?=
 =?iso-8859-1?Q?1lHlOjIlQnZ5STs+lpmfctrUcQaDHa11Ndcxy3pHmvovBxQQTNKwt80tz0?=
 =?iso-8859-1?Q?Gt7UaPV6vPdqR0+PUdU7c8qZLdIVHKnDQop0TUCPGrG4D0iOWeEWxLAN3j?=
 =?iso-8859-1?Q?pBMxjfcD+cWuQG3grz2ktX6A44BW7vP9hyeVyJU4rsLM9gJ5k/aCSfnDAn?=
 =?iso-8859-1?Q?ZGVjRGE0Od1L/ptadU5qbbgTFvkNzb4tuMiODkmh2q3KfkTXjcNOsUWgBR?=
 =?iso-8859-1?Q?127HvFf53MKgE3K5kSGVFpVgaNqTJmerJAhVkkaG9p7fwDzLfu3l6Ql12G?=
 =?iso-8859-1?Q?Kg7HAD1WiefIU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c7c6046-5304-44cb-2a3f-08db1c6b6dcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2023 04:46:33.1607
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB8874
Message-ID-Hash: 6JG4CI55I7XFTL2773AS3XS54PXYTQ45
X-Message-ID-Hash: 6JG4CI55I7XFTL2773AS3XS54PXYTQ45
X-MailFrom: prvs=42076e671=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Underflows every 33s at 200 Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4VAFD562AIVXPU6DNLSN4W5HTTUSDBQX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4265620799014537695=="

--===============4265620799014537695==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91269742642DD28DA4D48DC5ECB09SJ0PR09MB9126namp_"

--_000_SJ0PR09MB91269742642DD28DA4D48DC5ECB09SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,


Yes, it is a loopback through computer.  I have 3 threads (in addition to t=
he DPDK threads):

Thread1 : Read from UHD into a circular buffer A

Thread2: Read from circular buffer A, minimal processing, write to circular=
 buffer B

Thread3: Read from circular buffer B, write to UHD


The circular buffer uses standard synchronization (mutex/condvar).  My next=
 plan is to try a lock-free buffer.  The fact that the system works at 100 =
Msps but fails extremely infrequently (in terms of samples processed) makes=
 me think that something in the kernel is taking control of the CPU(s) even=
 though they are isolated.


Eugene.



Responding to Marcus... for some reason his response did not show up in my =
email.

-----------------

This is a "loopback through the computer stack" type application?
Basically a receiver and a transmitter, in separate threads, but
  sharing a buffer between them?

These can be tricky, and plenty of others have "stumbled" with this type
of app, particularly at high sample rates.   I've never done one of
  these myself, but I suspect that some kind of elastic FIFO mechanism
will be required.

I"m happy to have others chime in, but this class of application,
despite its appearance of simplicity can reveal the limitations of
  ordinary general-purpose operating systems, and their schedulers, and
buffer-management systems.



________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

--_000_SJ0PR09MB91269742642DD28DA4D48DC5ECB09SJ0PR09MB9126namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
Hi Marcus,</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
<br>
</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
Yes, it is a loopback through computer.&nbsp; I have 3 threads (in addition=
 to the DPDK threads):</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
Thread1 : Read from UHD into a circular buffer A</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
Thread2: Read from circular buffer A, minimal processing, write to circular=
 buffer B</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
Thread3: Read from circular buffer B, write to UHD</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
<br>
</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
The circular buffer uses standard synchronization (mutex/condvar).&nbsp; My=
 next plan is to try a lock-free buffer.&nbsp; The fact that the system wor=
ks at 100 Msps but fails extremely infrequently (in terms of samples proces=
sed) makes me think that something in the
 kernel is taking control of the CPU(s) even though they are isolated.</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
<br>
</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
Eugene.</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
<br>
</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
<br>
</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
Responding to Marcus... for some reason his response did not show up in my =
email.</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
-----------------</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
This is a &quot;loopback through the computer stack&quot; type application?=
&nbsp;&nbsp;<br class=3D"ContentPasted0">
Basically a receiver and a transmitter, in separate threads, but<br style=
=3D"box-sizing:border-box" class=3D"ContentPasted0">
&nbsp; sharing a buffer between them?</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
These can be tricky, and plenty of others have &quot;stumbled&quot; with th=
is type<br style=3D"box-sizing:border-box" class=3D"ContentPasted0">
of app, particularly at high sample rates.&nbsp;&nbsp; I've never done one =
of<br style=3D"box-sizing:border-box" class=3D"ContentPasted0">
&nbsp; these myself, but I suspect that some kind of elastic FIFO mechanism=
<br style=3D"box-sizing:border-box" class=3D"ContentPasted0">
will be required.</p>
<p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:r=
gb(72, 70, 91);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe U=
I&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quo=
t;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:15px;text-a=
lign:left;background-color:rgb(255, 255, 255)" class=3D"ContentPasted0">
I&quot;m happy to have others chime in, but this class of application,<br s=
tyle=3D"box-sizing:border-box" class=3D"ContentPasted0">
despite its<span class=3D"ContentPasted0">&nbsp;</span><em style=3D"box-siz=
ing:border-box" class=3D"ContentPasted0">appearance</em><span class=3D"Cont=
entPasted0">&nbsp;</span>of simplicity can reveal the limitations of<br sty=
le=3D"box-sizing:border-box" class=3D"ContentPasted0">
&nbsp; ordinary general-purpose operating systems, and their schedulers, an=
d<br style=3D"box-sizing:border-box" class=3D"ContentPasted0">
buffer-management systems.</p>
<br>
</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"color:rgb(0,0,0); fon=
t-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt; background-col=
or:rgb(255,255,255)">
<p><span style=3D"color:black; font-family:&quot;Arial&quot;,sans-serif; fo=
nt-size:10pt"><span id=3D"ms-rterangepaste-start"></span><span style=3D"col=
or:rgb(0,0,0); font-family:Arial,sans-serif; font-size:13.33px">___________=
_____________</span><span id=3D"ms-rterangepaste-end"></span><br>
</span></p>
<p><span style=3D"color:black; font-family:&quot;Arial&quot;,sans-serif; fo=
nt-size:10pt">Eugene Grayver, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB91269742642DD28DA4D48DC5ECB09SJ0PR09MB9126namp_--

--===============4265620799014537695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4265620799014537695==--
