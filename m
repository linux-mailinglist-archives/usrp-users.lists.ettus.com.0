Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7642B10092A
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2019 17:25:11 +0100 (CET)
Received: from [::1] (port=58884 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWjpt-0007rk-Go; Mon, 18 Nov 2019 11:25:09 -0500
Received: from mail-eopbgr800115.outbound.protection.outlook.com
 ([40.107.80.115]:26267 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ilbeeman@wpi.edu>) id 1iWjpq-0007n9-1i
 for usrp-users@lists.ettus.com; Mon, 18 Nov 2019 11:25:06 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IUBzFprwu1PIgWanf/3jxJsUvw5ldMsgzzMYlCEZmKGa9EAh7jPVNGKAYPVQegHqpT4jqnop2K1VdQxkw2HYuBF8X2TnHlM6mBEphDt9eo7IN6m5Boqxb9ViFnKbMBC2Id/AvvCVSmorUy7/AuJ2RoUG0DPfwEZ85XgoH7Cc8tPwsi8lXm8UUHSNdHJOfelK+vDMwqvC1D7pszhfcXn3jUZc5+AAJc6dFEsl85aTsZOml8jX3pZgljjq+blNfiKIEUaHbR9yp5mytx4bUYXT38fZbebgBR/Xy4zOZYUFKDyvSJ3XFeN4+ockfkdI0KAv/Yb7sWxguoj0G1x7Jp2nxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rnAJf5OmdhhMKxaD9NSi0ksrS6t58DlsyUmuuTdiKRA=;
 b=fqYd6h27jHE7EDxYOQTqyIC7wT+kuaL/FMSg3jUxmgaF/WK/fcMRIc/x3q5EoRyeherncbRxr+GN+LFNxl7NHHlKtxdIcU8HZR+mKlA9GiktXJf2fcc4upwYtywq1CzH1/8evunVluWefatylX0Yw55NYv5zKSML7FrJTFr8C2ziCO52BAkF1v421tYCFjufWUnScNtVFhEs90x3NmBu3fYErPmjMDYorlV+JlX/Q5CFaTZGOwjlq96u1OsWhyNIO0wAEVGjHMuHvr7IeuwSck112n9I/ngaVFCa6GgVgK7e+e/bQJ4G2iLpU2SETLf8Pbu0Sd4iKGajzFfnEA7Srg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rnAJf5OmdhhMKxaD9NSi0ksrS6t58DlsyUmuuTdiKRA=;
 b=h/7iYpVxtS0oN5nKWM2uXLz0yUTvijiEEoFmXeEbqtrh8v3gG+EZ9v5cf5+1RrqSLDwxbGQEI8JD7LxWHbg0lSkFRUUpg+ZAedRxrPT1cu8wGh2dA2mqgqP+K+5fmoS+TpwJidgluPpHTwsa25yoHB9dWZfV2v/sZco6balQKVQ=
Received: from BN7PR01MB3859.prod.exchangelabs.com (52.132.5.158) by
 BN7PR01MB3730.prod.exchangelabs.com (52.132.6.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Mon, 18 Nov 2019 16:24:22 +0000
Received: from BN7PR01MB3859.prod.exchangelabs.com
 ([fe80::9cd7:c5cd:abdb:4cc7]) by BN7PR01MB3859.prod.exchangelabs.com
 ([fe80::9cd7:c5cd:abdb:4cc7%2]) with mapi id 15.20.2451.029; Mon, 18 Nov 2019
 16:24:22 +0000
To: Samuel Prager <sprager@usc.edu>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [EXT] Re: [USRP-users] Question about the IMU (MPU-9150) on the
 E310
Thread-Index: AdWZb3mZFAIglF61Tj2+JVs4nO8D5wAKFyaAAATtiIABIAZ0Wg==
Date: Mon, 18 Nov 2019 16:24:22 +0000
Message-ID: <BN7PR01MB3859F631BBBA41B8AA029C15CB4D0@BN7PR01MB3859.prod.exchangelabs.com>
References: <BN7PR01MB3859F04224D313F8F5F458C6CB770@BN7PR01MB3859.prod.exchangelabs.com>
 <CAGNhwTOTi=LN+g-qCdK3_7XW6FZkDvRDbTaWZQpOrunQAFDhdg@mail.gmail.com>,
 <6bafb417-0ef5-4654-85bd-9a519c733590@Spark>
In-Reply-To: <6bafb417-0ef5-4654-85bd-9a519c733590@Spark>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ilbeeman@wpi.edu; 
x-originating-ip: [130.215.126.118]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b4baf24-63ee-475f-818f-08d76c43c531
x-ms-traffictypediagnostic: BN7PR01MB3730:
x-microsoft-antispam-prvs: <BN7PR01MB3730915DE845AA1485195214CB4D0@BN7PR01MB3730.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0225B0D5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(396003)(376002)(39860400002)(346002)(13464003)(189003)(199004)(64756008)(66556008)(66446008)(9686003)(6306002)(55016002)(478600001)(54896002)(76176011)(66946007)(102836004)(6436002)(6506007)(53546011)(6246003)(14444005)(256004)(71190400001)(71200400001)(66066001)(3846002)(2906002)(6116002)(7696005)(236005)(88552002)(33656002)(2501003)(229853002)(86362001)(81156014)(81166006)(8936002)(8676002)(66476007)(476003)(19627405001)(74316002)(105004)(76116006)(11346002)(446003)(2171002)(486006)(7736002)(110136005)(606006)(186003)(75432002)(5660300002)(316002)(26005)(296002)(25786009)(786003)(966005)(52536014)(14454004)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN7PR01MB3730;
 H:BN7PR01MB3859.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wpi.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VDff00hrbB08Nsrh/R7u8qfhbsdwmbpjXENK+CoXvuIubY0GGZtoMz0ymkRoGti1TBKIYrycVoSg5/sQWlcIXVkYa646XaqZ+1b8WFxoqtiiEcBAx9zTcxJStUI1zIvRu4LnPlQNoA1N31qWEuAcl4VkYRGjYRp1e0IJKTfeOCwGOMMdyGxeQbjZoIb68qY6wXP4JVpV5GJdNR0w/8aSAn6oAqNLS9FwSuf1rBhvvAuqUbso9QJ60wURWxjOiMtsGcY33SPoBlvvsYHLvky0It4003Wo0dftA3pTQXCVqeWiOEBY6zn19GQqpC/53qexszrwCL0E3XbVkUMhWfgB3/9/aGwDCG4sHNSQrQKR3CQU5oP/69+Qwz3+9eZu7tpZ/mNmYEonhHsay2QHpEIZ/35qyaF+lGEz30yFkuWofrIkL2Ns9CgNOm2MDgqoJf3x
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b4baf24-63ee-475f-818f-08d76c43c531
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2019 16:24:22.0840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sh4PBVWgYTtvKQd3Bfkjs4tIxO0J2bEV72P6wRuh4dHBhK7Ba181sg5x988gKxZeAEVJEEPr6n7VRkrSjzimRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR01MB3730
Subject: Re: [USRP-users] [EXT] Re: Question about the IMU (MPU-9150) on the
 E310
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
From: "Beeman, Isaac L. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Beeman, Isaac L." <ilbeeman@wpi.edu>
Content-Type: multipart/mixed; boundary="===============2420398405752874993=="
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

--===============2420398405752874993==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR01MB3859F631BBBA41B8AA029C15CB4D0BN7PR01MB3859prod_"

--_000_BN7PR01MB3859F631BBBA41B8AA029C15CB4D0BN7PR01MB3859prod_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Sam,

Thanks for linking your simple example program for streaming IMU data. I fi=
nally got the RTIMULib built and installed on the E312, but when I run your=
 program I get this output:

root@ni-e31x-:~/usr/E312IMUTest/build# ./E312IMUTest
Do something here with example option input: for example
Settings file not found. Using defaults and creating settings file
Failed to open I2C bus 1
Failed to open SPI bus 0, select 0
Failed to open SPI bus 0, select 1
No IMU detected
Using fusion algorithm RTQF
No IMU found
Error intializing IMU


Was there any other setup I needed to do before running it (i.e. creating a=
 settings file for the radio)? Do you think using a newer version of UHD an=
d the E312 image might cause this issue?

Isaac Beeman


________________________________
From: Samuel Prager <sprager@usc.edu>
Sent: Tuesday, November 12, 2019 5:50 PM
To: Beeman, Isaac L. <ilbeeman@wpi.edu>; Michael Dickens <michael.dickens@e=
ttus.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [EXT] Re: [USRP-users] Question about the IMU (MPU-9150) on the E3=
10

Hi Isaac,

Here is a simple example program I wrote a while back for continuously stre=
aming IMU data on the E310/E312.

https://github.com/samprager/E312IMUTest<https://nam03.safelinks.protection=
.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fsamprager%2FE312IMUTest&data=
=3D02%7C01%7Cilbeeman%40wpi.edu%7Ccef26121da504f6f64ef08d767c2b4d7%7C589c76=
f5ca1541f9884b55ec15a0672a%7C0%7C0%7C637091958270712195&sdata=3D3pQUZTIvh45=
iFS8enyrS1MPGDiscUBdpVv0mHpg5W0o%3D&reserved=3D0>

See the README for RTIMULib installation instructions (the correct library =
is https://github.com/RPi-Distro/RTIMULib<https://nam03.safelinks.protectio=
n.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2FRPi-Distro%2FRTIMULib&data=
=3D02%7C01%7Cilbeeman%40wpi.edu%7Ccef26121da504f6f64ef08d767c2b4d7%7C589c76=
f5ca1541f9884b55ec15a0672a%7C0%7C0%7C637091958270722198&sdata=3DFw44bvF609L=
1W4chj1NfTr1dr42qRkkm71JnaqZRP98%3D&reserved=3D0>).

Sam
On Nov 12, 2019, 12:30 PM -0800, Michael Dickens via USRP-users <usrp-users=
@lists.ettus.com>, wrote:
Hi Isaac - UHD itself provides no API to the IMU; never has. The RTIMULib, =
possibly an older version than current and assuming it can be built and ins=
talled on the E310, should be able to access the IMU to provide information=
 from it. Note "possibly", "assuming", "should" ... clearly this isn't a ma=
jorly supported feature of the E310! Good luck! - MLD

On Tue, Nov 12, 2019 at 12:37 PM Beeman, Isaac L. via USRP-users <usrp-user=
s@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Marcus and List,

I was hoping someone knew the steps involved to get the RTIMULib setup on t=
he USRP. I tried building and installing both the RTIMULib and Linux folder=
s, but the Linux one fails:


-- Found unsuitable Qt version "" from NOTFOUND
Qt QTOPENGL library not found.
Qt QTGUI library not found.
Qt QTCORE library not found.
CMake Error at RTIMULibGL/CMakeLists.txt:90 (QT4_ADD_RESOURCES):
    Unknown CMake command "QT4_ADD_RESOURCES".
-- Configuring incomplete, errors occurred!


I figured that I can't install the RTIMULibDemo apps because they use a GUI=
, so I built and installed the RTIMULibDrive and RTIMULibCal individually. =
Only, when I try to run one of these apps I get the following error:


RTIMULibDrive: error while loading shared libraries: libRTIMULib.so.7: cann=
ot open shared object file: No such file or directory


I don't get how to fix this. When I build and install the same apps on my h=
ost computer they run fine (but obviously can't find any IMU). Considering =
that any applications I write also use the same libraries, I feel like this=
 is going to be an issue.

There isn't any documentation that I can find on the usage of the C++ libra=
ry for RTIMULib. Just reading the code in RTIMULibDrive.cpp as an example, =
it doesn't seem too complicated, but it obviously is a generic program that=
 isn't using the settings needed to connect to the MPU-9150.

If anyone knows how to get one of these apps (RTIMULibDrive or RTIMULibCal)=
 working or how to use RTIMULib.h in connecting to the MPU-9150 over I2C, i=
t would be much appreciated.

-Isaac Beeman



P.S. I also tried 'i2cdetect -y 0' to see if the MPU-9150 has the I2C addre=
ss 0x69 like the schematics say, but I only get:

Warning: Can't use SMBus Quick Write command, will skip some addresses
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:
10:
20:
30: -- -- -- -- -- -- -- --
40:
50: UU UU -- -- -- -- -- -- -- -- -- -- -- -- -- --
60:
70:

with nothing under 0x69. So that's weird.


-----Original Message-----
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> On Behalf Of Marcus D. Leech via USRP-users
Sent: Tuesday, November 12, 2019 10:35 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [EXT] Re: [USRP-users] Question about the IMU (MPU-9150) on the E3=
10

On 11/12/2019 10:26 AM, Beeman, Isaac L. via USRP-users wrote:
> Hi List,
>
> I have recently started working with the E310/E312 and have gotten multic=
hannel RX/TX and GPS working, but I can't figure out how to grab data off o=
f the internal IMU/MPU-9150. I found some website (http://gnuradio.cn/en/ht=
ml/support/en/page_usrp_e3x0.html<https://nam03.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Furldefense.proofpoint.com%2Fv2%2Furl%3Fu%3Dhttp-=
3A__gnuradio.cn_en_html_support_en_page-5Fusrp-5Fe3x0.html%26d%3DDwMFaQ%26c=
%3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI%26r%3DopIuWAKmywF059tAs2i3Pg=
%26m%3DrGLxgINOMrS4sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g%26s%3DfT3qR8x5-PwNd6mUUK=
4W_0mJBVKoBdE53vAvmpAFz6M%26e%3D&data=3D02%7C01%7Cilbeeman%40wpi.edu%7Ccef2=
6121da504f6f64ef08d767c2b4d7%7C589c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C6=
37091958270722198&sdata=3DiwZjSXpqEEE1kJ%2FS9w%2FUrDgu6ogXQIsj38VxZwelHNE%3=
D&reserved=3D0>) that said that the USRP image should contain RTIMULib appl=
ications with allow the user to test the IMU, but, unless I am looking in t=
he wrong place, the current image for the E310 does not have any RTIMULib a=
pplications on it.
>
> I want to know if there are any API calls or libraries that would allow m=
e to do development with the IMU.
>
> -Isaac Beeman
>
> _______________________________________________

You might start here:

https://github.com/RTIMULib<https://nam03.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Furldefense.proofpoint.com%2Fv2%2Furl%3Fu%3Dhttps-3A__g=
ithub.com_RTIMULib%26d%3DDwMFaQ%26c%3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CS=
fnc_gI%26r%3DopIuWAKmywF059tAs2i3Pg%26m%3DrGLxgINOMrS4sAfnjQ9mFF9r3gnmnGlRt=
I8Lfh1c_9g%26s%3DNIewtdUlqSB7hPPCxPdlvxHxo4oRBNidm-Df5qiTLFc%26e%3D&data=3D=
02%7C01%7Cilbeeman%40wpi.edu%7Ccef26121da504f6f64ef08d767c2b4d7%7C589c76f5c=
a1541f9884b55ec15a0672a%7C0%7C0%7C637091958270732197&sdata=3Dfe55C%2BuNXLda=
1CKtlfeK0OvJbaAZvH5UnrFnlM61PI4%3D&reserved=3D0>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
nam03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Furldefense.proo=
fpoint.com%2Fv2%2Furl%3Fu%3Dhttp-3A__lists.ettus.com_mailman_listinfo_usrp-=
2Dusers-5Flists.ettus.com%26d%3DDwMFaQ%26c%3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN=
0H8p7CSfnc_gI%26r%3DopIuWAKmywF059tAs2i3Pg%26m%3DrGLxgINOMrS4sAfnjQ9mFF9r3g=
nmnGlRtI8Lfh1c_9g%26s%3D8wPPngBEnPiaAxtUARbH1opcSV3Pgih5Konyr2kf9-c%26e%3D&=
data=3D02%7C01%7Cilbeeman%40wpi.edu%7Ccef26121da504f6f64ef08d767c2b4d7%7C58=
9c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C637091958270742195&sdata=3DlAzQHTW=
L%2FMinepF93tvzrtFVBGFLSQjCI8meyoB59tc%3D&reserved=3D0>


--
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com<mailto:support@ettus.com>
Web: https://ettus.com/<https://nam03.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Furldefense.proofpoint.com%2Fv2%2Furl%3Fu%3Dhttps-3A__ettus=
.com_%26d%3DDwMFaQ%26c%3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI%26r%3D=
opIuWAKmywF059tAs2i3Pg%26m%3DrGLxgINOMrS4sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g%26=
s%3DFVmNPR5VsaNFSu2W3JXNVpqQiNivgYWHJAGCOGvRw3c%26e%3D&data=3D02%7C01%7Cilb=
eeman%40wpi.edu%7Ccef26121da504f6f64ef08d767c2b4d7%7C589c76f5ca1541f9884b55=
ec15a0672a%7C0%7C0%7C637091958270742195&sdata=3DXGZ%2BclKFjKQlvHy4ig5up44eS=
hLfbBogAEy%2F1S9EFpA%3D&reserved=3D0>
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailm=
an_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwICAg&c=3DclK7kQUTWtAVEOVIg=
vi0NU5BOUHhpN0H8p7CSfnc_gI&r=3DopIuWAKmywF059tAs2i3Pg&m=3DrGLxgINOMrS4sAfnj=
Q9mFF9r3gnmnGlRtI8Lfh1c_9g&s=3D8wPPngBEnPiaAxtUARbH1opcSV3Pgih5Konyr2kf9-c&=
e=3D

--_000_BN7PR01MB3859F631BBBA41B8AA029C15CB4D0BN7PR01MB3859prod_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Sam,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks for linking your simple example program for streaming IMU data. I fi=
nally got the RTIMULib built and installed on the E312, but when I run your=
 program I get this output:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
</div>
<span style=3D"font-family: Consolas, Courier, monospace;">root@ni-e31x-:~/=
usr/E312IMUTest/build# ./E312IMUTest
</span><span><br>
</span>
<div><span style=3D"font-family: Consolas, Courier, monospace;">Do somethin=
g here with example option input: for example</span><br>
</div>
<div><span style=3D"font-family: Consolas, Courier, monospace;">Settings fi=
le not found. Using defaults and creating settings file</span><br>
</div>
<div><span style=3D"font-family: Consolas, Courier, monospace;">Failed to o=
pen I2C bus 1</span><br>
</div>
<div><span style=3D"font-family: Consolas, Courier, monospace;">Failed to o=
pen SPI bus 0, select 0</span><br>
</div>
<div><span style=3D"font-family: Consolas, Courier, monospace;">Failed to o=
pen SPI bus 0, select 1</span><br>
</div>
<div><span style=3D"font-family: Consolas, Courier, monospace;">No IMU dete=
cted</span><br>
</div>
<div><span style=3D"font-family: Consolas, Courier, monospace;">Using fusio=
n algorithm RTQF</span><br>
</div>
<div><span style=3D"font-family: Consolas, Courier, monospace;">No IMU foun=
d</span><br>
</div>
<div><span style=3D"font-family: Consolas, Courier, monospace;">Error intia=
lizing IMU</span><br>
</div>
<span></span>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><span id=3D"ms-rterangepa=
ste-start"></span></p>
<div style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; f=
ont-size:15px; margin:0px">
<font size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12=
pt"><font face=3D"Calibri,sans-serif" color=3D"black">Was there any other s=
etup I needed to do before running it (i.e. creating a settings file for th=
e radio)? Do you think using a newer version
 of UHD and the E312 image might cause this issue?<br>
</font></span></font></div>
<div style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; f=
ont-size:15px; margin:0px">
<font size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12=
pt"><font face=3D"Calibri,sans-serif" color=3D"black"><br>
</font></span></font></div>
<div style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; f=
ont-size:15px; margin:0px">
<font size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12=
pt"><font face=3D"Calibri,sans-serif" color=3D"black">Isaac Beeman</font></=
span></font></div>
<br>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"></p>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Samuel Prager &lt;spr=
ager@usc.edu&gt;<br>
<b>Sent:</b> Tuesday, November 12, 2019 5:50 PM<br>
<b>To:</b> Beeman, Isaac L. &lt;ilbeeman@wpi.edu&gt;; Michael Dickens &lt;m=
ichael.dickens@ettus.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [EXT] Re: [USRP-users] Question about the IMU (MPU-9150) on=
 the E310</font>
<div>&nbsp;</div>
</div>
<div>
<div name=3D"x_messageBodySection">
<div dir=3D"auto">Hi Isaac,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Here is a simple example program I wrote a while back for=
 continuously streaming IMU data on the E310/E312.&nbsp;</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><a href=3D"https://nam03.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Fgithub.com%2Fsamprager%2FE312IMUTest&amp;data=3D02%7C=
01%7Cilbeeman%40wpi.edu%7Ccef26121da504f6f64ef08d767c2b4d7%7C589c76f5ca1541=
f9884b55ec15a0672a%7C0%7C0%7C637091958270712195&amp;sdata=3D3pQUZTIvh45iFS8=
enyrS1MPGDiscUBdpVv0mHpg5W0o%3D&amp;reserved=3D0" originalsrc=3D"https://gi=
thub.com/samprager/E312IMUTest" shash=3D"CiJiyOcM6/BUwtxqiU4HpP7CtaciKT4iA1=
NOiqppLejWx2Y4V2kY6Jcn6QEMqyrqDmE8z3uNy0eTxxcLqqQy5A68b6qZwEQqVx0nOCYSDTSaC=
BsDMmPPaxnuD268b0vSJlhF1QuR97yqghmULoPSMXgTyVsu&#43;JdjWy/MNaDw1ms=3D">http=
s://github.com/samprager/E312IMUTest</a><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">See the README for RTIMULib installation instructions (th=
e correct library is&nbsp;<a href=3D"https://nam03.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fgithub.com%2FRPi-Distro%2FRTIMULib&amp;data=
=3D02%7C01%7Cilbeeman%40wpi.edu%7Ccef26121da504f6f64ef08d767c2b4d7%7C589c76=
f5ca1541f9884b55ec15a0672a%7C0%7C0%7C637091958270722198&amp;sdata=3DFw44bvF=
609L1W4chj1NfTr1dr42qRkkm71JnaqZRP98%3D&amp;reserved=3D0" originalsrc=3D"ht=
tps://github.com/RPi-Distro/RTIMULib" shash=3D"fhXu6g5kWLCBf2YyIDTuoSzHy6d7=
X1rkgxIKyUv2gLR1z9WLGl&#43;vsjJLWGEQx6lG4h7J3y8v55TFZGk7CL7&#43;X6yNFrWj7LK=
kEp&#43;bGJInMSnLUcVEQWmq4yYeeLMIsZXBTgVHySqs4b3F6WIi3GCPSyR6O3BCm/CdqNpNTT=
DNbwc=3D">https://github.com/RPi-Distro/RTIMULib</a>).</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Sam</div>
</div>
</div>
<div name=3D"x_messageReplySection">On Nov 12, 2019, 12:30 PM -0800, Michae=
l Dickens via USRP-users &lt;usrp-users@lists.ettus.com&gt;, wrote:<br>
<blockquote type=3D"cite" class=3D"x_spark_quote" style=3D"margin:5px 5px; =
padding-left:10px; border-left:thin solid #1abc9c">
<div dir=3D"ltr">Hi Isaac - UHD itself provides no API to the IMU; never ha=
s. The&nbsp;RTIMULib, possibly an older version than current and assuming i=
t can be built and installed on the E310, should be able to access the IMU =
to provide information from it. Note &quot;possibly&quot;,
 &quot;assuming&quot;, &quot;should&quot; ... clearly this isn't a majorly =
supported feature of the E310! Good luck! - MLD</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Nov 12, 2019 at 12:37 PM Be=
eman, Isaac L. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote x_spark_quote" style=3D"margin:5px 5px; =
padding-left:10px; border-left:thin solid #e67e22">
Marcus and List,<br>
<br>
I was hoping someone knew the steps involved to get the RTIMULib setup on t=
he USRP. I tried building and installing both the RTIMULib and Linux folder=
s, but the Linux one fails:<br>
<br>
<br>
-- Found unsuitable Qt version &quot;&quot; from NOTFOUND<br>
Qt QTOPENGL library not found.<br>
Qt QTGUI library not found.<br>
Qt QTCORE library not found.<br>
CMake Error at RTIMULibGL/CMakeLists.txt:90 (QT4_ADD_RESOURCES):<br>
&nbsp; &nbsp; Unknown CMake command &quot;QT4_ADD_RESOURCES&quot;.<br>
-- Configuring incomplete, errors occurred!<br>
<br>
<br>
I figured that I can't install the RTIMULibDemo apps because they use a GUI=
, so I built and installed the RTIMULibDrive and RTIMULibCal individually. =
Only, when I try to run one of these apps I get the following error:<br>
<br>
<br>
RTIMULibDrive: error while loading shared libraries: libRTIMULib.so.7: cann=
ot open shared object file: No such file or directory<br>
<br>
<br>
I don't get how to fix this. When I build and install the same apps on my h=
ost computer they run fine (but obviously can't find any IMU). Considering =
that any applications I write also use the same libraries, I feel like this=
 is going to be an issue.<br>
<br>
There isn't any documentation that I can find on the usage of the C&#43;&#4=
3; library for RTIMULib. Just reading the code in RTIMULibDrive.cpp as an e=
xample, it doesn't seem too complicated, but it obviously is a generic prog=
ram that isn't using the settings needed
 to connect to the MPU-9150.<br>
<br>
If anyone knows how to get one of these apps (RTIMULibDrive or RTIMULibCal)=
 working or how to use RTIMULib.h in connecting to the MPU-9150 over I2C, i=
t would be much appreciated.<br>
<br>
-Isaac Beeman<br>
<br>
<br>
<br>
P.S. I also tried 'i2cdetect -y 0' to see if the MPU-9150 has the I2C addre=
ss 0x69 like the schematics say, but I only get:<br>
<br>
Warning: Can't use SMBus Quick Write command, will skip some addresses<br>
&nbsp; &nbsp; &nbsp;0&nbsp; 1&nbsp; 2&nbsp; 3&nbsp; 4&nbsp; 5&nbsp; 6&nbsp;=
 7&nbsp; 8&nbsp; 9&nbsp; a&nbsp; b&nbsp; c&nbsp; d&nbsp; e&nbsp; f<br>
00:<br>
10:<br>
20:<br>
30: -- -- -- -- -- -- -- --<br>
40:<br>
50: UU UU -- -- -- -- -- -- -- -- -- -- -- -- -- --<br>
60:<br>
70:<br>
<br>
with nothing under 0x69. So that's weird.<br>
<br>
<br>
-----Original Message-----<br>
From: USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" =
target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; On Behalf Of M=
arcus D. Leech via USRP-users<br>
Sent: Tuesday, November 12, 2019 10:35 AM<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [EXT] Re: [USRP-users] Question about the IMU (MPU-9150) on the E3=
10<br>
<br>
On 11/12/2019 10:26 AM, Beeman, Isaac L. via USRP-users wrote:<br>
&gt; Hi List,<br>
&gt;<br>
&gt; I have recently started working with the E310/E312 and have gotten mul=
tichannel RX/TX and GPS working, but I can't figure out how to grab data of=
f of the internal IMU/MPU-9150. I found some website (<a href=3D"https://na=
m03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Furldefense.proofp=
oint.com%2Fv2%2Furl%3Fu%3Dhttp-3A__gnuradio.cn_en_html_support_en_page-5Fus=
rp-5Fe3x0.html%26d%3DDwMFaQ%26c%3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_=
gI%26r%3DopIuWAKmywF059tAs2i3Pg%26m%3DrGLxgINOMrS4sAfnjQ9mFF9r3gnmnGlRtI8Lf=
h1c_9g%26s%3DfT3qR8x5-PwNd6mUUK4W_0mJBVKoBdE53vAvmpAFz6M%26e%3D&amp;data=3D=
02%7C01%7Cilbeeman%40wpi.edu%7Ccef26121da504f6f64ef08d767c2b4d7%7C589c76f5c=
a1541f9884b55ec15a0672a%7C0%7C0%7C637091958270722198&amp;sdata=3DiwZjSXpqEE=
E1kJ%2FS9w%2FUrDgu6ogXQIsj38VxZwelHNE%3D&amp;reserved=3D0" originalsrc=3D"h=
ttps://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__gnuradio.cn_en_html_su=
pport_en_page-5Fusrp-5Fe3x0.html&amp;d=3DDwMFaQ&amp;c=3DclK7kQUTWtAVEOVIgvi=
0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuWAKmywF059tAs2i3Pg&amp;m=3DrGLxgINOMrS=
4sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g&amp;s=3DfT3qR8x5-PwNd6mUUK4W_0mJBVKoBdE53v=
AvmpAFz6M&amp;e=3D" shash=3D"k96/&#43;xKrhGz7zC7c8YEXrOrioUH3ev5rN/PBgLjaUl=
5ozl2aJ&#43;r0uEkzP1oXgMBlotzA1TEvVmDso6UletFu5cNGJaD9v8tf3Jy9f6tfjAGJsbr/L=
nY7M5SjT5DLlOYhs&#43;WklKbztjfqSo4Jd6CtPH&#43;H5&#43;edKloRpY6uAUh42Qw=3D" =
rel=3D"noreferrer" target=3D"_blank">http://gnuradio.cn/en/html/support/en/=
page_usrp_e3x0.html</a>)
 that said that the USRP image should contain RTIMULib applications with al=
low the user to test the IMU, but, unless I am looking in the wrong place, =
the current image for the E310 does not have any RTIMULib applications on i=
t.<br>
&gt;<br>
&gt; I want to know if there are any API calls or libraries that would allo=
w me to do development with the IMU.<br>
&gt;<br>
&gt; -Isaac Beeman<br>
&gt;<br>
&gt; _______________________________________________<br>
<br>
You might start here:<br>
<br>
<a href=3D"https://nam03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Furldefense.proofpoint.com%2Fv2%2Furl%3Fu%3Dhttps-3A__github.com_RTIMULi=
b%26d%3DDwMFaQ%26c%3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI%26r%3DopIu=
WAKmywF059tAs2i3Pg%26m%3DrGLxgINOMrS4sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g%26s%3D=
NIewtdUlqSB7hPPCxPdlvxHxo4oRBNidm-Df5qiTLFc%26e%3D&amp;data=3D02%7C01%7Cilb=
eeman%40wpi.edu%7Ccef26121da504f6f64ef08d767c2b4d7%7C589c76f5ca1541f9884b55=
ec15a0672a%7C0%7C0%7C637091958270732197&amp;sdata=3Dfe55C%2BuNXLda1CKtlfeK0=
OvJbaAZvH5UnrFnlM61PI4%3D&amp;reserved=3D0" originalsrc=3D"https://urldefen=
se.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_RTIMULib&amp;d=3DDwMFaQ&a=
mp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuWAKmywF059tA=
s2i3Pg&amp;m=3DrGLxgINOMrS4sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g&amp;s=3DNIewtdUl=
qSB7hPPCxPdlvxHxo4oRBNidm-Df5qiTLFc&amp;e=3D" shash=3D"kocyRkcWKXUymcbVVYEC=
VFuC8b4jamLX5PwaJUBFwB/KuyV83Twpq240t6Of/pzWJ4tiDdux4aBql5VqFBKQBaXrTrF5CpI=
0EJoD2wdxfbtAxa6Dd7cFunX1p0xGM6GiU819Pz7K2vo8VZVgwCH5ZoRMuZEiu0SpWSGYq3cb5m=
k=3D" rel=3D"noreferrer" target=3D"_blank">https://github.com/RTIMULib</a><=
br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://nam03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Furldefense.proofpoint.com%2Fv2%2Furl%3Fu%3Dhttp-3A__lists.ettus.com_mai=
lman_listinfo_usrp-2Dusers-5Flists.ettus.com%26d%3DDwMFaQ%26c%3DclK7kQUTWtA=
VEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI%26r%3DopIuWAKmywF059tAs2i3Pg%26m%3DrGLxgIN=
OMrS4sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g%26s%3D8wPPngBEnPiaAxtUARbH1opcSV3Pgih5=
Konyr2kf9-c%26e%3D&amp;data=3D02%7C01%7Cilbeeman%40wpi.edu%7Ccef26121da504f=
6f64ef08d767c2b4d7%7C589c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C63709195827=
0742195&amp;sdata=3DlAzQHTWL%2FMinepF93tvzrtFVBGFLSQjCI8meyoB59tc%3D&amp;re=
served=3D0" originalsrc=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhtt=
p-3A__lists.ettus.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=
=3DDwMFaQ&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuW=
AKmywF059tAs2i3Pg&amp;m=3DrGLxgINOMrS4sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g&amp;s=
=3D8wPPngBEnPiaAxtUARbH1opcSV3Pgih5Konyr2kf9-c&amp;e=3D" shash=3D"MkwZ5Ik5b=
EoQaji3YXQ0YY5ZCgrGK7dOpSqU8&#43;vGQ&#43;4Z6v1uXbd0I6wRRPeLRygpyAXTLp9jVv4Y=
HSaJxd4BfU8UR728gzmY8HSlH&#43;EkNop0c2z9eYBECew4mt4XGEAD2c8uD7dCvBIr6lshwVY=
OcoYFWGn8kjjCAW8MC7v8Nm0=3D" rel=3D"noreferrer" target=3D"_blank">http://li=
sts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
--<br>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Michael Dickens<br>
Ettus Research Technical Support<br>
Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus=
.com</a><br>
Web: <a href=3D"https://nam03.safelinks.protection.outlook.com/?url=3Dhttps=
%3A%2F%2Furldefense.proofpoint.com%2Fv2%2Furl%3Fu%3Dhttps-3A__ettus.com_%26=
d%3DDwMFaQ%26c%3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI%26r%3DopIuWAKm=
ywF059tAs2i3Pg%26m%3DrGLxgINOMrS4sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g%26s%3DFVmN=
PR5VsaNFSu2W3JXNVpqQiNivgYWHJAGCOGvRw3c%26e%3D&amp;data=3D02%7C01%7Cilbeema=
n%40wpi.edu%7Ccef26121da504f6f64ef08d767c2b4d7%7C589c76f5ca1541f9884b55ec15=
a0672a%7C0%7C0%7C637091958270742195&amp;sdata=3DXGZ%2BclKFjKQlvHy4ig5up44eS=
hLfbBogAEy%2F1S9EFpA%3D&amp;reserved=3D0" originalsrc=3D"https://urldefense=
.proofpoint.com/v2/url?u=3Dhttps-3A__ettus.com_&amp;d=3DDwMFaQ&amp;c=3DclK7=
kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuWAKmywF059tAs2i3Pg&amp;=
m=3DrGLxgINOMrS4sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g&amp;s=3DFVmNPR5VsaNFSu2W3JX=
NVpqQiNivgYWHJAGCOGvRw3c&amp;e=3D" shash=3D"C5SaHOP3lYibfdC26pxLx7ViCqgQ4Kg=
VCx1zJWfv74sThbvFGGk5SIf2s9/acxL&#43;hPKtM9Sf4bovzZYSiAJ&#43;l8echZ8cc1CgEg=
8twI3iEWozFG7UtdEBDk2LIJGZdJ7GGuvPjBOn7Zcm0mVfj8wf97KMKdbghguLV8WejPRyUy4=
=3D" target=3D"_blank">
https://ettus.com/</a></div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailm=
an_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwICAg&amp;c=3DclK7kQUTW=
tAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuWAKmywF059tAs2i3Pg&amp;m=3Dr=
GLxgINOMrS4sAfnjQ9mFF9r3gnmnGlRtI8Lfh1c_9g&amp;s=3D8wPPngBEnPiaAxtUARbH1opc=
SV3Pgih5Konyr2kf9-c&amp;e=3D<br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BN7PR01MB3859F631BBBA41B8AA029C15CB4D0BN7PR01MB3859prod_--


--===============2420398405752874993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2420398405752874993==--

