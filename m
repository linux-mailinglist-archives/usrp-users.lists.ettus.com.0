Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD9226DEE0
	for <lists+usrp-users@lfdr.de>; Thu, 17 Sep 2020 16:58:16 +0200 (CEST)
Received: from [::1] (port=33574 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIvMT-0003n5-0F; Thu, 17 Sep 2020 10:58:13 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:51818)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1kIvMP-0003i6-Ej
 for usrp-users@lists.ettus.com; Thu, 17 Sep 2020 10:58:09 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 05F34AB76B
 for <usrp-users@lists.ettus.com>; Thu, 17 Sep 2020 14:57:29 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.21])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 EC17E60057
 for <usrp-users@lists.ettus.com>; Thu, 17 Sep 2020 14:57:18 +0000 (UTC)
Received: from us1-mdac16-33.at1.mdlocal (unknown [10.110.51.91])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id EB29F2009F
 for <usrp-users@lists.ettus.com>; Thu, 17 Sep 2020 14:57:18 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.49.109])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 6367F2E0066
 for <usrp-users@lists.ettus.com>; Thu, 17 Sep 2020 14:57:18 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 02C49B40077
 for <usrp-users@lists.ettus.com>; Thu, 17 Sep 2020 14:57:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CJM8wWI1apZILB4J1j7gM3A0tEbmjcUDIuAZ3k4hsIvrpXLZKnqIEA0KKXdNGSMt3sRvi/0+OmjUrmrWCiEYa+bCkU2TSISy4/2GhrY73RKTLVjJpVWra2nBfTIqzw/4TqKCUdF6WMWHg67oK8VSBgjuvUO/GpZCfdmHLhFrj32Y1SN1aMHueRVXdq3y4UBHVa1C5r1iIfHRyU3OHpKsRaPmKkEbe7WJIqCRh5jMSfyqLrcwzdQ82LMfQ3/ixfYaCTbVC0O8vnEI9UW5ybbP5WtgEHyD/JJrzFXjmE/5cwdfjIDHJv6N8iy0bXJJZEXT3DrH14ukfaQOWq6vBSXIwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FCYUfqXDztyb1ee67xhfOoBZ48dyRbwD5JCW1f+9Axk=;
 b=VvBiTuCt/PpRIB8LlGsakOlJZksPHsYUd29Iy71/Sc3k34NLcWksIUCAxnQdlRmc/ct1ocBWLALpVnEFgqOWCbyF9foqJezkty7QdPyPFKN93VyKOQvaOa5roXhVA/VfS/+Dfyrgpp9DqoFbMethfvi51fefEMbS6S2ljha2Beq1qlo7dXQ9LiEWZ22POiglsopUe4Cye0KABbRnZo0X1V5t2w++Viorni9R8VP2LOMJZG78bPXvYTKAihmeB15HSwuR5Ena19X520cqnvw8yOewBkOojEeopjyvDXyvZWY+cNVU1HFMzUqMKRhOmmOe7jZ+M1CVC9I1KaLADwe8Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FCYUfqXDztyb1ee67xhfOoBZ48dyRbwD5JCW1f+9Axk=;
 b=umP0RKXYGARKItrzPiyd3/kAg/5+kyahjs3NMdFwyM7DrbFT2VzONc73DUTzhEnoprSP09RUK1aRjtm+NvCvmAN1NCvFnqZwTEaash3xScE2jXPv+e0I3nMtKyvne/RTn7XIP2tmN4EkpWThwu5q8Ky6hEmV10fquHPctjv/Wgg=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3182.namprd12.prod.outlook.com (2603:10b6:208:107::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.14; Thu, 17 Sep
 2020 14:57:15 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::512d:79fc:a795:245]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::512d:79fc:a795:245%7]) with mapi id 15.20.3391.014; Thu, 17 Sep 2020
 14:57:15 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC block not fully recognized by UHD 4.0
Thread-Index: AQHWjP/HwFnB5AstbU2qslXcoMD2jw==
Date: Thu, 17 Sep 2020 14:57:15 +0000
Message-ID: <MN2PR12MB33121DCC88D99FD31F550917B83E0@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8296f47-9a37-48db-0b84-08d85b19f73f
x-ms-traffictypediagnostic: MN2PR12MB3182:
x-microsoft-antispam-prvs: <MN2PR12MB31826CD606863CB08FCBDB03B83E0@MN2PR12MB3182.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7g0heVxurzxPc1xnYY0xUbQsK4pbXsHimo7+OfinDI1s3ioqHg4nezisyHtVvAQXK9Iv57JmL14Rcf8gq6xR/UJey7nPvr2C12+1ejgivuxs6B0EE8/9p1P8IC4GdvLY0kZzRNA00miSI7RTt0HUKCOEveS2i7wFC4UK9w5yNPfoZh7aaDMd1VQvb1IXqS0wxbNwcP2rsnB51u1g+jRSGGr6JWBjBol2vpIxrBjEd8cRDggnAkb/MdSDsgQbxVagOplVfTwG3/yX+n0XXh1s0mCQAdiJtSLXbM4TNtbts8gFYAsq0ZIJr2G9MmZlpqgXDT78n2ImnhQ5WcReb2LzMUHVZpgMi31GnNxxKYy2lRgbUGvjVSxylTsqKGoJiHhjS8L/7d95s+PKUtR7KhrhOkH443crLDLdyE7E9E9V4W1TtPQofLlf0MPxt8KevRU3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(376002)(366004)(396003)(39830400003)(6916009)(26005)(6506007)(8676002)(71200400001)(19627405001)(316002)(33656002)(8936002)(7696005)(2906002)(86362001)(186003)(9686003)(166002)(55016002)(83380400001)(66476007)(508600001)(66556008)(64756008)(66946007)(66446008)(76116006)(52536014)(5660300002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: wCndr9CJspn0DYfpamhN41AuuIKaEDzecUmYNdbzgFjX5U2x5BMcMVc80GgjO1e/nbcKlCjU4ywatdWOITfu11NH8SBAE70OK7WODpS8uqVHKZnZKvKh1ezoZIv6potGWpSmiVYQDVKYq12f5daFkPDQ/Lr8xO7FlrgmVwQzulqg+iO2UVqNGzRUIk/n32V1kKT3C5BLqVuAf1agBq1GO/okKLLkFZvmh9/xhOnY1yejRXWZX9HNi6uM5gsScGaGK+jvG1VlxyLTFNx0aNE9S4LfLtBHqcg+QM7yISLk/Pt5yvP+mkp3IsNMP3bJc99FPljXc7+DzBQCO/c3QpSJRF4UBIlormZcHFlBHhLUChlVWbZ9QIt0KTEgmcmMP1u0gdzZcqAYL8AdAnXv+Si2irpqwW72KeQ95Li5mjPwkHK1F9ywzJOtKPDQNz5uo7I8/ydDUlpSlQEJaODLbU+CyKPWhKYMJ88NnRa2gkDbtIJpqWNJCtXyt/9/GaNgMNaOLnEOIeKwmzUVnz14vdTCXX2Cg431R2Qf2Ns74ZFgs8t3KDK+FpEECzg68n0Geq7NmVbQ8TjDWHzM3c7YYCzkoQCBU6h0H8cQDptcDIEDorg6bDZBqKE28/jOOoKWTnLoN7guTp1Cd1WhKj5Zd9q4MQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8296f47-9a37-48db-0b84-08d85b19f73f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2020 14:57:15.1820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XoOZaeDBjwi0G228REgOLfKKadb4+65mkPR6+PZFujUeskcdfqm56d6vP9yQ9MdFfRmV/ttvjIW6Ian3JOKSxEogsNCZfBLCTjwYLg6yUww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3182
X-MDID: 1600354638-fNlD90b3qeer
Subject: [USRP-users] RFNoC block not fully recognized by UHD 4.0
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
From: Jim Palladino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Palladino <jim@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============8230786095942930281=="
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

--===============8230786095942930281==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33121DCC88D99FD31F550917B83E0MN2PR12MB3312namp_"

--_000_MN2PR12MB33121DCC88D99FD31F550917B83E0MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I just updated my rfnoc workflow to UHD 4.0 this week. I've gone through th=
e process of creating an RFNoC block, building the corresponding FPGA image=
, putting it on an E320 (had to upgrade MPM), and seeing the block is prese=
nt when executing uhd_usrp_probe. The problem is that the block shows up as=
 "* 0/Block#0", and not "* 0/Gain#0". Basically, I'm trying to go through t=
he tuturial.

      _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/Block#0
|   |   * 0/DDC#0
|   |   * 0/DUC#0
|   |   * 0/DmaFIFO#0
|   |   * 0/Radio#0

I've confirmed that I have a gain.yml file under my ../uhd/rfnoc/blocks fol=
der with the correct noc_id. If I do a uhd_usrp_probe with the --init-only =
option, I get:

------------------------------
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xbdc26af=
0, 0xffff
------------------------------

I confirmed that this Noc-ID matches the ID in my gain.yml file. I started =
digging into uhd_usrp_probe code (I'm not a C++ person) and noticed that th=
e registry_factory section of code has "FIXME TODO" under the descriptor re=
gistry section, but has code for the direct registry section:

-------------------------------
block_factory_info_t factory::get_block_factory(noc_id_t noc_id, device_typ=
e_t device_id)
{
    // First, check the descriptor registry
    // FIXME TODO

    // Second, check the direct registry
    block_device_pair_t key{noc_id, device_id};

    if (!get_direct_block_registry().count(key)) {
        key =3D block_device_pair_t(noc_id, ANY_DEVICE);
    }
    if (!get_direct_block_registry().count(key)) {
        UHD_LOG_WARNING("RFNOC::BLOCK_FACTORY",
            "Could not find block with Noc-ID " << std::hex << "0x" << key.=
first << ", 0x"
                                                << key.second << std::dec);
        key =3D block_device_pair_t(DEFAULT_NOC_ID, ANY_DEVICE);
    }
    return get_direct_block_registry().at(key);
}
----------------------------------

Does this mean that uhd_usrp_probe is not even looking at the yml files and=
 only looks for directly registered blocks? I'm not sure what directly regi=
stered means and if my example "gain" block should somehow be directly regi=
stered.

I was thinking that this is just something incomplete that doesn't work wit=
h UHD right now, but in the "Getting Started with RFNoC in UHD 4.0" guide (=
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0), they show the =
Gain block showing up correctly when doing a uhd_usrp_probe.

So, I don't understand why this isn't working or how it should work. Some b=
ackground, I cloned/built:
1) UHD (v4.0.0.0 tag)
2) gnuradio (3.8.2.0 tag)
3) gr-ettus (maint-3.8-uhd4.0 branch)

I "believe" my paths/environment are setup correctly.

Thanks for any help.
Jim



--_000_MN2PR12MB33121DCC88D99FD31F550917B83E0MN2PR12MB3312namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I just updated my rfnoc workflow to UHD 4.0 this week. I've gone through th=
e process of creating an RFNoC block, building the corresponding FPGA image=
, putting it on an E320 (had to upgrade MPM), and seeing the block is prese=
nt when executing uhd_usrp_probe.
 The problem is that the block shows up as &quot;* 0/Block#0&quot;, and not=
 &quot;* 0/Gain#0&quot;. Basically, I'm trying to go through the tuturial.&=
nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; _____________________________________________________
<div>| &nbsp; &nbsp;/</div>
<div>| &nbsp; | &nbsp; &nbsp; &nbsp; RFNoC blocks on this device:</div>
<div>| &nbsp; | &nbsp; </div>
<div>| &nbsp; | &nbsp; * 0/Block#0</div>
<div>| &nbsp; | &nbsp; * 0/DDC#0</div>
<div>| &nbsp; | &nbsp; * 0/DUC#0</div>
<div>| &nbsp; | &nbsp; * 0/DmaFIFO#0</div>
<div>| &nbsp; | &nbsp; * 0/Radio#0</div>
&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I've confirmed that I have a gain.yml file under my ../uhd/rfnoc/blocks fol=
der with the correct noc_id. If I do a uhd_usrp_probe with the --init-only =
option, I get:<br>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
------------------------------</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xbdc26af=
0, 0xffff<br>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif">
------------------------------</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I confirmed that this Noc-ID matches the ID in my gain.yml file. I started =
digging into uhd_usrp_probe code (I'm not a C++ person) and noticed that th=
e registry_factory section of code has &quot;FIXME TODO&quot; under the des=
criptor registry section, but has code for
 the direct registry section:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
-------------------------------</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
block_factory_info_t factory::get_block_factory(noc_id_t noc_id, device_typ=
e_t device_id)
<div>{</div>
<div>&nbsp; &nbsp; // First, check the descriptor registry</div>
<div>&nbsp; &nbsp; // FIXME TODO</div>
<div><br>
</div>
<div>&nbsp; &nbsp; // Second, check the direct registry</div>
<div>&nbsp; &nbsp; block_device_pair_t key{noc_id, device_id};</div>
<div><br>
</div>
<div>&nbsp; &nbsp; if (!get_direct_block_registry().count(key)) {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; key =3D block_device_pair_t(noc_id, ANY_DE=
VICE);</div>
<div>&nbsp; &nbsp; }</div>
<div>&nbsp; &nbsp; if (!get_direct_block_registry().count(key)) {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; UHD_LOG_WARNING(&quot;RFNOC::BLOCK_FACTORY=
&quot;,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;Could not find block w=
ith Noc-ID &quot; &lt;&lt; std::hex &lt;&lt; &quot;0x&quot; &lt;&lt; key.fi=
rst &lt;&lt; &quot;, 0x&quot;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &lt;&lt; key.second &lt;&lt; std::dec);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; key =3D block_device_pair_t(DEFAULT_NOC_ID=
, ANY_DEVICE);</div>
<div>&nbsp; &nbsp; }</div>
<div>&nbsp; &nbsp; return get_direct_block_registry().at(key);</div>
}</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
----------------------------------<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Does this mean that uhd_usrp_probe is not even looking at the yml files and=
 only looks for directly registered blocks? I'm not sure what directly regi=
stered means and if my example &quot;gain&quot; block should somehow be dir=
ectly registered.&nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I was thinking that this is just something incomplete that doesn't work wit=
h UHD right now, but in the &quot;Getting Started with RFNoC in UHD 4.0&quo=
t; guide (<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD=
_4.0" id=3D"LPlnk619354">https://kb.ettus.com/Getting_Started_with_RFNoC_in=
_UHD_4.0</a>),
 they show the Gain block showing up correctly when doing a uhd_usrp_probe.=
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
So, I don't understand why this isn't working or how it should work. Some b=
ackground, I cloned/built:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
1) UHD (v4.0.0.0 tag)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
2) gnuradio (3.8.2.0 tag)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
3) gr-ettus (maint-3.8-uhd4.0 branch)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I &quot;believe&quot; my paths/environment are setup correctly.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks for any help.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_MN2PR12MB33121DCC88D99FD31F550917B83E0MN2PR12MB3312namp_--


--===============8230786095942930281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8230786095942930281==--

