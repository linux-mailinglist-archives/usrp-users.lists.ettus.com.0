Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7138859FE
	for <lists+usrp-users@lfdr.de>; Thu, 21 Mar 2024 14:34:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38384384D3B
	for <lists+usrp-users@lfdr.de>; Thu, 21 Mar 2024 09:34:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711028082; bh=BggYeYO3yUBM30MBicvtKNybBj3TdXU2EneX9dA+v24=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lORQlc82S6mB0c23j9hxlaiHpc7Tz/MCkURc1PQE93L7PhayZSyiRJVfTBd9Bg9tK
	 Mir/ODve+Fq+bmhYCbVWxTLRQc01o7TJ7KIdN/wq59CFTWQzJh9cQteNeCeuP6xmrY
	 aRZ6fBZhsvxjFUNyKdIlAnXXS/EbD4SixpJTadlVuNZ9K8+5gjoW9vo72NDvrrJgcj
	 NkzF0duK09zk/uw91A2hrEJb4fKJLuz1De32GuMyucHS2gox7pt4ReKNlTEmoyPh2o
	 uj66tTVqWRURSYdIbHOTmcbWeWO+ire5pBtnaLGjsjrc96TOxKn02b/BSFyemaTwgI
	 t18CC9tTve0AA==
Received: from mail-edgeDD24.fraunhofer.de (mail-edgedd24.fraunhofer.de [192.102.167.24])
	by mm2.emwd.com (Postfix) with ESMTPS id 589CC3849B1
	for <usrp-users@lists.ettus.com>; Thu, 21 Mar 2024 09:33:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=fhr.fraunhofer.de header.i=@fhr.fraunhofer.de header.b="N9WwdeAt";
	dkim=pass (1024-bit key; unprotected) header.d=fraunhofer.onmicrosoft.com header.i=@fraunhofer.onmicrosoft.com header.b="BRM9GH7y";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fhr.fraunhofer.de; i=@fhr.fraunhofer.de; q=dns/txt;
  s=emailbd1; t=1711028015; x=1742564015;
  h=from:to:subject:date:message-id:mime-version;
  bh=rQiCkgghmolRilnYNuEZQx2vzOB7MkOk5pZX6/BECyU=;
  b=N9WwdeAtXR8EPTkeisgscbm7Ig5d3E/SJPbvFrDCVMWXsHMQxCHlN2C6
   E9jsWhQz6foL33Ur1OKvbCiVkNxl3p1LO/F0/U6Bu+6ZpcNYXM7RNGSDg
   DJKTKxtRk66GwltFa1OdOX3gt4UdIPS7rn6twMnrfXBOd7l/PAzaYG5fU
   84oMk+VLspnHmXzmnOVqoC0MoB03aJRrdcF6z75LFdLCrQDJxFTnrt9MB
   MEfRTLK8yj7hKK4yT/q1EbmIt4i5qKHL5qhyTlpnJAUPtdGcUs8qGUWPb
   h4SYRfq9WMHz7dUI7OAd59GQF5xBExje9Aj7pVXZGrsSoTfD4SqxlhwE0
   Q==;
X-CSE-ConnectionGUID: hleFJSKdQaK/5yAwVixJXA==
X-CSE-MsgGUID: GRvtbu7pRQS6oEhoxnqXLw==
Authentication-Results: mail-edgeDD24.fraunhofer.de; dkim=pass (signature verified) header.i=@fraunhofer.onmicrosoft.com
X-IPAS-Result: =?us-ascii?q?A2GNDgBpNvxl/3maZsBaHAEBATwBAQQEAQECAQEHAQEVg?=
 =?us-ascii?q?U8CgTSBA3oCgV+WPZw0KoEsgSUDVg8BAQEBAQEBAQEHAQEUEx0EAQEDBIILg?=
 =?us-ascii?q?nQCiAQnNQgOAQIBAwEBAQEDAgMBAQEBAQEBAQYBAQYBAQEBAQEGBwKBGYUvP?=
 =?us-ascii?q?QEMg3uBJgEBAQEBAQEBAQEBAR0CNYEGEwEBOBEBfyYBBBsTgmaCFxQDMbAJg?=
 =?us-ascii?q?TSBAYIKAQEGsCcYgkIJCQGBPgGDaYQiGgEFZWiEIYcNgRVCgjeFGhqEEoIvg?=
 =?us-ascii?q?heDEimBJoh1gXIBhhqBIotigU0iA30IaxsQHjcREAUODQMIbh0CMToDBQMEM?=
 =?us-ascii?q?goSDAsfBVQDQwZJCwMCGgUDAwSBLgUNGgIQLCYDAxJJAhAUAzgDAwYDCjEwV?=
 =?us-ascii?q?UEMUANkHzIJPA8MGgIbFA0kIwIsPgMJChACFgMdFgQwEQkLJgMqBjYCEgwGB?=
 =?us-ascii?q?gZdIBYJBCUDCAQDUgMgchEDBBoECwdzBYM/BBNHEIEPJYoig0KCIYNiA0QdQ?=
 =?us-ascii?q?AMLGyExPTUUGwUEH4EaoiGCbIEIPSiDNpJqJZBQjFGUfweCNYFgimiWdxeXR?=
 =?us-ascii?q?JJrkw2FUiCjDzmEbAIEAgQFAg4IgWYBghNNJIM2UhkPkhqPeXg7AgcLAQEDC?=
 =?us-ascii?q?YppAQE?=
IronPort-PHdr: A9a23:AlcjwRZD1NWLKtuzkq7vpmf/LTF/0YqcDmcuAucPlecXIeyqqo75N
 QnE5fw30QGaFY6O8f9Agvrbv+f6VGgJ8ZuN4xVgOJAZWQUMlMMWmAItGoiCD0j6J+TtdCs0A
 IJJU1o2t2ruKkVRFc3iYEeI53Oo5CMUGhLxOBAwIeLwG4XIiN+w2fz38JrWMGAqzDroT6l1K
 UeapBnc5PILi4lvIbpj7xbSuXJHdqF36TFDIlSPkhDgo/uh5JMx1gV1lrcf+tRbUKL8LZR9a
 IcdISQtM2kz68CujhTFQQaVz1c3UmgdkUktYUDP7ET/fa78iQehs8tm8zuENu7JEOs1aAy7y
 fZpRFji2A4ADwwZ7H/a1Ohekq5Q9UHExVR1lqTuRdC6FKVvWr/UdN8QSFUfW5ZSBghDKImab
 KpTAdYgYKVKrdTH931RrEOONVS8JvrhzSZEjUT62q4bi84nKwjE7Q9wPdUToCv/9s2yF4g4b
 tKQ8KvZlxrNZKx/1CbP762TKSt9s9WiDOJWUszbmUwrUDrvqAmZh6/7BA6U2LhWvFSWzs9Ae
 P2Dm3Iotyxr+D2AnPVxobTupJgllQCY9CNE5q03PYypeHFJXIv3WIsVtjudMZNxWN9nWWxzp
 SImn6UPooXoFMBr4JEuxhqaZvCIfqSkuE6lWvyYPDF4g3xoYvSzikX6/Uuhz7jkX9KvmBZRr
 yVDm8XRrH1FyRHJ68aGR/c8tkes0DqCzUbSv8lKO0kpk6rcJZM7hLk2k5sYq0PYGSHq3k7xi
 cer
X-Talos-CUID: 9a23:iLu21m533XwYyOHRx9ss9EoZNOIeUXHkxVSXfl6RFlhoWJ+lYArF
X-Talos-MUID: =?us-ascii?q?9a23=3AxRXoWg2ypISEcEgyXjRcndyP0zUjzJ6wFEoQzo0?=
 =?us-ascii?q?8gvLaMgFwPCeblQSTXdpy?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.07,142,1708383600";
   d="scan'208,217";a="79609132"
Received: from mail-mtamuc121.fraunhofer.de (HELO mail-MUC121.fraunhofer.de) ([192.102.154.121])
  by mail-edgeDD24.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2024 14:33:20 +0100
X-CSE-ConnectionGUID: c+NdGTr3SKCs+9rp6ogxLQ==
X-CSE-MsgGUID: 4p1LHuEBSEOa1iWGdaMRXQ==
IronPort-SDR: 65fc371f_vyUbmFcCTv7oqlMqKTSFdMBAENQTYuzQVrV0jtDZJl1FjdT
 5ESGOIdYgavqpKTW8M+QwBX9tG+2oGQGsn+DXgg==
X-IPAS-Result: =?us-ascii?q?A0DqJwDyNfxl/3+zYZlaHAEBATwBAQQEAQECAQEHAQEVC?=
 =?us-ascii?q?RyBKgKBNDFSBz41AlgPHlqIIQOFLYZJAYIhOwGbeCqBLIElA1YPAQMBAQEBA?=
 =?us-ascii?q?QcBARQTHQQBAYISgnQCiAECJzUIDgECAQECAQEBAQMCAwEBAQEBAQEBBgEBA?=
 =?us-ascii?q?QQBAQECAQEGAwEBgQoThWwBDIZnGxMBARQkEQF/Bx8BBBsTB4JfghcUAzECA?=
 =?us-ascii?q?QGjIQGBQAKLIIE0gQGCCgEBBrAnGIJCCQkBgT4Bg2mEIhoBBWVohCGHDYEVQ?=
 =?us-ascii?q?oI3hRoahBKCL4IXgxIpgSaIdYFyAYYagSKLYoFNIgN9CGsbEB43ERAFDg0DC?=
 =?us-ascii?q?G4dAjE6AwUDBDIKEgwLHwVUA0MGSQsDAhoFAwMEgS4FDRoCECwmAwMSSQIQF?=
 =?us-ascii?q?AM4AwMGAwoxMFVBDFADZB8yCTwPDBoCGxQNJCMCLD4DCQoQAhYDHRYEMBEJC?=
 =?us-ascii?q?yYDKgY2AhIMBgYGXSAWCQQlAwgEA1IDIHIRAwQaBAsHcwWDPwQTRxCBDyWKI?=
 =?us-ascii?q?oNCgiGDYgNEHUADCxshMT01FBsFBB+BGqIhgmyBCD0ogzaSaiWQUIxRlH8Hg?=
 =?us-ascii?q?jWBYIpolncXl0SSa5MNhVIgow85hGwCBAIEBQIOAQEGgWYBOYFZTSSDNk8DG?=
 =?us-ascii?q?Q+SGo95RTM7AgcLAQEDCYpoAQE?=
IronPort-PHdr: A9a23:WqUh0BFYyEIg5oUfx3JKEp1Gf25NhN3EVzX9l7I53usdOq325Y/re
 Vff7K8w0gyBVtDB5vZNm+fa9LrtXWUQ7JrS1RJKfMlCTRYYj8URkQE6RsmDDEzwNvnxaCImW
 s9FUQwt5CSgPExYE9r5fQeXrGe78DgSHRvyL09yIOH0EZTVlMO5y6W5/JiABmcAhG+Te7R3f
 jm/sQiDjdQcg4ZpNvQUxwDSq3RFPsV6l0hvI06emQq52tao8cxG0gF9/sws7dVBVqOoT+Edd
 vl1HD8mOmY66YjQuB/PQBGmylAcX24VwX8qSwLFuRTZZ5rKnnD/l/FWyjeRHvKrFrEFYS2Ev
 qVnDxW4oSA/BR4l7myJruJugKkO83fD7xYq6bTxMa61a+taYqrUcdkXejREDsUAcy5rCKW/T
 tcBM8tcfvRa8rOtgQQP9SuOWBmOHe3o0zNDvXPx3oxi+eIbGAP331wCGM8e71+OtJLWG40tY
 8WJzriS4jvIMNpbyAX6zdOTSUwzhd/dDZRTd8CBzE1oLinj0ly+ipLeAjKbir8Cj2W6yspNS
 s6/l2E7hhsrpxf19JoHt67rnLJKmgzF8xhf64QtdMyId3xGNI3sAN5RrSacL4xsXoY4Tnp1v
 Dpv0rQdos3TlEkizZ0mw1v6VtfeKdHO7AjqSeCRJjl1njRpdeH3ixWz9B24w/bnHomv0VlMp
 zZYiNSEqH0X1hLS58TGAvtw90usw3COgijd8OhZJ0Azm6fBbZknx787jJ0ItkrfWCTxnS3L
IronPort-Data: A9a23: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
 B/YIZXb1PFm1Z8mir6E/n+v3OloAYibuDy0zT2O
IronPort-HdrOrdr: A9a23:wVpdoKCFo6JJFHLlHemO55DYdb4zR+YMi2TDsHoBLiC9E/bo8/
 xG+c5x6faaslossR0b9+xoW5PwJE80l6QFgrX5VI3KNGTbUQ2TTb2KhrGD/9SPIULD39J8kY
 F9bqN5FNr8NlRii93miTPIa+rIuOP3kpxBno3lvhFQpOxRGthdB4wVMGymLnE=
X-Talos-CUID: =?us-ascii?q?9a23=3AQgwMlGl6sKGOkKyFDB7pJJLUogvXOXae6nv/H1X?=
 =?us-ascii?q?jMkVCU/7EU0fO/6x0t/M7zg=3D=3D?=
X-Talos-MUID: 9a23:S0UaNAWRZkIgp0jq/GP03RVCKepC2ImJARkMrroKsuy+BRUlbg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.07,142,1708383600";
   d="scan'208,217";a="132542"
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
Received: from 153-97-179-127.vm.c.fraunhofer.de (HELO smtp.exch.fraunhofer.de) ([153.97.179.127])
  by mail-MUC121.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2024 14:33:19 +0100
Received: from XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) by
 XCH-HYBRID-03.ads.fraunhofer.de (10.225.9.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Thu, 21 Mar 2024 14:33:19 +0100
Received: from DEU01-FR2-obe.outbound.protection.outlook.com (104.47.11.168)
 by XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28 via Frontend Transport; Thu, 21 Mar 2024 14:33:19 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TRBndRYiq97E56Ze5xjKe32gIk8joh9BfTawZvHcDNUJHFDuYRNkk2DMW9IKKqF0HhHUhM7vexBudTuBAzBxWYQKLoXbBmwAlGXyRrMHJCLYO21xD+KgoHaNWKZc0w4uq+Lhfnj1Kal4M2Xok6PCQITjeLgKliHc+jI5Tc5JJH8TyjTrWywuc5QzjbkYnbmeh/DLlFFJ3l9TsBeQSYouFFa2ODLs+vV8vH0QraGNvgUU8v4EsMCxPbP18WJvwgWr/wbUK9koFAkR9FenwfPiv1JKFd6yGbsCQlQFgHMZ67KTcQyUnFvbtvA474KgltGKhfxanhL945ZFGzHCtJBsYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mKQeSD3mIsCzvcKW53iYPqN9jd/b8AoPZHtve6LFvdc=;
 b=MBzo9W56mK+uuOBwzxUyy1tFlcoC6Qtv+X++Xc4zTWq0aloYd6AFUOsd9VcGCHEbGsA9IHI1/CAxUgWkXORniseB6DB7KkDNoiQDrqGk5HjgiqbZ2IvRGQDn7XQhrDnBUAhE6adFtLE789bjdAbTpYUrSSPUYEAoGnSJeHh1YsdQVCGI5h6ACOMBWWAkHmxcCzm2DvSIOM7M+yq3UrhYpKjsYEa4+NYaqI6pWULnQp2J2lTq2NBGSUqUjzQI/T7qa/Yw9KQ5Qn5fDv9jK4TN7oG//gQQ0NypjmgyU7XfCbxe6rbgv4qGw6o+laCQUhPOo+ogqn5x1sYSBgZLDtwTsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fhr.fraunhofer.de; dmarc=pass action=none
 header.from=fhr.fraunhofer.de; dkim=pass header.d=fhr.fraunhofer.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fraunhofer.onmicrosoft.com; s=selector2-fraunhofer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mKQeSD3mIsCzvcKW53iYPqN9jd/b8AoPZHtve6LFvdc=;
 b=BRM9GH7yLtaadbeW6m8k9LjBbNkI4fTI5+zj5R8N7i0XX5xJqfoqdcSdokI0BnRajYk8Joux7C2p/KGBWZMTjy2Gfc7AeyZoM33S4zLF98NKnb8ml/QBN4aFKvSUif43gTeIMHEwDxtgtEr2mG2Z5CUOJrX784inUNCjp9yXWZU=
Received: from BE1P281MB2772.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:3d::12)
 by FR0P281MB1433.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:80::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.30; Thu, 21 Mar
 2024 13:33:18 +0000
Received: from BE1P281MB2772.DEUP281.PROD.OUTLOOK.COM
 ([fe80::633d:fc48:fc64:359a]) by BE1P281MB2772.DEUP281.PROD.OUTLOOK.COM
 ([fe80::633d:fc48:fc64:359a%6]) with mapi id 15.20.7409.022; Thu, 21 Mar 2024
 13:33:18 +0000
From: =?iso-8859-1?Q?M=F6nch=2C_Tobias?= <tobias.moench@fhr.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP X410 with Mellanox Connect X5 and GNURadio. Cant get it
 working
Thread-Index: Adp7j9/ehgqiPP7uTrWHv4bgQdtoUw==
Date: Thu, 21 Mar 2024 13:33:18 +0000
Message-ID: <BE1P281MB2772231DE172845D38E5F060B1322@BE1P281MB2772.DEUP281.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BE1P281MB2772:EE_|FR0P281MB1433:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kxKA3FUaBPam0hnIqAAcY8+qOhEy7ozX2ikxdIGO4xHNc13A0/AjIMZcl79yJv3ohWtw1OGKunjw9xs5dx+MELVglGmAERtZ4E1CuXhnssJWK30swKKDWfLMs6s6Nr3PjWpG2MQUJYMNen0t9fvesTrPTPQMpA/aeeMWrXY/63thAf4vZ7KrP+1hS7aR7f6twUzvL7kMyAf8WvsgtSKn1dAA6Nq17bc/t+C05WO24fw25tLBiDNgciyM5R5sdg28+/T9cRdwYmx5iSEM1L8H0DWmqb5x6xmr9BBUEAesBsHRnNbBblSOXyJeIM8WDBOR8/256E1mnHQdvNPc8Gc38V7h/ASeE5d2tEycrc/93Rm4vb+kHQe6nQ5NoghoQIBEyNXqUec92EeEpbHb6a/pBVruOG+0nudbLLt5aYHD5+nzq/bJnXjPyl47TYUJrOwwg1seVbb8OHBYbEq+cux5td5DoG9YX5Ur2unNS5MXdGZAbrjVO5AbKdIC6Z3snfQawQk6ewbeqshNiouenUt/PCembdhehW2VLP3ldo8OubJWaEU3hUDvMev6OqZnlqxw8c96iTI60ig8gdjX33wc+bq/JF7KOmEGGrzO/005FZ6CmKgkZIooWPR8gzdwI6phESRlMKUGYuLPcsS9ALcTXE2d6FOoCl/NWLViWO5m3gs=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BE1P281MB2772.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?fcnc4dzDgK67UvHHUN/i1sIGqn+n5zr/uxGCRFKojLloaSz5cW3Lol3wDA?=
 =?iso-8859-1?Q?ZtguKWqX/I2NS7l2nzKrvyPlHeDsiIrSBGJ8pReLjUkD15T/TUcPZZaGmo?=
 =?iso-8859-1?Q?jy+iMCv/Gw1PhcHskCq5diB9yxcnwBWWZ4qQdtd1Pmre8tZHlSxdAnf31I?=
 =?iso-8859-1?Q?hJTiA5kzK2dNKFA1C3HxSB839JxvgBoc0atSt+c7e6t3C/wkfcd+zVlepa?=
 =?iso-8859-1?Q?UD7k8WjswSw9RfR91xgRNrO4L3G6Qkz/AC3ed51ykmCZIQ0sudU9RWhFiR?=
 =?iso-8859-1?Q?HTTroR0/WS9PtSSUloBIIEz+51A5mBfsKVzxiXW+uwavrIx7Ui2MC31LEw?=
 =?iso-8859-1?Q?SDqzeAjcfwoX+T7cHAof3JlX3paXueaCaXsGmoJgNsHOuQcKDFWAFdSz84?=
 =?iso-8859-1?Q?yaxBC+Jkf6boLFIRwhxC4X6j5CVV2yOT8Tn+L1EvmiRCZCQn4MAiMoVuIX?=
 =?iso-8859-1?Q?lwlFno70vphQoyJ+uVhuygQ4DZQEq/C1XZx/+yP6LidzeNJjZgNytCO4oV?=
 =?iso-8859-1?Q?JKhhfcaWhGncXgoHEUfmyfC3zUCJ9E2ugo8Va3qb52WRnPmKp7hrk2hpS8?=
 =?iso-8859-1?Q?akBxfiYNpwzzv8zN4qn5NLY54bUkN63dSLBF9pbAm3J48xRqO8u0itaa/y?=
 =?iso-8859-1?Q?oH1ew2JYCU3c25tTadzV7h+Dm7t+UaIFhdVHB1fXretqWbWmB5JMtS8ipJ?=
 =?iso-8859-1?Q?q0XyMEB8FbUG0SV+HXMfNqHU8sOonW4nqspA6fEeewPqqXdfa2wUKZxIt3?=
 =?iso-8859-1?Q?t/u4iD9hmPNC7hSl5q5CY7yvTnu5Sy1oe6aIM9J4fsXQPhcLLWqOPvzhSR?=
 =?iso-8859-1?Q?wvBxDIhe7nC/AiGK7e/vpGSAx87st4nq1tyrSw7WATEohkjbxr7Yhzns9n?=
 =?iso-8859-1?Q?Tvo/WIBJeTAfmHnfvfRlGEBz7jHTj4A/bH/aa/PpViTfZTag2o36ujAIoh?=
 =?iso-8859-1?Q?GNR+iNj+2YgTetHEaElBC7kcXVpDjSJJYdljwZN7YK+5fx+j+7zIxGO+Pe?=
 =?iso-8859-1?Q?6efb01pcEIbM3yazOCM7efPLPsM3ZrAb8VG5SUvVTRLXCPwi5Thb5E9/Po?=
 =?iso-8859-1?Q?vSHtom/78mrpoV5zybEndS0GE0HXlmYn4rOWKBoPlUxIxKJakLTDn+Zq0c?=
 =?iso-8859-1?Q?+wW7bnoeK4nSrnSF51B71rc3Vg+zTGaML0VLaby5p8m+EPHjmxWllCSZij?=
 =?iso-8859-1?Q?CIBQBhsXmuUVR20HUdg5OFdjdnAso07P5hlEzGLb2eECk8tl2nwmhCypQ2?=
 =?iso-8859-1?Q?G1jcV6g1Qu4BHE3jxghY+55flbFpUXe3Bd2H6Fp0YjpDZLV0Yc88EFDYZX?=
 =?iso-8859-1?Q?Xl4RtMJD6YWhqqXCydriNLa5bWPqdksamYNUK/NQIn2NXyIeU39GWkpn2U?=
 =?iso-8859-1?Q?fZmDy/Tx+V0XwuvULbXsn3/fw24cTwDcOgHWqj8yROXWcltE4mC07GcBOP?=
 =?iso-8859-1?Q?BZfLKwzEvvNXIvh+2CuY/QW28FdkaDlgq6cdaS2KqckS4WADN64wc2avqX?=
 =?iso-8859-1?Q?Bed4bf66X9i80CIRtq4fJtwLyMy0kyFjfd3n/tTeIm3iRi8l646Zb18QSv?=
 =?iso-8859-1?Q?ETh4G6NNJNO4z0BZRFF69SMnZ4rcC4H5sHaz+skdfrx2yXtlfVyBx7NTKB?=
 =?iso-8859-1?Q?sJfdL0qcMmBgdXi1KQXMCuns8dcuxPfEASzqh2thKS1blnHgGWjhQE6g?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BE1P281MB2772.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cdb0ebe-4522-4072-df59-08dc49ab77fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2024 13:33:18.0481
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f930300c-c97d-4019-be03-add650a171c4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /tgRpBkBXorrzhE5GJSdPDhwG1J8MrKROOb9hGGWR6aMGvG7bFfuDz/rZrL7xkFpXOOwiFWxzY3mGC6IlRsHTSuCpEbl7ua0GDJ9RofhQMM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR0P281MB1433
X-OriginatorOrg: fhr.fraunhofer.de
Message-ID-Hash: QPLTUS442OZ5YEM4EFMZXG442ARJVRR5
X-Message-ID-Hash: QPLTUS442OZ5YEM4EFMZXG442ARJVRR5
X-MailFrom: tobias.moench@fhr.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X410 with Mellanox Connect X5 and GNURadio. Cant get it working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QPLTUS442OZ5YEM4EFMZXG442ARJVRR5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0560770907724715231=="

--===============0560770907724715231==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_BE1P281MB2772231DE172845D38E5F060B1322BE1P281MB2772DEUP_"

--_000_BE1P281MB2772231DE172845D38E5F060B1322BE1P281MB2772DEUP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

im working long time to get my USRP X410 working with my Server with Mellan=
ox Connext X5.

What i have:


-          Ettus USRP X410

-          Performant Server with Mellanox Connect X5

My Software:


-          Ubuntu 22.04

-          Mellanox OFED Driver (self compiled)

-          DPDK 21.11 (installed from repository)

-          UHD 4.6 (self compiled)

-          In future use with GNURadio

Grub is updated, Hugepages are working...

I can make a benchmark test with dpdk (on sudo) and its running:


[00:00:15.497500150] Testing transmit rate 491.520000 Msps on 2 channels
UUUUUUUUUUUUUUUUUUUUUUUUU[00:00:25.749039983] Benchmark complete.


Benchmark rate summary:
  Num received samples:     0
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  9341592576
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   25
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0

Done!


But if I want to use it with UHD i have to run dpdk without root.
So i tried to run dpdk rootless. With the command:

sudo setcap cap_net_raw,cap_net_admin,cap_sys_admin,cap_sys_rawio,cap_dac_o=
verride,cap_dac_read_search,cap_ipc_lock=3Deip ./benchmark_rate

i get dpdk running without root, but I have the error message:


[ERROR] [DPDK] Could not find route to destination address 192.168.10.2
[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address 192.168.=
10.2: RuntimeError: DPDK: Could not find route to destination address 192.1=
68.10.2
[ERROR] [DPDK] Could not find route to destination address 192.168.20.2
[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address 192.168.=
20.2: RuntimeError: DPDK: Could not find route to destination address 192.1=
68.20.2
[ERROR] [MPMD::MB_IFACE] No CHDR connection available!
Error: RuntimeError: No CHDR connection available!

I find many posts with this error, but no solutions. Can anybody help me to=
 get it working?

My final goal is to work with the X410 with maximum performance and use GNU=
Radio.

Many thanks for help!








--_000_BE1P281MB2772231DE172845D38E5F060B1322BE1P281MB2772DEUP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1969317143;
	mso-list-type:hybrid;
	mso-list-template-ids:-2006410582 373835796 67567619 67567621 67567617 675=
67619 67567621 67567617 67567619 67567621;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">im working long time to get my =
USRP X410 working with my Server with Mellanox Connext X5.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What i have:<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Ettus USRP X410<o:p></o=
:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Performant Server with =
Mellanox Connect X5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My Software:<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Ubuntu 22.04<o:p></o:p>=
</span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">Mellanox OFED Driver (s=
elf compiled)<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">DPDK 21.11 (installed f=
rom repository)<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">UHD 4.6 (self compiled)=
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">In future use with GNUR=
adio<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Grub is updated, Hugepages are =
working&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I can make a benchmark test wit=
h dpdk (on sudo) and its running:<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span lang=3D"EN-U=
S"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[00:00:15.497500150] Testing tr=
ansmit rate 491.520000 Msps on 2 channels<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">UUUUUUUUUUUUUUUUUUUUUUUUU[00:00=
:25.749039983] Benchmark complete.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Benchmark rate summary:<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Num received samples:&nb=
sp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Num dropped samples:&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Num overruns detected:&n=
bsp;&nbsp;&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Num transmitted samples:=
&nbsp; 9341592576<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Num sequence errors (Tx)=
: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Num sequence errors (Rx)=
: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Num underruns detected:&=
nbsp;&nbsp; 25<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Num late commands:&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Num timeouts (Tx):&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Num timeouts (Rx):&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span lang=3D"EN-U=
S">Done!<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But if I want to use it with UH=
D i have to run dpdk without root.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So i tried to run dpdk rootless=
. With the command:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sudo setcap cap_net_raw,cap_net=
_admin,cap_sys_admin,cap_sys_rawio,cap_dac_override,cap_dac_read_search,cap=
_ipc_lock=3Deip ./benchmark_rate<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">i get dpdk running without root=
, but I have the error message:<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span lang=3D"EN-U=
S"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[ERROR] [DPDK] Could not find r=
oute to destination address 192.168.10.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [MPMD::XPORT::UDP] Er=
ror during MTU discovery on address 192.168.10.2: RuntimeError: DPDK: Could=
 not find route to destination address 192.168.10.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[ERROR] [DPDK] Could not find r=
oute to destination address 192.168.20.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [MPMD::XPORT::UDP] Er=
ror during MTU discovery on address 192.168.20.2: RuntimeError: DPDK: Could=
 not find route to destination address 192.168.20.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[ERROR] [MPMD::MB_IFACE] No CHD=
R connection available!<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span lang=3D"EN-U=
S">Error: RuntimeError: No CHDR connection available!<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I find many posts with this err=
or, but no solutions. Can anybody help me to get it working?<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My final goal is to work with t=
he X410 with maximum performance and use GNURadio.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Many thanks for help!<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_BE1P281MB2772231DE172845D38E5F060B1322BE1P281MB2772DEUP_--

--===============0560770907724715231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0560770907724715231==--
