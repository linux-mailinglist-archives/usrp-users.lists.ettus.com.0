Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 213E6187821
	for <lists+usrp-users@lfdr.de>; Tue, 17 Mar 2020 04:24:56 +0100 (CET)
Received: from [::1] (port=33492 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jE2qZ-0002YE-Uv; Mon, 16 Mar 2020 23:24:51 -0400
Received: from smtpvmsrv1.mitre.org ([192.52.194.136]:46888)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jplong@mitre.org>) id 1jE2qW-0002Tb-Lo
 for usrp-users@lists.ettus.com; Mon, 16 Mar 2020 23:24:48 -0400
Received: from smtpvmsrv1.mitre.org (localhost.localdomain [127.0.0.1])
 by localhost (Postfix) with SMTP id 6217E6C0027;
 Mon, 16 Mar 2020 23:24:08 -0400 (EDT)
Received: from smtprhmv1.mitre.org (unknown [128.29.154.203])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by smtpvmsrv1.mitre.org (Postfix) with ESMTPS id 552E26C000C;
 Mon, 16 Mar 2020 23:24:08 -0400 (EDT)
Received: from mwfesmtp-mgt.mitre.org (mwfesmtp-in.mitre.org [192.52.194.235])
 by smtprhmv1.mitre.org (Postfix) with ESMTP id 38EF080E998;
 Mon, 16 Mar 2020 23:24:08 -0400 (EDT)
Received: by mwfesmtp-mgt.mitre.org (Postfix, from userid 600)
 id 48hJRr14s9z3DYl7; Tue, 17 Mar 2020 03:23:23 +0000 (UTC)
Received: from GCC02-BL0-obe.outbound.protection.outlook.com
 (mail-bl2gcc02lp2107.outbound.protection.outlook.com [104.47.64.107])
 by mwfesmtp-mgt.mitre.org (Postfix) with ESMTPS id 48hJQx1kHxz3DYmn;
 Tue, 17 Mar 2020 03:23:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fFU5dJppy7jbC/RRa8ZamRQym4pFpLq89Kw/4doB5olQKZYm6f2p3mT5OuxLTh8kaAIEqe4JDrgRC7XYXG9mCLQ3npmeSfRQVGQRAau5nwbUXUZJ2fmQJ/o5CiOAKG1mPL3e9LBQwqN+hbYxeA2NzZVk6Ur442d927F4nADY84vgU20BGMk38AksoVek5GX+3AePMZsq1WelucMDwxOE5KACZkpJ38Pa55rp671NMlTu3yDSJCfLSJryYmNFDF+qslHVSaMbkJWNdHauTNJSQgf0zltKESEWGkMyGb+ir6Tf3qrBlzZ+4HxvMAmRKfZEUY7KwuBkXE9q3MWk5haeqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hWPcrRdfVGc0jXUxm/vVEirnGAS55Ef3xOvSC4haja0=;
 b=Z5LxNOPbD1yOnpLqi6nxRZhAHu88/5JZjaJUxDUG0ejBmRrJoeZnk8ORAUXO8PYg26wLuetC21YJyYVBTg7I8FuViy8ezfdI4KLhI7GtcyzEbS4Ns+4CTsBAa8jynwbUbqTpGWnTmOLMi1ILKvFNX0H77Wf5ztVyOSx6cODsFZbBC6Jpu5qeVwEd6rLUHULJdahF2Qf5DmThUYkZs7EALoY6Z138JSiGApL6tdbEwUWTlkeNx0Ez1Y2WUu4daVlURJMoI4f+JhllJIG0z/tQj/J6pEAp+FvX4Dh4sotAbqKgPC4if+03AKF859akGkM03fSVDuO/GaOyXg1I0RPzPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from MN2PR09MB4077.namprd09.prod.outlook.com (2603:10b6:208:1b8::12)
 by MN2PR09MB4905.namprd09.prod.outlook.com (2603:10b6:208:210::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Tue, 17 Mar
 2020 03:23:18 +0000
Received: from MN2PR09MB4077.namprd09.prod.outlook.com
 ([fe80::d011:291a:11f9:82df]) by MN2PR09MB4077.namprd09.prod.outlook.com
 ([fe80::d011:291a:11f9:82df%5]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 03:23:08 +0000
To: Martin Braun <martin.braun@ettus.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [EXT] Re: [USRP-users] N310 Chipscope?
Thread-Index: AQHV80Dw5QtisS/fnkO3dN2vnw3gL6hG9ZgAgAU6JYA=
Date: Tue, 17 Mar 2020 03:23:07 +0000
Message-ID: <MN2PR09MB40773ECC045F2C6B35F3D7A8D9F60@MN2PR09MB4077.namprd09.prod.outlook.com>
References: <3106_1583404341_5E60D534_3106_145_1_CANZpvRrDj5ZyvNmmeBoT1W6o76MezH7mePEPO2UQimtWoXWMGw@mail.gmail.com>
 <MN2PR09MB4077640ADBCA3D047EEFCE25D9E20@MN2PR09MB4077.namprd09.prod.outlook.com>
 <9594_1584127960_5E6BDFD8_9594_401_1_c3208963-b644-4d8c-2f8e-a7478468f49b@ettus.com>
In-Reply-To: <9594_1584127960_5E6BDFD8_9594_401_1_c3208963-b644-4d8c-2f8e-a7478468f49b@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jplong@mitre.org; 
x-originating-ip: [192.160.51.89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 40a0e334-6119-46e9-ecfe-08d7ca22839b
x-ms-traffictypediagnostic: MN2PR09MB4905:
x-microsoft-antispam-prvs: <MN2PR09MB490520FCA3995B93AAB38BAAD9F60@MN2PR09MB4905.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:288;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(396003)(366004)(136003)(376002)(199004)(81156014)(8676002)(186003)(81166006)(26005)(86362001)(71200400001)(110136005)(2906002)(966005)(55016002)(478600001)(9686003)(53546011)(6506007)(8936002)(33656002)(316002)(76116006)(7696005)(66476007)(64756008)(5660300002)(66946007)(66446008)(66556008)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR09MB4905;
 H:MN2PR09MB4077.namprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: mitre.org does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ERVZdUpOjxukPVlNahpbn0crgru5ZEIdRUxmH+GmXd/ijXFYvaKxYZ66OXXztKJMpQojaPoJzoukKWQwQCGVv8KIFAZbkrZ+UGVvKSeIrjUIeZZwujw21GmWeAokEc0d+z0XZfkkTsW2DHPI2k6FsdqsqjuqxweKRbn6Ucj7Oltkg8pJe3gdRh0U6NsAzwo09UA25G2Pzz3C13YA0VdowIymK6eVq4A0AyCcfdkdJrD/HS8NN0/te2QIkTm2oVHoeluWGFEBWpn/mDxDD4gOtL8XIAq3tBMa0I6775zojZkv/y6XZnT3P0uQGfC0v6Ne2QSA25MMljYLfjgBFeFEn8cfFfxoPY5mWUFjWaCKmiMhLOmxeGZkesv0NVVU7NZTE+zXfstKPprPU1RrqEDeQ8XTmg2Hpx6S8gxWCLk+P58yhINC3ZiCj3t9G7NYHjHFN1dFyeCT53O5WzSOzKbXKwayrY/sHIeFlxtrdpp5lnQ=
x-ms-exchange-antispam-messagedata: PEdzbro+5xZIkduvFOZqdSXiBTXWwgAp1ZTisIYPT9qkqsy+Ij8P6uhqw92mM8psq89GlDJIziJ0LN7jUlizUb4Mz0cPcQiqJbalaRQFVbT83mwipyNB9bI8y4xiORX3ViDt9jSj/vGW/ZYlca/Y7Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-Network-Message-Id: 40a0e334-6119-46e9-ecfe-08d7ca22839b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 03:23:08.0068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DKpYpwhC6ARgKugcyJEp8Zm7CkFLD5KgnzGqp1uviSOVSfk9jadGG0guEWM8E1Tp0eBMnRsoCQtH5YIY0fVjtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB4905
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org;
 h=from:to:subject:date:message-id:references:in-reply-to:content-type:content-transfer-encoding:mime-version;
 s=selector1; bh=hWPcrRdfVGc0jXUxm/vVEirnGAS55Ef3xOvSC4haja0=;
 b=N6wgVn67PmkZMbIWkDgYhwobq7igEU4q++e9XkIDnmsRX/6knAWhkCDVhsjhYywGnTSP0SCY6b7f2GaYMdg/UUHBBfzn3loQwLujpNaVU6XCXICuVMa10kmqdfEsPVAPsj5owitncy/19bn9PvDWN4Md+LxkYYmME6AyKB6PlaA=
Subject: Re: [USRP-users] [EXT] Re:  N310 Chipscope?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Long, Jeffrey P. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Long, Jeffrey P." <jplong@mitre.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Martin-

No you are correct. I finally resolved the issue. USB drivers for vivado in Ubuntu 18 where not installing but now it's up and working.

Thanks
Jeff

-----Original Message-----
From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Martin Braun via USRP-users
Sent: Friday, March 13, 2020 3:32 PM
To: usrp-users@lists.ettus.com
Subject: [EXT] Re: [USRP-users] N310 Chipscope?

On 3/5/20 2:53 PM, Long, Jeffrey P. via USRP-users wrote:
> Maybe this is a stupid question but I can't find anything in google 
> land. Can we use the jtag port on the N310 to chipscope? I have 
> successfully built and run images and so I created a build with some 
> debug via a single ILA. It looks good and I loaded it using 
> uhd_image_loader. Usrp probe it and all looks good. Then I fired up 
> the Vivado hardware manager with my microusb cable plugged into N310 
> but it does not find the ILA. Anything special I need to do to use 
> that jtag console jack for this? The jack seems to work great for 
> connecting a terminal which had me wondering if we can really use it 
> for chipscope jtag too?

Jeff,

no, you shouldn't have to do anything special. That's exactly what that micro-USB connector is there for. Maybe a permissions thing? Does Vivado just not find the ILA, or not even the FPGA?

--M

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
