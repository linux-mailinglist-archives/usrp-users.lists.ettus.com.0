Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FF153ED89
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 20:07:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4E49383B4A
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 14:07:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654538851; bh=MsxjIJGaky2oWINfUM4yxClQxxxjkNF6JJ7shsRtBAE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=A9shYv41e1CbGT8iB8QKylzgltUlA2JeARAxWfYNdBJlTcnVF7Iz3z9wTlFXJpmWA
	 lRdGJghrTzVlOMjax8tjTbnQdVKvdhFClKML+JzUWcoSQoK6yejjAMke206XFSjjwP
	 D9PIXkZ5g+sLnN7SKfnDTDMObt3KXtf0LWw63PDPofRXpAPJqPB++XmvY3TgiKbHfu
	 79I5DlZG06VddJZqARkQK1oOmRLXSS1cdtKld+PQb3QQe7s8CIFc9/qC/f3Jcbp31a
	 cZeVCG388/XPqxoWoBiuUZxiic5TB80KWoIHiT2FP5iAQ//QKsiKEBGAp/dcSpsahQ
	 8rnbqwwi90keA==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0053.outbound.protection.office365.us [23.103.209.53])
	by mm2.emwd.com (Postfix) with ESMTPS id D067D383C5F
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 14:06:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="PQA+mNKp";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=qWK3aHXpddhzvhjgv1HPU3ec2QtXQhLvQQ6obs5AmgvUbhIctEGiUgFoeQHiYU8ugaVI0BdQGj37J8ODjwoqSexPFD62LZdVWsOQsZt/ypk7Ly56RfwxUluRC3LMICOuACzFLh8pHhdJrwXPYOPwU3jY2QCNP7qwWf8SQoItqBPjl+0SyNfT8OouMhkuUe1oemftuc685/Mq/+ZfI+sceb7AiMH3QWTu3DlgbFWHcutHAfysBGsITyNbpL+jRts62pOIc38wSb3+rIHQJMcKHvjDzIG7bn7bPllXx0OVYXEflHiwqCS6KDUwJlJ+ploVPMad3BGo6qxC9vDNOS8nTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OhtZ1NROY3SCvWhNSrV327gfjRovsDqMR6iFvUNu1yU=;
 b=wTmWuXVtLLPKKHwfOM83SEkam6EU/VA1mnmgQI6yGDMlNsw+Yz7f2BrCN56TxhLMLFLaNxf365YhqJjzX1IOBOYl0RgIu49zB2b0bHWijd3QT1JtRT2kLW35dTzYNhCORFaT8MBFvAyBs3hxiVty9FOPpIEMldApgq0w53eawRO4A6bTCrA/gympoxQVFN8Fouaz3LsDmw4+aguy4N69/S2Y1JUhq91wq6L7bP7OqOrS7yCEOwiVG1nO6YbwmAnqVWxY/HQk2RFxNUWWjPO6zfy70A7Yvy+1noeBYciC7hF5zgKBrzQBwTaXbLA9CgEr4+KcX6jsLGIg383pxK0A7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OhtZ1NROY3SCvWhNSrV327gfjRovsDqMR6iFvUNu1yU=;
 b=PQA+mNKpMlmRW1OVeMOmHdLMBfdwMErPoY7USNs1ZDXPyaulwczBOWVp6tEaFf9FrXREFgQwCxtGh1eqEXyLVN3FNNmWAzKl3GgMxiRI64XfFD3uksm/xB1/Owtg34XWo1Q+nzQcn4i3eZA2g2fqXppwnV4xxbH5XsAZwGleapt6GMJsJ4KJG/H69RuUjOPSl85yH9K8hS5XZTxAf56f3enqnKwEHlp/d3+Caj1PvmbT+pd3IsEGQ4z9UmCJd6rT3ui70Joe3c2Bbycg0WUs4ABSeqfBV6DB4zRdfDo8AfzQzShAmz1Efc6ESpXIJbmUfVgaX4PX1eI7NoLex9AqLA==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1588.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Mon, 6 Jun
 2022 18:06:17 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::75f6:cf8e:ab07:b9ae]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::75f6:cf8e:ab07:b9ae%6]) with mapi id 15.20.5293.020; Mon, 6 Jun 2022
 18:06:17 +0000
From: David Raeman <david@SynopticEngineering.com>
To: Jon Beniston <jon@beniston.com>, "'Marcus D. Leech'"
	<patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: E320 Automatic master clock
Thread-Index: AQHYecYnLQuiB6GnqEqGXVA9BWRria1CmuiAgAAAz4CAAAexgIAACODg
Date: Mon, 6 Jun 2022 18:06:17 +0000
Message-ID: 
 <PH1P110MB16654718196938A46B45E822B7A29@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
References: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com>
 <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com>
 <0a8a01d879c7$3bf7fbb0$b3e7f310$@beniston.com>
 <503463d6-879b-82b9-dfc5-6980f35f635b@gmail.com>
 <0a9901d879cb$7bcb4270$7361c750$@beniston.com>
In-Reply-To: <0a9901d879cb$7bcb4270$7361c750$@beniston.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1eb227b5-48a7-40a1-2e69-08da47e740a4
x-ms-traffictypediagnostic: PH1P110MB1588:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB1588A1D7A7F464CB1DC68C77B7A29@PH1P110MB1588.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ywINDzwyHcqC12dqCcHboai5rpVL3rfRcTn9/C99nuYjjzOyuLMP6v6C/qXwj3f3q22fm3cNkezv2R9wNP0xtBYSU75VmbHBFMgyPbAUYgl4mRt9yjt/F5+3zfOKGmd08fknga1nnZSQ3ObgNQyxZvHF4tm7/MasV1NjpCA9NEitLsbiDBTftdndMvjhoiC6pK0LTXK//PaN0TdayfqS1B1Aq38Gb9ZLmG+jowF5WTk1F4+JfC9foc8WzzSvqIQJyEvO3gYMfo5J6lEcwZZqwBrKhcgi8uE9t2Q98ufBDnw7XRb029AxAIpv6ERI0tfv+pzk4m9EkcnVKFbDqCMrE3EiEaeiORkvst8ArRLqduwt0DJoJggunuUhrLMDuK2oG2CbbBCn54Mnw3druWVI8LCwqALuwHgObhM2zHUAa22PQ0nZeZWIu1puvgc736V9aL8hxJw9TwWeskjRb54utqDnLPi3OyaWMsLfDyDzWdJv90NjifsGK6u/sjLjiO8eNRzLmkC3RFY7dnKvTzh5W1MmT8ZgNvc44uh4zEQ7hLW+K9k8tibJ/XO4TbhaUVtaIhMn07psYth1mA+I6qxA2ikKhWLT8IMCzPnbAdhxzm2YjUjCMs+Wa4k9eswAO3kai2piL6vzutQSTopOviWvvw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(136003)(39830400003)(346002)(366004)(396003)(376002)(8676002)(76116006)(83380400001)(66946007)(64756008)(66446008)(66476007)(66556008)(186003)(316002)(110136005)(86362001)(52536014)(5660300002)(8936002)(55016003)(2906002)(33656002)(71200400001)(38100700002)(508600001)(9686003)(41300700001)(7696005)(26005)(6506007)(38070700005)(122000001)(53546011)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 pBr9Bu5VE2RtHzmzs8X13lLg2xmZKUvhFupeBISMLD2omdPkHUYzmYqJGfYo0XfK5qNb8RzP32oZ17q+1pcEAd7LvTzOEAhAS9i2i2UnmHnaRhhnO45JiwWdiuaWsp6dzWUCslKAt0Ux+kkbAudcdDvMPkuLeGqJTQAKHOpwZnIidHJoOEm22EmW825qZnv8urx1qKHRNF7x9P2Yz3PWUKW6FJKow+zMchrn6Dn21ePeqSwG7eHnMjDDXcqP0IlM8UqMsgszNaM3h7aeq2aiajyzapcfGe5oL8bfJJDNgic5693UZfKYuLsG0TuGsXetioxQlLinouUqaXo3GwpkyIPa1IjSqbXO96cfqmIKRMqI68Jr9yrdanM2LrBu5JoJStmqdherMSgNdtAmdJazYNrtM7xz/OcVIwVrQaLWgzo=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eb227b5-48a7-40a1-2e69-08da47e740a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2022 18:06:17.3708
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1588
Message-ID-Hash: 3X534T4HQ47IDGSAHCN6RXKNDCF4MRTJ
X-Message-ID-Hash: 3X534T4HQ47IDGSAHCN6RXKNDCF4MRTJ
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GGNLNCG47SDJPO2FKUJJZLJRUPV2UNMX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Hi Jon, you might try deallocating the original smart pointer before creating a new one, i.e. call m_dev.reset() before remaking the device. If you're not familiar with it, note the use of dot instead of arrow operator, since this operation is on the smart pointer itself and not the object it's wrapping..

Best,
David

> -----Original Message-----
> From: Jon Beniston <jon@beniston.com>
> Sent: Monday, June 6, 2022 1:33 PM
> To: 'Marcus D. Leech' <patchvonbraun@gmail.com>; usrp-
> users@lists.ettus.com
> Subject: [USRP-users] Re: E320 Automatic master clock
> 
> Hi Marcus,
> 
> >The "master_clock_rate" specification is *per session*.   It does NOT set it
> in any persistent way.
> > In the next session, if you don't specify it, UHD will pick an
> >appropriate  clock value.  If this is NOT happening, then that is a bug or an
> under-documented feature.
> 
> Sorry for the basic question, but what is a "session"? How do I end one and
> start a new one within a single execution of a program?
> 
> If I just try to re-make the device, I get an exception. Eg:
> 
>                 m_dev = uhd::usrp::multi_usrp::make(device_args);
>                 m_dev->set_master_clock_rate(61.44e6);
>                // How to restart a session here?
>                 m_dev = uhd::usrp::multi_usrp::make(device_args);
> 
> ...
> [INFO] [B200] Asking for clock rate 61.440000 MHz...
> [INFO] [B200] Actually got clock rate 61.440000 MHz.
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Operating over USB 3.
> [ERROR] [UHD] Exception caught in safe-call.
>   in b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl
>   at
> C:\Users\buildbot\worker0\Builder_uhdPackage_Windows_x64_vs2019\wo
> rk\uhd\host\lib\usrp\b200\b200_radio_ctrl_core.cpp:68
> this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout <
> this->_timeout
>   in b200_radio_ctrl_core_impl::wait_for_ack
>   at
> C:\Users\buildbot\worker0\Builder_uhdPackage_Windows_x64_vs2019\wo
> rk\uhd\host\lib\usrp\b200\b200_radio_ctrl_core.cpp:227
> 
> Probably something trivial, but I can't see it in the docs. No close/release
> method I can see.
> 
> Thanks,
> Jon
> 
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send an
> email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
