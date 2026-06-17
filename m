Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0jZ3OPsEM2pu8gUAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 22:35:07 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0B969C612
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 22:35:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=gTe8sAnM;
	dkim=fail ("body hash did not verify") header.d=aero.org header.s=mailhub header.b=geVbo2aJ;
	dkim=fail ("body hash did not verify") header.d=aerospacecloud.onmicrosoft.com header.s=selector2-aerospacecloud-onmicrosoft-com header.b=yCaD1t9r;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=aero.org (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C315D385F25
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 16:35:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781728505; bh=ztp2BcFVNLQRr3VjY48SoJUlXCnppvRIGLB3Q3RoeC4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gTe8sAnMxytNHDSCJvhjTnOKC4pDypTSVx+AE3wtkfebDSgZidYFTEUo/fxh8hdTK
	 tDkmB0iV7bJ3HnnAyYe6LyPMiTEvyP/vr+Z2aMTi+4rTdWUSPooNYyW2ASGG8L4mUl
	 W53gKTzN45Ei0SMCMpootoKD8bRrZIMwpyLxCAE3P94IRCNoL4+XAOJW0jy7UZHAy+
	 qsFqh1q+aPQs7R+2h86ZmB5J5gYQySGQG3Sc3b4Ph6veLAULHkeE43DZH8+Ah1mQEZ
	 VC0OdGGt5EfCa0kvxDmmJBl2SdcSy91+jjfWnzOYMPmBm7QeAZ9DebrGybc7oCHgrm
	 ziW0eDHaEYIGw==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A3383845D5
	for <usrp-users@lists.ettus.com>; Wed, 17 Jun 2026 16:34:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1781728483; x=1813264483;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=Jo5z9dTz+JT4ryUxQhbEl69O0NgD23ge71wsgZU+vNM=;
  b=geVbo2aJGbyG7DpDwNoSjlkpGJFTqTG3aK+fp3CbQL8vp+69i2j4osrx
   DIzOMEnWZrqkTT9XgmiqI+pFhVJDrC2r7VpglCDjTs3LcQRg/nFxX7xVp
   sLnLtDdX2MogACqoEgRNO2atd0f+XSWZWfB5ddK6NhQUGZ0Gj7hy2dpMW
   c=;
X-CSE-ConnectionGUID: Moltsr7LTPi/b7dE3ijbbg==
X-CSE-MsgGUID: pcF8SDtqST+IXnOFIXEE4A==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="9449466"
X-IronPort-AV: E=Sophos;i="6.24,210,1774335600";
   d="scan'208,217";a="9449466"
X-IPAS-Result: =?us-ascii?q?A2EXAQBJBDNqjhsUXShXA4JZgT0BgQNCAUWBbJZMA5dEh?=
 =?us-ascii?q?QKBVRSBEANNCg8BAQEBAQEBAQEHAi4BIgQBAQMEhH8CjUUnNAkOAQIEAwIDA?=
 =?us-ascii?q?QEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHgSYBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEdAjVVAQEBAQMBPwEBOA8CAQgRBAEBLycKHQgCBAESCIJ6gh4HB?=
 =?us-ascii?q?AsHAzazfzd4gTSBAYIMAQEGBATbKhhlgWkJgU2DfoFBMoJOGwEBKklsgl2BI?=
 =?us-ascii?q?Rk7hEE2gVVEgRVCgmk+hAQKARIBIx8mg06CMIESgRR6EhuBI4IwQIcZhV9Sc?=
 =?us-ascii?q?iIDJjMsAVUTFwsHBV5FQwMqLy0jSwUtHYEjIR0XFh5YGwcFEiAqQkUjAwI3V?=
 =?us-ascii?q?0A4C0MFgV0Cgg5OIx8DOX+BbYElZ2YVMDWBAhEfCnEqAwttPTcUGwMEgTUFj?=
 =?us-ascii?q?A0HVhcPgh14gS9EgSELDS2SdI9Po0M0B4QggWAGDJdtiDIXqmyZCCOjKB+FL?=
 =?us-ascii?q?QIEAgQFAhAIgWiBJnAzGjCDKlMZD446g2nGXHkCPQcCBw8ChlGNIQEB?=
IronPort-PHdr: A9a23:UbNHbh/Oh0Gdpv9uWCboyV9kXcBvk7n3PwtA7J0hhvoOd6m45J3tM
 QTZ4ukll17GW4jXqpcmw+rbuqztQyoMtJCGtn1RfJlFTRRQj8IQkkQpC9KEDkuuKvnsYmQ6E
 c1OWUUj8Wu8NB1cFdz5IVrIrS7a0A==
IronPort-Data: A9a23:kGqPMqyZH8bhvPZfaMl6t+cLxirEfRIJ4+MujC+fZmUNrF6WrkUDx
 2BOCjzUaKqMNjf0c9F0OYS1oE5TsJ7SnYVhGgZp/i00HyNBpOP7XtnIdU2Y0wF+jyHgoOOLy
 +1EN7Es+ehtFie0SjGFbOi59RGQ8onRH+qmUIYoAggoGEk8Dn5n0Uk78wIAqtYAqcCjBA+Qs
 s/FrcTaOVu0sxZ5KWt8B5ir8HuDh9ys/mlE1rACTaoT5gGGySBKVMh3yZyZdhMUfKEFRoZWe
 M6elNlVzkuBlz8xB9WslKrMc0FiatY+6iDT4pb+c/HKbilq/kTe4I5iXBYvQR4/ZwGyojxE4
 I4lWaqYFF5zZvWU8Agqe0Iw/ylWZcWq8VJcSJS1mZT7I0buKxMAzxjyZa2f0EJxFutfWAlzG
 fIkxD8lSxeHm/msn5aHcugrjJsvAZLqPokVtSQ1pd3ZJa5OrZHraIWT3eUAjRwN3pgXW/HDe
 8AedDxjKgzaZAFCMUsWD5R4m/q0gn74cHtTr1f9SagfvzCVnVc3iuCraoW9lt+iHK25mm6Vu
 23L+Wm/DQsTJcKS0xKM/2irwOjVkksXXapDSOHpqqA06LGV7nQYJk0teUeimsX6q364fPx+G
 2E5pgN7+MDe82TwFYOhAHVUukWsshMaXdtLVe8n8gKlyqrVpQiDD3UCTjlPZcZguMJebSExz
 EfMgsjkHydHtLyOVWnb+6uIsCj0Mi8QRVLufgcBRAoBpt/kup0zhR/JUsxqFLOuh8/xAWivm
 2nT9HJhwbIOkcQMyqO3u0jdhC6hrYTISQhz4RjLWmWi7UVyY4vNi5GUBUbzyPFEMJ2DEX29h
 HlDkZeSwbsPD5uHm3nYKAkSJ41F8cppJ9E1vLKCN5wo9jDo/Xm5YYBb7TdiPk5tL90NazvxO
 RCL4FoJvsAVO2a2Z6hqZY73E94t0aXrCdXiULbTc8ZKZZ9yMgSA+UmChHJ8PUiyyCDAcolmZ
 /93lPpA615BWcyLKxLqHo8gPUcDnHxW+I8qbcmTI+6bPUWiiI69EuxfbATmghER6aKPugLO9
 NhDf8CN0Q03bdASlhL/qNZJRXhTdCBTLcmv96R/KLTfSiI4QztJI6GKntscl3lNw/49ehHgo
 ivlAhcwJZuWrSGvFDhmnVg6OOOzBc8i8y9T0O5FFQ/A5kXPqL2HtM83H6bbt5F8nAC/5ZaYl
 8U4Rvg=
IronPort-HdrOrdr: A9a23:njhUZKFDkntp+g7KpLqFW5HXdLJyesId70hD6qkvc3Fom52j/f
 xGws5x6fatskdoZJhSo6H6BEDgewKVyXcR2+Us1NiZLW3bUQeTTb2KqLGSugEIeBeOvdK1t5
 0QFJSWYeeYZTcVsS+52njfLz9K+qjlzEncv5a6854bd3AJV0gP1WdEIzfePlx9RQFAC5Z8L5
 yB+8pBqQOnfHQcfu67CnMGU+WrnayAqLvWJTo9QzI34giHij2lrJTgFQKD4xsYWzRThZ8/7G
 nsiWXCl+memsD+7iWZ+37Y7pxQltek4MBEHtawhs8cLSipohq0Zb5mR6aJsFkO0a6SARcR4Z
 fxSiUbToROAkDqDyKISC7WqkjdOXgVmj3fIBSj8AHeSITCNU8H4ox69M9km1LimjUdVN0Q6t
 M240uJ85VQFh/OhyL7+pzBUAxrjFO9pT44nfcUlGE3a/poVFZ9l/1rwKpuKuZ1IAvqrIQ8VO
 V+BsDV4/hbNVuccnDCp2FqhNihRG46EBuKSlUL/pX96UkeoFlpi08DgMAPlHYJ85wwD5FC+u
 TfK6xt0LVDVNUfY65xDPoIBcG3FmvOSxTRN3/6GyWQKIgXf3bW75Ln6rQ84++nPJQO0ZspgZ
 zEFEhVsGYjEniee/FmHKc7gSwlbF/NLQgFkPsumaSRkoeMNYbWDQ==
X-Talos-CUID: 9a23:OKCdK2Gc7fm7K4BzqmJC80oIAdp6VkHlzTDafEOVUmdrQreaHAo=
X-Talos-MUID: =?us-ascii?q?9a23=3AKOTk7w/P4MwFB5w2i1CBRj+Qf99jzfSVJFwUqql?=
 =?us-ascii?q?FmvmCEgJRCxqw0B3iFw=3D=3D?=
Received: from mail-northcentralusazlp17011027.outbound.protection.outlook.com (HELO CH1PR09CU001.outbound.protection.outlook.com) ([40.93.20.27])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2026 13:34:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dU1Gd4YeCwzi6f4hmdLeBMJB0mHCHYgbDOliqGw7qJxZjUnHPYM/oWjrJbS6Ny/0WQdt2twDKcrfD4ku0u25NTcVzF3m6vIqmvm3KqtL8Xv1QNOJRs8Qx5RYuzeiSSxTiJhDoIZckn18beFrUEEfvdmGEiYbt5E28IJKbLS98utqLAcfqgQLhdDs7/3Auj11hYZuTAb34P+XiizmrpHRKlgIR/fYN5UkbhVW1C3urPfDbM6EbwnU6t4loFmeVvdqBNGdFcdFFjpR3wrxpMuw3TjQ56qD/5r0VTi0+u9lVyglGzkSdOOJ2BOlQxJzgDlo1XZKlfOwfO7IYLlQPOq00w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/bsnS9FjOP3q94UiniPnj6Mca8mtWK8XT/uy4h0e8s=;
 b=o6rXZndAjMjbEjb00fEBLGqd8vMnyBCoGiCqZkQxhLbAkyI/9TMiL4av0o4lztyDugDBaH8HikZw5F8p8wSFHingU1Ovr1xty7gtVO75dWPRKSQ09tu1nskTBzzW/R0T42OBKumNTqowQiw2iOY3sFiCKrpt6kUtu1NYjH51lw1AaK0KVRVLtKqAaI5fJf3UXVMVtWsO6ZwQRjm/8Bs+v6uytFXjYyzdePcpqvCs9Mj0b+o7IcEPLjmnQSAQI7vYS3ytdM2xCo4yZWyY/JfDoJj9k8VTUuVqvOXvmI1jMh1xottHOqFyV7AvOn2sICTTJ/+Jop8vx2hwAjYGVZ2Fmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D/bsnS9FjOP3q94UiniPnj6Mca8mtWK8XT/uy4h0e8s=;
 b=yCaD1t9r6Eoeei/khCg8JyONXQfQ/EqipuhFzawLhQvXdZ/ffLIWmzTucVOAR1W9zXew4YVERi57hrN5TVSqsGUGWnmvPGibXXwDtIdLNNAvcS10Zgq6Nbr/4RQqP7Ti9DRUWtG05xcjoUB/WBb1zyFg23EIV4MFUaNELViDjbA=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by PH0PR09MB11985.namprd09.prod.outlook.com (2603:10b6:510:34f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 17 Jun
 2026 20:34:29 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%7]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 20:34:29 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>, usrp-users
	<usrp-users@lists.ettus.com>
Thread-Topic: X440 timed commands for tuning
Thread-Index: AQHc/dJSf1XYYsD3fE2cmts9JLCUw7ZCg44wgACIeRw=
Date: Wed, 17 Jun 2026 20:34:29 +0000
Message-ID: 
 <SJ0PR09MB9126596B91864656B0CB9544ECE42@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB912603E936D78C167ABC8C14ECE52@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <e390a651499a4b30a308130124c50226@hhi.fraunhofer.de>
In-Reply-To: <e390a651499a4b30a308130124c50226@hhi.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|PH0PR09MB11985:EE_
x-ms-office365-filtering-correlation-id: 15b02185-5d3e-4380-d9eb-08deccafd4ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|23010399003|366016|1800799024|56012099006|4143699003|22082099003|18002099003|6133799003|3023799007|8096899003|38070700021;
x-microsoft-antispam-message-info: 
 d1bRlPUQhqdVGWMshe6at/twKftY1yn2yCSl9PqXK1o2A+neLfa4bBJPSWbg6q5W0iqUSuGXoIkG2I96LtNWVc1v5kodxI0T2YJhJMV4JeD4wr0KyE0oURKRsZQWgGVyseUBQzklWrfqjg4SmEJ8qKfo4ezGF0mscAoy71yrIN2Wam2xBVjpp97fET89Ob11PlCQr9ZcASPKP0FmPrnUhTkc/ud6ecdT6VtO++2bAGCddlOH9tUiIhTyE+1L4NBtIZtcLVR2XPDiwfVn1Ku5T8MJz3rBdZSg0AG6AlU1bUK8MhGZoCx8+1wCuunYG/m06HB7zhfyXP7DRJsdmeQvMzQwAnPS0Wam6Iz/BZxD73g1L+i12j/U15Ef+p/R8edYC7fQbgEngThk3csNs0idbBatE39ibq+IxdeJ4u+SV5cWK1QCv4gKbJYPRBZzk47fR5jZnMSo0Sa6pj8pNAnhc2kzBl5bSkigI8NQO+nEYEEDBvWQyBIaifbUDRugY5WLteBlBJHcU3HjRjDIR91kOKWLDDPJQjWESEP9SSlVsZdROkhdY9398Yz52oT1mBoHHFmV1AlUCV6ncrpuD3+phdbXECm8pwK1mzHAg8eHDdH7bRqdsaswrIjLaEwm4rOWV3VwiYuIVMum1K2BdGNgVNA4bLIkwAgBY8TShLKAzAf7/57SiU/4l5lSzEhleoScpuFbUeJPjYizi6mvnvyL5AL+crq0TKry44FfHPnuve/4xnmcy82kijJiQZrTK2Ib
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(23010399003)(366016)(1800799024)(56012099006)(4143699003)(22082099003)(18002099003)(6133799003)(3023799007)(8096899003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?zy0/EoSsyYhHw5zKo/jEvKkzLLDRgk3hU0LHhsfvBw3A7oytliLmdLWu?=
 =?Windows-1252?Q?arOXmRNOn6E/GbV5nvtaVlQE2uMa8/n/wH9ILrJf40S6rOy36y4KcOit?=
 =?Windows-1252?Q?l22t85XyWSMG3fcL6U50AjoSzZiTD6T6eG7m+GswlqNtc7XgLJ+R8P9z?=
 =?Windows-1252?Q?zKyFCGquWY/F8Ro2Sq7XT4ifyyP6ViqsqX3ORK1cFMxKGS/AjA2QdhQ5?=
 =?Windows-1252?Q?Dlh4juy+H9qXKR9w/SQ4Gt5x+Ao5e4/qt+hvyx20stjQyQG/tizdSM0U?=
 =?Windows-1252?Q?0L5olWglIoQ39Hd4D8fghUGljuAJojUCKbnyWyvDKhcpKA7PhwGf5XE1?=
 =?Windows-1252?Q?ZJq7A4Yzv1hC6aYSHfGLHXB35GftuNPTafES+ftUvqBfIFcENNBpO4pK?=
 =?Windows-1252?Q?Hb/KquCIRvaJTvE1xR+HShY+Dw6wbnbtug00wJBfgjVJsbBIBXhk4WU8?=
 =?Windows-1252?Q?X9xmA5f9bO6ScV6v2cg8nOwCaHjtyzksryGuRcNAs9+bWwHU42k8brmt?=
 =?Windows-1252?Q?MpuiN2QsICiX/AHL6mAcTuLpH2odCx0UXuQBq01xXbqSoCD+UIhkHI8C?=
 =?Windows-1252?Q?qQtgNGi8Gb5SD6Mkab6mLJ5M7FpfCFXYXjVTCqceJHHXHtQ/9f7uXC2S?=
 =?Windows-1252?Q?WLVHVuIYazcMwNexrCJMgPd56kCMvAAUYhBro+Gwipv8FJyVSJcFo0qJ?=
 =?Windows-1252?Q?r2ZFtrwoRwU0/VoeHgR2SDLIKv1LYlUKgigRHJ58GtV/yq4U6OtSYc0w?=
 =?Windows-1252?Q?SJ3EMkrQSkXFCpha9+Ut+GeOLrzYXOjAxv6Ct6V2ME62fIRjON7vW1KO?=
 =?Windows-1252?Q?bSyD0QXjvwLL4fOM9sxOI7IILciQkL39Clt9pPjiEUnz2gepOqYP9ew3?=
 =?Windows-1252?Q?40jAsBwkCiQ7mVQSQwJbQ80dLoqCDRh5vEC4MpfekufvDOe/b6kPjvrl?=
 =?Windows-1252?Q?ux/CVpUjT5e3E/L6BBVvFbmCRjYigAVIX9JSLL2QPojx9MZbq98EMb5k?=
 =?Windows-1252?Q?K2qNOVCBctU3usVvHELnKj6Yp6zNuGCGMBfr/UQHVZyvZ1Yy5QtL5hx/?=
 =?Windows-1252?Q?38FbMa1dKK5RuKPRh8qbnDjSQto5MfAVWC6K/RwDUSCKlNk9AvP7w3vZ?=
 =?Windows-1252?Q?0eGTixImvTC5b5BmXkfbNsREz6jMr6oPUkpfgSMtGA57wcyopVpHTj1l?=
 =?Windows-1252?Q?B8K2OStOvrEeutBG+ND2yI0Y33WF66ohShIbpBn1dKKoG3/usiMVOzEf?=
 =?Windows-1252?Q?g5/YCk/UuEtNo4T8jQoIL/Q8hnPHTPkNPfNCBMPr4mHJTJjsINTTuzQD?=
 =?Windows-1252?Q?tGjjNSe79u54ZDc2N1dLjrqM/M+bsnU/ShndBYGroAK0k3WLhnuIyAjW?=
 =?Windows-1252?Q?sGe6/D4tamKhw7MPdSntQbTkJHl/PcDE/tK+sepDfiA+MYVkbwXMw1Ad?=
 =?Windows-1252?Q?wQOfsaR9ORVLCokbMKUJzVP8x7VONlDQJ4X271jWXAeBpuCKLQQNFoKu?=
 =?Windows-1252?Q?zfTpEQgs+MrEYJyxMuVNgPBPUYMZ/cWUjIE0FZd8/YxznkGA+QxbAklC?=
 =?Windows-1252?Q?2vDYV8k6N8IzdpxAmQdURT2GfKptNlvGdxFRiv+a4yJN7uc7CF/gkMXI?=
 =?Windows-1252?Q?9gHmWaJtVo5+cLnX3h2Ea8vBJxp/bxahnaODnyH3oh/lZ0bOx54Iwt0h?=
 =?Windows-1252?Q?P7DAhJ+eeoGJbrZqctLYYodTpi6sAU+0M8bPGv0i3rwyWcLa2iu5o6P6?=
 =?Windows-1252?Q?QN5L/2X/BHb0pMjd5+eBbmuM6RetRmReskk21j79w63Xm5wR+PsFBS4z?=
 =?Windows-1252?Q?llVFDwaWmEsnL7ElHfKGP/9Eog2Ndbg7OKwRsRVl51ugBKeC?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	F3rePT26Dyu1HshVwo2GH9e0ziossZ3GJakMyJdlGS/HBPb+d+i22gk4X9I2PiWsqiIY0K4zV9SwUEC2VUE5LCWitE3DyF2jfJ1PthXI/KhYKG+ay3pX7ZHYkR2VdYBzgRUNo93HlnBIW0d3Q2TQnJjy8tvxQGnM/A4dMjJ8oVMb7pjfTIeNXNwUSOJ7G956Mk0xFNjcF8kWvct4292EQU1sPq2H0UXHwfwKVTPFwdamztDUpOcanXOx4CXcEehFnc6OPyfMfve0jh1yQsja03JY0SoyNBBhGgdDX9ZTlJ7K419aGQj5Av6QBXO3CfVpE558JIKH9GhQUUCbdWhLcA==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15b02185-5d3e-4380-d9eb-08deccafd4ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 20:34:29.1618
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR09MB11985
Message-ID-Hash: HOS2RRM7ECY5S6SEJHOLNQJDYYLUUB4Y
X-Message-ID-Hash: HOS2RRM7ECY5S6SEJHOLNQJDYYLUUB4Y
X-MailFrom: prvs=62181d870=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 timed commands for tuning
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ODWQWLMB5AGQHQ34YSTE2CJBEFR3PRI2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6330337994151423477=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dennis.jurk@hhi.fraunhofer.de,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[fraunhofer.de:email,SJ0PR09MB9126.namprd09.prod.outlook.com:mid,lists.ettus.com:from_smtp,emwd.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB0B969C612

--===============6330337994151423477==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126596B91864656B0CB9544ECE42SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126596B91864656B0CB9544ECE42SJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I thought that timed tune commands do not work =97 I need a queue of timed =
commands.  I looked at the HDL for RFSoC and it appears the DDC in the ADC/=
DAC hard block does not have an external frequency control enabled.   How a=
re timed tune requests implemented without this feature?

---------- Claude says: -------------
The Ettus USRP X440 lacks support for timed tuning on the RFSoC Numerically=
 Controlled Oscillator (NCO). While commands are queued in the FPGA FIFO, t=
imed frequency tuning cannot be executed. Below are the key constraints for=
 handling timed commands and command queues on this device
Key Command Queue & Timing Constraints

  *   Timed Tuning Limitation: The X440 relies on direct-sampling of ADCs/D=
ACs; timed tuning of the internal RFSoC NCO is not supported.

---------
________________________________
From: Jurk, Dennis <dennis.jurk@hhi.fraunhofer.de>
Sent: Wednesday, June 17, 2026 3:14 AM
To: Eugene Grayver <eugene.grayver@aero.org>; usrp-users <usrp-users@lists.=
ettus.com>
Subject: [EXTERNAL] AW: X440 timed commands for tuning


Do not open links or attachments unless you recognize the sender. If unsure=
, click the Report Phish button or forward the email to OPSEC.

Hello Eugene,

timed commands are supported on the X440. Set the command time with set_com=
mand_time and then send the commands (set_rx_freq or set_tx_freq for freq t=
uning).

Best regards
Dennis Jurk



Von: Eugene Grayver <eugene.grayver@aero.org>
Gesendet: Dienstag, 16. Juni 2026 22:56
An: usrp-users <usrp-users@lists.ettus.com>
Betreff: [USRP-users] X440 timed commands for tuning



Why are timed commands (specifically freq tuning) not supported on the X440=
?  The RFSoC definitely allows using FPGA (PL) logic to trigger cross-tile =
configurations.



Eugene Grayver, Ph.D.

Principal Engineer

310-336-1274

--_000_SJ0PR09MB9126596B91864656B0CB9544ECE42SJ0PR09MB9126namp_
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
I thought that timed tune commands do not work =97 I need a queue of timed =
commands.&nbsp; I looked at the HDL for RFSoC and it appears the DDC in the=
 ADC/DAC hard block does not have an external frequency control enabled.&nb=
sp; &nbsp;How are timed tune requests implemented
 without this feature?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------- Claude says: -------------</div>
<div class=3D"elementToProof" style=3D"margin: 12px 0px 16px; font-family: =
Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-se=
rif; font-size: 12pt; color: rgb(0, 0, 0);">
The Ettus USRP X440 lacks support for <span style=3D"font-weight: 600;">tim=
ed tuning</span>&nbsp;on the RFSoC Numerically Controlled Oscillator (NCO).=
 While commands are queued in the FPGA FIFO,
<span style=3D"background-color: rgb(255, 241, 0);">timed frequency tuning =
cannot be executed</span>. Below are the key constraints for handling timed=
 commands and command queues on this device</div>
<div class=3D"elementToProof" style=3D"margin: 24px 0px 12px; font-family: =
Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-se=
rif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-weight: 600;">Key Command Queue &amp; Timing Constraint=
s</span></div>
<ul data-sfc-root=3D"c" data-sfc-cb=3D"" data-complete=3D"true" data-copy-s=
ervice-computed-style=3D"font-family: &quot;Google Sans&quot;, Roboto, Aria=
l, sans-serif; font-size: 16px; font-weight: 400; margin: 12px 0px 16px; te=
xt-decoration: none; border-bottom: 0px rgb(230, 232, 240);" style=3D"margi=
n: 12px 0px 16px;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); margin=
: 0px 0px 12px;">
<span style=3D"font-weight: 600;" role=3D"presentation">Timed Tuning Limita=
tion:</span>&nbsp;The X440 relies on direct-sampling of ADCs/DACs; timed tu=
ning of the internal RFSoC NCO is
<span style=3D"font-weight: 600;" role=3D"presentation">not supported</span=
>.</li></ul>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jurk, Dennis &lt;denn=
is.jurk@hhi.fraunhofer.de&gt;<br>
<b>Sent:</b> Wednesday, June 17, 2026 3:14 AM<br>
<b>To:</b> Eugene Grayver &lt;eugene.grayver@aero.org&gt;; usrp-users &lt;u=
srp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [EXTERNAL] AW: X440 timed commands for tuning</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
@font-face
	{font-family:Aptos}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif}
.x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:70.85pt 70.85pt 2.0cm 70.85pt}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"DE" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:brea=
k-word">
<p style=3D"background-color:#5E8AB4; color:#ffffff; font-size:10pt!importa=
nt; padding:1em">
<strong>Do not open links or attachments unless you recognize the sender. I=
f unsure, click the Report Phish button or forward the email to OPSEC.
</strong></p>
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"">Hello Eugene,<br>
<br>
timed commands are supported on the X440. Set the command time with set_com=
mand_time and then send the commands (set_rx_freq or set_tx_freq for freq t=
uning).<br>
<br>
Best regards<br>
Dennis Jurk</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0c=
m 0cm 0cm">
<p class=3D"x_MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&q=
uot;Calibri&quot;,sans-serif">Von:</span></b><span style=3D"font-size:11.0p=
t; font-family:&quot;Calibri&quot;,sans-serif"> Eugene Grayver &lt;eugene.g=
rayver@aero.org&gt;
<br>
<b>Gesendet:</b> Dienstag, 16. Juni 2026 22:56<br>
<b>An:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Betreff:</b> [USRP-users] X440 timed commands for tuning</span></p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"color:black">Why are timed commands=
 (specifically freq tuning) not supported on the X440?&nbsp; The RFSoC defi=
nitely allows using FPGA (PL) logic to trigger cross-tile configurations.</=
span></p>
</div>
<div id=3D"x_Signature">
<div>
<p class=3D"x_MsoNormal"><span style=3D"color:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"color:black">Eugene Grayver, Ph.D.<=
/span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"color:black">Principal Engineer</sp=
an></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"color:black">310-336-1274</span></p=
>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB9126596B91864656B0CB9544ECE42SJ0PR09MB9126namp_--

--===============6330337994151423477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6330337994151423477==--
