Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF32C28377E
	for <lists+usrp-users@lfdr.de>; Mon,  5 Oct 2020 16:17:27 +0200 (CEST)
Received: from [::1] (port=40478 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPRIp-0006Bv-Fu; Mon, 05 Oct 2020 10:17:23 -0400
Received: from mx0b-002cfd01.pphosted.com ([148.163.155.97]:19338)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <andrews.250@osu.edu>) id 1kPRIk-00061V-MB
 for usrp-users@lists.ettus.com; Mon, 05 Oct 2020 10:17:18 -0400
Received: from pps.filterd (m0130877.ppops.net [127.0.0.1])
 by mx0a-002cfd01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 095ECKbf026244; Mon, 5 Oct 2020 10:16:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osu.edu;
 h=from : to : cc : subject
 : date : message-id : content-type : mime-version; s=pps1;
 bh=GGFeacsYYFh6JrQgJdjOjBTw5dXCnCbR0eVwpXGebAQ=;
 b=Q2ih/cHl/AsbJAoSL6dPTkN+KA4Fp/H/sknMDQWb0Nzbf6QtdnYDp2AdnVd11cGGqt+H
 VCOxlWo6IYWYqtKIWdapbvUw4FJsAdoGoiCbezyrOrMRjN/r5eURWsAXFY11rNM2RUTS
 /hrUp0LVOFaDN04qtWC0EUYXeYMZkF8gCvQ2INa4HEqsFBpQR64RotE9WzL0vkG9iWpU
 CWL0yKKnhAWY6PJmLnrTO3JSqmCwWya4hp6Mz+z9IcsCgj+vQ2oxR3OtQ0RyXdN3dqAz
 LezA6sIN/5y8GU9p6RGZqHl1aZ8H8EpEsIlTTppNp57zlhrwBWcxfUxygfJf6H0Yc2Fm 1A== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2109.outbound.protection.outlook.com [104.47.70.109])
 by mx0a-002cfd01.pphosted.com with ESMTP id 33xkv76816-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 05 Oct 2020 10:16:36 -0400
Received: from DM6PR11CA0013.namprd11.prod.outlook.com (2603:10b6:5:190::26)
 by BN6PR01MB2724.prod.exchangelabs.com (2603:10b6:404:ce::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.38; Mon, 5 Oct 2020 14:16:35 +0000
Received: from DM3NAM05FT056.eop-nam05.prod.protection.outlook.com
 (2603:10b6:5:190:cafe::5) by DM6PR11CA0013.outlook.office365.com
 (2603:10b6:5:190::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.34 via Frontend
 Transport; Mon, 5 Oct 2020 14:16:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 128.146.138.8)
 smtp.mailfrom=osu.edu; ettus.com; dkim=pass (signature was verified)
 header.d=osu.edu;ettus.com; dmarc=pass action=none header.from=osu.edu;
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 128.146.138.8 as permitted sender) receiver=protection.outlook.com;
 client-ip=128.146.138.8; helo=cio-socc-esr01.osuad.osu.edu;
Received: from cio-socc-esr01.osuad.osu.edu (128.146.138.8) by
 DM3NAM05FT056.mail.protection.outlook.com (10.152.98.170) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.13 via Frontend Transport; Mon, 5 Oct 2020 14:16:35 +0000
Received: from CIO-SOCC-EX07.osuad.osu.edu (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by cio-socc-esr01.osuad.osu.edu (Postfix) with ESMTPS id 4956F9D;
 Mon,  5 Oct 2020 10:16:35 -0400 (EDT)
Received: from CIO-SOCC-EX03.osuad.osu.edu (128.146.86.131) by
 CIO-SOCC-EX07.osuad.osu.edu (128.146.86.134) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Mon, 5 Oct 2020 10:16:35 -0400
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by smtp.service.osu.edu (128.146.86.131) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5
 via Frontend Transport; Mon, 5 Oct 2020 10:16:35 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=glAHwUNi2Q6b0mCMQ2vFxmdBLXBAAkAS3u1Phjmlc9y+yuipcjUEcs4qq6MSzwP4qp1pVb3/YuCPHb0AJZtzjrLyOpcS/fmVW6JOD3zQVWgH5T+WRhV6gVbGrCVdA3byUiRsxe1a1ThWJUrbjeeFQTXB0pP9YTyWTRfqPXgG+mB0JTmLR3Sr1ABBhv4d/6VviESmaUqrRPBTldFh45fsvV+odmozWvrletX6F9s196a1A13pEVC3dfZObjHi7HN7HCZDw5qYj88hXzWyzi2YLrUVNQePT6jXy0aXtaouQpUP8T0q/pELqhb3ZrPcoBCWZaUJnNqlKQwDTF7C96+WuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GGFeacsYYFh6JrQgJdjOjBTw5dXCnCbR0eVwpXGebAQ=;
 b=NwveuXPT8IdeKq8T3VKRn75gYoglwCwrNhIB5JSE/3u1QwfUure1JpGoSV2dNP+CGTl9RqqfYHAylSgE3IJc0mBDNxO18x1pKWpscyp/8EW0szZzyn64C1abEe8kAd/bfU/1mxmiAQEktXyQhsU0MlCHfWzm1fLeeA33faC04cNIpv0svbxK4rIvrxsfIQ9Y0RwHjHrfHJDvUG+10E0oIqnwZyEB/qZa5NACe3r/r4A6JAu4sBEzH/2bAg43aRrdWFkokZlfBdXOmtMtGpbX3AZ+LAFxEA9j+t7KvkxH9TtE2TkkV3ZDNkelXUu1FrcF1Stm531UvWSBn/n8VahnkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=osu.edu; dmarc=pass action=none header.from=osu.edu; dkim=pass
 header.d=osu.edu; arc=none
Received: from SN2PR01MB1968.prod.exchangelabs.com (2603:10b6:804:9::9) by
 SN6PR01MB3821.prod.exchangelabs.com (2603:10b6:805:23::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.37; Mon, 5 Oct 2020 14:16:32 +0000
Received: from SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::9898:4e1c:abc:c293]) by SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::9898:4e1c:abc:c293%10]) with mapi id 15.20.3433.044; Mon, 5 Oct 2020
 14:16:32 +0000
To: USRP Users <usrp-users@lists.ettus.com>
Thread-Topic: Compiling custom C++ code on E320
Thread-Index: AQHWmx+0qCVoBUv4vEu3D+IGELU4Cw==
Date: Mon, 5 Oct 2020 14:16:32 +0000
Message-ID: <SN2PR01MB19689D6667D356E34D42ADE7A80C0@SN2PR01MB1968.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: lists.ettus.com; dkim=none (message not
 signed) header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=osu.edu;
x-originating-ip: [69.14.208.36]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 7262b06b-8344-47cf-bb82-08d869394489
x-ms-traffictypediagnostic: SN6PR01MB3821:|BN6PR01MB2724:
X-Microsoft-Antispam-PRVS: <BN6PR01MB27247B0CB562579AB36F4586A80C0@BN6PR01MB2724.prod.exchangelabs.com>
x-header-sapphire: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: avwM5d3hiSSJc6R5eYWmjzBrUtFVSwq0qfdFMVjEokeV09koDqwDyajkEahujIi5i2IPxcjx5VHKcE7uA26cnxn/YtpQ8NS+z6WT7fQuhb31gIZKq6LKpSPm5mMrmUxQCCaPbFbUo7Z0RvWstSgX/TVp09Oy8XJPrgPlKAyiM6y+cVOc24Lxj/68QXBYgG3JHXenQSuqndvelak9wua1SE6BNI6P4ZbCkjt169pRxwkKHP+OI3n7KVZB1IhMLalaxmyC6oZe+Y24z5N7if3trOj+58vxxrnKaLR9g29v7lOTTkcynXqNGWRvY74GMziRylrBLuhteoiRXNuHD9NSvKZfWgt8qXPpY3+qrUvtuXr4Xj/i+RTu9pX8vOn1MFOXHGH43gG5AXoVpbr3e+F8Dg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:SN2PR01MB1968.prod.exchangelabs.com; PTR:;
 CAT:NONE;
 SFS:(4636009)(376002)(366004)(396003)(346002)(136003)(39860400002)(6506007)(66574015)(83080400001)(186003)(9686003)(26005)(6916009)(55016002)(966005)(5660300002)(2906002)(8936002)(66446008)(52536014)(64756008)(66476007)(71200400001)(66556008)(166002)(66946007)(33656002)(4326008)(75432002)(19627405001)(316002)(786003)(91956017)(86362001)(8676002)(83380400001)(76116006)(7696005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 9czJZzOY6ERC5c8AzyqGraQjWUl+E7mfD7xQfpSrBcXfnDdKlautFJUJu7ObtE5tz7Yaol+YpIslHtYiwvvb5SVIwS1I7EYTCnyQVQNt3P8JEPeujueEZFsv+xZFSHtPFPMVnIktkHnT8AOTiRNlurE/p2yWLRTFCWZnxFZDMQRRK7kbw8WP4+n1pX6iGnJprESSjBU+u2ZWnBw4UCBblGRWE8wPlfR9bYn7qlhAsoKCNh/hYs8FvEiIiXNqDYEoVbv/4ljQB0dE8NmPY6iuX4AOcJoSG2pjMSEPBgNxqNhcYrqME2osxZl2mPvuqkT14ViOc9j/r7A+Fel0tR/VQApcn0HOKVLnqVc8YFpFeGnqENQQcbSf2JsXedj/z72IR23v0MlLCidLeZCUoqLCQ2UviVmMko2ti71oa6E0m+oWJnmpx90LsixVn0m0quCm7hRF8VjekccLqRDsGxFmfpAEZSDaOXtwUX5MKw+WK0U6IKMKAASHino07iIyM0UZs63QMt59USaY54ivtCCjPcnIoNi0L5HEfnKO/Mk5vwL+cCSXAb2mL62bDmOxtvITBTNJvdrGaXin/5gLRPVK4IsJtJYl41UgCRn+XQimdODpiNXCYNqhWgs8YLXUd3kifBgl1oNihlyiFBFSLmdvsg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR01MB3821
x-header-osu-auth: True
X-CFilter-Loop: Reflected
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DM3NAM05FT056.eop-nam05.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6ce4d097-5db2-4c27-0b9f-08d8693942c2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IpsOTx3z5wlG2I7wG5VDbR/lSJYt+udAl6S6r/dO1DSiI0CmC13bUtMmsu0g+ndQcLmlI+91ZoXr3qxnAB7gXv86+nZg+I+diY3VDh8FdhhPqlxLkHUm1Pll/B7KAPJE4TmbLESPcyBcll1R380L2Waap9reJAKF51S0kjVqbCbZcH1rn/MaejKbMUGzmg6fxRJX0uvO81oLfibCmxHecYFz/2TsNSL2942VHKe2eVKJPC1MfdU5il8D0qOoN47oglB9I3jywHL8zh/7cEeFHXH3RO55eCn6mgug50WSOlluPzu0DVrqrInZWGtcFxMaimNXIt/Lg6Ax5gV9P0jmxqEjXW5l8Z6nZidbxDxgXIhcIm0Zm3wVTlhSBrCA4TbeDHKWSyrDCAcgxDuTjb3UtYO4RPKkec1mXlFaAzXBJPF/KtYhAaXkYQW9Y+Ge0UA186ZfeB7M/AYoRm4sytlltj5D3jHy427FYF/ETmQmQGlHGg1qKd74pdbr3QJj/rVZ
X-Forefront-Antispam-Report: CIP:128.146.138.8; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:cio-socc-esr01.osuad.osu.edu;
 PTR:cio-socc-esr01.osuad.osu.edu; CAT:NONE;
 SFS:(4636009)(376002)(136003)(396003)(346002)(39860400002)(46966005)(75432002)(6916009)(2906002)(336012)(966005)(33656002)(478600001)(316002)(786003)(7696005)(6506007)(186003)(26005)(19627405001)(82740400003)(82310400003)(8676002)(55016002)(5660300002)(86362001)(83380400001)(7596003)(33310700002)(9686003)(356005)(47076004)(83080400001)(166002)(66574015)(70206006)(70586007)(4326008)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2020 14:16:35.5935 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7262b06b-8344-47cf-bb82-08d869394489
X-MS-Exchange-CrossTenant-Id: eb095636-1052-4895-952b-1ff9df1d1121
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eb095636-1052-4895-952b-1ff9df1d1121; Ip=[128.146.138.8];
 Helo=[cio-socc-esr01.osuad.osu.edu]
X-MS-Exchange-CrossTenant-AuthSource: DM3NAM05FT056.eop-nam05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR01MB2724
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-10-05_07:2020-10-05,
 2020-10-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 spamscore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 mlxlogscore=872 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2010050107
Subject: [USRP-users] Compiling custom C++ code on E320
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
From: "Andrews, Mark J. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Andrews, Mark J." <andrews.250@osu.edu>
Content-Type: multipart/mixed; boundary="===============5184288951767803046=="
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

--===============5184288951767803046==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN2PR01MB19689D6667D356E34D42ADE7A80C0SN2PR01MB1968prod_"

--_000_SN2PR01MB19689D6667D356E34D42ADE7A80C0SN2PR01MB1968prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm pretty new to SDR and am trying to run a custom C++ program on an E320.=
  I modified the "rx_ascii_art_dft.cpp" file on my host computer so that it=
 saves the DFTs to files instead of displaying them on the screen (with a 1=
 second delay between DFTs to prevent a million files being created).  I re=
compiled UHD and tested the new rx_ascii_art_dft executable and it seems to=
 be doing what I want.  I was hoping (though not really expecting) that I c=
ould just copy the executable to the E320 and run it on there, but that doe=
s not work ("cannot execute binary file: Exec format error").  I've tried l=
ooking at the manual and searching the internet for how this is supposed to=
 work, but it's not clear to me.  Am I supposed to:

1) Rerun the mender filesystem update?  Will this include the newly compile=
d files or will it simply reinstall the original files?
https://kb.ettus.com/E320_Getting_Started_Guide#Updating_the_file_system_wi=
th_Mender

2) Compile directly on the E320?
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev_mpm_na=
tive

3) Obtain an SDK and cross-compile?
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev_sdk

4) Something else?

If anyone can point me in the right direction or include a link to a good "=
hello world" example/tutorial on creating custom programs that run on the E=
320, it would be greatly appreciated.

Thank you,
Mark



--_000_SN2PR01MB19689D6667D356E34D42ADE7A80C0SN2PR01MB1968prod_
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
I'm pretty new to SDR and am trying to run a custom C++ program on an E320.=
&nbsp; I modified the &quot;rx_ascii_art_dft.cpp&quot; file on my host comp=
uter so that it saves the DFTs to files instead of displaying them on the s=
creen (with a 1 second delay between DFTs to prevent
 a million files being created).&nbsp; I recompiled UHD and tested the new =
rx_ascii_art_dft executable and it seems to be doing what I want.&nbsp; I w=
as hoping (though not really expecting) that I could just copy the executab=
le to the E320 and run it on there, but that
 does not work (&quot;cannot execute binary file: Exec format error&quot;).=
&nbsp; I've tried looking at the manual and searching the internet for how =
this is supposed to work, but it's not clear to me.&nbsp; Am I supposed to:
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
1) Rerun the mender filesystem update?&nbsp; Will this include the newly co=
mpiled files or will it simply reinstall the original files?<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<a href=3D"https://kb.ettus.com/E320_Getting_Started_Guide#Updating_the_fil=
e_system_with_Mender" id=3D"LPlnk480677">https://kb.ettus.com/E320_Getting_=
Started_Guide#Updating_the_file_system_with_Mender</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
2) Compile directly on the E320?&nbsp; <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software=
_dev_mpm_native" id=3D"LPlnk625665">https://files.ettus.com/manual/page_usr=
p_e3xx.html#e3xx_software_dev_mpm_native</a></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
3) Obtain an SDK and cross-compile?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software=
_dev_sdk" id=3D"LPlnk502855">https://files.ettus.com/manual/page_usrp_e3xx.=
html#e3xx_software_dev_sdk</a></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
4) Something else?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If anyone can point me in the right direction or include a link to a good &=
quot;hello world&quot; example/tutorial on creating custom programs that ru=
n on the E320, it would be greatly appreciated.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you,<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Mark<br>
</div>
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

--_000_SN2PR01MB19689D6667D356E34D42ADE7A80C0SN2PR01MB1968prod_--


--===============5184288951767803046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5184288951767803046==--

