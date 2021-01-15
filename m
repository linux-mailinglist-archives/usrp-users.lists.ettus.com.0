Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 169602F7D7C
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 15:01:56 +0100 (CET)
Received: from [::1] (port=45060 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0Pfk-0007pw-HR; Fri, 15 Jan 2021 09:01:52 -0500
Received: from mail-eopbgr110094.outbound.protection.outlook.com
 ([40.107.11.94]:6592 helo=GBR01-CWL-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1l0Pfg-0007bv-8V
 for usrp-users@lists.ettus.com; Fri, 15 Jan 2021 09:01:48 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bsHgkVP6qrf439VYzXzTWfS6T44YZMNFBnZExeWLyXHgIwU01JvD6HGHmnoA5aS+1Y6wNQYteXkGdBByAUWzuoAhXvwGuuMquVQp+w9Vg//aPX16jgLlxNZH4dzzmoFRw1Dje1u88748hSufCVz8pz2OJVL97sNA/JuApvcxb7Q8SYSbJwOWi9l6uZVCIGue1i8fNBfF385RIrwEcuXZku2dtFnKSqQU7ubjoIlmxvj1f7efcauv5wVHQwksTEyQK/pb8+suiBqBmsEVGm/4YVvfnZCuVKipmCjwu/Uj+mJsqC57dDMACdqBwuwe6DROSEMwy3CNhgNH3BqKhC+PMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipN5mx962lbOZx5DnzQDroLHIF3y/bDPDeQ3v+JlTl8=;
 b=cQQzAJFaP/aDeeffrg8dThQNl8PEK0F7Zj9gVlUGEYnLe2whMwRT/75HYIzb/Jedah1mFxm4g16pmHy7YIJIAVNmIxHohkQh8e19AwjsVerquHixp3jKs+bUOuyDihzvK+O1qPfl6fR9Z97J/UvrhVmP5PNf+GbUAQOnu8eP0939oKK86ucWpFK0F/tYOFCILul2FD3q0ng+sWxh+jj5dfkYBKKBky5XIP2KiAImZxhfLv5lN9/yONjlfGoutu4IQk1TYAukOE06XfEl1XXJZt7E3hgf4NeV2MwbHGDebXio76g68hGmglV6EUrgANnhBBOF7C4dyoklRUpb0CnYgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipN5mx962lbOZx5DnzQDroLHIF3y/bDPDeQ3v+JlTl8=;
 b=ruu18Pn0WdjfmOchLN6GCmLcjAX5mCTZstpkZpqTL5QRpvYp2rmegloWmbO69RmLEG3Ow187TOlA1dJgyEZMftED7XsIF0qUewEc2IhU4V6qTsrl4YgzBon4NZhNjrnQiOsOa9dPTndSKi+qcoKhoaeLXE+TGwKZ7+CehoDP/EE=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LOYP123MB2912.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:e8::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Fri, 15 Jan
 2021 14:01:04 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::75b7:742f:26de:975f]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::75b7:742f:26de:975f%6]) with mapi id 15.20.3763.011; Fri, 15 Jan 2021
 14:01:04 +0000
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Setting E320 to use fixed IP Address on RJ45 eth0
Thread-Index: AdbrHZJNCfia6oeARmetIkq7Vg4jugAI1OAAAAFjTQA=
Date: Fri, 15 Jan 2021 14:01:04 +0000
Message-ID: <LNXP123MB3724ED3EFA804051E6C72F20CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
References: <LNXP123MB372474BC72EC550495B41F29CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210115131822.7s3trwfd3f7dbi5p@barbe>
In-Reply-To: <20210115131822.7s3trwfd3f7dbi5p@barbe>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2c8fbaa-df2b-470e-56ff-08d8b95dffd4
x-ms-traffictypediagnostic: LOYP123MB2912:
x-microsoft-antispam-prvs: <LOYP123MB291213B07ED839AE631351BCCAA70@LOYP123MB2912.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IRtiAKkguDkZX+zwZs3DVGIQKCyF1FEKqkruna8akFzkjBjlC0JeT8YLKSZeMFVBBI7cX158g5aIDNphTHBiV+V9N5uInVn+/bMOA9NKstEFezN/jeR/P5ReFbILR+6Ja5G+NUIhqCGjgQNk3HcKz5hXNCfAVWIZOQpPfPMPItQKdmPn0oCJZLTUtFA9v+LWclqx2l8jUC3r5aU428jSnW5cFE47VZNk9hIvXSEtcPx1I2Yug/ts7vZWYzuDx5WB5m7h6s+ul7kstYxOLiENcJEgCVPYvqagMGDlXNFg7WucZpiO8YJpAAZe6mjfb2lfE/gZGpqGdO2vKsdcAJ1uf4efIptDdphTzlvLo/zI9aXA54EqDdCwqvSCfKCt5+yCiePoy4/c6whJnatKK3INuMNlGnUndJYi3l3EseCRyT1BAsoUhnIc7PedZKmS2Ol5B8pqocd/9JfcY/sFuicBp54DJKNs1dVZY75TCc8eUv8fwz1f/bzLd5nJhwtmY9mcsz4cpGUX9UXgh+Eo5Ylbhg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(346002)(39840400004)(396003)(376002)(6916009)(86362001)(76116006)(966005)(5660300002)(316002)(478600001)(6506007)(186003)(26005)(71200400001)(66556008)(66446008)(8676002)(7696005)(53546011)(64756008)(8936002)(83380400001)(66476007)(9686003)(66946007)(52536014)(2906002)(33656002)(55016002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?rCTojSy4o2yk+T6wQdpTCFdEMpG6st0/Jjv88/MFZC9gC++ydsaavQRR09?=
 =?iso-8859-1?Q?suwP8j/p1ES1RB7bp7G6UN877MD7kxZwMLnnEuhozhIvtkbbM7CITRCI5m?=
 =?iso-8859-1?Q?/SvMCN4uAS+QZT27BE0wpiJF9jkEIEeNWidEd9LeOzkX2JAr56Kzzb5W9z?=
 =?iso-8859-1?Q?DtIlxMJzgagxZHsvwDSE6GHVoaZ7WXasLae5G3tne67VlR+Zz7jkBNNsic?=
 =?iso-8859-1?Q?SNRAb2YpMwhYuiRiwZ3N7QHUP4dIn+0lBFPbW8Tp7P0prTiaL6VueILRuH?=
 =?iso-8859-1?Q?SmWVSH6DOVqt8Vmikw8CDaqhUasrw24DDo+kP1vdKhPUT/5MxHIDnheXJx?=
 =?iso-8859-1?Q?TD1fviCyPwMvM2XJKTO7gmcZUBlGluRipp3kOfZ/GnROX7aR1f8j5fLCf8?=
 =?iso-8859-1?Q?qQBxFFI2/QqrUGnWNQ/jkhUm8z8u2AxqRbSGygS1Vv/mu71t4SaNikjQaE?=
 =?iso-8859-1?Q?i4JJJJasFywqqnmiLellWFJhmFXaq/VMC1fpaLtgiA9Nx5EudSxONI2qse?=
 =?iso-8859-1?Q?7wV8i+BKID/biZeUUMdeor1r1hnlHbgVhEYCe46p+6LSoy5ZjTJcjNqelo?=
 =?iso-8859-1?Q?+6oe5kz4PphSuRsS0ZAM7xlFB2+NHYpFA+Q6sVaW/XTnaGaF9bidnz8sKu?=
 =?iso-8859-1?Q?gnhYb1KVjkuAWFz0H+8tvXUdTTOVQa8VB0Kn6AMhZy1hYwTy6i489U9oDZ?=
 =?iso-8859-1?Q?g8sYVwNj3UrSJYQZNMOoV+WInGb0uyvcGjkFEEVU4JQBD6wl6LgEzuI6Ky?=
 =?iso-8859-1?Q?8JqN+1ZHp4W6U3M0K1aeBZhwzHdmiMWWOEE6Ay3SaOpxrGMvfUrgu1AKqW?=
 =?iso-8859-1?Q?PGRMv0qWxanF0Us6K5gkyY3QkhbhJNw5Q3sqqpCvS97LoVglPj7KUpcuzq?=
 =?iso-8859-1?Q?q4wnfHP79X6c3jBAoI01uutadUv7TKkIYF5W3nzwzcMXI/WhG2/BD4L22Q?=
 =?iso-8859-1?Q?hirM90iPZTShAjJK4NtAQMvGTpT5yFw0NeCTwC57xM81cEKUfKL2nTAZ+X?=
 =?iso-8859-1?Q?z3R5g1rhz9LKBkLck=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c8fbaa-df2b-470e-56ff-08d8b95dffd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2021 14:01:04.6684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zvX6Pt9cKbgelfVy2ZWp3o/DvacgYhZH/htNv/Vp6mT/AMxmuMS0RtgdbWF58C5i1rddn2cWAc0NogvsNC6x9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LOYP123MB2912
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
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
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

Thanks C=E9dric,

I used the networkctl status eth0 command that pointed me to the file at /l=
ib/system/network/40-eth0.network

I then edited this file to remove the DHCP sections and set the address at =
192.168.1.60/24.

Looks to be working great,

Mark

-----Original Message-----
From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of C=E9dric=
 Hannotier via USRP-users
Sent: 15 January 2021 13:18
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Setting E320 to use fixed IP Address on RJ45 eth0

On 15/01/21 09:06, Mark D via USRP-users wrote:
> My E320 doesn't have that folder,
> there is one "/etc/systemd/network/"
> but no "/etc/systemd/networkd/" (i.e. no d after network).
> I think maybe is a typing error in the manual and the folder name should =
be network.
>
> The folder at this location is empty, so doesn't contain the SFP+ setting=
 file.

Are you sure it is managed/configured by systemd-networkd?
You can check its status by running "networkctl status eth0".

> I have created in this folder a file eth0.network with the following cont=
ent:
>
> ---------------------------
> [Match]
> Name=3Deth0
>
> [Network]
> Address=3D192.168.1.60

From systemd.network(5), I think you have to specify the netmask, eg:
Address=3D192.168.1.60/24

Do not forget to reload, either using 'networkctl reload' or 'systemctl res=
tart systemd-networkd'.

--

C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
________________________________
 This email and any files transmitted with it are confidential and intended=
 solely for the use of the individual or entity to whom they are addressed.=
 If you have received this email in error please notify the system manager.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
