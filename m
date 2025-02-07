Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52071A2D025
	for <lists+usrp-users@lfdr.de>; Fri,  7 Feb 2025 22:55:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 320A2385F5B
	for <lists+usrp-users@lfdr.de>; Fri,  7 Feb 2025 16:55:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738965356; bh=pUJatSYD/cLdLl0nW7JNkXEpFy1Hsugb8khYES/cxlQ=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=T+aaAzvxoJ9KQtoeHq4baP1yxorg2thQu8grOcD7GwsC2vUw6LmOyGJnx7u/Dfqjd
	 ++OoQUROrRzfzMTcapWa+06uas9cHGlWH7Vc+I4bPUIedEL1QxP5ixVEnS5+ANdxD4
	 TmxFIkn2nCoQjXVXqyGdPhIteb+RNVrnYmZ/UmeTaY5AsimFyVtzi/gsh6FHzAUcHK
	 bYrZ7xOJ8yPSCjLAmH8LF2KU2CGnfA16t8I3CW2zN38srYf+U0HA0rYEr+eYCl8qlA
	 D5RTZmT7FdO9JnoWyF9EIx3oeI2Cclwv6RHEPVmd/n/R0hv52Hr2ox6k8XldAgzK59
	 DRgfNoPte4K4g==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C312385F26
	for <usrp-users@lists.ettus.com>; Fri,  7 Feb 2025 16:55:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="dLgq980V";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="KR45AcZg";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1738965342; x=1770501342;
  h=from:to:subject:date:message-id:mime-version;
  bh=AvrB+a7Y74uZbYfGVjR2BAkescUluYe/yVtvR72dQms=;
  b=dLgq980VGGIYimPM8JoIninHGjrB/x3k6hAMhHcj3yPtcOkuzH0UW68s
   7HCU6GprJrz8tMM7e4suTDM+6HfziuWxNX9Vqcy4/yNyO2L5056OwJolN
   pnSiFTDLdZaRDfj1h6WEBc2OBviMCjtjjtC9DG9k1E+fc4SWBqCwyxc1V
   A=;
X-CSE-ConnectionGUID: ekm8F0zGT9m7SDeRe0d+Cw==
X-CSE-MsgGUID: 0OQJQCceTvqhFcoMHGiW4w==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="6488343"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000";
   d="scan'208,217";a="6488343"
X-IPAS-Result: =?us-ascii?q?A2FmAQBcgKZnjhQOXShXA4EJgVOBQYEDe4FmrgiGVYElA?=
 =?us-ascii?q?1YPAQEBAQEBAQEBBwJEBAEBAwSFAAKLBSc2Bw4BAgQBAQEBAwIDAQEBAQEBA?=
 =?us-ascii?q?QEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4V7DYQHgSYBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEdAjWBHAEBOBEBDHMnBBuCeoIdDQcDMbI8gTSBAYIMAQEGBATbHxhhgWUJg?=
 =?us-ascii?q?UiDfIFwgmMBKoEyiTyBVUSBV4drRYNOgi+CM4FAg2+GS502gUciAyYzLAFVE?=
 =?us-ascii?q?xcLBwVhgRADgRGBRns5gg5pSToCDQI1gh58giuEWYRDhE2FWIISggyIfh1AA?=
 =?us-ascii?q?wttPTcUGwUEgTUFnQAHAxCBGIRzpgOBe6E8NAeEHoFdBgygDReqUph8o2uFG?=
 =?us-ascii?q?QIEAgQFAg8IgW4DXoEuMxowgypSGQ+OOoNhxU14PAIHCwEBAwmSBAEB?=
IronPort-PHdr: A9a23:PZJsdhao0SFnRaTjCD8qvaz/LTAqhN3EVzX9orIriLNLJ6Kk+Zmqf
 EnS/u5kg1KBW4LHo+lFhOzbv+GFOyQA7J+NvWpEfMlKUBkI2skTlhYrVciCD0CzJfX2bis8S
 cJFUlIt/3yyPUVPXsjkYFiHq3Co6ngVABqsXTc=
IronPort-Data: A9a23:qYwtQ65qKNW9+WQRz89xZQxRtKzHchMFZxGqfqrLsTDasY5as4F+v
 jNLUWCOPauNNGugL9lzb9+3pkIFu5PTmNNrHQJsrSFhEysa+MHILOrCIxarNUt+DCFioGGLT
 ik6QoOdRCzhZiaE/n9BFJC/8iEkvU2vbuOlU7WUUsxJbVY5Dn9n0FQ7wLZRbrdA2bCRGxmKt
 c75v/rRMVqk3y8cGm8P4spvkjs31BjJkG1e5wdWicxj5geEyiFPVM1HfsldElOhKmVqNr/iL
 wr85Ozhlo/p109FIs+olL/9bnoLTtb6VeRZoic+twCK23CulwRqukoJHKN0hXR/0l1lq+tMJ
 OBl7vRcfy90Z/eUwLx1vy5wSEmSNYUekFPOzOPWXca7lyUqeFO0qxli4d1f0ST1NY+bDEkXn
 cH0JgzhYTiOhOfm7uqpZdU9g5sYAMTRMdsT+Vp/mGSx4fYOGfgvQo3xzI5g5m9hrf0WRayYY
 NcFYz1yahiGewdIJlocFJM5mqGvm2X7dDpb7lmSoMLb4UCPlEogi/60bJyPIrRmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPOPkpq4x3Ab7Kmo7UDovd2KQqvSFlFe+ddlYD
 mw7+xVysv1nnKCsZoKmBUHnyJKehTYBQMBIVvAh5RuW4q7V+BqCQGUYUiNaLtchsacLqScC0
 1aIm5byAiFzsLaYT26H/7OJtjqgPTBMcjdbPXdeFU0C/sXpp5w1glTXVNF/HaWpj9rzXzbt3
 zSNqyt4jLIW5SIW60ml1V3EhmKC/ormcl8wuT77U1iotg86T5HwMuRE9mPnxfpHKY+YSHyIs
 34Fh9WS4Ygy4XelxH3lrAIlTOHB2hqVDAAwl2KDCHXIythA03uqfIQV+zZjOEdiP8AYYzbtf
 VTaqwdJvcALZSPyN/cxZJ+tAcM3y6SmDc7iSv3fcttJZN52aROD+yZtI0WX2ggBcXTAc4lhY
 P93ku71Vx727JiLKhLqHY/xNpd3nUgDKZv7H8yT8vhe+eP2iISpYbkEKkCSSesy8bmJpg7Ym
 /4GaJDam0sBD7OlOXCLmWL2EbzsBShqbXwRg5wGHtNv3iI4SDp/YxMs6e9/JNE9w/oJ/gs21
 ijkAh4BkweXaYL7xfWiMSs5NOyHsWdXqHMwJys3Oli0k3Mke57H0UvsX8pfQFXTz8Q6laQcZ
 6BcI62oW60TIhyZoWh1Rcem9uRKKk/07T9iygL5OlDTibY8HVSRorcJv2LHqEEzM8ZAnZJk+
 uP9iV6DG8ZrqsYLJJ++Vc9DBmiZ5RA18N+elWORSjWPUC0AKLRXFhE=
IronPort-HdrOrdr: A9a23:8n3Oc6iHpw1YUlec3WmPW2bDpHBQXzh13DAbv31ZSRFFG/FwyP
 rCoB1L73XJYWgqM03IwerwXpVoMkmsjKKdgLNhS4tKOTOLhILGFvAH0WKP+Vzd8k7Fh6dgPM
 VbAs9D4bTLZDAU4/oSizPIcOrIteP3lZxA8t2urUuFIzsLV4hQqyNCTiqLGEx/QwdLQbAjEo
 CH28ZBrz28PVwKc8WSHBA+LqP+juyOsKijTQ8NBhYh5gXLpyiv8qTGHx+R2Qpbey9TwI0l7X
 POn2XCl++eWrCAu1LhPl3onttrcejau5V+7fm3+4Qow3vX+0eVjc9aKsW/VXgO0ZqSARAR4Z
 HxSl4bTrlOA3+9RBDOnTL9nwbnyzog8Hnk1BuRhmbiu9XwQHYgB9NGnp8xSGqt16MMhqAO7E
 tw5RPqi7NHSRfb2Cjt7dnBUB9n0kKyvHo5iOYWy3hSS5EXZrNdpZEWuBo9KuZ2IAvqrIQ8VO
 V+BsDV4/hbNVuccnDCp2FqhNihRG46EBuKSlUL/saVzz9VlnZkyFZw/r1qol4QsJYmD5VU7e
 XNNapl0LlIU88NdKp4QPwMRMOmY1a9MS4k8FjiUGgPOJt3RU4l8aSHnIndzNvaB6A18A==
X-Talos-CUID: =?us-ascii?q?9a23=3Afzr/bWk1XWts0fHa/4/EXRPeKV7XOXDeySf+e12?=
 =?us-ascii?q?XNTdsF4a5RGWdoK8nuNU7zg=3D=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3AF3j4Ig+DR3D5RVgTZ9sVLQOQf59P2oaXI0sArYs?=
 =?us-ascii?q?fu+ePMglQFDai0CviFw=3D=3D?=
Received: from mail-southcentralusazlp17010020.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.20])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2025 13:55:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tyERQ9GWhzZuUgrTQh8GiTqwKMfy5vlNQmneL4C6BNl3e/mjAV5vzEYoBW46yuzLKni99NZBAEWPBCoEDdC/PJ/K3dRozozCN6KdHXssuq2nhTUSq5skVxeDpABKdEnWVIbbV8cZ19GEegydtkYbv4nBM46uhnVVJqG4e+VzBiKGJ6K8XLU5G5QB7/uDJ1z8AfnUXPlX2s/g306r8wNEFEf4q8n0g0m7GiBvuSQI46iqNqBPiKbqAimdJ/4n7+fc9OO3ak+KFD8jHjSgTlEJ5x8O43L3drZlR8S9UxzkgAJ3ATTjVGyCAfq+S+2kznIxxGoxJ2STM2LF+k7aVL0Avg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TfsZmq9cvgxzZMFpuEer93rb0gV4RcQRD3gtP7gy+jo=;
 b=SKUMMgQInsWia6OHdsUArgGE+xhSnxwrSM2VtxuADPvsuAk8BCqrKPb/iCxqvv88IDe3tdbKPZmFTY4agVurnlmmIJMG6ujwspAbPQMsGadkK3e/S30HdJdRJKftnI7S315f8XuaPqxTZYUOqgm6d42w37m0PM3Q7NPx6DhOXzmbDMEIUrEmN6ZWQ8FqarGsNvTDOhBQTaF6pRf82a2HdgxrrNZW5Hku8uz4hU1UnASCXkrEKWO+DTYMx0sGtBdb5klc0Daz50LaeKIW/PCFjTbllVlcm93JUXTGtRl0fFf/2d9eqcUMYxx+CkaJ9GJ4Jxvvry6Flap0FMT+X1Saqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TfsZmq9cvgxzZMFpuEer93rb0gV4RcQRD3gtP7gy+jo=;
 b=KR45AcZg+uYqrKtW7hiON/eCDJ9oNw8ldSmkPHzRjP248Dg+MdhuM9XIbXOcyc1/s3wvA9QO4GQGERgArz5cGK0OyjT/T2cf3uZsMJYWOjYgVfWaV1a5IKGaNArTw4TJ9d/wF0TLUv1HG0a7JvzaA2JSmoFmKIbKBzp1ofLgsZE=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by DM6PR09MB5895.namprd09.prod.outlook.com (2603:10b6:5:264::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.15; Fri, 7 Feb
 2025 21:55:39 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%4]) with mapi id 15.20.8422.012; Fri, 7 Feb 2025
 21:55:39 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: LO offset with external LO
Thread-Index: AQHbearm1U8tBY11yk+iq5Z60oAqBA==
Date: Fri, 7 Feb 2025 21:55:38 +0000
Message-ID: 
 <SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|DM6PR09MB5895:EE_
x-ms-office365-filtering-correlation-id: 7f841a1f-d095-42cd-6ff9-08dd47c228d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?qqlkfKInLao/wyVbjhxkZzKZ9PJW8qYyOsOyWELKIeM8ghzvWGbw0mUk1w?=
 =?iso-8859-1?Q?Z3k0168H957C6CCo2wsR9sWP6SwSS2KiLkxlJ4RVeNC+PGFeqwU6HTzMwF?=
 =?iso-8859-1?Q?3/0L+KOhsV+5dqcEz1XzSXuwT6XmR07ei4VrRfhnNn4BpZUYzHFhT2hXXD?=
 =?iso-8859-1?Q?WnWgDFq8bSJfGzHQIRUX39Km9oiTAALER3HAwCiC7ua86YKsGqw3YWzBkZ?=
 =?iso-8859-1?Q?/+YNKPOdSOw4f6LwGvAmHJ7P10LFWXucNIxb1sQgG3pCCgU3CwOhcDzs3t?=
 =?iso-8859-1?Q?xf25BGlb2laT3y9MmxPBRi2TJueEypLpFIvZOIHcyH8LXxKFJh5xLDwcB7?=
 =?iso-8859-1?Q?065f6LTq6+4+0ZzfOWMsb6ypjr+La2AehZVTaSK6ER8EDWWcJ3o7owMqHp?=
 =?iso-8859-1?Q?Y8Dg4sFqEVL4f11a6jTQNlcsA/5gLIyXIQE5jsELrRUHIIRBkBL5PtsvGz?=
 =?iso-8859-1?Q?/+MFxLJdPPsHYcGnwhrMD618ugf/gu9i+K5lyhFPE+5W+RDbsyWJIPzGgH?=
 =?iso-8859-1?Q?etfkxMLR8WuzagjSJOBXp70N+qeA9ftsp+KrwXG3nb+vRXpQMpshADxjaG?=
 =?iso-8859-1?Q?Z+uOgFB11TlmRU5Br/YtKtuCqze2NIT+O6bsMOZNxE30EXCcCW3Kvqh0tG?=
 =?iso-8859-1?Q?yBX732N1d54+o7YGlmgemDIJZCFGcHqLKsIkVl/dYMhtt//BAich9ExXD5?=
 =?iso-8859-1?Q?H5cYKAYtzjLZBW2nDK2WGgpgu12Y+b3wAIjsjtL1pVSMLFV1HjqzA/yPk8?=
 =?iso-8859-1?Q?CH+deR7liv64S62Wb+C18rzsHF4XNwTkAIr4HLMh65Xmpn2uhqBMafnoMd?=
 =?iso-8859-1?Q?vw7xyw/iSDZPVvGpyjoBQKiFYVUSwlbj53shzZWa+L/kqE6YQO0B+FFdfn?=
 =?iso-8859-1?Q?3z5C+8wrGNXSsILdlXzoOMjHUHtOTIa2s7dGjsN4tgAGKaXkYqUUcBQIn6?=
 =?iso-8859-1?Q?HON+UghcLyvLpyFgz0J3Fc/fdeZLq+9d4bOCnx0b/1d3Aejm+vRQjzlOHa?=
 =?iso-8859-1?Q?44wVC83MWuGRg9VkA00DEyzJQbEo+z8bLWmFGLJ6HvkM13DoIDW01rI0KR?=
 =?iso-8859-1?Q?Th4Vdfoiq2gH/+SXiT4AN/ojRw35TCkI8gI407pVnlylKYnjol1eIHxz1Z?=
 =?iso-8859-1?Q?hyNVqA4+nvL5U/UvUg2vuYgILRuSkYEavqNZ3/xg44fHCB+fYxNULKVB1A?=
 =?iso-8859-1?Q?C6EUvlYtV9LoM+4Hg01EjrJu0Daci0uHwSFHMChF7p4C77NhkE1sQEuBjy?=
 =?iso-8859-1?Q?2mHNJHhzoVv+9YhlQz5RUnSLaWO4lG7hT5P5ksEOBkrwuPV9ObiJKDEieW?=
 =?iso-8859-1?Q?4H0L5nhcM3gGv3WN+/TMrzEgTbHwP1bGF5E2SUIxyZ7B8F0fH7R3vzIAu9?=
 =?iso-8859-1?Q?D+Xm7uZMnYNlg5aUZI90JQ7nalAGXJ7Hi0j9tStizDoJpDsGIX1aT6weCb?=
 =?iso-8859-1?Q?TEY26UXK53o16BMO29Lq9ApbX7gwwSrMzuaWkhBxkDq+a4UDVAzBvsfEeN?=
 =?iso-8859-1?Q?/Eamb/cC0764nbYz9qETyT?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?8eF2qBI1FaaD20OfSj1tCpCOgWNXdtiWYapUXBC7jhzfuk4ynb/dudGGjE?=
 =?iso-8859-1?Q?RY7wne2ERpAUT3i/JwreZGorjz9Xp1C5xyOUlAEGuIR6RV8ZY8a21JCFMP?=
 =?iso-8859-1?Q?PkOmAuoOwFp8NwmFWT53OIMKxa8ErXL2XZ8gE0wmZTtl82GEcs8+expW2/?=
 =?iso-8859-1?Q?3ZME/shezzDYA3OyqpKnRShTIpHdzVzICxqiquwxByJHWFsLA/3p0GHYQM?=
 =?iso-8859-1?Q?Ovz3ek2Ko1Zf6tltcTIpXD+tLqKyGXbJN5cIQ20XWOaFLqKzfY7H6Z7l4q?=
 =?iso-8859-1?Q?/TVL5y4q9FCqb9z3HHKljU/EXn4yZpjZgpSBQ0hoDm70Weal93qDkuTgdc?=
 =?iso-8859-1?Q?fRaZpjM1FKAdPyuZLz9yJq8IZhdqmpRVMBK3yFYg4BobIstD8HM+QHMrNc?=
 =?iso-8859-1?Q?AdLyZpqR1yAYIbm+Gl9oQ2Khi64uYE2oVcEdrnjPDbSZ+3Gd2PN0Ug6JCl?=
 =?iso-8859-1?Q?0bNpS7RoKvgcFKbrdzeNtiHC6RDqKRLxfk6xReizTuDWyytH+4xTTTRDVd?=
 =?iso-8859-1?Q?fgFILMO1P04cweoPobTUEfpIEbHV0RXTlJEJOfVGtq8oLZu0R3nocSvJ3O?=
 =?iso-8859-1?Q?A+v1Q1Tmd+FXPNt0ZvsH/HEhy21x/ylYwUNhAPnQnDGsXyuPjqHp/R+KYa?=
 =?iso-8859-1?Q?17Nyvn7oG7MeTo81qJMmpAPnOvax+7n8BY2yx60rGcMXoVPkutrCV7b13z?=
 =?iso-8859-1?Q?cK4Ld8sBVWwGhgJnNDd/voZwLSqsfO3XKmRaWGqv5x0ZDNP2Mxak0QHCsR?=
 =?iso-8859-1?Q?wDyW4BinPxYXzLa8MNuIXbGnzMD84BX1KHPbJH3Gy9cdybkx1QH8exfKV4?=
 =?iso-8859-1?Q?L/Eza1qt3y7c1ESqdbHJLKsTXRtbAOnmUDYPvAo4ZHYPC3pr6kOY6C/xRB?=
 =?iso-8859-1?Q?mnSVmnOstuedU/fOe357+wXIYkTxmrWxsxrvrL7wqbxR2L3Kshi8Z++OtV?=
 =?iso-8859-1?Q?Bnlf+u5zRNREeDfaZJb+4YXBrjGZPDTzol9kDeKLZh5EC4d/BYfxGbmqvG?=
 =?iso-8859-1?Q?8fbrJ8vZppk33txPrCRBlJItfglp+EVaKtYpHQH+dTPvSZkhL97/bwsTW0?=
 =?iso-8859-1?Q?Gttgk6lFYSXo63MA/ZXYDdOJ/gpPctdAU5FtMl6B8zeBggoGe7BYw9Hz99?=
 =?iso-8859-1?Q?wgmFEX1QtGBpOdC5MktDkJ8Css6Qts8hc8jHJ9GSmNrzysLGPZhkk4eZAQ?=
 =?iso-8859-1?Q?ktK1YlpwsKOgthuZoFqWGo2SfAXA1dXGq2qZCP2UYVbXEa0LJ2hOjyt9Rk?=
 =?iso-8859-1?Q?Jzlvg89ttCk9rUwSTE9WunPtFLLTpJ5pOPAuVAXD4vG1LQYm3/QNW3WpTG?=
 =?iso-8859-1?Q?pjWZkxWxEGVI8xVlKSwXwaSameUBqvcWijBwCEsrqxV/Hx3C200TekwQxJ?=
 =?iso-8859-1?Q?QArjPS2Nb6I9v6uKSgIcCzvQb0F/e1Ft5pSODgRRNo/uuAxBY/H9LfXMud?=
 =?iso-8859-1?Q?uVccCYR/wtyemUU4qlVFFUpnSj8iFQhd/ZcjLncr8ngE5I0V2IUM4syfhj?=
 =?iso-8859-1?Q?wqujZaBhVvFCvrt1cL76drIYwRC1/W5omheJnbCOJ67mUMWilr186wyCBA?=
 =?iso-8859-1?Q?xHainWjMA7A3fkczFvMBkAIQJax4aZGcpkLVChuv87z6VabmGMZ4TBwAdx?=
 =?iso-8859-1?Q?NBZdk3CQXjoDU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f841a1f-d095-42cd-6ff9-08dd47c228d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 21:55:38.9968
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR09MB5895
Message-ID-Hash: YK3BW72K6VH3VSOMDSQHQYINJYF73I2J
X-Message-ID-Hash: YK3BW72K6VH3VSOMDSQHQYINJYF73I2J
X-MailFrom: prvs=1267fb540=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] LO offset with external LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VAJTGI25LKHSJJGCDZLUWXHNIM6HQ2YG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7205526856220489205=="

--===============7205526856220489205==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12SJ0PR09MB9126namp_"

--_000_SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using N310 with external LO.  I still want to use the digital LO offse=
t.  However, it appears that when the LO is set to external the digital LO =
offset is ignored.  Am I missing something or is this the intended behavior=
?  UHD 4.6

Eugene


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12SJ0PR09MB9126namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I am using N310 with external LO.&nbsp; I still want to use the digital LO =
offset.&nbsp; However, it appears that when the LO is set to external the d=
igital LO offset is ignored.&nbsp; Am I missing something or is this the in=
tended behavior?&nbsp; UHD 4.6</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Eugene</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature" class=3D"elementToProof">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Principal Engineer</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12SJ0PR09MB9126namp_--

--===============7205526856220489205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7205526856220489205==--
