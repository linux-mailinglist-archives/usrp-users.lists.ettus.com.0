Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F1A38C3B5
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 11:45:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 746F73853ED
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 05:45:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="Kq9tvQoE";
	dkim-atps=neutral
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70122.outbound.protection.outlook.com [40.107.7.122])
	by mm2.emwd.com (Postfix) with ESMTPS id 9FAAF3853A3
	for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 05:44:43 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ddMLanRMYIOUDkBVqVVAOHBGbEsQjJqzMoGOrZ6wSEwzQ5oC/f2SUd8SOSYcOTMWwZllppx0MCx3lFjkwNrhhli9p6zzF/ylOeiYw4cuQU3pAcOZkn+SmhBa3BTlJ2V9n4VyJRsNrVLi19qDKXoeXwO6cIA9PpnucNEyBfVGf88peP/HgDZwLt3WlSLDhMoSv9b8AE9zO4A7cZT6ZGHj9g5Lg4XqDcPNlvedE0cOQifMaeWccUBBudT6noUvlFY3XVg2f2aJasBpjNfKPYXitLrooU1zX1j4k1ZlMnnScqbSGLAF3NMLmuHVBQRiWeCYvR4GMm9NYq4qv+Os1jDH5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1M8s853Rbj4KCyHOSAcx403g5a4Usgjbw3cRQgZUgGE=;
 b=TyEQLQeiQA/arZSBoo6TPqFVQY3j7OoeM853TpTqZpdB0/yAW43B9RYpOH6hfD7kq3heUqH1AZ0DynSADBS4wuGXm4XF+a2m0qYClNgY7L48TFMQolGZlt6/XjcNUz1JVhcL9C09PuIJHWATs1YGk0FTKb2f96aT01ryao1rU5d037U3Y+f6iTI8OA9VdPtMdwTQ5wJ8iYT4tdBvNNSzzQz6hLyt2pNx8C01LtRXuT9hVtxsBbTyvzJzihbXaQcmXdyqjTEW0iqh0k5sZpcAMGI7ZAWnpLfIT1XA9mlmv0y8kC7LlqiE2y2pIS+gHOZ9Z9RM6Nayef9rWCPUCaXnpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1M8s853Rbj4KCyHOSAcx403g5a4Usgjbw3cRQgZUgGE=;
 b=Kq9tvQoEAY9BtWXdXzbrJ37kvxmPjW1DlDbveFlk4cTbjsiRw4iUxRndLF1mFAPBKPhTGfTZyGOFg96g4kTcWClCPoaMLzDJASmRrs7Qi/YavmriIcKKY9b2vED+kn9hTnqM3pQsSPTXC3T0zR5nKNSwmqwsQNLyybhP7EMyYlE=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1288.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e5::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23; Fri, 21 May
 2021 09:44:42 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095%5]) with mapi id 15.20.4150.023; Fri, 21 May 2021
 09:44:41 +0000
Date: Fri, 21 May 2021 11:44:41 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210521094441.yvoqqxrqv7ioh23v@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
Content-Disposition: inline
X-Originating-IP: [2a02:1811:371b:2300:5604:b096:e624:d00a]
X-ClientProxiedBy: AM0PR04CA0056.eurprd04.prod.outlook.com
 (2603:10a6:208:1::33) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:5604:b096:e624:d00a) by AM0PR04CA0056.eurprd04.prod.outlook.com (2603:10a6:208:1::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23 via Frontend Transport; Fri, 21 May 2021 09:44:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0ab20137-d4c3-40b0-cd8c-08d91c3d0ec9
X-MS-TrafficTypeDiagnostic: AS8P190MB1288:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB1288B975BA0F5B87F5045C4AF0299@AS8P190MB1288.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JjYcLKYoFyTSi0hS4ukT7iYoTGD/TG+UXWtKPmkO8mMqN21NVN0kBQk3pqjo5Lrab1YTWzPvK64ZGEF/nrDFa9Xbf/6s/tJDGu3Bbq0hECryYZ5Btn91EpimmAta9Y9b/bk+iRp0OESKX6v9oKQ/h0g6TYYuNRDzbIXdG2xDpa5hGstQonvSP4SHSiAfcVX/e1uQhYeVBLGSnZ4api/Hs1Li1K9oLR9blXQM2s8POPuk2f4ViVekHoLtSiO/UoXyX0irt9NJ2Vx7FOlYEMqRXI5ticprpmJTReNbBRLcr755+MgFJA9DzTMn73icx4dZJQNLOYHaxt3KAA7UwjOWEAgA6SSUDTcWiPcVj93OD1nByUalpj7c5nql/6+lptoDUSpr+6dsXUEH2N+zVGqBmz9QamaDxeB88BhA3+Dcx6O2ZkAdnCXrSQlxCKknrL3E5hFlCgpagJJ1PKQjwyHe83v6GQYkHmtKpMladiWm6lFZcXVLFhMeTAyrJx7fXBxMlnJrWO6owJYn9gcYwPUioCtMDtV0sR9QAVK0VMFc4kuh4bWfuEvW3nXiaHR4L2Gy6ZMHCpcaYo9kZwc/wuWjc0vUdel6ktSFgsocuawaMnE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(7916004)(396003)(136003)(366004)(39860400002)(376002)(346002)(52116002)(316002)(786003)(6486002)(6916009)(1076003)(66574015)(6496006)(86362001)(83380400001)(38100700002)(2906002)(8936002)(66946007)(478600001)(8676002)(7116003)(5660300002)(33716001)(16526019)(186003)(66476007)(66556008)(9686003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?bvAclelDIHBMYhuuBlni5TDedlNobUEyJzNVwZgXDY4Hd2s8ymxNEFUTbo?=
 =?iso-8859-1?Q?wRUg+rp5Jkcow2i+Ulv0lbQA1xJIEU8XAclnEjf6kep2lcjEiiVH5iwH0f?=
 =?iso-8859-1?Q?xXr4tgm+amvqK8nP/p8I/n6BouZszasaqQJi1MKNQblWHhtM+yM5yzwQPN?=
 =?iso-8859-1?Q?xH6kJ+T8kr9+g9jqmKJArhs+G8dAGWGiz8ApDbyCMWOLLK9iEg+C52wIK2?=
 =?iso-8859-1?Q?4E/LrKnGdof0rfy9ApK/Ill9d/XM7wct/APobc/On8tTw/2IirC76pc2Ue?=
 =?iso-8859-1?Q?YYq9gnlS9ome7ElS6Qxfupdz3L2dPbGmuUfQ9YQdMWgDlwZw5BMOMV8eJA?=
 =?iso-8859-1?Q?fLJ8xiKi5mKhaMACt6RgRTpAhnIpNKVPRdDRNzQgRot3JKRAbnwNmqoqsL?=
 =?iso-8859-1?Q?Fa4Ydg+HW5rWADJloDi6mRrEwyQTzdCWFc+BTJb+v3i7RsH8T+sJZB/Rg1?=
 =?iso-8859-1?Q?U4oi+LEANAzi7AXD4tnOqtLMIeZxrYu0DTOJscR8/Wo+qdkWfVC1e5ecAL?=
 =?iso-8859-1?Q?9yPOpP+Nev1dTncelQuVLcqf3ELivsJwRusBGUL6o+n0dcwVXVqZaTOdQZ?=
 =?iso-8859-1?Q?NmSDtN7gkycmjX3kKGTLJ8JpZ6BrhzlBE0gKFq/istcs6V3JKrT1RXqhiW?=
 =?iso-8859-1?Q?KDHW0KW3aB8KrEF9yJhaoG9oVbN9YB02258+Rw0g/sDz4mCdXhONWfN+kg?=
 =?iso-8859-1?Q?LKWKzKmb1Ota+jGucZE1xqnJSIk5Bb+hv2XReyqJ0lvzxURi3NCEZtdN3a?=
 =?iso-8859-1?Q?rsS4E0Q4AviHWoAYFJba0L4hgnf3i9yezQxlToMxiPuNsOJt+Jr6RdbGB/?=
 =?iso-8859-1?Q?48kjZgztekzEgclSxn22IrhaYpw4VMHgoPT5v33S7h2mU8zHkdTHDaZX3v?=
 =?iso-8859-1?Q?z9Se9TkkphanXP60hBfC+VeZU5aocHFSVCU/zd6I1FuNo1SN0RddGaOQxj?=
 =?iso-8859-1?Q?/st+xno6B3A1rWsrV6orURXcY51ETWpiMrdJyCd1OBtpQVXPnQtWfpq8Cf?=
 =?iso-8859-1?Q?CcOTcoKaYV6zzfwfMM5/IFR3z+oWNMno6C+slUkKBhWs20hJDUT75rbCp2?=
 =?iso-8859-1?Q?75svP8x1EVGd6GplIzO8qSjXtIVytqnbu/VmfgKgYHcVla8M9ydYzR2oMi?=
 =?iso-8859-1?Q?eMU0NJMzAIp5YuYIf3uxUaHcrQk9kc75zRP2VO9SioQDsYEd3n2tWAGjEZ?=
 =?iso-8859-1?Q?ddYwCqI7LNE1eUTgY8130t49Hmh72OwugCGjcjKgcvjKdZoPpCqDqk7AYx?=
 =?iso-8859-1?Q?g9lQs4WhYjcXBW17U/bGA9N/0pkxDVnZ3ofWGnxx0D3Hrg8bRgNt8yNka7?=
 =?iso-8859-1?Q?BRtn1l/eSeL/2D+QxJuVNtwgOYwpUUI52tonEq3ggo9adFsiZNgY8Xplnx?=
 =?iso-8859-1?Q?umshs/ovbL8pdZGUf/Vdnytr/beMHJGfE2HKbO27f7+RvL9lKDOL3JjVbn?=
 =?iso-8859-1?Q?IG0kl5HOR+xlZCvG?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ab20137-d4c3-40b0-cd8c-08d91c3d0ec9
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2021 09:44:41.7992
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E02wsNXWcD5ZUui5u9310pR+mYk+33BijtCN7kw3XTUVesroEPKFcLXrr2PsntwCX+L2nELYiNCH/mwbTa+gog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1288
Message-ID-Hash: EE6DAOVHERN5YZJ4PH7EBWEH2ECYDRBJ
X-Message-ID-Hash: EE6DAOVHERN5YZJ4PH7EBWEH2ECYDRBJ
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E312 died
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EE6DAOVHERN5YZJ4PH7EBWEH2ECYDRBJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

I bought some E312 lately.
Some weeks ago, one of them died:
 - refuse to power on
 - the led stays off even after plugging the power supply

I thought it was just an hardware defect.
I was going to request for a repair and move on.
But, yesterday, another one died...

I would like to understand and avoid a 3th death.
Has anyone ever had this?

I am not even doing anything crazy with those ones.
They are used as beacon (transmit a payload periodically).
When I got them:
 - I upgraded them to UHD4
 - set a static IP and enabled mDNS
 - built a cpp program similar to tx_burst (read a file, send periodically)
 - configure a systemd timer to start the program at boot as soon as
the radio is available (so that I never have to drop a shell)

When I need them, the procedure is simple:
 - power them on
 - plug them if their batteries are empty
 - go on with the rest of the experiment
 - when I am done experimenting, power them off and unplug them

They would rest in a lab until I need to do another experiment.
And twice, when I went back, one of them won't power on anymore.

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
