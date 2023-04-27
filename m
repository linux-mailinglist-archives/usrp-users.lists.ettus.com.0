Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE0F6F0B59
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 19:47:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15FA7383FC0
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 13:47:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682617669; bh=r+YjQYs8pFrW3IwO8Z1dEjpXRQtwPLS8IW+v2dgK0pM=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OnfJRurBJF1G9ENfnsy9KafPJg/5ns0aqmHwHu4OqOywr3CD30ZgUIbFZW6P4MBIg
	 9E7wx+aHFmQGfTzGFVRO6Uuoz8zlVZGK5Ke0tOZbTWqLCs87GpM11Z3XZC88fT0ovj
	 dTJneVL5dEQtsruRF05rI5pK+JufTPy1Sn+ZBuLEu4D3Z8OSLgb+uLVaM2fxk7UN0s
	 pJI03+qv704H5IMmkXzVq1sTelB5Z+kOWErT4P6q1E3mXtxyo5Nf/7yB+blKohwjgT
	 cVnVawHi0nH9KSKeUD886EFDlvh+NFy5iu5/fgcqX8fHioN59J2lbY4UGyrYDoDXSd
	 b+bmRyNobs8lw==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id AC8983808E7
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 13:47:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="YawfE9os";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="fdmhZ79z";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1682617648; x=1714153648;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=czOZHFStEOpJADSH5OySbab95kPeHJNZUyCDrAz1da0=;
  b=YawfE9osMT6kYepGwThx8mP6VZlKWKKEQakIG/7QolTTl7WSEj+DxNSK
   0ftrmVIr4EBPi8Q3GdItmhOGzVtFKPopBsX8lkZfEq2ZBBaamJ2Gzsanv
   QPw/XJuBX5esPMFmumfNL0M5AnMs86kD9jGHt5COyQhQ16V+LrOnZEkGB
   0=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="394809"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200";
   d="scan'208,217";a="394809"
X-IPAS-Result: =?us-ascii?q?A2FZAwBStEpkh2VBL2hXA4JYgSsBgQJzgVyEU5E3i0uLQ?=
 =?us-ascii?q?4ZOgSUDGDMLDwEBAQEBAQEBAQcCLgEVBAEBAwSEfwIWhSkmNAkOAQIEAQEBA?=
 =?us-ascii?q?QMCAwEBAQEBAQMBAQEFAQEBAQEHAwECAhABAQEBGQkXBw4QBSKFaA2DVk07A?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBBQI1TwEBAQEDA?=
 =?us-ascii?q?SIdAQE3AQ8CAQgOAwQBASgDAgICHwcKFAkIAgQOBQiCdoIWDQYDMbEMeoEyg?=
 =?us-ascii?q?QGCCAEBBgQEnFANC16BXgmBQYNSg32BYAEBiCA2gVVEgRVDgmg+giCCJgYPC?=
 =?us-ascii?q?hURgxQ5gi6XFIEzcoEngTGBBAIJAhFrgRAIZYF0QAINZAsOboFFgxcEAhQ0D?=
 =?us-ascii?q?gwXXgSBEAYIDAc2A0QdQAMLOzo9NRQfBQRxgVkEL0CBEwIEASUknCdKCg0tA?=
 =?us-ascii?q?5JrgyiKS6F5OzUHhAGBUwYMlyOBeIYjF6lDl3qRQpY2AgQCBAUCDgiBY3yBG?=
 =?us-ascii?q?jMaMIJEZlIZD445g1mPeXU9AgcBCgEBAwmLRQEB?=
IronPort-PHdr: A9a23:frEigRZ05ntcelybDhAlcLz/LTAqhN3EVzX9orIriLNLJ6Kk+Zmqf
 EnS/u5kg1KBW4LHo+lFhOzbv+GFOyQA7J+NvWpEfMlKUBkI2skTlhYrVciCD0CzJfX2bis8S
 cJFUlIt/3yyPUVPXsjkYFiHq3Co6ngVABqsXTc=
IronPort-Data: A9a23:0uvSHqh3wZmQa7PUYv5mXMf6X161KxcKZh0ujC45NGQN5FlHY01je
 htvXjuObq2KMDCketp1PYTj8EsGscTWmtEwTgNlqio8FC4W8JqUDtmwEBz9bniYRiHhoOOLz
 Cm/hv3odp1coqr0/0/1WlTHhScijfngqp3UUbaaa3sZqTdMEXtn01Q68wIAqtYAqcCjBA+Qs
 s/FrcTaOVu0sxZ5KWt8B5ir8HuDh9yv/mJJ1rACTaoT5gSGyyNKVMl3yZyZdhMUfKEFRoZWe
 M6elNlVzkuBlz8xB9WslKrMc0FiatY+6iDT4pb+c/HKbilq/kTe4I5iXBYvQR4/ZwGyojxE4
 I4lWaqYFF5zZvWU8Agqe0Iw/ylWZcWq8VJcSJS1mZT7I0buKxMAzxjyZa2f0EJxFutfWAlzG
 fIkxD8lbizdiPmf4paCdeB+vtskANHiBIYtgyQ1pd3ZJa5OrZHrbI7hvYUd8BJrw8dEELDZe
 tYTbidpYFLYeRpTN1wLCZU42uC1mn34dD4eo1WQzUY1yzGLkEotj/6zbZyMIoXiqcZ9xy50o
 krL4mv0BBxcO8aW2CSI6Fqli/XI2yThV+r+EZXjp6I62Az7Kmo7B0MXSGCKhqaClnGyfI9FJ
 21J4yhzhP1nnKCsZoKkBEbg+STsUgQnc8dLCfV/9RqA0LH85weCGnNCQyJddcdgv8gzLRQgz
 laFltfoAztHv7icSHbb/bCRxQ5eIgAQJG4GICMBFgQO6IG5pJlp10qWCNF+DKSyk9v5Xynqx
 CyHpzQ/gLNVitMX06K8/hbMhDfESoX1ohAd5jmJUXmMzCdAW4e3X5OvxUDS1fNyFdPMJrWeh
 0Qsl8+b5eEIKJiCki2RXekAdI1FAd7VYVUwZnY/T/EcGySRF22LIdkOuGsnTKt9GoNVImGwO
 hS7VRZ5vsc7AZe8UUNgj2td4ewGwLOoMNPkUP3PBjalSsUpL1fYlM2CiF754owAuE0lkKV6N
 ZLAfs2nVSweEf4+lGPwQPoB27g2wCx43XnUWZ3w0xWg1/yZeWKRTrAGdlCJa4jVDZ9oQi2Kr
 76z1OPTlH2ztdEShAGLoOb/ynhWfRAG6Wje8ZA/SwJ6ClMO9JsdI/HQ26g9XIdugr5YkOzFl
 lnkBB8ClQGk1SeZcFnbApyGVF8JdcYuxZ7cFXx9VWtEJ1B5Pe5DEY9DKMNuJuF3q4SPM9YtE
 aRfJJ7o7gtzpsTvoG1GNsGk9uSOhTyuhAmUODGibiR3dox9XQGhxzMXVlqHycX6NQLu7ZFWi
 +T4iGvzGMNfLyw/Upq+QK/xnjuZ4yJB8MosBBGgCocIJy3RHH1CcHGZYgkfeJ1Xdn0uB1Kyi
 26rPPvvjbCW+tdpoYSX1PHsQkXAO7IWI3e21lLztd6eXRQ2NEL6qWOceI5kpQzgaV4=
IronPort-HdrOrdr: A9a23:TD3sYaFZCdnArIL9pLqFfZHXdLJyesId70hD6qkvc3Fom52j/f
 xGws5x6fatskdrZJkh8erwW5VoMkmsj6KdgLNhdotKOTOLhILGFvAE0WKP+Vzd8mjFh5ZgPM
 RbAuJD4b/LfD5HZK/BiWHWferIguP3iZxA7t2urUuFODsaD52ImD0JbzpzfHcXeCB2Qb4CUL
 aM7MtOoDStPV4NaN6gO3UDV+/f4/XWiZPPe3c9dlIawTjLqQntxK/xEhCe0BtbeShI260e/W
 /MlBG8zrm/ssu81gTX2wbonttrcZrau5V+7f63+4gowwbX+0WVjbFaKvy/VX4O0aOSAR0R4a
 TxSl8bTrhOAjXqDyyISFLWqnfdODpC0Q6c9XaIxXTkusD3XzQ8Fo5Igp9YaALQ7w46sMh7y7
 8j5RPui3N7N2K1oM3G3am+azh60k6v5XYym+8aiHJSFYMYdb9KtIQauEdYCo0JEi724J0uVL
 AGNrCV2N9GNVeBK3zJtGhmx9KhGnw1AxedW0AH/siYySJfknx1x1YRgMYfgnAD/pQgTIQs3Z
 WMDo140LVVCsMGZ6N0A+kMBcOxF2zWWBrJdHmfJFz2fZt3Tk4la6SHkondyNvaC6DglqFC6a
 gpeGkoxVIPRw==
X-Talos-CUID: =?us-ascii?q?9a23=3AijNyJWsULnO8D3vjtKUKJLik6IslTiPS117yB3a?=
 =?us-ascii?q?HAHRRV7q5UVao/ZFdxp8=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3AGxOjIQ6jViz027RKYx7U6yegxoxnvaWzM3Eqzq4?=
 =?us-ascii?q?ahMWjaDZ8GmqEjmmeF9o=3D?=
Received: from mail-dm3gcc02lp2101.outbound.protection.outlook.com (HELO GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.101])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2023 10:47:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VeX/txnv6PRPLNEVQeKXy04SoF3N5ed4q4jOYwhEVolr/4jTs1ndmt0R7rRMqPUtC6JEv5P454/2vOBJYxpCsbUKJfi7DBWAQ69azfJiYk7qEQ6nZslQHNdqxZwBhoWdI8xI+yWffgiuU1Z2/UdMGGoKAfzKyw1oDg+HsqGiwIhV+by7Hdb8QuIqWeJigLzN2EWf/hiXoF80PrRZN4kwn+1LjVR44fhKtC2OIIwHtyREpW3ox3N2n7b1dx7qGVHjCa/kJWX8lghXMAJAiT+E/NjAw5JJLSk8iihWVSgqCp8gKbiAi9lRWS0YsR9rL/cjMi72eZICXib8UexpktP0Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=czOZHFStEOpJADSH5OySbab95kPeHJNZUyCDrAz1da0=;
 b=HhFkwKc19whZil5fMd6OLjBtt97CsZ2QmptV9eCgPO1mMuTbN0xlLlzNJpR4gtXaD2GO50JrW0BBDZIhnP8XjEbMLJ+woDSMszy4fkz2RLt3ZcsUQhzh8/PobrtX6BPIWwHg+lzE6uDUTp33NETT76y2jBPQyv8MxjnB4qhfZRMBOdlE0DKg7go5bnkMeYaHldG6cz/hU7f/El5wIiKS2JGmlaz/lnxMXyzPRq+ob70rWMjQ9U9u+hCEBdomyrVs1drT22uWxp40SzHdZBMhNhpjbgEILQ3UoHFc+SnNuqXOdLtqsZIz3FKN1KkMaF4rkeEicBC089kuUV86ziovPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=czOZHFStEOpJADSH5OySbab95kPeHJNZUyCDrAz1da0=;
 b=fdmhZ79z2pv0VvteTfzXRqojtwCqQvViGVmGzmIyotjGxjTy44oRIkl2CCJuPavzQrsfMC+NeA/Eq2+UQ3ZJn74q9TpmnUvbUoQhTPe2hDuMJ6ppEJsqpLG54+kttWZFZHA6JORo/jwXyxKjgB95SN2qhPaHEAyqb63u/XzS7RE=
Received: from SA1PR09MB9130.namprd09.prod.outlook.com (2603:10b6:806:28c::16)
 by MW4PR09MB9544.namprd09.prod.outlook.com (2603:10b6:303:1f8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.22; Thu, 27 Apr
 2023 17:47:11 +0000
Received: from SA1PR09MB9130.namprd09.prod.outlook.com
 ([fe80::f98c:8685:762c:c640]) by SA1PR09MB9130.namprd09.prod.outlook.com
 ([fe80::f98c:8685:762c:c640%7]) with mapi id 15.20.6340.022; Thu, 27 Apr 2023
 17:47:11 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Split USRP (X310, N231) between two PCs
Thread-Index: AQHZeI5ayvs3NzdvqE6kZjQ3y3vtRq8+MmQAgAEfFx2AAB01AIAAAEf/
Date: Thu, 27 Apr 2023 17:47:11 +0000
Message-ID: 
 <SA1PR09MB91306922BA156F5FAB00C803EC6A9@SA1PR09MB9130.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK6OOGyUWqFE85ornE2dEQqpeo6C6XHsm8a0RSKE+6VdCg@mail.gmail.com>
 <SA1PR09MB9130DDDC420A0E9C058E2B2CEC6A9@SA1PR09MB9130.namprd09.prod.outlook.com>
 <CAEXYVK7fhpPqE-XoFnAotBvVsYJfW3ko=rU8stU+b+3ZMwMbxQ@mail.gmail.com>
In-Reply-To: 
 <CAEXYVK7fhpPqE-XoFnAotBvVsYJfW3ko=rU8stU+b+3ZMwMbxQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB9130:EE_|MW4PR09MB9544:EE_
x-ms-office365-filtering-correlation-id: f18eb527-5386-49b6-0402-08db47476dfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RZxYfYbZAPx/Mhe33z6ox3frLDAl9nh2fcDYo83SpnkjN7J8RB9reKJed6QSd2ne2MuOz19yw99LI+ZuqWCfFhSyUTd8VyORcZToXCGFeMcV6uTT/4afTUYz+qKKy9hYDPEbXM2DYW4Fi7Z+yusALQe8F0rkC4EWxQJFbSmObqo2L4w3TKRBMJB08lg1pvHCNn+YAHXxB7mA4ghyJ9gn4sku6E8JAO8lZDjDPLGaIu/39Jcnuo5SdUVyIY5RaLyW1F5SjV5NDAyeQSSFhgvXfKROwUc+SJ8PSsFw3iZe3kdluWiHFuLBn6/ICBD+hEcE7ajHCputfYy7ly1ZANclcpL4BoIgAzsbs1JpMwNtYlTLDoLMO7pjeRfvO0M8MeKTCiHSIuGkANpQjS2Ki7PlrqWaNe791pC82umK9hObDQXCOvzKSEq8uDc91s9VsAB6rZZXcZn2keo9xJNXr5lsVWV8hHpM1AxszYp1yo8p2HZQI0kBPJ5lQ/c2nTqS+2h3EagkV9uATnpg39tIvmdyLf94uXLPLxaHpx4oSh5RB9n0UCLUXKBE4vIkyv50KDftluD2MF5UZhk3kssWEhp6z3hpYNw+J2yJsxbCK1avtK1HDyavYW/Zx6issAo20NK4
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB9130.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(451199021)(44832011)(66476007)(19627405001)(5660300002)(8936002)(52536014)(2906002)(4326008)(91956017)(66556008)(66946007)(6916009)(64756008)(76116006)(66446008)(498600001)(7696005)(71200400001)(53546011)(6506007)(186003)(8676002)(26005)(9686003)(38070700005)(38100700002)(86362001)(33656002)(122000001)(40140700001)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?a25QWkFlSlIzaGxJQUJuQThMVnhUWTV6ZHVoL0JabElIVndEblgzZUQ2TzNL?=
 =?utf-8?B?SVRDWU1raHJkNjhCN3NIOWNnQ2IyaUtyVGVMVyt1cmZjZmtZUlVENmJLeUFD?=
 =?utf-8?B?S21qK3pCVFhaVnByZnoxWHhKYlZWVEE1RkZYaDNubG1IMVMwU2JYa0I3Ulhv?=
 =?utf-8?B?NXhLMWxqZzY2UFY1aHBKSXNIeWdoNXgxWnFPRC9uS0xnZVJqQ0M3dnZ5OWRj?=
 =?utf-8?B?WG93MmJVd05hUTF6eG90SmlMaUhnV3JxUnlxS3VDTURuNGtTSGZsRzhLVksy?=
 =?utf-8?B?S1hXalNiNkp1RUJoRFJOWGdXUUQwKzNtVU5VZUtOTXI0UElxbGhqb1U2NGFM?=
 =?utf-8?B?S2ErMlBaQVNqL2JHWUt3a1JjbDJSeTVOeDIyZE01YWRuSVNHaEhBL0IzTlBz?=
 =?utf-8?B?dEM5a28xaDQyT2NsbDJMcis2TEV4WmZnaFRmSERzQnZWKzBWNllvcDNxd0Yv?=
 =?utf-8?B?R1h5cmFYd0V6eDZMaEFvVVRFWWMxdTc0SkplQldCVGRzemd4MEJLbW1GNUVF?=
 =?utf-8?B?c1BIcXR5TVRoLzd2ZEtySUVxaFZxNjBEckhkVUFiaDNPWmVTbW9PYVBHZ3JL?=
 =?utf-8?B?aFZ3b0VzdXV4NjNSS0s4UE9oQXM3SnBNeC9MMXd3Zm5FUGQ5YkkxV2hTY1lS?=
 =?utf-8?B?QXREcXVlWjYrVTZQL2lqMmd5bGprSUk5bFZXLzdqVkYvN1lqNTRXNzhDOFFO?=
 =?utf-8?B?R2p6Z2d5MWxPYmFEbHMraDRtMUZLVzNqWjRmQlJUNnBHVVM4Sktvb240MGJY?=
 =?utf-8?B?QWRjRHVQV3F5VjNxTzRwS0d3eHE1WmorTkxFQTBab0M5ZVA4NVZoNEpqcVRU?=
 =?utf-8?B?K1dJc0pEVU4zWFo2Y2lMbG5JcnZaL2ovL09hYW9SeElDNGtjVml4VjJyRUQz?=
 =?utf-8?B?L1pPdmt0S005LzVNdHFjcmJWakkxVXA3emsvck8zdk5raXRJWUxNYzFwNmN5?=
 =?utf-8?B?MVlHa0FqMjN2dlFTZEVndXUwMkdTYmJKdjBuV0ljUlA3YTUyYXRQSXE3VUVn?=
 =?utf-8?B?bkttK2xoT3hRb2R2S1Q3WXJETGY2SjZ1bk0xZzkyTjJqMml0L2pTYjlTeHUy?=
 =?utf-8?B?a2trWjZ1VjZ1WG00NTBjem5zL1NGMXNZYzIrVnltWlQrYXN4N0dsb0x2Rzk2?=
 =?utf-8?B?aXluZkdBY0xQbUxDalM0QkQ4dVVJUExTYlNwQWYzMnNqZWZxY1h6WkdkT3JU?=
 =?utf-8?B?UHJtaEhvRzQ5REk4OHdyNFI4MVFmMFgyVFFobkcyamZBTnhOK1RxRGhVWXd3?=
 =?utf-8?B?aWhTMWxUTlRaMUIwbHc1dk50UXhSVS9TU1pwbWEwMWtxd0hHdDZvYVRsWTBt?=
 =?utf-8?B?NmtXbTZsWklhRDNLMkV5N21sdEpwK00rOUdrRi9zeGYvYzVKSXFud2hTU0NL?=
 =?utf-8?B?WnJNaHpvOGx0dkJoOC9VanA5Z1dBUldmQ3VodUJKMEhMK0RrQTRsdGdWOUUz?=
 =?utf-8?B?ck1DMlB0M09oZHhvRTBiSDVzSUIyMVdnTlROanpINU9MV2dONjVDemFIWU8x?=
 =?utf-8?B?d3g1YXVuL3dwWDZXby9VNGtiY2VkV0trWDFJWUtMVk5ZaWF1SjkrcnhzcVc5?=
 =?utf-8?B?R0Ivd0dWV0RMRGV3ekFDNWVSZXhKa01LcDNRQ0xHWGR0emRoTFBUM3B0NXdD?=
 =?utf-8?B?aEJsbDIvcHNhQzBTMUR4Y2ZzOGwweXMydTRiclUyMGJBcE1pRzdxNmt1VXMz?=
 =?utf-8?B?RU5KeG9lSVk4Z21WNXN2bDhTZnFjVG40aHFZaFhlWVlxeUpuNVU3KzUxeE9L?=
 =?utf-8?B?M1R5VVpHTFdvTTJIVGxxa2RyMWo3ZmxYd2JJYXZwVDBVM0xNc2JESUFSSVUr?=
 =?utf-8?B?RGlCL3hseGUwamswdFVuRFQ3K2JoMGNqVGw4TmgyM01DdHU4ODMxSjlrUGN2?=
 =?utf-8?B?a2VXY1Qwb3o4RjZzQnhuUGdQekhuVklMZFFiNHVyYndBaTFSd1RPeFlNMlBx?=
 =?utf-8?B?SXdNczNXdDlWTDlCYVBuSmVQWE9aYldaQWNMTHBVY2ltaGZSdDFnODJwbE9a?=
 =?utf-8?B?UWd5Z29WZ2xuK0NaU2ZSTG4ybENBL3VJQmFpWXI5SUpXRGxpdVdkVk5WbWc4?=
 =?utf-8?B?a3RkTnVmS1ZzYnBkR2krVzg1aE12MlBhRmtSSGc5MTUyaHhjN2w2Nm5YZDc0?=
 =?utf-8?Q?cTBs=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB9130.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f18eb527-5386-49b6-0402-08db47476dfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2023 17:47:11.6284
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR09MB9544
Message-ID-Hash: U3WFCB642V2YEHGZAUCWRIMGZO2BS44B
X-Message-ID-Hash: U3WFCB642V2YEHGZAUCWRIMGZO2BS44B
X-MailFrom: prvs=47404cae7=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Split USRP (X310, N231) between two PCs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P56IPDFU2RXTFT7NQOVLND2LSDGFMBRI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5713634751848271512=="

--===============5713634751848271512==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR09MB91306922BA156F5FAB00C803EC6A9SA1PR09MB9130namp_"

--_000_SA1PR09MB91306922BA156F5FAB00C803EC6A9SA1PR09MB9130namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGhhcmQgcGFydCB3aXRoIHJhdyBVRFAgZm9yIHNhbXBsZXMgaXMgdGhlIGZsb3cgY29udHJv
bCBmb3IgdGhlIFRYLiAgRmxvdyBjb250cm9sIGxhdGVuY3kgaXMgdmVyeSB0aWdodCBhdCAyMDAg
TXNwcy4gIE5vdCBzYXlpbmcgaXQgY2FuJ3QgYmUgZG9uZSwgYnV0IGhhdmluZyAnbmF0aXZlJyBz
dXBwb3J0IGluIHRoZSBVSEQgd291bGQgYmUgYmV0dGVyLiAgSSBoYXZlIGZhaXIgdW5kZXJzdGFu
ZGluZyBvZiB0aGUgVUhEIGludGVybmFscyBidXQgd291bGQgbGlrZSB0byBoZWFyIGZyb20gRXR0
dXMgYmVmb3JlIEkgZGl2ZSBpbi4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX18NCg0KRXVn
ZW5lIEdyYXl2ZXIsIFBoLkQuDQpBZXJvc3BhY2UgQ29ycC4sIFByaW5jaXBhbCBFbmdpbmVlcg0K
VGVsOiAzMTAuMzM2LjEyNzQNCl9fX19fX19fX19fX19fX19fX19fX19fXw0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KRnJvbTogQnJpYW4gUGFkYWxpbm8gPGJwYWRhbGlub0Bn
bWFpbC5jb20+DQpTZW50OiBUaHVyc2RheSwgQXByaWwgMjcsIDIwMjMgMTA6NDQgQU0NClRvOiBF
dWdlbmUgR3JheXZlciA8ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc+DQpDYzogdXNycC11c2VycyA8
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQpTdWJqZWN0OiBSZTogW1VTUlAtdXNlcnNdIFNw
bGl0IFVTUlAgKFgzMTAsIE4yMzEpIGJldHdlZW4gdHdvIFBDcw0KDQpPbiBUaHUsIEFwciAyNywg
MjAyMyBhdCAxMjowMOKAr1BNIEV1Z2VuZSBHcmF5dmVyIDxldWdlbmUuZ3JheXZlckBhZXJvLm9y
ZzxtYWlsdG86ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc+PiB3cm90ZToNClRoaXMgaXMgdGhlIGZh
bGxiYWNrIG9wdGlvbi4gIEF0IDIwMCBNc3BzIFpNUSB3aWxsIHByb2JhYmx5IG5vdCB3b3JrICho
YXZlIG5vdCB0cmllZCBpdCB5ZXQpLg0KDQpNYXliZSBzb21lIG1pc3VuZGVyc3RhbmRpbmcuICBa
TVEgZm9yIGNvbW1hbmQvY29udHJvbC4gIFJhdyBVRFAgZm9yIHNhbXBsZXMuICBZb3UgbWlnaHQg
YmUgYWJsZSB0byB3cml0ZSBhIHJhZGlvIGNsYXNzL2xpYnJhcnkgdGhhdCBwbHVncyBpbnRvIFVI
RCB0aGF0IHVzZXMgYWxsIHRoZSBzYW1lIHNhbXBsZSBzZW5kaW5nL3JlY2VpdmluZyBsb2dpYyBi
ZXR3ZWVuIG1hY2hpbmVzLg0KDQpCcmlhbg0K

--_000_SA1PR09MB91306922BA156F5FAB00C803EC6A9SA1PR09MB9130namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsi
IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+DQpUaGUgaGFyZCBwYXJ0IHdpdGggcmF3IFVEUCBmb3Ig
c2FtcGxlcyBpcyB0aGUgZmxvdyBjb250cm9sIGZvciB0aGUgVFguJm5ic3A7IEZsb3cgY29udHJv
bCBsYXRlbmN5IGlzIHZlcnkgdGlnaHQgYXQgMjAwIE1zcHMuJm5ic3A7IE5vdCBzYXlpbmcgaXQg
Y2FuJ3QgYmUgZG9uZSwgYnV0IGhhdmluZyAnbmF0aXZlJyBzdXBwb3J0IGluIHRoZSBVSEQgd291
bGQgYmUgYmV0dGVyLiZuYnNwOyBJIGhhdmUgZmFpciB1bmRlcnN0YW5kaW5nIG9mIHRoZSBVSEQg
aW50ZXJuYWxzIGJ1dA0KIHdvdWxkIGxpa2UgdG8gaGVhciBmcm9tIEV0dHVzIGJlZm9yZSBJIGRp
dmUgaW4uPC9kaXY+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+DQo8ZGl2IHN0eWxlPSJm
b250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1z
aXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgaWQ9
IlNpZ25hdHVyZSI+DQo8ZGl2Pg0KPGRpdiBpZD0iZGl2dGFnZGVmYXVsdHdyYXBwZXIiIGRpcj0i
bHRyIiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMt
c2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsgYmFja2dyb3VuZC1j
b2xvcjogcmdiKDI1NSwgMjU1LCAyNTUpOyI+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6
IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEwcHQ7IGNvbG9yOiBibGFjazsiPjxzcGFu
IGlkPSJtcy1ydGVyYW5nZXBhc3RlLXN0YXJ0Ij48L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtZmFt
aWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMy4zM3B4OyBjb2xvcjogcmdiKDAs
IDAsIDApOyI+X19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjxzcGFuIGlkPSJtcy1ydGVy
YW5nZXBhc3RlLWVuZCI+PC9zcGFuPjxicj4NCjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0i
Zm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEwcHQ7IGNvbG9yOiBi
bGFjazsiPkV1Z2VuZSBHcmF5dmVyLCBQaC5ELjxicj4NCkFlcm9zcGFjZSBDb3JwLiwgUHJpbmNp
cGFsIEVuZ2luZWVyPGJyPg0KVGVsOiAzMTAuMzM2LjEyNzQ8YnI+DQpfX19fX19fX19fX19fX19f
X19fX19fX188L3NwYW4+PGJyPg0KPC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+
DQo8ZGl2IGlkPSJhcHBlbmRvbnNlbmQiPjwvZGl2Pg0KPGhyIHN0eWxlPSJkaXNwbGF5OmlubGlu
ZS1ibG9jazt3aWR0aDo5OCUiIHRhYmluZGV4PSItMSI+DQo8ZGl2IGlkPSJkaXZScGx5RndkTXNn
IiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJpZiIgc3R5bGU9ImZvbnQt
c2l6ZToxMXB0IiBjb2xvcj0iIzAwMDAwMCI+PGI+RnJvbTo8L2I+IEJyaWFuIFBhZGFsaW5vICZs
dDticGFkYWxpbm9AZ21haWwuY29tJmd0Ozxicj4NCjxiPlNlbnQ6PC9iPiBUaHVyc2RheSwgQXBy
aWwgMjcsIDIwMjMgMTA6NDQgQU08YnI+DQo8Yj5Ubzo8L2I+IEV1Z2VuZSBHcmF5dmVyICZsdDtl
dWdlbmUuZ3JheXZlckBhZXJvLm9yZyZndDs8YnI+DQo8Yj5DYzo8L2I+IHVzcnAtdXNlcnMgJmx0
O3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tJmd0Ozxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTog
W1VTUlAtdXNlcnNdIFNwbGl0IFVTUlAgKFgzMTAsIE4yMzEpIGJldHdlZW4gdHdvIFBDczwvZm9u
dD4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8L2Rpdj4NCjxkaXY+DQo8ZGl2IGRpcj0ibHRyIj4NCjxk
aXYgZGlyPSJsdHIiPjwvZGl2Pg0KPGRpdiBjbGFzcz0ieF9nbWFpbF9xdW90ZSI+DQo8ZGl2IGRp
cj0ibHRyIiBjbGFzcz0ieF9nbWFpbF9hdHRyIj5PbiBUaHUsIEFwciAyNywgMjAyMyBhdCAxMjow
MOKAr1BNIEV1Z2VuZSBHcmF5dmVyICZsdDs8YSBocmVmPSJtYWlsdG86ZXVnZW5lLmdyYXl2ZXJA
YWVyby5vcmciPmV1Z2VuZS5ncmF5dmVyQGFlcm8ub3JnPC9hPiZndDsgd3JvdGU6PGJyPg0KPC9k
aXY+DQo8YmxvY2txdW90ZSBjbGFzcz0ieF9nbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHgg
MHB4IDBweCAwLjhleDsgYm9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7IHBh
ZGRpbmctbGVmdDoxZXgiPg0KPGRpdiBjbGFzcz0ieF9tc2c4MzAxMjYwOTM0MTQ1OTQzNjE1Ij4N
CjxkaXYgZGlyPSJsdHIiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6Q2FsaWJyaSxBcmlhbCxI
ZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCk7IGJh
Y2tncm91bmQtY29sb3I6cmdiKDI1NSwyNTUsMjU1KSI+DQpUaGlzIGlzIHRoZSBmYWxsYmFjayBv
cHRpb24uJm5ic3A7IEF0IDIwMCBNc3BzIFpNUSB3aWxsIHByb2JhYmx5IG5vdCB3b3JrIChoYXZl
IG5vdCB0cmllZCBpdCB5ZXQpLjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYmxvY2txdW90ZT4N
CjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2Pk1heWJlIHNvbWUgbWlzdW5kZXJzdGFuZGluZy4mbmJz
cDsgWk1RIGZvciBjb21tYW5kL2NvbnRyb2wuJm5ic3A7IFJhdyBVRFAgZm9yIHNhbXBsZXMuJm5i
c3A7IFlvdSBtaWdodCBiZSBhYmxlIHRvIHdyaXRlIGEgcmFkaW8gY2xhc3MvbGlicmFyeSB0aGF0
IHBsdWdzIGludG8gVUhEIHRoYXQgdXNlcyBhbGwgdGhlIHNhbWUgc2FtcGxlIHNlbmRpbmcvcmVj
ZWl2aW5nIGxvZ2ljIGJldHdlZW4mbmJzcDttYWNoaW5lcy48L2Rpdj4NCjxkaXY+PGJyPg0KPC9k
aXY+DQo8ZGl2PkJyaWFuPC9kaXY+DQo8YmxvY2txdW90ZSBjbGFzcz0ieF9nbWFpbF9xdW90ZSIg
c3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDsgYm9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJn
YigyMDQsMjA0LDIwNCk7IHBhZGRpbmctbGVmdDoxZXgiPg0KPGRpdiBjbGFzcz0ieF9tc2c4MzAx
MjYwOTM0MTQ1OTQzNjE1Ij4NCjxkaXYgZGlyPSJsdHIiPg0KPGRpdj4NCjxkaXYgZGlyPSJsdHIi
Pg0KPGRpdj4NCjxkaXY+PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwv
ZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9o
dG1sPg0K

--_000_SA1PR09MB91306922BA156F5FAB00C803EC6A9SA1PR09MB9130namp_--

--===============5713634751848271512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5713634751848271512==--
