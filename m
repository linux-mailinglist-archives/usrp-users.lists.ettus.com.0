Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 176412520DD
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 21:44:56 +0200 (CEST)
Received: from [::1] (port=40764 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAesI-0000Vw-14; Tue, 25 Aug 2020 15:44:54 -0400
Received: from mx0a-002cfd01.pphosted.com ([148.163.151.149]:56160)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <andrews.250@osu.edu>) id 1kAesD-0000MO-2M
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 15:44:49 -0400
Received: from pps.filterd (m0130871.ppops.net [127.0.0.1])
 by mx0a-002cfd01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 07PJajh6016703
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 15:44:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osu.edu;
 h=from : to : subject :
 date : message-id : content-type : mime-version; s=pps1;
 bh=0HXBAuTZ9Qx2pqlLx4O9RHkLNJcVWBbsNXLCsRBgCWM=;
 b=LDF0rT1U42YHlAmEF3Lwa34wHQYXtzujDVZl0QkLXkw1cbKlH1XL/sc2On94oANHM2Xk
 EsI9vjCR0pYOvuGezi+f5HVt70pjJSq8gNcjHqZKKdpCmQgWvkD6EiM51X8LMo27rT5S
 GBiBAqzNfJAcR7qrupXlUNgzzH/LnYCfv5KcL3h3YIFeX2DeDfgn8bLBHhLSkX37Q21q
 4bwFxqY6Id9h8XH3tMzUEceHiOTl66YGNyr0Q6WY3LY0AibVtzNez7ZvKut4AKzgug8a
 MN05XbZEtoT6t9EYsAa6/Mm5zUvuFgaZ7NJ9qaq/nMxvzxlIq769WiGwxZDysLSpFFEK /A== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2108.outbound.protection.outlook.com [104.47.58.108])
 by mx0a-002cfd01.pphosted.com with ESMTP id 33309nu73m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 15:44:07 -0400
Received: from DM6PR08CA0011.namprd08.prod.outlook.com (2603:10b6:5:80::24) by
 DM6PR01MB5689.prod.exchangelabs.com (2603:10b6:5:17a::17) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24; Tue, 25 Aug 2020 19:44:05 +0000
Received: from DM3NAM05FT036.eop-nam05.prod.protection.outlook.com
 (2603:10b6:5:80:cafe::35) by DM6PR08CA0011.outlook.office365.com
 (2603:10b6:5:80::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.19 via Frontend
 Transport; Tue, 25 Aug 2020 19:44:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 128.146.163.17)
 smtp.mailfrom=osu.edu; lists.ettus.com; dkim=pass (signature was verified)
 header.d=osu.edu; lists.ettus.com; dmarc=pass action=none header.from=osu.edu; 
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 128.146.163.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=128.146.163.17; helo=cio-tnc-esr06.osuad.osu.edu;
Received: from cio-tnc-esr06.osuad.osu.edu (128.146.163.17) by
 DM3NAM05FT036.mail.protection.outlook.com (10.152.98.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3326.19 via Frontend Transport; Tue, 25 Aug 2020 19:44:04 +0000
Received: from CIO-TNC-EX02.osuad.osu.edu (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by cio-tnc-esr06.osuad.osu.edu (Postfix) with ESMTPS id 9624995
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 15:44:04 -0400 (EDT)
Received: from cio-tnc-ex04.osuad.osu.edu (128.146.193.3) by
 CIO-TNC-EX02.osuad.osu.edu (128.146.193.2) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Tue, 25 Aug 2020 15:44:04 -0400
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.53) by
 smtp.service.osu.edu (128.146.193.3) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5
 via Frontend Transport; Tue, 25 Aug 2020 15:44:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Htmyi2G0rZURDPZ3XYD4th+3+b0OHIIp1TXG9gq7tqvcd+SlKIrRpZfRDVUBW/KgFtIvjORsfpufkSCfiaIMhV3SI6dyQzyAGBd4dad7z0b9Kxmix9XOc6+PZzFm7eqfaBudR+jd7dpMAhMfbZAtEK/cBFX7RhQRCCi8MOat0IMCDa0T/8RMmXuuLlv3Sb3zGHs5n6wDOUqEo8j1EbL5swd+dLOBO9AUOyc6t/TSAXzGIlHH/0CIh8c8o6kMlKiwM0ztQSqZGaXZtXCKotE0+annqyjrRUiIKCsDCjOiUDVm5eV9mgjfnWrxXFnEeJEtY4VSRes/VqoIetUQql3txQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0HXBAuTZ9Qx2pqlLx4O9RHkLNJcVWBbsNXLCsRBgCWM=;
 b=D29C6D2tTgRMFO37aOs0ids9JNaI5Z1EsRFnzjXln1+mhRlVvCOe17/pah3tjG/nAUelGUdHPx+NPA6Ck5A/INU0AD2B5VU3FzWouw2hIuN7tCtIoVbSAGdE0buhUuK6jz2edartrdsG/y8LtpW9Fb6NShhCt+OBffeZre95Pke+Jtr+CGwvDAHm6WpM3RGMvpLB1RFZq6Py8heBw3o97xWjIk62pkygjAGjF4xLI6Ec1PURPM7crCscpuu7wiCuCyp3JziDL2VsNq6U5mnVMHrYzbFUh/kxWQkZIDuZsq87nEsPXMoWK0N3LDtM1/J2mW2A9e9xbAcmEFqAHsSLtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=osu.edu; dmarc=pass action=none header.from=osu.edu; dkim=pass
 header.d=osu.edu; arc=none
Received: from CO2PR01MB1957.prod.exchangelabs.com (2603:10b6:102:f::24) by
 MWHPR0101MB3038.prod.exchangelabs.com (2603:10b6:301:32::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.25; Tue, 25 Aug 2020 19:44:02 +0000
Received: from CO2PR01MB1957.prod.exchangelabs.com
 ([fe80::ec38:1ba8:948:806b]) by CO2PR01MB1957.prod.exchangelabs.com
 ([fe80::ec38:1ba8:948:806b%10]) with mapi id 15.20.3305.026; Tue, 25 Aug 2020
 19:44:02 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Libusb Problems on Windows
Thread-Index: AQHWexb5fYPTJItMoE2xEFXtYnNz/g==
Date: Tue, 25 Aug 2020 19:44:02 +0000
Message-ID: <CO2PR01MB1957753EF5C93FB368C5A79FA8570@CO2PR01MB1957.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: lists.ettus.com; dkim=none (message not
 signed) header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=osu.edu;
x-originating-ip: [69.14.208.36]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: d531e93e-7278-4c17-6e57-08d8492f3980
x-ms-traffictypediagnostic: MWHPR0101MB3038:|DM6PR01MB5689:
X-Microsoft-Antispam-PRVS: <DM6PR01MB568949F581C9920279684A8CA8570@DM6PR01MB5689.prod.exchangelabs.com>
x-header-sapphire: true
x-ms-oob-tlc-oobclassifiers: OLM:7219;OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 39J8IgBtSLo7NBFrfNQc/gw87qzx3vTUitC8r4GgsJUh9RcSJEmK/R4OUp6b5T245iOphGv/3IhBzMmUdF3Kkf/3/9hy+T1R/fUcoCgO1wRVQOSLmcMrtQIokAQ4DTWclfQt64ZdlyPVa0G6ou+qevXjwAwP8IW30qVSLWJO7nA31zW6aqFH8gAQ6XQ40dzke76J50uAZytqpY9S1H+uoWKqPV+ZExgGSe9ZJsAQIPvjIhlDzciTniJB8vY70j3EhM0Phzhe/zegqUriy0JMnEoQ824CrlzFUrgScztWq6ur6jiWH5jOGDiKh3VZjaZq5kL7wZCK3HpxrBiM0jfDYs9wJT5IJryY3hRbCr8eums3JaSL/C3n225PZv0XzyeIMaYdfZV1u4RMih2G7ei4rw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:CO2PR01MB1957.prod.exchangelabs.com; PTR:;
 CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(366004)(376002)(136003)(396003)(6506007)(26005)(186003)(91956017)(76116006)(5660300002)(66556008)(71200400001)(64756008)(6916009)(7696005)(19627405001)(66946007)(75432002)(55016002)(30864003)(52536014)(9686003)(66476007)(66446008)(2906002)(83380400001)(86362001)(45080400002)(8676002)(786003)(316002)(8936002)(3480700007)(33656002)(478600001)(460985005)(2480315003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: IUUpeg75doV/I0WmF9XG9o/xskHG+7hhKypYJ741++G1B4s+u2uIZaMQ1n/Ssc5BegNm3XPLGA/1//TRNIAWGbW1mKGLLgkI2YQl7ZwQ4pbBBE1joQwbamiTsweR9nHoW6Sv2RX82rURhx/kv1Gj0XV7eMH3jsDxedtHDRXemAR60qmdqpep8ixVIUnCwhyqPrVb2XmUjAsaCdYxIes+u1l6IhiGmYJBySp0SKSa14E4WwMJqCmZH6T5gKN50EH258V6tZ8EkQmrZTqxgSTXmbaBan8PJ6KCeI7W+vkyOBXgcqjqHGrSlrHY0SIN6iY0Ood0yk2Y6hitvD/bTalMueQDEBkJwKaBnzXEcvcRNqXEKxPdzDTLkEz+GOSBWOpUy9bcVrEaRsSFgQQa3VA8eD/QqcKMoKEYXwmUxOHpv9mKR4GURXCDUBOzc/YjMwYNhUCBTwhpIT/Ra9KT3RbzPssr5k47+3NkjLX8uQoo0aL/x6e1v7e1lTpgQ70m3rHsSAL8r4+AA4dZo3EVBkMmEBpTiUxX6AdKpZK/U1YC+BDLxwAKTpdvKdy09HJIb9G/9b2VXQ1kYw49nVZ/dcSFfEaZLu8m0EPfQHQ8NYYiXiykg2V8nDv1W3lu67i3XfGfudg4uTsuT1gE/8epc6ACDg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0101MB3038
x-header-osu-auth: True
X-CFilter-Loop: Reflected
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DM3NAM05FT036.eop-nam05.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 1d44860d-e3f6-417a-5448-08d8492f3821
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TxcdCl8IU90Kh2z8nyB+BK98qZL4Wu6pgRCiNimJCnOoJpZDoQJ842ileYU4JCvA2PhnRtFllAJqwhzwCCb0mixeV3Kfp4nMHT2DSxw4Twpmvf24eK9PyTtjmx+YQIhyTz9WrqlqJRKNCIwakahtMe8FeWa4Y5dwDwB3JU+cGiWuVALdyQ7x+DgPw5sXpsSkP2fcpjlGmdvo5w9N9bq5UgPUsKAza95fuBDssg5ZA2+aAtzirlN8Fjh3ddZ0bJgRHglMSKZz0zcsB4OJn9KrPPXtQJ789b59F/Zs9XCa9lh9oJqGp2GD6uraUn+OiCTG70pSLPS5GWc1txBqGeTOXjNdv2TGNsG84bcy1pnxf5uShVbaBk/XFQjglVK7VT6f9w57Y8X3ZWgO3PVM0mdeF6nGVF7qiFdlceHNv43PNQyNcKD/U8LRdMQyEeza8l5/hZHw/Omi9qj8A80x6czlOf2nthp8v2d6AZFHfiJBR0A=
X-Forefront-Antispam-Report: CIP:128.146.163.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:cio-tnc-esr06.osuad.osu.edu;
 PTR:cio-tnc-esr06.osuad.osu.edu; CAT:NONE;
 SFS:(4636009)(346002)(136003)(376002)(39860400002)(396003)(46966005)(45080400002)(8936002)(30864003)(5660300002)(52536014)(7696005)(8676002)(47076004)(19627405001)(478600001)(336012)(786003)(316002)(2906002)(186003)(6506007)(26005)(7596003)(75432002)(3480700007)(86362001)(33656002)(70586007)(356005)(55016002)(82740400003)(70206006)(82310400002)(9686003)(33310700002)(6916009)(83380400001)(460985005)(2480315003);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2020 19:44:04.9134 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d531e93e-7278-4c17-6e57-08d8492f3980
X-MS-Exchange-CrossTenant-Id: eb095636-1052-4895-952b-1ff9df1d1121
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eb095636-1052-4895-952b-1ff9df1d1121; Ip=[128.146.163.17];
 Helo=[cio-tnc-esr06.osuad.osu.edu]
X-MS-Exchange-CrossTenant-AuthSource: DM3NAM05FT036.eop-nam05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB5689
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-25_08:2020-08-25,
 2020-08-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0
 malwarescore=0 bulkscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 mlxlogscore=999 impostorscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008250146
Subject: [USRP-users] Libusb Problems on Windows
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
Content-Type: multipart/mixed; boundary="===============4647435605376777006=="
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

--===============4647435605376777006==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO2PR01MB1957753EF5C93FB368C5A79FA8570CO2PR01MB1957prod_"

--_000_CO2PR01MB1957753EF5C93FB368C5A79FA8570CO2PR01MB1957prod_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello everyone,



I am just getting started with software defined radio (Ettus E320) for work=
/school and am trying to install UHD on Windows 10.  I have followed the in=
structions on the ettus knowledge base website, and even though everything =
seems to install fine, I get some warnings in CMake and then similar errors=
 when I attempt to run executables, so something must have gone awry.  I ma=
y eventually backup my computer and switch everything over to dual boot in =
Linux to make this easier, but I thought I=92d try to get it working in Win=
dows a little longer first.



TL;DR version:

If I try to run UHD\bin\uhd_config_info.exe (or uhd_find_devices or any oth=
er executable) I get the error "The code execution cannot proceed because l=
ibusb-1.0.dll was not found.  Reinstalling the program may fix this problem=
."   I have tried moving the libusb files to different locations, using dif=
ferent versions of UHD/libusb, and recompiling everything, but the same mes=
sage appears.   LIBUSB_INCLUDE_DIRS is set to 'C:/libusb-1.0.23/include/lib=
usb-1.0 ' and LIBUSB_LIBRARIES is set to 'C:/libusb-1.0.23/MS64/dll/libusb-=
1.0.lib' in CMake and the dll is in the same directory as the lib file.



More details:

I have Windows 10, Visual Studio 2019, msvc 14.2, libusb 1.0.23 (also tried=
 1.0.22), cmake 3.18.2, boost 1.73, and python 3.8.5.  I use Ubuntu-WSL for=
 communicating with the E320 and have not had any issues doing that.  I run=
 everything as an administrator and use WSL to run executables with the sud=
o command, so I don=92t think file access is the issue. I have mostly been =
trying to use UHD 3.15.LTS to get it to work.



In CMake I get the warnings and missing packages included below.  There are=
 some references to libusb in the CMake log files as well and can include t=
hose outputs if they will help.



The installation in Visual Studio seems to run fine, but if I try to run C:=
\Program Files (x86)\UHD\bin\uhd_config_info.exe (or uhd_find_devices or an=
y other executable) I get the error "The code execution cannot proceed beca=
use libusb-1.0.dll was not found.  Reinstalling the program may fix this pr=
oblem."   LIBUSB_INCLUDE_DIRS is set to 'C:/libusb-1.0.23/include/libusb-1.=
0 'and LIBUSB_LIBRARIES is set to 'C:/libusb-1.0.23/MS64/dll/libusb-1.0.lib=
' in CMake.  I have tried it with the location =91C:\Users\myusername\libus=
b-1.0.23\=85=92  as well, but got the same problem.



The CMake output is below.  Hopefully that was enough information to at lea=
st get started on solving this, if I=92m missing any important details plea=
se let me know, and thanks in advance!



Selecting Windows SDK version 10.0.18362.0 to target Windows 10.0.18363.
The CXX compiler identification is MSVC 19.27.29111.0
The C compiler identification is MSVC 19.27.29111.0
Detecting CXX compiler ABI info
Detecting CXX compiler ABI info - done
Check for working CXX compiler: C:/Program Files (x86)/Microsoft Visual Stu=
dio/2019/Community/VC/Tools/MSVC/14.27.29110/bin/Hostx64/x64/cl.exe - skipp=
ed
Detecting CXX compile features
Detecting CXX compile features - done
Detecting C compiler ABI info
Detecting C compiler ABI info - done
Check for working C compiler: C:/Program Files (x86)/Microsoft Visual Studi=
o/2019/Community/VC/Tools/MSVC/14.27.29110/bin/Hostx64/x64/cl.exe - skipped
Detecting C compile features
Detecting C compile features - done

Configuring the Python interpreter...
Manually determining build Python version...
Python interpreter: C:/Users/marka/AppData/Local/Programs/Python/Python38/p=
ython.exe Version: 3.8.5
Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
Manually determining runtime Python version...
Python runtime interpreter: C:/Users/marka/AppData/Local/Programs/Python/Py=
thon38/python.exe Version: 3.8.5
Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
Finding Python Libraries...
Python Libraries: C:/Users/marka/AppData/Local/Programs/Python/Python38/lib=
s/python38.lib
Python include directories: C:/Users/marka/AppData/Local/Programs/Python/Py=
thon38/include
CMake Warning at cmake/Modules/UHDVersion.cmake:65 (message):
  Could not detect git executable! Could not determine exact version of UHD=
!
Call Stack (most recent call first):
  cmake/Modules/UHDPackage.cmake:9 (include)
  CMakeLists.txt:103 (include)


Using UHD Images Directory: C:\Program Files (x86)\UHD\share\uhd\images

Configuring Boost C++ Libraries...

Checking for Boost version 1.58 or greater
  Looking for required Boost components...
  Enabling Boost Error Code Header Only
    Disabling boost::asio use of std::string_view
  Boost version: 1.73.0
  Boost include directories: C:/Program Files/Boost/boost_1_73_0
  Boost library directories: C:/Program Files/Boost/boost_1_73_0/lib64-msvc=
-14.2
  Boost libraries:
Looking for Boost version 1.58 or greater - found

Python checking for Python version 2.7 or greater
Python checking for Python version 2.7 or greater - found

Python checking for Mako templates 0.4.2 or greater
Python checking for Mako templates 0.4.2 or greater - found

Python checking for requests 2.0 or greater
Python checking for requests 2.0 or greater - found

Python checking for numpy 1.7 or greater
Python checking for numpy 1.7 or greater - "import numpy" failed

Configuring LibUHD support...
  Dependency Boost_FOUND =3D TRUE
  Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE
  Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE
  Enabling LibUHD support.
  Override with -DENABLE_LIBUHD=3DON/OFF

Configuring LibUHD - C API support...
  Dependency ENABLE_LIBUHD =3D ON
  Enabling LibUHD - C API support.
  Override with -DENABLE_C_API=3DON/OFF

Configuring LibUHD - Python API support...
  Dependency ENABLE_LIBUHD =3D ON
  Dependency HAVE_PYTHON_MODULE_NUMPY =3D FALSE
  Dependency HAVE_PYTHON_LIBS =3D TRUE
  Disabling LibUHD - Python API support.
  Override with -DENABLE_PYTHON_API=3DON/OFF

Configuring Examples support...
  Dependency ENABLE_LIBUHD =3D ON
  Enabling Examples support.
  Override with -DENABLE_EXAMPLES=3DON/OFF

Configuring Utils support...
  Dependency ENABLE_LIBUHD =3D ON
  Enabling Utils support.
  Override with -DENABLE_UTILS=3DON/OFF

Configuring Tests support...
  Dependency ENABLE_LIBUHD =3D ON
  Enabling Tests support.
  Override with -DENABLE_TESTS=3DON/OFF

CMake Warning (dev) at C:/Program Files/CMake/share/cmake-3.18/Modules/Find=
PackageHandleStandardArgs.cmake:273 (message):
  The package name passed to `find_package_handle_standard_args` (PkgConfig=
)
  does not match the name of the calling package (USB1).  This can lead to
  problems in calling code that expects `find_package` result variables
  (e.g., `_FOUND`) to follow a certain pattern.
Call Stack (most recent call first):
  C:/Program Files/CMake/share/cmake-3.18/Modules/FindPkgConfig.cmake:59 (f=
ind_package_handle_standard_args)
  cmake/Modules/FindUSB1.cmake:6 (include)
  lib/CMakeLists.txt:62 (find_package)
This warning is for project developers.  Use -Wno-dev to suppress it.

Could NOT find PkgConfig (missing: PKG_CONFIG_EXECUTABLE)
CMake Warning (dev) at C:/Program Files/CMake/share/cmake-3.18/Modules/Find=
PackageHandleStandardArgs.cmake:273 (message):
  The package name passed to `find_package_handle_standard_args` (LIBUSB)
  does not match the name of the calling package (USB1).  This can lead to
  problems in calling code that expects `find_package` result variables
  (e.g., `_FOUND`) to follow a certain pattern.
Call Stack (most recent call first):
  cmake/Modules/FindUSB1.cmake:61 (FIND_PACKAGE_HANDLE_STANDARD_ARGS)
  lib/CMakeLists.txt:62 (find_package)
This warning is for project developers.  Use -Wno-dev to suppress it.

Could NOT find PkgConfig (missing: PKG_CONFIG_EXECUTABLE)
Could NOT find LIBERIO (missing: LIBERIO_LIBRARY LIBERIO_INCLUDE_DIR)
Could NOT find DPDK: Found unsuitable version ".", but required is exact ve=
rsion "17.11" (found DPDK_INCLUDE_CONFIG_DIR-NOTFOUND;DPDK_INCLUDE_ETHDEV_D=
IR-NOTFOUND)

Configuring LIBERIO support...
  Dependency ENABLE_LIBUHD =3D ON
  Dependency LIBERIO_FOUND =3D FALSE
  Disabling LIBERIO support.
  Override with -DENABLE_LIBERIO=3DON/OFF

Configuring USB support...
  Dependency ENABLE_LIBUHD =3D ON
  Dependency LIBUSB_FOUND =3D TRUE
  Enabling USB support.
  Override with -DENABLE_USB=3DON/OFF

Configuring B100 support...
  Dependency ENABLE_LIBUHD =3D ON
  Dependency ENABLE_USB =3D ON
  Enabling B100 support.
  Override with -DENABLE_B100=3DON/OFF

Configuring B200 support...
  Dependency ENABLE_LIBUHD =3D ON
  Dependency ENABLE_USB =3D ON
  Enabling B200 support.
  Override with -DENABLE_B200=3DON/OFF

Configuring USRP1 support...
  Dependency ENABLE_LIBUHD =3D ON
  Dependency ENABLE_USB =3D ON
  Enabling USRP1 support.
  Override with -DENABLE_USRP1=3DON/OFF

Configuring USRP2 support...
  Dependency ENABLE_LIBUHD =3D ON
  Enabling USRP2 support.
  Override with -DENABLE_USRP2=3DON/OFF

Configuring X300 support...
  Dependency ENABLE_LIBUHD =3D ON
  Enabling X300 support.
  Override with -DENABLE_X300=3DON/OFF

Configuring N230 support...
  Dependency ENABLE_LIBUHD =3D ON
  Enabling N230 support.
  Override with -DENABLE_N230=3DON/OFF

Configuring MPMD support...
  Dependency ENABLE_LIBUHD =3D ON
  Enabling MPMD support.
  Override with -DENABLE_MPMD=3DON/OFF

Configuring N300 support...
  Dependency ENABLE_LIBUHD =3D ON
  Dependency ENABLE_MPMD =3D ON
  Enabling N300 support.
  Override with -DENABLE_N300=3DON/OFF

Configuring N320 support...
  Dependency ENABLE_LIBUHD =3D ON
  Dependency ENABLE_MPMD =3D ON
  Enabling N320 support.
  Override with -DENABLE_N320=3DON/OFF

Configuring E320 support...
  Dependency ENABLE_LIBUHD =3D ON
  Dependency ENABLE_MPMD =3D ON
  Enabling E320 support.
  Override with -DENABLE_E320=3DON/OFF

Configuring E300 support...
  Dependency ENABLE_LIBUHD =3D ON
  Dependency ENABLE_MPMD =3D ON
  Enabling E300 support.
  Override with -DENABLE_E300=3DON/OFF

Configuring OctoClock support...
  Dependency ENABLE_LIBUHD =3D ON
  Enabling OctoClock support.
  Override with -DENABLE_OCTOCLOCK=3DON/OFF

Configuring DPDK support...
  Dependency ENABLE_MPMD =3D ON
  Dependency DPDK_FOUND =3D FALSE
  Disabling DPDK support.
  Override with -DENABLE_DPDK=3DON/OFF


Configuring priority scheduling...
  Priority scheduling supported through windows SetThreadPriority.
  Setting thread names is not supported.

Configuring high resolution timing...
  High resolution timing supported through QueryPerformanceCounter.

Configuring module loading...
  Module loading supported through LoadLibrary.

Processing NI-RIO FPGA LVBITX Bitstreams...
  Using x300.lvbitx_base for codegen
  Using x310.lvbitx_base for codegen

USB support enabled via libusb.

Configuring interface address discovery...
  Interface address discovery supported through SIO_GET_INTERFACE_LIST.

Loading build info.
Could NOT find Curses (missing: CURSES_LIBRARY CURSES_INCLUDE_PATH)

Adding B2XX device test target
Adding X3x0 device test target
Adding E3XX device test target
Adding N3XX device test target
Adding E32x device test target

Could NOT find Curses (missing: CURSES_LIBRARY CURSES_INCLUDE_PATH)
Could NOT find Doxygen (missing: DOXYGEN_EXECUTABLE)

Configuring Manual support...
  Dependency DOXYGEN_FOUND =3D NO
  Disabling Manual support.
  Override with -DENABLE_MANUAL=3DON/OFF

Configuring API/Doxygen support...
  Dependency DOXYGEN_FOUND =3D NO
  Disabling API/Doxygen support.
  Override with -DENABLE_DOXYGEN=3DON/OFF

Compressed Man Pages disabled
  Override with -DENABLE_MAN_PAGE_COMPRESSION=3DON/OFF

Configuring Man Pages support...
  Dependency NOT_WIN32 =3D
  Disabling Man Pages support.
  Override with -DENABLE_MAN_PAGES=3DON/OFF

######################################################
# UHD enabled components
######################################################
  * LibUHD
  * LibUHD - C API
  * Examples
  * Utils
  * Tests
  * USB
  * B100
  * B200
  * USRP1
  * USRP2
  * X300
  * N230
  * MPMD
  * N300
  * N320
  * E320
  * E300
  * OctoClock

######################################################
# UHD disabled components
######################################################
  * LibUHD - Python API
  * LIBERIO
  * DPDK
  * Manual
  * API/Doxygen
  * Man Pages

Building version: 3.15.0.0-0-unknown
Using install prefix: C:/Program Files (x86)/UHD
Configuring done
Generating done



Mark



--_000_CO2PR01MB1957753EF5C93FB368C5A79FA8570CO2PR01MB1957prod_
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<div class=3D"rps_5201">
<div lang=3D"EN-US">
<div class=3D"x_WordSection1">
<div class=3D"rps_5201">
<div lang=3D"EN-US">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;"><sp=
an style=3D"color:black">Hello everyone,</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;"><sp=
an style=3D"color:black">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;"><sp=
an style=3D"color:black">I am just getting started with software defined ra=
dio (Ettus E320) for work/school and am trying to install UHD on Windows 10=
.&nbsp; I have followed the instructions on
 the ettus knowledge base website, and even though everything seems to inst=
all fine, I get some warnings in CMake and then similar errors when I attem=
pt to run executables, so something must have gone awry.&nbsp; I may eventu=
ally backup my computer and switch everything
 over to dual boot in Linux to make this easier, but I thought I=92d try to=
 get it working in Windows a little longer first.</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;"><sp=
an style=3D"color:black">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;"><sp=
an style=3D"color:black">TL;DR version:</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;"><sp=
an style=3D"color:black">If I try to run UHD\bin\uhd_config_info.exe (or uh=
d_find_devices or any other executable) I get the error &quot;The code exec=
ution cannot proceed because libusb-1.0.dll
 was not found.&nbsp; Reinstalling the program may fix this problem.&quot;&=
nbsp;&nbsp; I have tried moving the libusb files to different locations, us=
ing different versions of UHD/libusb, and recompiling everything, but the s=
ame message appears. &nbsp;&nbsp;LIBUSB_INCLUDE_DIRS is set to
 'C:/libusb-1.0.23/include/libusb-1.0 ' and LIBUSB_LIBRARIES is set to 'C:/=
libusb-1.0.23/MS64/dll/libusb-1.0.lib' in CMake and the dll is in the same =
directory as the lib file.</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;">&nb=
sp;</p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;">Mor=
e details:<span style=3D"color:black"><br>
</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;"><sp=
an style=3D"color:black">I have Windows 10, Visual Studio 2019, msvc 14.2, =
libusb 1.0.23 (also tried 1.0.22), cmake 3.18.2, boost 1.73, and python 3.8=
.5.&nbsp; I use Ubuntu-WSL for communicating
 with the E320 and have not had any issues doing that.&nbsp; I run everythi=
ng as an administrator and use WSL to run executables with the sudo command=
, so I don=92t think file access is the issue. I have mostly been trying to=
 use UHD 3.15.LTS to get it to work.<br>
</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;">&nb=
sp;</p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;">In =
CMake I get the warnings and missing packages included below. &nbsp;There a=
re some references to libusb in the CMake log files as well and can include=
 those outputs if they will help.</p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;">&nb=
sp;</p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;"><sp=
an style=3D"color:black">The installation in Visual Studio seems to run fin=
e, but if I try to run C:\Program Files (x86)\UHD\bin\uhd_config_info.exe (=
or uhd_find_devices or any other executable)
 I get the error &quot;The code execution cannot proceed because libusb-1.0=
.dll was not found.&nbsp; Reinstalling the program may fix this problem.&qu=
ot;&nbsp; &nbsp;LIBUSB_INCLUDE_DIRS is set to 'C:/libusb-1.0.23/include/lib=
usb-1.0 'and LIBUSB_LIBRARIES is set to 'C:/libusb-1.0.23/MS64/dll/libusb-1=
.0.lib'
 in CMake.&nbsp; I have tried it with the location =91C:\Users\myusername\l=
ibusb-1.0.23\=85=92 &nbsp;as well, but got the same problem.&nbsp;
<br>
</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;"><sp=
an style=3D"color:black">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;"><sp=
an style=3D"color:black">The CMake output is below.&nbsp; Hopefully that wa=
s enough information to at least get started on solving this, if I=92m miss=
ing any important details please let me know,
 and thanks in advance!</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;">&nb=
sp;</p>
Selecting Windows SDK version 10.0.18362.0 to target Windows 10.0.18363.
<div>The CXX compiler identification is MSVC 19.27.29111.0</div>
<div>The C compiler identification is MSVC 19.27.29111.0</div>
<div>Detecting CXX compiler ABI info</div>
<div>Detecting CXX compiler ABI info - done</div>
<div>Check for working CXX compiler: C:/Program Files (x86)/Microsoft Visua=
l Studio/2019/Community/VC/Tools/MSVC/14.27.29110/bin/Hostx64/x64/cl.exe - =
skipped</div>
<div>Detecting CXX compile features</div>
<div>Detecting CXX compile features - done</div>
<div>Detecting C compiler ABI info</div>
<div>Detecting C compiler ABI info - done</div>
<div>Check for working C compiler: C:/Program Files (x86)/Microsoft Visual =
Studio/2019/Community/VC/Tools/MSVC/14.27.29110/bin/Hostx64/x64/cl.exe - sk=
ipped</div>
<div>Detecting C compile features</div>
<div>Detecting C compile features - done</div>
<div><br>
</div>
<div>Configuring the Python interpreter...</div>
<div>Manually determining build Python version...</div>
<div>Python interpreter: C:/Users/marka/AppData/Local/Programs/Python/Pytho=
n38/python.exe Version: 3.8.5</div>
<div>Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;</div>
<div>Manually determining runtime Python version...</div>
<div>Python runtime interpreter: C:/Users/marka/AppData/Local/Programs/Pyth=
on/Python38/python.exe Version: 3.8.5</div>
<div>Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;</d=
iv>
<div>Finding Python Libraries...</div>
<div>Python Libraries: C:/Users/marka/AppData/Local/Programs/Python/Python3=
8/libs/python38.lib</div>
<div>Python include directories: C:/Users/marka/AppData/Local/Programs/Pyth=
on/Python38/include</div>
<div>CMake Warning at cmake/Modules/UHDVersion.cmake:65 (message):</div>
<div>&nbsp; Could not detect git executable! Could not determine exact vers=
ion of UHD!</div>
<div>Call Stack (most recent call first):</div>
<div>&nbsp; cmake/Modules/UHDPackage.cmake:9 (include)</div>
<div>&nbsp; CMakeLists.txt:103 (include)</div>
<div><br>
</div>
<div><br>
</div>
<div>Using UHD Images Directory: C:\Program Files (x86)\UHD\share\uhd\image=
s</div>
<div><br>
</div>
<div>Configuring Boost C++ Libraries...</div>
<div><br>
</div>
<div>Checking for Boost version 1.58 or greater</div>
<div>&nbsp; Looking for required Boost components...</div>
<div>&nbsp; Enabling Boost Error Code Header Only</div>
<div>&nbsp; &nbsp; Disabling boost::asio use of std::string_view</div>
<div>&nbsp; Boost version: 1.73.0</div>
<div>&nbsp; Boost include directories: C:/Program Files/Boost/boost_1_73_0<=
/div>
<div>&nbsp; Boost library directories: C:/Program Files/Boost/boost_1_73_0/=
lib64-msvc-14.2</div>
<div>&nbsp; Boost libraries: </div>
<div>Looking for Boost version 1.58 or greater - found</div>
<div><br>
</div>
<div>Python checking for Python version 2.7 or greater</div>
<div>Python checking for Python version 2.7 or greater - found</div>
<div><br>
</div>
<div>Python checking for Mako templates 0.4.2 or greater</div>
<div>Python checking for Mako templates 0.4.2 or greater - found</div>
<div><br>
</div>
<div>Python checking for requests 2.0 or greater</div>
<div>Python checking for requests 2.0 or greater - found</div>
<div><br>
</div>
<div>Python checking for numpy 1.7 or greater</div>
<div>Python checking for numpy 1.7 or greater - &quot;import numpy&quot; fa=
iled</div>
<div><br>
</div>
<div>Configuring LibUHD support...</div>
<div>&nbsp; Dependency Boost_FOUND =3D TRUE</div>
<div>&nbsp; Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE</div>
<div>&nbsp; Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE</div>
<div>&nbsp; Enabling LibUHD support.</div>
<div>&nbsp; Override with -DENABLE_LIBUHD=3DON/OFF</div>
<div><br>
</div>
<div>Configuring LibUHD - C API support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Enabling LibUHD - C API support.</div>
<div>&nbsp; Override with -DENABLE_C_API=3DON/OFF</div>
<div><br>
</div>
<div>Configuring LibUHD - Python API support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Dependency HAVE_PYTHON_MODULE_NUMPY =3D FALSE</div>
<div>&nbsp; Dependency HAVE_PYTHON_LIBS =3D TRUE</div>
<div>&nbsp; Disabling LibUHD - Python API support.</div>
<div>&nbsp; Override with -DENABLE_PYTHON_API=3DON/OFF</div>
<div><br>
</div>
<div>Configuring Examples support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Enabling Examples support.</div>
<div>&nbsp; Override with -DENABLE_EXAMPLES=3DON/OFF</div>
<div><br>
</div>
<div>Configuring Utils support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Enabling Utils support.</div>
<div>&nbsp; Override with -DENABLE_UTILS=3DON/OFF</div>
<div><br>
</div>
<div>Configuring Tests support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Enabling Tests support.</div>
<div>&nbsp; Override with -DENABLE_TESTS=3DON/OFF</div>
<div><br>
</div>
<div>CMake Warning (dev) at C:/Program Files/CMake/share/cmake-3.18/Modules=
/FindPackageHandleStandardArgs.cmake:273 (message):</div>
<div>&nbsp; The package name passed to `find_package_handle_standard_args` =
(PkgConfig)</div>
<div>&nbsp; does not match the name of the calling package (USB1). &nbsp;Th=
is can lead to</div>
<div>&nbsp; problems in calling code that expects `find_package` result var=
iables</div>
<div>&nbsp; (e.g., `_FOUND`) to follow a certain pattern.</div>
<div>Call Stack (most recent call first):</div>
<div>&nbsp; C:/Program Files/CMake/share/cmake-3.18/Modules/FindPkgConfig.c=
make:59 (find_package_handle_standard_args)</div>
<div>&nbsp; cmake/Modules/FindUSB1.cmake:6 (include)</div>
<div>&nbsp; lib/CMakeLists.txt:62 (find_package)</div>
<div>This warning is for project developers. &nbsp;Use -Wno-dev to suppress=
 it.</div>
<div><br>
</div>
<div>Could NOT find PkgConfig (missing: PKG_CONFIG_EXECUTABLE) </div>
<div>CMake Warning (dev) at C:/Program Files/CMake/share/cmake-3.18/Modules=
/FindPackageHandleStandardArgs.cmake:273 (message):</div>
<div>&nbsp; The package name passed to `find_package_handle_standard_args` =
(LIBUSB)</div>
<div>&nbsp; does not match the name of the calling package (USB1). &nbsp;Th=
is can lead to</div>
<div>&nbsp; problems in calling code that expects `find_package` result var=
iables</div>
<div>&nbsp; (e.g., `_FOUND`) to follow a certain pattern.</div>
<div>Call Stack (most recent call first):</div>
<div>&nbsp; cmake/Modules/FindUSB1.cmake:61 (FIND_PACKAGE_HANDLE_STANDARD_A=
RGS)</div>
<div>&nbsp; lib/CMakeLists.txt:62 (find_package)</div>
<div>This warning is for project developers. &nbsp;Use -Wno-dev to suppress=
 it.</div>
<div><br>
</div>
<div>Could NOT find PkgConfig (missing: PKG_CONFIG_EXECUTABLE) </div>
<div>Could NOT find LIBERIO (missing: LIBERIO_LIBRARY LIBERIO_INCLUDE_DIR) =
</div>
<div>Could NOT find DPDK: Found unsuitable version &quot;.&quot;, but requi=
red is exact version &quot;17.11&quot; (found DPDK_INCLUDE_CONFIG_DIR-NOTFO=
UND;DPDK_INCLUDE_ETHDEV_DIR-NOTFOUND)</div>
<div><br>
</div>
<div>Configuring LIBERIO support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Dependency LIBERIO_FOUND =3D FALSE</div>
<div>&nbsp; Disabling LIBERIO support.</div>
<div>&nbsp; Override with -DENABLE_LIBERIO=3DON/OFF</div>
<div><br>
</div>
<div>Configuring USB support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Dependency LIBUSB_FOUND =3D TRUE</div>
<div>&nbsp; Enabling USB support.</div>
<div>&nbsp; Override with -DENABLE_USB=3DON/OFF</div>
<div><br>
</div>
<div>Configuring B100 support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Dependency ENABLE_USB =3D ON</div>
<div>&nbsp; Enabling B100 support.</div>
<div>&nbsp; Override with -DENABLE_B100=3DON/OFF</div>
<div><br>
</div>
<div>Configuring B200 support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Dependency ENABLE_USB =3D ON</div>
<div>&nbsp; Enabling B200 support.</div>
<div>&nbsp; Override with -DENABLE_B200=3DON/OFF</div>
<div><br>
</div>
<div>Configuring USRP1 support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Dependency ENABLE_USB =3D ON</div>
<div>&nbsp; Enabling USRP1 support.</div>
<div>&nbsp; Override with -DENABLE_USRP1=3DON/OFF</div>
<div><br>
</div>
<div>Configuring USRP2 support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Enabling USRP2 support.</div>
<div>&nbsp; Override with -DENABLE_USRP2=3DON/OFF</div>
<div><br>
</div>
<div>Configuring X300 support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Enabling X300 support.</div>
<div>&nbsp; Override with -DENABLE_X300=3DON/OFF</div>
<div><br>
</div>
<div>Configuring N230 support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Enabling N230 support.</div>
<div>&nbsp; Override with -DENABLE_N230=3DON/OFF</div>
<div><br>
</div>
<div>Configuring MPMD support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Enabling MPMD support.</div>
<div>&nbsp; Override with -DENABLE_MPMD=3DON/OFF</div>
<div><br>
</div>
<div>Configuring N300 support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Dependency ENABLE_MPMD =3D ON</div>
<div>&nbsp; Enabling N300 support.</div>
<div>&nbsp; Override with -DENABLE_N300=3DON/OFF</div>
<div><br>
</div>
<div>Configuring N320 support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Dependency ENABLE_MPMD =3D ON</div>
<div>&nbsp; Enabling N320 support.</div>
<div>&nbsp; Override with -DENABLE_N320=3DON/OFF</div>
<div><br>
</div>
<div>Configuring E320 support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Dependency ENABLE_MPMD =3D ON</div>
<div>&nbsp; Enabling E320 support.</div>
<div>&nbsp; Override with -DENABLE_E320=3DON/OFF</div>
<div><br>
</div>
<div>Configuring E300 support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Dependency ENABLE_MPMD =3D ON</div>
<div>&nbsp; Enabling E300 support.</div>
<div>&nbsp; Override with -DENABLE_E300=3DON/OFF</div>
<div><br>
</div>
<div>Configuring OctoClock support...</div>
<div>&nbsp; Dependency ENABLE_LIBUHD =3D ON</div>
<div>&nbsp; Enabling OctoClock support.</div>
<div>&nbsp; Override with -DENABLE_OCTOCLOCK=3DON/OFF</div>
<div><br>
</div>
<div>Configuring DPDK support...</div>
<div>&nbsp; Dependency ENABLE_MPMD =3D ON</div>
<div>&nbsp; Dependency DPDK_FOUND =3D FALSE</div>
<div>&nbsp; Disabling DPDK support.</div>
<div>&nbsp; Override with -DENABLE_DPDK=3DON/OFF</div>
<div><br>
</div>
<div><br>
</div>
<div>Configuring priority scheduling...</div>
<div>&nbsp; Priority scheduling supported through windows SetThreadPriority=
.</div>
<div>&nbsp; Setting thread names is not supported.</div>
<div><br>
</div>
<div>Configuring high resolution timing...</div>
<div>&nbsp; High resolution timing supported through QueryPerformanceCounte=
r.</div>
<div><br>
</div>
<div>Configuring module loading...</div>
<div>&nbsp; Module loading supported through LoadLibrary.</div>
<div><br>
</div>
<div>Processing NI-RIO FPGA LVBITX Bitstreams...</div>
<div>&nbsp; Using x300.lvbitx_base for codegen</div>
<div>&nbsp; Using x310.lvbitx_base for codegen</div>
<div><br>
</div>
<div>USB support enabled via libusb.</div>
<div><br>
</div>
<div>Configuring interface address discovery...</div>
<div>&nbsp; Interface address discovery supported through SIO_GET_INTERFACE=
_LIST.</div>
<div><br>
</div>
<div>Loading build info.</div>
<div>Could NOT find Curses (missing: CURSES_LIBRARY CURSES_INCLUDE_PATH) </=
div>
<div><br>
</div>
<div>Adding B2XX device test target</div>
<div>Adding X3x0 device test target</div>
<div>Adding E3XX device test target</div>
<div>Adding N3XX device test target</div>
<div>Adding E32x device test target</div>
<div><br>
</div>
<div>Could NOT find Curses (missing: CURSES_LIBRARY CURSES_INCLUDE_PATH) </=
div>
<div>Could NOT find Doxygen (missing: DOXYGEN_EXECUTABLE) </div>
<div><br>
</div>
<div>Configuring Manual support...</div>
<div>&nbsp; Dependency DOXYGEN_FOUND =3D NO</div>
<div>&nbsp; Disabling Manual support.</div>
<div>&nbsp; Override with -DENABLE_MANUAL=3DON/OFF</div>
<div><br>
</div>
<div>Configuring API/Doxygen support...</div>
<div>&nbsp; Dependency DOXYGEN_FOUND =3D NO</div>
<div>&nbsp; Disabling API/Doxygen support.</div>
<div>&nbsp; Override with -DENABLE_DOXYGEN=3DON/OFF</div>
<div><br>
</div>
<div>Compressed Man Pages disabled</div>
<div>&nbsp; Override with -DENABLE_MAN_PAGE_COMPRESSION=3DON/OFF</div>
<div><br>
</div>
<div>Configuring Man Pages support...</div>
<div>&nbsp; Dependency NOT_WIN32 =3D </div>
<div>&nbsp; Disabling Man Pages support.</div>
<div>&nbsp; Override with -DENABLE_MAN_PAGES=3DON/OFF</div>
<div><br>
</div>
<div>######################################################</div>
<div># UHD enabled components &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>######################################################</div>
<div>&nbsp; * LibUHD</div>
<div>&nbsp; * LibUHD - C API</div>
<div>&nbsp; * Examples</div>
<div>&nbsp; * Utils</div>
<div>&nbsp; * Tests</div>
<div>&nbsp; * USB</div>
<div>&nbsp; * B100</div>
<div>&nbsp; * B200</div>
<div>&nbsp; * USRP1</div>
<div>&nbsp; * USRP2</div>
<div>&nbsp; * X300</div>
<div>&nbsp; * N230</div>
<div>&nbsp; * MPMD</div>
<div>&nbsp; * N300</div>
<div>&nbsp; * N320</div>
<div>&nbsp; * E320</div>
<div>&nbsp; * E300</div>
<div>&nbsp; * OctoClock</div>
<div><br>
</div>
<div>######################################################</div>
<div># UHD disabled components &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </div>
<div>######################################################</div>
<div>&nbsp; * LibUHD - Python API</div>
<div>&nbsp; * LIBERIO</div>
<div>&nbsp; * DPDK</div>
<div>&nbsp; * Manual</div>
<div>&nbsp; * API/Doxygen</div>
<div>&nbsp; * Man Pages</div>
<div><br>
</div>
<div>Building version: 3.15.0.0-0-unknown</div>
<div>Using install prefix: C:/Program Files (x86)/UHD</div>
<div>Configuring done</div>
Generating done<br>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin:0in; margin-bottom:.=
0001pt">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">&nbsp;</span></p=
>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin:0in; margin-bottom:.=
0001pt">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Mark</span></p>
</div>
</div>
</div>
<br>
</div>
</div>
</div>
<br>
</div>
</body>
</html>

--_000_CO2PR01MB1957753EF5C93FB368C5A79FA8570CO2PR01MB1957prod_--


--===============4647435605376777006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4647435605376777006==--

