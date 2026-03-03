Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACn6LDQ2p2lwfwAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 20:27:48 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 160C81F5F8F
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 20:27:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9BABF3863EE
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2026 14:27:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772566066; bh=HW3CUOvs1fo9yVDERRMhzhYAEzjoVbyFDfapieQO24c=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0ew0ZDn4KHqhAIvcNtN78BLhhd7CwvRvG2Rd1XET5ECo7E2/gp/wGyOgNutp/hR/P
	 VZ8WxyGmGS1UTHlWc055TI2tic4YDGWAiHGBZV/wmIsOeLchaAX4/yp+0CsKp1t7XB
	 d+WtDt5TOE0NdKbD/aSudup3GjlbMG5O6Nbg/v26KfKPtTJKH+6ONsUms4YIBCO9OR
	 cgMDMbIeGvBD40CptOsC3rt4z8xCj5Rb5u8rlHoVKO2oTHUTBxQEOncOMrQ03yry3E
	 y1JNszi0hnDmD8ginsSrL/ASgqDAn+yxtROjYNV1u+8ftW+4wZnu06iDH4rfAYDIwy
	 gip2Arx21rHDA==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 8B29D3863EE
	for <usrp-users@lists.ettus.com>; Tue,  3 Mar 2026 14:27:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="dx80HA2T";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="uCxj9C6p";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1772566024; x=1804102024;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=NewPyQGAZyGKaqU00QJHxSNNIuiWCOjLTL2tdKZXz8o=;
  b=dx80HA2TyqgXLyC7Y9eIS02UQxDopcLCRIoF05sfrW+3xKSS2wHrvOx2
   6ewbZENQTxwNKedTh52dO4piv672p4mp7WF0ZzBgPjdd7Jt1uQ8OxIZAe
   XUc/HMw6BYHIl441OAhz+1DdhuPVFXWRAYpnEywMv6C0s8enY+6Bsjnn3
   c=;
X-CSE-ConnectionGUID: MzAzz7BLTr6fv+bAXs3rMg==
X-CSE-MsgGUID: dXJyJukvTm+cyixyLQ80/A==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="8636852"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800";
   d="scan'208,217";a="8636852"
X-IPAS-Result: =?us-ascii?q?A2FaAgBkNadpjjMMXShXA4JZgT0BgQNBAUOBbIRYkXQDi?=
 =?us-ascii?q?2SLX4ZXFIERA00KDwEBAQEBAQEBAQcCLgEiBAEBAwSCDIJ0AhaNCyc2Bw4BA?=
 =?us-ascii?q?gQBAQEBAwIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPD?=
 =?us-ascii?q?YQHgSYBAQEBAQEBAQEBAQEdAjVVAQEBAQMBIh0BAQUHHgIIAwEPAgEIDgMEA?=
 =?us-ascii?q?QEoAwICAh4HCQEUCQgCBAgGBQgVBIJhgh4HBAsHAzaoYjd6gTKBAYIMAQEGB?=
 =?us-ascii?q?AQz2nQNC2OBZwmBTYFhghyBPzOCRh4BASqBNQMOgkqBIRmEehcfgVVEgRVCg?=
 =?us-ascii?q?mg+gh+BZQoBEgEjBg8KFRGDFDqCL4INGVIoCgoSCw8/BQYvICMBASoEAxECK?=
 =?us-ascii?q?oQrY3VSI4ELRHcZAQEBQIYaUnIiAyYzLAFVExcLBwVeRUMDgQYjDzwFLR2BI?=
 =?us-ascii?q?yEdFxQfWBsHBRIhKoIGeIIBD4ZreQMuXhoOIgI8XDgSPgtaBYFcAwttPTcUG?=
 =?us-ascii?q?wMEgTUFjQhcP4IUgRsJVnE0bRiXDotgjl+UJj00B4QfgV4GDJdsggCGMheEB?=
 =?us-ascii?q?KZnmQaCWI86kTiFTAIEAgQFAhAIgW8KVxQqcDMaMEOCAWZSGQ+OOiWDQsQle?=
 =?us-ascii?q?DwCBwEKAQEDCZNpAQE?=
IronPort-PHdr: A9a23:jDEioxVQCBT96g4aqj2TK+gfB9XV8K35AWYlg6HPw5pCcaWmqpLlO
 kGXpfBgl0TAUoiT7fVYw/HXvKbtVS1lg96BvXkOfYYKW0oDjsMbzAAlCdSOXEv8KvOiZicmH
 cNEAVli+XzzMUVcFMvkIVPIpXjn5DMIHVP4LwUmTtk=
IronPort-Data: A9a23:TIeN4K5TkZr/+xQGS7m/kAxRtBnHchMFZxGqfqrLsTDasY5as4F+v
 moeCGGGbPeLZGf0eIt2atuzoBgGvJLXmtFlTABt+301Eysa+MHILOrCIxarNUt+DCFioGGLT
 ik6QoOdRCzhZiaE/n9BFJC//SEkvU2vbuOlV7eUUsxJbVY5Dn9n0FQ7wLZRbrdA2bCRGxmKt
 c75v/rRMVqk3y8cGm8P4spvkjs31BjJkG1e5AVWicxj5geEySFOVMlHfMldElOhKmVqNr/iL
 wr85Ozhlo/p109FIs+olL/9bnoLTtb6VeRZoic+twCK23CulwRqukoJHKN0hXR/0l1lq+tMJ
 OBl7vRcfy90Z/eUwLx1vy5wSEmSNYUekFPOzOPWXca7lyUqeFO0qxli4d1f0ST1NY+bDEkXn
 cH0JgzhYTimlcuk0u2RbtV22Mo9b8PCDJhEoFRvmGSx4fYOGfgvQo3gw49g5m9hrf0WRa+YY
 NcFYz1yahiGewdIJlocFJM5mqGvm2X7dDpb7lmSoMLb4UCPlEogi/60apyII7RmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPO3mraA63Qf7Kmo7BC00RHmmoueFjw21StNPO
 mgtqnJphP1nnKCsZoKmBUHnyJKehTYBQMBIVvAh5RuW4q7V+BqCQGUYUiNaLtchsaceTmVxj
 QCTmNzkHydHv7icSHbb/bCRxQ5eIgAQJG4GICINVhcY+IPqsoUr102XF4w7TffzicDpEzbtx
 TzMtDI5m7gYkc8M0eO84EzDhDWv4JPOS2bZ+zk7QEqA/CprdtGPQ7Cyt1bFrvxpHJ3CVHyO6
 S1sd9el0AwYMX2aeMWwrAglGbio47OIOSbAnEU1Fosl723yoyf5Jd0JpjZjOE1uL8AIPyfzZ
 1Pesh9Q45kVO2a2aahwYMS6DMFCIUnc+TbNCay8gjlmO8IZmOq7EMdGPhD4M4fFyxZErE3HE
 c3HGftA9F5DYUid8NZJewvt+eRwnHxhrY8ibZX6xA6gyr2QeDaeTq0dWGazghQCxPrc+m39q
 o8HX+PTkkk3eLOkPkH/r9VJRXhUdidTOHwDg5ANHgJ1ClY8QDl5YxIQqJt9E7FYc1N9zbqYp
 yrkARUBljISRxTvcG23V5yqU5u3Nb4XkJ7xFXdE0YqAs5T7XbuS0Q==
IronPort-HdrOrdr: A9a23:HdZvKqv7JOjV30NslnvM6g3N7skC44Mji2hC6mlwRA09TyXGra
 2TdaUgvyMc1gx7ZJh5o6H6BEGBKUmslqKdkrNhR4tKPTOW81dASbsP0WKM+UyGJ8STzI9gPO
 JbAtBD4b7LfBJHZKTBkW+F+r8bqbHpnpxAx92utkuFJjsaCZ2Imj0JbjpzZXcGITWua6BYKL
 Osou584xawc3Ueacq2QlMfWfLYmtHNnJX6JTYbGh8O8mC1/H+VwY+/NyLd8gYVUjtJz7tn23
 PCiRbF6qKqtOz+4gPA1lXU849dlLLau5R+7Y23+4YowwfX+0aVjbdaKv6/VQUO0aCSARgR4Z
 vxSlwbTrlOAjvqDx2ISF3WqkTdOX8VmgHfIVP0uwqdneXpAD09EMZPnoRfb1/Q7Fchpsh11O
 ZR03uerIc/N2K3oM3R3am9a/hRrDvCnVMy1eoIy3BPW4oXb7Fc6YQZ4UNOCZ8FWCb38pouHu
 ViBNzVoK8+SyLTU1nJ+m10hNC8VHU6GRmLBkAEp8yOyjBT2HR01VERysATlmoJsJg9V55H7e
 LZNbkArsAGcuYGKaZmQOsRS8q+DWLABRrKLWKJOFziULoKPnrcwqSHlYndJNvaCqDg4KFC66
 gpCmkoxFLaU3ieefGz4A==
X-Talos-CUID: 9a23:V1E0T2AL1bMjl6z6Ewx13VwGReoBTmeDwmmTKWaIEj1zbbLAHA==
X-Talos-MUID: 9a23:cABxMgSDOAJGbQCVRXTgtBNzFtpr/ZirS0sckIUXn/DUbWtZbmI=
Received: from mail-eastus2azlp17012051.outbound.protection.outlook.com (HELO BN8PR09CU001.outbound.protection.outlook.com) ([40.93.12.51])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2026 11:26:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h9xj5C6hadSpvYg/WsA+GxSsJqnJqNO4sZKuLqDdIViuIs+RdYIZ7nRqA5SddAyskzvBGcBk3tkFdy/LIL3qGofr7cjW7T8yO5Oig5r8/VHG26IjMNFH/Z9jJHSr9SPcJn4T/KuU5i1HvRxyqJGjz9CkWZ2odcbeuuiSLYZkLeZRU0Kq9fcovMZyav2+ZCHyUXvrb3fcCgwnniJa/+9U4WL77cG5d/efdtzwyJ/pm3TD1SXGQOY5TQ9oStDubD9FrvY70r5e+iZS4ZF7Kb+rBBd9ktWRePc1NsF6nTfHQ0guRBUUlL9Jex+IfHRTX0wYClkHR07C76l1Nu5WTUJsZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NewPyQGAZyGKaqU00QJHxSNNIuiWCOjLTL2tdKZXz8o=;
 b=RAShoGHLyAenjPDNtJSxIxFDGdUF4uJwzBsj+QpgpPy6MxQUo30yxdNQ0ETMDjlsskb5G75kB5AXTTtJLup535Smh6kZetGDO5qLyg90Ktykmwfm4rRaUZY2pgsWtGJdB+RO9SfNARCi4eR9JmWHBDv9L1rWI3aOaAiLNxVqjPMY9ckJm9kFVeiONidz0mQfjeDOoleeLXHvubB/uI+6Auv2cprlRX7cCSylzU77cMRnjVy5A2COTwH++l5GxLV+lvX5J31gcNF9ZMtOCp356L5fO/wbKDqMBVhtaTx2flhN6pjSDjaNGhf+oxe9GwX7myUIa6V2Wq5xlNzmA+R4Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NewPyQGAZyGKaqU00QJHxSNNIuiWCOjLTL2tdKZXz8o=;
 b=uCxj9C6pUjvrWS2oNIxX87RwXl3Wea/3guz3CW9M6XNBboU72Mj2mLJgelg5aVirNa0HxQlwQarjZ0l8BcF6Rt1TQswy3DmG3hyapA8892+I9MQ7E7piExv/9Y05Ny5msE4Gq/ozA6B4/5Il+F4Dl1wJ/hdCRVc7Mg63kFHGIQg=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA9PR09MB5583.namprd09.prod.outlook.com (2603:10b6:806:1f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 19:26:43 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 19:26:43 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: Chris Rogers <c1337rogers@gmail.com>
Thread-Topic: [EXTERNAL] Re: [USRP-users] X440: Could not find appropriate
 gain for performing ADC self cal
Thread-Index: AQHcqzOU6IK1tFLOLEeqCnZzlrZldbWdLNgAgAABTzI=
Date: Tue, 3 Mar 2026 19:26:43 +0000
Message-ID: 
 <SJ0PR09MB9126B1435B1A8B8AA8733249EC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB912686CBC2CC3BA97673827BEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAOEzSFTKfXPCW4DfnHxDSdaDUYxkFswq5+BGmV7FOyckfRRCxA@mail.gmail.com>
In-Reply-To: 
 <CAOEzSFTKfXPCW4DfnHxDSdaDUYxkFswq5+BGmV7FOyckfRRCxA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA9PR09MB5583:EE_
x-ms-office365-filtering-correlation-id: 8c32a3a9-94c0-4806-e421-08de795acdaf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|4022899009|41320700013|366016|1800799024|7053199007|38070700021|8096899003;
x-microsoft-antispam-message-info: 
 oPNAyV0FTrhS5QGdkWrk3LIhjdNvpqnv4spK5gMH2jX5Y4+/OjyWe1uvUSTW8m44YcldlEQT2MVo8d2I0YrHKdxI/U+GKXCacxOs+mEewzpbbRQfyJi3AHUqW0RwNdxSmh3ENR4zTBjy8AHN9c7q2LzqlqBpCLLMHtDdRONWWB7+NOAEZG2HHuDyaNxsd6x0yaPRW4XfoAiJVaHC81//JCx9u2rU6tqsN1zWgiHj8H9Ad3770FeNF1UcHyWFumNXZFzSYZBQ032zTmYvJcT8P1+ydZ9Ra7fuae6wx9odImyBKZYJ4N6Wy8qOwAB92a9Ca1XKtfpL/aXcbSQP+GKy+DuPuZse3Wzf0klf2lB1/F6W2r9/Z1EiXK7mBy2CmQFqkXXRA5uN/6o/Ytz539HLuDXkEQ37VtB0Qzosd7XU1ptP+u9D6wjTlyo35S2scpV2EodtGXXXs3hh7KUUmi3P7+HpzcDV9r4iEe78J72kIinwS54B92vaWLDMbu0FCWBbsfb/b34OdH8eoR+1T8LbONHwpReUp0Nnf5GWoYh7zBVHeAY6xaL1kKNXTJNQLyNxGMqn9PA1oXasNSxMibkxd7UQtppeJ1jS3BV3HZ8OrHTv7eeHLo3yDHE+zMqPNuVfp9E4hF96MI+zz+MvBMFBUMvf4sC3wh3hMIEli4RWA9d8hGiFpL+0ULEH8hz7mEgcJSduIiWLW5EvEiq0x/nbrJjB6ht6DyhCK6WchqfTmQqxqyRorQ1yH/NZ85ZFelT0AduqoW6k4xrxGnZbTJ48iRbvmhUEAPahsuetViaomTc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(41320700013)(366016)(1800799024)(7053199007)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?VS9SOUpTQzlvSFRhbnp5cTZZbG5ra1NTeG5Teit3aUh0WFJhRFg5N0RJbEgx?=
 =?utf-8?B?QVhVTXpuSmMrcXdvM2Ewb0gyakZjQ2QwNWFVSHBHdmRSQzIzUzFPRWVmRTB4?=
 =?utf-8?B?NjZOdUNuaWhQK0cxWXZMaXpVZWFvd292NndveHY5TjU4WU5McjJzMUgrblls?=
 =?utf-8?B?SldFdm5zb2M0ODczSzJ2MlR5SUxQcVVPbXIyMEhFSEJVcFZQYXkzNmpXTFlC?=
 =?utf-8?B?TUdoWEFWd0FnNzdmdFhpZTRXekh3bFp2SjF0cjFkRkZRMWx3cXNzTTBOQkdK?=
 =?utf-8?B?cG5CSXYxOW8vVVIxRElXcWNieTRCbm5TYXRnb3lGTGU4S3h6RG5yNTN0b256?=
 =?utf-8?B?alh3bHVWem5qTm5PWEIzZndWR1g2dFFBSlZPYjRVK1hLZGhHOHJQYjRHQjBm?=
 =?utf-8?B?SElyVm0rL09KbUJub0pNMXdSZmtRdnl6TzA0bmlmYjgzb2d5VUhpNTZPMkRv?=
 =?utf-8?B?eUYvbnFlU25IZWpob3FDWng1QWVEeVJMb0RUL2lXQzJxU2F5NHF5OE9QRUdl?=
 =?utf-8?B?NUZ1STd1S3B1VGVtSVVnaGNOTnFVZ01oc0V0elczVko4enVzWE9weDhaUWQ5?=
 =?utf-8?B?blJxTGFhNEUwVmJlT1RtTWJQTzJHMzBucUpFQWdFeXErVDZiK3ZtWGdvOUZZ?=
 =?utf-8?B?eXhMeXo4d1dwaytWVGtobmJYM0NncjRlT2pkemgwWUZ3OHBqTjJmVFMxT0pE?=
 =?utf-8?B?NlRyQ1B4UVdBaHdDcThPeFZBSEQwQUpTcnViQ3ZVOWdVSlNwQmJ3aTdFcWFZ?=
 =?utf-8?B?RmM4QlZBMlZWTEMvZ1RiUVpLcHNEWUZpRDBsVWdlOHFYMC9IWno0Zk5YS3Rx?=
 =?utf-8?B?S016MkJPOHN5aFNEeXkrcFZlRGU4WmpVU1hQSVFxWFh2bUUyRzR3Rk5kQkZJ?=
 =?utf-8?B?bmtJSEViRWVtZGdjeXBoZ3VKcExjSDQrMGFlVGZnaS9vN1F0andhV1h0R0Qy?=
 =?utf-8?B?SWduY1Z0dHJnRnVKb2VnWklsMXF2RzRna3JFcUpZRlduanBzb2hjSUd3bEYy?=
 =?utf-8?B?RWR3cE9ZVEVCMmR1NGlkWU84MFdDMGtKMEY2aW1sZDlXcTlLNnV3Ylg5Szlv?=
 =?utf-8?B?NzQ2aHU0OHAxNmVaaEFZa1pDRmlhaWIwUUJGdkREQkJIRll5QUt2emc1T0FM?=
 =?utf-8?B?UWloQVBUNlE4TEtIYUpZalZZWkR2UFVRWVM3bkovYm43SENPT3JMSU4wWkg1?=
 =?utf-8?B?OFFTUEJ5bWp0ZE5GNGphdFB1RG1nZ0c4Z0JCTnpxdGhRTERVTG9QVHlSUWhQ?=
 =?utf-8?B?UFJJenNaa0d5SWwyWi9KblB0dUp6ZURST0tpK2g1cysreWFMdkdtVERBSEhG?=
 =?utf-8?B?akhueWltVjFlZlRkWDEzYTAzZGU0U3hLOXBRaUYvY2h3bzdCK09PVGdWQWdl?=
 =?utf-8?B?eG9zaHZmWkVtOWU4d3hQOTYwRUo0c0VDQkFnaWxVRDdCTTZ6cWViaHA4Q0cw?=
 =?utf-8?B?cVF2WGhPNTJoMjRjeGdEMnYrZGRjNVpWOVlUMjBiSUtyU1VQbjRrVVB2WS9w?=
 =?utf-8?B?ZmhvL3hTcVpxQSs1eHBoYzg0QzMrYWJJd1hWaFBFeW0ybmpUY0hoY0IrMHcz?=
 =?utf-8?B?UUR5Q0FleCtGb3EzWHZnZlYweGJuVmRBQXhaZnlaNXV2c2Q5Y3N2c2t4WE4x?=
 =?utf-8?B?eEdUcm9UdGIzNCt3Y3ViSHh2R09kaGhORzhqeGJFWFkvMGlOOW81eDFLR1I3?=
 =?utf-8?B?ejNuNjAxOFh4MUFZcVdaRTQxbDlaQ0RDOXVyaVIvSDZFb0g1NjJNTDZZM2hi?=
 =?utf-8?B?NzNKVXByY21ac2VneTlsMkp0UERDZCs3YWRLWUI2aEdQWTRUWDlZcmpxcXJJ?=
 =?utf-8?B?VkdXeVNsVGNBL0RCdEFwM3ZSRkxNdUtwRVNOLzk1cXY4TnVRTXBzT0lhTkRu?=
 =?utf-8?B?Zkdkem5kelVObFVuQUhPZEQ4MFZYQ0ZmZllzU1RBSGVUdzZ4d1d1czdLVlFi?=
 =?utf-8?B?MG1kSUo4eSsza1VEN3pvYVQxbklZaFpVcE9LT3dGTlNRb2ZzQUY4ZGVScmdE?=
 =?utf-8?B?R2MyTGJoQlZzSUo4YVdyUk80NU95TWQvNjVvbUtFVUtrTTdITGVkTkJNd0lN?=
 =?utf-8?B?WDV5eFl2Sm82d0p2cVhzdTladE9NVDY0dHRNUzZycnpGbE9PUEpmTUFZR2R2?=
 =?utf-8?B?RHFVN0Rpa3B2UjVkL0NlNm96eXc3QTk2Y3VuSDZuUkMrdVo4K3pTVHQycG1v?=
 =?utf-8?B?dEpvZzN0NFB3a242YVNJY1IzcVB0TE53dW1NVU5MQ3VTQzFYRDJ1bllibTFI?=
 =?utf-8?B?Y1hxdko1WitjaGNZYXRRWXhDNFU3eTMxVlR3MFZYYWxWT04rTnhmOWVISE1w?=
 =?utf-8?Q?uH8vfs7kzPs9+wIvrm?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c32a3a9-94c0-4806-e421-08de795acdaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 19:26:43.7853
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA9PR09MB5583
Message-ID-Hash: DC6PK3SOQSB7WJNPKI4GIG222VNHAGIU
X-Message-ID-Hash: DC6PK3SOQSB7WJNPKI4GIG222VNHAGIU
X-MailFrom: prvs=5153118e6=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: X440: Could not find appropriate gain for performing ADC self cal
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BQCF6I2PKNSXWE53MNPXTDPEMLKOUVRW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8948620700263995013=="
X-Rspamd-Queue-Id: 160C81F5F8F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email]
X-Rspamd-Action: no action

--===============8948620700263995013==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126B1435B1A8B8AA8733249EC7FASJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126B1435B1A8B8AA8733249EC7FASJ0PR09MB9126namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGFua3MgZm9yIHRoZSB1cGRhdGUuICBJIGRvIHVzZSBhbGwgdGhlIGNoYW5uZWxzLCBidXQg
cGVyaGFwcyBJIGNhbiBhdCBsZWFzdCBnZXQgdGhyb3VnaCBjYWwgbW9yZSByZWxpYWJseS4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpGcm9tOiBDaHJpcyBSb2dlcnMgPGMxMzM3
cm9nZXJzQGdtYWlsLmNvbT4NClNlbnQ6IFR1ZXNkYXksIE1hcmNoIDMsIDIwMjYgMTE6MTIgQU0N
ClRvOiBFdWdlbmUgR3JheXZlciA8ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc+DQpDYzogdXNycC11
c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQpTdWJqZWN0OiBbRVhURVJOQUxdIFJl
OiBbVVNSUC11c2Vyc10gWDQ0MDogQ291bGQgbm90IGZpbmQgYXBwcm9wcmlhdGUgZ2FpbiBmb3Ig
cGVyZm9ybWluZyBBREMgc2VsZiBjYWwNCg0KDQpEbyBub3Qgb3BlbiBsaW5rcyBvciBhdHRhY2ht
ZW50cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyLiBJZiB1bnN1cmUsIGNsaWNrIHRo
ZSBSZXBvcnQgUGhpc2ggYnV0dG9uIG9yIGZvcndhcmQgdGhlIGVtYWlsIHRvIE9QU0VDLg0KDQpJ
IGFsc28gZ2V0IGFuIGlzc3VlIGxpa2UgdGhpcyBvbiBteSBYNDQwLiBXaGVuIHRoZSByYWRpbyBz
dGVwcyB0aHJvdWdoIGVhY2ggY2hhbm5lbCBkdXJpbmcgY2FsaWJyYXRpb24sIGl0IHdhcyBjb25z
aXN0ZW50bHkgZmFpbGluZyBvbiBjaGFubmVsIDIsIG5vIGlkZWEgd2h5LiBNeSB3b3JrYXJvdW5k
IHdhcyB0byBnaXZlIGl0IHRoZSBkZXZpY2UgYXJncyBwYXJhbWV0ZXIgImNhbF9jaF9saXN0PTA7
MTszOzQ7NTs2OzciIGFuZCB0aGlzIHdvcmtzLiBJIGhhdmUgbm90IGFjdHVhbGx5IHNlZW4gZXZp
ZGVuY2Ugb24gYSBzY29wZSB0aGF0IHRoaXMgY2hhbm5lbCByZWFsbHkgaXNuJ3Qgd29ya2luZywg
c28gdGhlcmUgbXVzdCBiZSBzb21lIG90aGVyIGludGVybmFsIGlzc3VlLi4uIEZvcnR1bmF0ZWx5
IGZvciBtZSwgSSBkb250IG5lZWQgYWxsIGNoYW5uZWxzIHNvIEkganVzdCBkb250IHVzZSBjaGFu
bmVsIDIuDQoNCk9uIFR1ZSwgTWFyIDMsIDIwMjYgYXQgMTI6MzTigK9QTSBFdWdlbmUgR3JheXZl
ciA8ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc8bWFpbHRvOmV1Z2VuZS5ncmF5dmVyQGFlcm8ub3Jn
Pj4gd3JvdGU6DQpIaSwNCg0KSSBnZXQgdGhlIGZvbGxvd2luZyBlcnJvciBhYm91dCBldmVyeSBm
b3VydGggdGltZSBJIHN0YXJ0IHRoZSBzb2Z0d2FyZS4NCg0KLS0tLS0tLQ0KRXJyb3IgZHVyaW5n
IGluaXRpYWxpemF0aW9uIG9mIGJsb2NrIDAvUmFkaW8jMCEgW0VSUk9SXSBbUkZOT0M6OkdSQVBI
XSBDYXVnaHQgZXhjZXB0aW9uIHdoaWxlIGluaXRpYWxpemluZyBncmFwaDogUnVudGltZUVycm9y
OiBDb3VsZCBub3QgZmluZCBhcHByb3ByaWF0ZSBnYWluIGZvciBwZXJmb3JtaW5nIEFEQyBzZWxm
IGNhbCBFcnJvcjogUnVudGltZUVycm9yOiBGYWlsdXJlIHRvIGNyZWF0ZSByZm5vY19ncmFwaC4N
Ci0tLS0tLS0NCg0KVUhEIDQuOS4wLjENCkkgc2VlIGl0IHdpdGggZWl0aGVyIHVoZF91c3JwX3By
b2JlIE9SIHJ4X3NhbXBsZXNfdG9fZmlsZS4NCg0KTk9URTogdGhlcmUgbWF5IGJlIGFuIGFjdHVh
bCBoYXJkd2FyZSBwcm9ibGVtIHdpdGggb25lIG9mIHRoZSBjaGFubmVscyAoVEJEKS4NCg0KQW55
b25lIHNlZW4gdGhpcz8NCg0KVGhhbmtzLg0KDQoNCkV1Z2VuZSBHcmF5dmVyLCBQaC5ELg0KUHJp
bmNpcGFsIEVuZ2luZWVyDQozMTAtMzM2LTEyNzQNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tPG1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbT4NCg==

--_000_SJ0PR09MB9126B1435B1A8B8AA8733249EC7FASJ0PR09MB9126namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBB
cHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBI
ZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAw
KTsiIGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZv
bnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNl
LCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6
IHJnYigwLCAwLCAwKTsiIGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+DQpUaGFua3MgZm9yIHRoZSB1
cGRhdGUuJm5ic3A7IEkgZG8gdXNlIGFsbCB0aGUgY2hhbm5lbHMsIGJ1dCBwZXJoYXBzIEkgY2Fu
IGF0IGxlYXN0IGdldCB0aHJvdWdoIGNhbCBtb3JlIHJlbGlhYmx5LiZuYnNwOyZuYnNwOzwvZGl2
Pg0KPGRpdiBpZD0iYXBwZW5kb25zZW5kIj48L2Rpdj4NCjxociBzdHlsZT0iZGlzcGxheTppbmxp
bmUtYmxvY2s7d2lkdGg6OTglIiB0YWJpbmRleD0iLTEiPg0KPGRpdiBpZD0iZGl2UnBseUZ3ZE1z
ZyIgZGlyPSJsdHIiPjxmb250IGZhY2U9IkNhbGlicmksIHNhbnMtc2VyaWYiIHN0eWxlPSJmb250
LXNpemU6MTFwdCIgY29sb3I9IiMwMDAwMDAiPjxiPkZyb206PC9iPiBDaHJpcyBSb2dlcnMgJmx0
O2MxMzM3cm9nZXJzQGdtYWlsLmNvbSZndDs8YnI+DQo8Yj5TZW50OjwvYj4gVHVlc2RheSwgTWFy
Y2ggMywgMjAyNiAxMToxMiBBTTxicj4NCjxiPlRvOjwvYj4gRXVnZW5lIEdyYXl2ZXIgJmx0O2V1
Z2VuZS5ncmF5dmVyQGFlcm8ub3JnJmd0Ozxicj4NCjxiPkNjOjwvYj4gdXNycC11c2VycyAmbHQ7
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20mZ3Q7PGJyPg0KPGI+U3ViamVjdDo8L2I+IFtFWFRF
Uk5BTF0gUmU6IFtVU1JQLXVzZXJzXSBYNDQwOiBDb3VsZCBub3QgZmluZCBhcHByb3ByaWF0ZSBn
YWluIGZvciBwZXJmb3JtaW5nIEFEQyBzZWxmIGNhbDwvZm9udD4NCjxkaXY+Jm5ic3A7PC9kaXY+
DQo8L2Rpdj4NCjxkaXY+DQo8cCBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjojNUU4QUI0OyBjb2xv
cjojZmZmZmZmOyBmb250LXNpemU6MTBwdCFpbXBvcnRhbnQ7IHBhZGRpbmc6MWVtIj4NCjxzdHJv
bmc+RG8gbm90IG9wZW4gbGlua3Mgb3IgYXR0YWNobWVudHMgdW5sZXNzIHlvdSByZWNvZ25pemUg
dGhlIHNlbmRlci4gSWYgdW5zdXJlLCBjbGljayB0aGUgUmVwb3J0IFBoaXNoIGJ1dHRvbiBvciBm
b3J3YXJkIHRoZSBlbWFpbCB0byBPUFNFQy4NCjwvc3Ryb25nPjwvcD4NCjxkaXYgZGlyPSJsdHIi
PkkgYWxzbyBnZXQgYW4gaXNzdWUgbGlrZSB0aGlzIG9uIG15IFg0NDAuIFdoZW4gdGhlIHJhZGlv
IHN0ZXBzIHRocm91Z2ggZWFjaCBjaGFubmVsIGR1cmluZyBjYWxpYnJhdGlvbiwgaXQgd2FzIGNv
bnNpc3RlbnRseSBmYWlsaW5nIG9uIGNoYW5uZWwgMiwgbm8gaWRlYSB3aHkuIE15IHdvcmthcm91
bmQgd2FzIHRvIGdpdmUgaXQgdGhlIGRldmljZSBhcmdzIHBhcmFtZXRlciAmcXVvdDtjYWxfY2hf
bGlzdD0wOzE7Mzs0OzU7Njs3JnF1b3Q7DQogYW5kIHRoaXMgd29ya3MuIEkgaGF2ZSBub3QgYWN0
dWFsbHkgc2VlbiBldmlkZW5jZSBvbiBhIHNjb3BlIHRoYXQgdGhpcyBjaGFubmVsIHJlYWxseSBp
c24ndCB3b3JraW5nLCBzbyB0aGVyZSBtdXN0IGJlIHNvbWUgb3RoZXIgaW50ZXJuYWwgaXNzdWUu
Li4gRm9ydHVuYXRlbHkgZm9yIG1lLCBJIGRvbnQgbmVlZCBhbGwgY2hhbm5lbHMgc28gSSBqdXN0
IGRvbnQgdXNlIGNoYW5uZWwgMi48L2Rpdj4NCjxicj4NCjxkaXYgY2xhc3M9InhfZ21haWxfcXVv
dGUgeF9nbWFpbF9xdW90ZV9jb250YWluZXIiPg0KPGRpdiBkaXI9Imx0ciIgY2xhc3M9InhfZ21h
aWxfYXR0ciI+T24gVHVlLCBNYXIgMywgMjAyNiBhdCAxMjozNOKAr1BNIEV1Z2VuZSBHcmF5dmVy
ICZsdDs8YSBocmVmPSJtYWlsdG86ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmciPmV1Z2VuZS5ncmF5
dmVyQGFlcm8ub3JnPC9hPiZndDsgd3JvdGU6PGJyPg0KPC9kaXY+DQo8YmxvY2txdW90ZSBjbGFz
cz0ieF9nbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDsgYm9yZGVy
LWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7IHBhZGRpbmctbGVmdDoxZXgiPg0KPGRp
diBjbGFzcz0ieF9tc2c2OTc1OTE3NTQ3MTQwNzMzNzM4Ij4NCjxkaXYgZGlyPSJsdHIiPg0KPGRp
diBzdHlsZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9zX01TRm9u
dFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNv
bG9yOnJnYigwLDAsMCkiPg0KSGksPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRv
cyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGlj
YSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+DQo8
L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxB
cHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6
ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCkkgZ2V0IHRoZSBmb2xsb3dpbmcgZXJyb3IgYWJv
dXQgZXZlcnkgZm91cnRoIHRpbWUgSSBzdGFydCB0aGUgc29mdHdhcmUuPC9kaXY+DQo8ZGl2IHN0
eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2Vy
dmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6
cmdiKDAsMCwwKSI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9z
LEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNh
LHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCi0tLS0tLS08
L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxB
cHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6
ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCkVycm9yIGR1cmluZyBpbml0aWFsaXphdGlvbiBv
ZiBibG9jayAwL1JhZGlvIzAhIFtFUlJPUl0gW1JGTk9DOjpHUkFQSF0gQ2F1Z2h0IGV4Y2VwdGlv
biB3aGlsZSBpbml0aWFsaXppbmcgZ3JhcGg6IFJ1bnRpbWVFcnJvcjogQ291bGQgbm90IGZpbmQg
YXBwcm9wcmlhdGUgZ2FpbiBmb3IgcGVyZm9ybWluZyBBREMgc2VsZiBjYWwgRXJyb3I6IFJ1bnRp
bWVFcnJvcjogRmFpbHVyZSB0byBjcmVhdGUgcmZub2NfZ3JhcGguPC9kaXY+DQo8ZGl2IGlkPSJ4
X21fNjk3NTkxNzU0NzE0MDczMzczOFNpZ25hdHVyZSI+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWls
eTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhl
bHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQot
LS0tLS0tPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRl
ZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBm
b250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5
bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2
aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpy
Z2IoMCwwLDApIj4NClVIRCA0LjkuMC4xPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpB
cHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZl
dGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQpJIHNl
ZSBpdCB3aXRoIGVpdGhlciB1aGRfdXNycF9wcm9iZSBPUiByeF9zYW1wbGVzX3RvX2ZpbGUuPC9k
aXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0
b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6
MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQt
ZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGli
cmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDAp
Ij4NCk5PVEU6IHRoZXJlIG1heSBiZSBhbiBhY3R1YWwgaGFyZHdhcmUgcHJvYmxlbSB3aXRoIG9u
ZSBvZiB0aGUgY2hhbm5lbHMgKFRCRCkuPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpB
cHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZl
dGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+
DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9u
dCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQt
c2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCkFueW9uZSBzZWVuIHRoaXM/PC9kaXY+DQo8
ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNG
b250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsg
Y29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5
OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVs
dmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NClRo
YW5rcy48L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVk
Rm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZv
bnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCjxicj4NCjwvZGl2Pg0KPGRpdiBzdHls
ZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9zX01TRm9udFNlcnZp
Y2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJn
YigwLDAsMCkiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxB
cHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxz
YW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQpFdWdlbmUgR3Jh
eXZlciwgUGguRC48L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0Vt
YmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NClByaW5jaXBhbCBFbmdpbmVl
cjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250
LEFwdG9zX01TRm9udFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1z
aXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KMzEwLTMzNi0xMjc0PC9kaXY+DQo8L2Rpdj4N
CjwvZGl2Pg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188
YnI+DQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj4NCnVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPC9hPjxicj4NClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0i
bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+
DQp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQo8L2Rpdj4NCjwvYmxv
Y2txdW90ZT4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_SJ0PR09MB9126B1435B1A8B8AA8733249EC7FASJ0PR09MB9126namp_--

--===============8948620700263995013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8948620700263995013==--
