Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1052F7C55
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 14:19:14 +0100 (CET)
Received: from [::1] (port=44740 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0P0Q-00064A-Mc; Fri, 15 Jan 2021 08:19:10 -0500
Received: from mail-am6eur05on2137.outbound.protection.outlook.com
 ([40.107.22.137]:46465 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l0P0M-0005yI-CQ
 for usrp-users@lists.ettus.com; Fri, 15 Jan 2021 08:19:06 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ka/BE6MXkkSfvhJY8aa5aZAddaa9RWMh+lHKEcUQ1Srqkh13Zk+KrWxTGtvAhtpYggHy/X/xe5jOCoaMJcUOij7qOOS7uy+vMjPEyrCGyCf46LaW/hFVcvsmlN71OYYLO8i1YTyNWXJ42zFfWGHE8C6n0sCdHtBKO4fkhH2SBRihe+JJ/KwUyjd6xwMIxFjBOqgn7qflIhDLZKujh/Avo8HvSZrHe3q1lINEWggME1FMmjQjRwZDuCy2GwS+eiCCsJqZ5nhPutgFy2j8lAzM0xVFYILCwrRzjKMn+8+nDfxvl63FmtAldJ/CeEAErPvE6BeyAHb2nu+XuYGWc4tomA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/tdocjmwTO03FKbLUw9xX4Xmo/j8pMM+l9p9YXGNS9s=;
 b=kv0kAE5n5lwbFCJPrsanMLTLuNitVf/6phhBXCMydSzW8IfDb6XAl06ZKSUUG/ux4csJlwquND1hf7O55IPEMkRkI9RBIsWdEpFH4rE1TJzj+3aYqwo7k+u6cg9mXFfmSLFVhmdT38E8WnHkP8hrN5kW6oF8xkx96zwTSkPtOqkw+I85WgvyykfOjIQ/Oi7H4ijkvPCOgBGPzXeURBzAbDkGUFeHHWhb0Iw+fyuSdIF6rtsuyvp0Jy5kgxBL8huRENjtikAUGQArAZSlX75RzfunUgg7Tskako55evDNDFxhxG+a17LCeNeHKhIVUSirOowVIPKSPFAUIL6tUgFTkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/tdocjmwTO03FKbLUw9xX4Xmo/j8pMM+l9p9YXGNS9s=;
 b=GLpZtLzLfFjCyjyFmipa7ZXIMtXnLFNeF+kg6rudLcNpIODxF+bmG9FJUAV2pqvG04QluqQM75RC0gy0NWPgLXpa09AuY7Mm6ZjKgSbPvLCXodi0nMByYQZjX2xm/rlgEficOk+cjt6m5E2hxgglTMp6Pdwe/KMIfOZj99aKb2s=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from DB8P190MB0634.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:12d::21)
 by DB6P190MB0088.EURP190.PROD.OUTLOOK.COM (2603:10a6:4:87::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.9; Fri, 15 Jan 2021 13:18:24 +0000
Received: from DB8P190MB0634.EURP190.PROD.OUTLOOK.COM
 ([fe80::fc76:b821:1966:db40]) by DB8P190MB0634.EURP190.PROD.OUTLOOK.COM
 ([fe80::fc76:b821:1966:db40%9]) with mapi id 15.20.3763.011; Fri, 15 Jan 2021
 13:18:24 +0000
Date: Fri, 15 Jan 2021 14:18:22 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210115131822.7s3trwfd3f7dbi5p@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <LNXP123MB372474BC72EC550495B41F29CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Content-Disposition: inline
In-Reply-To: <LNXP123MB372474BC72EC550495B41F29CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
X-Originating-IP: [2a02:1811:371b:2300:7d05:e90e:6e60:b000]
X-ClientProxiedBy: PR3P192CA0034.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:57::9) To DB8P190MB0634.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:10:12d::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:7d05:e90e:6e60:b000) by
 PR3P192CA0034.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:57::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.9 via Frontend Transport; Fri, 15 Jan 2021 13:18:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4e64c101-0b8d-4879-fc5d-08d8b958098a
X-MS-TrafficTypeDiagnostic: DB6P190MB0088:
X-Microsoft-Antispam-PRVS: <DB6P190MB0088E17F70F936ADCB6F1F8BF0A70@DB6P190MB0088.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XNgGUX77aIkdHWB1nLo4L252naU//fKqinw94w66dcCJivxG2M2uykROdisSySfsJPH6NCIdzTT3Sw25AenykY0mZWA/5zZmOWtPTagPNP3PsxCkp0Pzyh77dX2K+dxsikwBw3RLjOcaVYnrQ6ZFewVUOF/E2wjtrBRHB+k1xNX6vz35q3Df7yBNiHp1uPC/4ck2/GRlVShLX8l1MW7BH0vNw1xuyJMjhsEjF/RColHVDEAtTn9UmEN7Hiho0l7Ts0z4tV0iaWYyIGnSsRjHTwJE3s/1VNwATXOIleYeWEwuFHQHFswqDAvR3D67fJZC4iUCYr01hY3BEGIfu/QHpOgkVY12TuWQEVwLRHyRqVHXmHhwifbuDLXiTEvaojdG0Ce4neC8LgmlkCchSYIAjQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8P190MB0634.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(346002)(396003)(376002)(39840400004)(136003)(366004)(6486002)(1076003)(16526019)(53546011)(9686003)(478600001)(4744005)(186003)(33716001)(5660300002)(8936002)(8676002)(2906002)(316002)(786003)(66946007)(83380400001)(66556008)(6496006)(66476007)(86362001)(52116002)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?6xL1civYWpNTFNjQGmm5kb9eXKkYhhAFhJlM10cL16rIaNHa6Sd/rczmNp?=
 =?iso-8859-1?Q?RYOx6ecji9fY2kZDjYLIIESQoL2n2cDco61G73z6UkubNm5nsVxo3JvcEp?=
 =?iso-8859-1?Q?TQhM9JW2cO+EtIKUAQ41X80PTO5uXcxqaYcvMMXF1gkxmngmK7JBOyGi45?=
 =?iso-8859-1?Q?izy17rkPpvtr2dga6ONfCZsi/rTOfkRzL8busHvs/EYrPvmLn4m6NIaW2o?=
 =?iso-8859-1?Q?PMku3hnBxCP9EyBtAlf1eN4Tp0xYP+k3jvRsmz+KCC+wnUo4lL2K/aoXmG?=
 =?iso-8859-1?Q?gfdIardyfF//iOJtJhKbUcvIl3aHcuUxrJQkhbr6XgP95CCdtmM5y+GKzK?=
 =?iso-8859-1?Q?Ki0Ae6CcLIcxkjxxqqoYefnaeCpjp873gatR+k1Y2ggbh/5OewfiRM1Ouz?=
 =?iso-8859-1?Q?xbRt+07jEHNaJ5CD1ra8vmeO/cm/rO8S2Ea22Le6xvW/4O9K4l9HY6AqEC?=
 =?iso-8859-1?Q?ACGkH9YX2r7ebGXVmqAL5oPB6BgtaMUpOOUq8YbtT/qmifk86EGYj1O1L7?=
 =?iso-8859-1?Q?xs6AmyZQ2jzYrJs1ZTYy0XduOYKPJ1I0RGeLgf+m8on0d7CvmdIw0zwFMj?=
 =?iso-8859-1?Q?EMcjoQCBP45bJAqSZvP/Fd9K2leXEOEmMcK6RKPQXTsNVrQt0AmfiMTMFU?=
 =?iso-8859-1?Q?eZ6psT8GR7BDg236PNUwjKPvcxEObel4hZFZNNjD5JFW7PfWuXK2o3kPVy?=
 =?iso-8859-1?Q?2SZ1AXaV8VTZY6cC+1ihgDBySN1stiv4dWhvm5bDOh3x4MOE7nF7VxK9+C?=
 =?iso-8859-1?Q?oBexPpuiEmrnYTZxakkpnF5s9/fWK1dpv86BpcbL99yiQgRqlx4CWn4TpQ?=
 =?iso-8859-1?Q?qdZtxBMUPyOPVuLmX/XYQx13lHWSEqetF+2p+Y5yGFMBvWSkavwfgBo49G?=
 =?iso-8859-1?Q?MIzwNqQpiX2ppdizhutturjQkq+tkxnmT5stB8KMeZmirQT6B36cZHm8A6?=
 =?iso-8859-1?Q?sUerPSieJa5d2Cq7GQAfk0082N7c2SUacOvMws63yxtB9+eD26u6AFWR86?=
 =?iso-8859-1?Q?8vn/43fnaGVagIFTDeimNHk/JrU9HETL6YW/GOBU3aAYeDwkksriYgcWKI?=
 =?iso-8859-1?Q?gRDqsrLQqDGLjbias2wO0WqdGRs/iuj0BDOAtDBaW5YJ?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e64c101-0b8d-4879-fc5d-08d8b958098a
X-MS-Exchange-CrossTenant-AuthSource: DB8P190MB0634.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2021 13:18:24.3887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i3RsZd2EKEbc4R9CGfDyCecr+50MX1Gm631ksGHNDM++/A0GOV6+lkRCscq27FcKDaMcfwEzocJhMX6h4tNeCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6P190MB0088
Subject: Re: [USRP-users] Setting E320 to use fixed IP Address on RJ45 eth0
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

On 15/01/21 09:06, Mark D via USRP-users wrote:
> My E320 doesn't have that folder,
> there is one "/etc/systemd/network/"
> but no "/etc/systemd/networkd/" (i.e. no d after network).
> I think maybe is a typing error in the manual and the folder name should =
be network.
> =

> The folder at this location is empty, so doesn't contain the SFP+ setting=
 file.

Are you sure it is managed/configured by systemd-networkd?
You can check its status by running "networkctl status eth0".

> I have created in this folder a file eth0.network with the following cont=
ent:
> =

> ---------------------------
> [Match]
> Name=3Deth0
> =

> [Network]
> Address=3D192.168.1.60

From systemd.network(5), I think you have to specify the netmask, eg:
Address=3D192.168.1.60/24

Do not forget to reload, either using 'networkctl reload' or
'systemctl restart systemd-networkd'.

-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
