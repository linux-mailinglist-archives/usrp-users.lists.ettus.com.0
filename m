Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0029C6EC9D3
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 12:09:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6AACF384590
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 06:09:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682330963; bh=EoTo5bazNYKmAWwalWjwwXTVCnVbqWGHJj2P8ZYStHE=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OAalAtxAM++ljCv+roQS4TNiljuUCVjtGw+PXtw329O0oUCDuwKA4uQ0bFjlOXBZn
	 dbP8TZQwaqdhjWd+OYz7+47shIZOevgKfeYUtqQurLza/TfUZKQF1UzuvsbXuhfavh
	 zpFI3V6D0lYmihrS3964bbJRVlDB0eOqx90wkGvimj7EhPWJNgVhIjPJPLF7UWTGEu
	 1GA563OOgTf29xeGlYRxGROxYThd84AVuShYbQICqtYTXw+K255vdYq6SGEPWepbCT
	 IO3ypoZ/VP+XGjFtEuQyqGHY4hLNjL6cPiNy0aYQm+/Do5PLSJjFOlEEUm9GCqiyT2
	 n+XC04SFOuyxA==
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (mail-be0deu01on2111.outbound.protection.outlook.com [40.107.127.111])
	by mm2.emwd.com (Postfix) with ESMTPS id D97B03840FB
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 06:08:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="WeVQvhXF";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=csv+piLsuSxHPLe/79FeMfe70U18o0S/xgim54d9aRGem6436cOD3jYEZ+P0ASwUyBnBVM9GF9GiVdfTvD29QqQkf5wGhyRy8txKNV5YFvGB1vJqRzHEm4ROuVyb2olg9O0UPmMcPQyZuOEYFzi0+mHuvHgMlMVOuqsmJzw7oLzmOgd8duat2T7Nz/it6vhi8QYv1BI5JATY3j0Hz6yc941eCaH/ZX/K0tRLnj/MessWfYkQ7zhilE7xeQAYrr3p9A3zlwDXcR5Zs9sNaWgbcx/KN+tqh1b+HakfmqY9HKr4Zpyco2tRPVgF4+PykwARvPizzdv9Q5Obowcblx3s8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xk7NF5dRBPjcqxdjSbRlbU/SGUHFdyfEG3uzLAKS9dQ=;
 b=mgJ/HMNHcFlX6dHBDzeHawxJSUorS46AxX0u7UxUp0ZrODysB0r81SB8t3LyBCfNKJtt/rExd87cI/+VBGRPkrMzA5UoLsga3QLYs+S0O1wYR6rVMLM+dnqEgZ4LobtqkqfdCmvxGvGZvPTYXYIKEVLCODeMY7Rzyaa56BDgr6C/jPj1OIuukKArcvlkruFumt95Oh5nn8JXO2j6uDHEfgOQZkyMw40xfK25+GNMusPukLCp1SZoM5sSqQmEJx3T8Xj91FJbe6SMlhevJukUT2SQVujAFx8TOl2nd3WQV+MQtvPnvHghDVXkcjyn/wtIl6PZdQwUCINMuuDrT13XdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xk7NF5dRBPjcqxdjSbRlbU/SGUHFdyfEG3uzLAKS9dQ=;
 b=WeVQvhXFlV/JVPP/eBxIikTz5KTJ1QQ6Sq9oAe7V7d5X0WIxAUG24hCN+99k61O7HWVhNrXpXOfFE0IEzqUfROPmsYxZ7FLjSGGVtN2tiLF3UYsjI65+jI8tCUy+bGzEt8t6LRDZ2nKcMLN/axA387r7RVmaYuXoL7KV3pI+K2I=
Received: from FR2P281MB2816.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:3c::8) by
 BE1P281MB2963.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:6b::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.33; Mon, 24 Apr 2023 10:08:34 +0000
Received: from FR2P281MB2816.DEUP281.PROD.OUTLOOK.COM
 ([fe80::1fb8:5ca8:2bee:f8d6]) by FR2P281MB2816.DEUP281.PROD.OUTLOOK.COM
 ([fe80::1fb8:5ca8:2bee:f8d6%6]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 10:08:34 +0000
From: =?iso-8859-1?Q?Maximilian_Matth=E9?=
	<maximilian.matthe@barkhauseninstitut.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X410 not reachable
Thread-Index: AQHZdpQCav0alZqgMkqaQzkLuwOQDw==
Date: Mon, 24 Apr 2023 10:08:34 +0000
Message-ID: 
 <FR2P281MB2816B4EAC4DCCC82FD3A9C6790679@FR2P281MB2816.DEUP281.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: FR2P281MB2816:EE_|BE1P281MB2963:EE_
x-ms-office365-filtering-correlation-id: 7f38ee60-7c08-4d11-173a-08db44abdd17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 O0U+NF2yuQf6VM6LKc8cbBMmGvwCYRsIn80TXAZDP57Rpx+Qu+jop/lQn4K1YCdWmF4YVZ6gIxk8dDKD2Gg9xbRHFiIYI4JebQEuoR6NQCM+jM4L32daQf/5KRTAOUC6uH/BRPkzaipXuQMD7qGnGYt1/ZJ6QdjNnerzIHYcf0p3QFNK+5ndYF4/Zar2X0pAK8yhiLUIRs+mQrMg2MBHXrRZtX747FtXAxgFPCx3OaPCiI4+xxVqHT7heCvZvBreo8w6c+bY3rSnZBtDLOnHJyKnW0GNNzKVAc2mKkkhC77ri//MZ3ehWCOTht61QG6VOAdV6qB1VJVvBxnXldTkLyxg4wM4pOd8fWUceLrVLuNibLjjdDaSky9yDYvhPeh4TByUeJrlHjm5TsDyiuR3tV7vFaLuwH0oZt+Lr2OTkvJht1b8gzEUZIwTnJp4TaV6eDTLk6eH/TqqCNuz900WxFIplPSVW8YWJqgq4gCvHq9dRUJUkoeZKB51V486lU11y3GA1uW7nYyizd5KYZfst1KtANosst+iSZYjJCa+RVXyrmMD7BcY6oliHcqTv1G8uMI2zSJpc+YAyn8tCoXf8Coxn6j/Uu8RiO0Kf5L0y6g=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2P281MB2816.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(396003)(376002)(346002)(136003)(39840400004)(366004)(451199021)(2906002)(7696005)(71200400001)(966005)(55016003)(9686003)(6506007)(26005)(186003)(91956017)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(8936002)(316002)(41300700001)(6916009)(478600001)(7116003)(5660300002)(52536014)(38070700005)(38100700002)(122000001)(86362001)(33656002)(15974865002)(66574015)(83380400001)(19627405001)(66899021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?GLzdiXa9Texxud19+y+vdMPYwNY5fMLe94EqkZMPutd6svXkmDN6QPCyDS?=
 =?iso-8859-1?Q?6vbS+BfP4EfpEHm5ECi/ityOimJuxWDSgNCDhRhpHucOOsG4P0YTkK4350?=
 =?iso-8859-1?Q?/F437739yZiFEtmUIdPNF2pkNNhPnNJk/vimNzwPXusPpH74bX6zrsHJqC?=
 =?iso-8859-1?Q?N5enimsmP1aWCl/tee5ReZhxdpTv66j7tFsDhCo8+Oa96M9p4mZvxAqcMF?=
 =?iso-8859-1?Q?WKbCMWWXTdXsyu4vCu5jzK0A+m5a/BTHr8t/zdKrfl5+286bJQ4CKGMmpr?=
 =?iso-8859-1?Q?FGYdIqW+HYtWKaTl3PLk0JCpedvcdOv2t/QMSKc0PNTs+a1nps4TLAg3Wp?=
 =?iso-8859-1?Q?DkqdomZGhkmwkNNTK9lV2MbTC98omIa5l96X7DmSK/xfhAzM7K09ngmNvo?=
 =?iso-8859-1?Q?S+VFAkri9mmp2PyL1ZJ7DFnwGcQZ7BGhca3HUWwlxQO7Va0taWZ+xe70eK?=
 =?iso-8859-1?Q?igqXRulwprE2W+D8mOpI1Pr6f+o2GphFSi8wyvlVA+reyq8tST+AFV7KUq?=
 =?iso-8859-1?Q?xDcD24nuMAMEQ79V2K99wrLt1n7VfF6ngI+YIbL3OtnXj9qNBVt4ZJ5Dgh?=
 =?iso-8859-1?Q?30u3tvzOLYncdkofc1xOVz1lroaE2om++yYq2Dk22FsS39XxhsKMNuBJPU?=
 =?iso-8859-1?Q?DhmPNBSYoH5KQ7eOnNMr26SpOm8LJ76PkiGG91nbIMz7+N2aMtjrlRD8Yl?=
 =?iso-8859-1?Q?IhBCOKfsfLhEXbEFIRp/48G9zGgQ10NQJBslNfiOvB5cj5tGmxAheSpteu?=
 =?iso-8859-1?Q?dl8/wLKxwuIJv609CfTbl6ZDD0ZO+C88SHe3cdHFc3CXLWlc2X+URZ+NsO?=
 =?iso-8859-1?Q?c+SqufVosV8k+RO9m0mg3C4IumIIJKH/AYF7hr8Wn7Aw5xB16rUXjD+bwQ?=
 =?iso-8859-1?Q?Lnms4fFFzjtbqt72OKYWN6Mat0nrM1QYlxkaB1HEQP1IR/ykoqk8uy9zk+?=
 =?iso-8859-1?Q?SQ6YeA6NNuE/KSTCISaqfpmrcWm+ADHOQnjz97CpX/+btN3Rim4XUqACpQ?=
 =?iso-8859-1?Q?g6QeoSxVdDPB8ikiVlT3uFuStvqNjMpLECOPm7/HUaMoKrzC6ue6Jcry6Z?=
 =?iso-8859-1?Q?Nk5KuxnuISK/+LrguYCyALJlV7Dg4IwTrHus0gjgtJjQDdTwT/KIyRgukr?=
 =?iso-8859-1?Q?p/0gQ9l/3dFfKB+lqNlUG2YazqPWibNB7f/JVHrwfqmc5i0idXSlR22q8x?=
 =?iso-8859-1?Q?mvbUpA1jld/3GTBZmcHeLeUSw0NUWLJvcxq3H4EkeCXnor71ARwMUenm3X?=
 =?iso-8859-1?Q?AQrQVB6TzsDMfd5tNecH8cEMUwPhHVoZR6vGU348PQQPKAenog9ehaCS0I?=
 =?iso-8859-1?Q?CqdzMwDYjDtzThQCMbCO+jTugUajyCQZcObPoh4liu/05B7R6AqjQK7dZW?=
 =?iso-8859-1?Q?LD+BcuY/o+3vCewYyBugCwCWj8NY/sum/mS0mtN1aA/RjVK/G4kQbzqlTS?=
 =?iso-8859-1?Q?LLxuPiOHLll462E/YhBSdD/pMGgQ7X4C8X2NiUAc+Waw2E0d8cbAd/CTN3?=
 =?iso-8859-1?Q?WEkZwbFX8sNxgGDHqoTXfb+529lkIId/hwfR00c67xzGjvcvhADKfAJu9v?=
 =?iso-8859-1?Q?zGu0ZtLS8nsGlap73gaWVaXCjGKIXOOStXhmHmsNYd0Tz7UQxsJzJqRS2S?=
 =?iso-8859-1?Q?Jkti9M/mgQwG3d4JNp4zFPBbztUOs7aB1EL3qHUtLSktnmBVYQ5/17rPUt?=
 =?iso-8859-1?Q?1oajKtxS+1rxVQLHgNU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: FR2P281MB2816.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f38ee60-7c08-4d11-173a-08db44abdd17
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2023 10:08:34.1819
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T/ogCpmlhiBEdakP1ExN1IAcBhHtLO+SWpCIhxLjerJV9FAGxUBTXKi1336D3UWOsKDDPk/nre2/wUqiIfJ1CV3f7iekU/QbMoUY9m1qXD5PRcY8w0GYJ1UaXDiJz7TH0v0XSt0ThJXuvPZMYqVV+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1P281MB2963
Message-ID-Hash: STOTRPAYEJMNBGU5NIDWJK5TA4IZVY4B
X-Message-ID-Hash: STOTRPAYEJMNBGU5NIDWJK5TA4IZVY4B
X-MailFrom: maximilian.matthe@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 not reachable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3JT73RV56DBNHNWIJZSJBYRWVZCYCWJD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4096179967855651817=="

--===============4096179967855651817==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_FR2P281MB2816B4EAC4DCCC82FD3A9C6790679FR2P281MB2816DEUP_"

--_000_FR2P281MB2816B4EAC4DCCC82FD3A9C6790679FR2P281MB2816DEUP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

after having had two X410 devices in idle mode, they now show this error (b=
oth show exactly the same error pattern, that's why I exclude a hardware er=
ror):

root@NE-LAB-X410-03:~# uhd_usrp_probe --args=3Daddr=3Dlocalhost
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.4.0.0-68-g02=
558b69
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3De3xx,product=3De320,serial=3DFA4EDE7,name=3DNE-LAB-X410-03,=
fpga=3Dn/a,claimed=3DFalse,addr=3Dlocalhost
[WARNING] [MPM.PeriphManager] get_device_info_dyn() - FPGA functionality no=
t implemented yet
[WARNING] [MPMD::XPORT::UDP] Cannot create UDP link to device: The IP addre=
ss `localhost' is requested, but not reachable.
[ERROR] [MPMD::MB_IFACE] No CHDR connection available!
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3Dn/a,mgmt_=
addr=3D127.0.0.1,name=3DNE-LAB-X410-03,product=3De320'.
[WARNING] [MPM.PeriphManager.UDP] No internal interface to forward CHDR pac=
kets to from lo.
[WARNING] [MPM.PeriphManager.UDP] No internal interface to forward CHDR pac=
kets to from eth0.
Error: RuntimeError: No CHDR connection available!
root@NE-LAB-X410-03:~#

Note, that the USRP reports itself as e320. I tried restarting the USRP, an=
d changing the FPGA image:
root@NE-LAB-X410-03:~# uhd_image_loader --args type=3Dx4xx,mgmt_addr=3D127.=
0.0.1,fpga=3DX4_200
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.4.0.0-68-g02=
558b69
No applicable UHD devices found[ERROR] [MPMD IMAGE LOADER] mpmd_image_loade=
r only supports a single device.

Moreover, I cannot update the file system, as it crashes as:

root@NE-LAB-X410-03:~# usrp_update_fs -t master
/usr/lib/python3.7/site-packages/usrp_mpm/rpc_server.py:25: MonkeyPatchWarn=
ing: Monkey-patching ssl after ssl has already been imported may lead to er=
rors, including RecursionError on Python 3.6. It may also silently lead to =
incorrect behaviour on Python 3.7. Please monkey-patch earlier. See https:/=
/github.com/gevent/gevent/issues/1016. Modules that had direct imports (NOT=
 patched): ['urllib3.contrib.pyopenssl (/usr/lib/python3.7/site-packages/ur=
llib3/contrib/pyopenssl.py)'].
  monkey.patch_all()
Downloading manifest file from https://raw.githubusercontent.com/EttusResea=
rch/uhd/master/images/manifest.txt...
Error: Unexpected exception caught!
'sim'
<class 'KeyError'>
Traceback (most recent call last):
  File "/usr/bin/usrp_update_fs", line 190, in main
    return run()
  File "/usr/bin/usrp_update_fs", line 162, in run
    mender_image =3D prepare_image(args.device_type, args)
  File "/usr/bin/usrp_update_fs", line 136, in prepare_image
    download_image(device_type, manifest_path)
  File "/usr/bin/usrp_update_fs", line 87, in download_image
    '-t', DEFAULT_MENDER_TARGET[device_type],
KeyError: 'sim'

root@NE-LAB-X410-03:~#

(Note, that I have adjusted the update script to print the exception traceb=
ack). Apparently, the device seems to be in `sim` mode, whatever that means=
.

Earlier, before I restarted (that was the reason for rebooting in the first=
 place), the UHD driver showed these cryptic messages:
Apr 24 09:34:22 NE-LAB-X410-03 usrp_hwd.py[263]: [MPM.PeriphManager] [INFO]=
 init() called with device args `fpga=3DX4_200,mgmt_addr=3D127
.0.0.1,name=3DNE-LAB-X410-03,product=3Dx410,clock_source=3Dinternal,time_so=
urce=3Dinternal'.                                                 Apr 24 09=
:34:23 NE-LAB-X410-03 bash[25716]: [INFO] [MPM.PeriphManager] init() called=
 with device args `fpga=3DX4_200,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-0=
3,product=3Dx410,clock_source=3Dinternal,time_source=3Dinternal'.          =
                                            Apr 24 09:34:25 NE-LAB-X410-03 =
bash[25716]: [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skippi=
ng.
Apr 24 09:34:25 NE-LAB-X410-03 bash[25716]: [WARNING] [0/Replay#0] Requeste=
d packet size exceeds MTU! Coercing to 1500
Apr 24 09:34:25 NE-LAB-X410-03 bash[25716]: [WARNING] [0/Replay#0] Requeste=
d packet size exceeds MTU! Coercing to 1500
Apr 24 09:35:42 NE-LAB-X410-03 systemd-journald[149]: Forwarding to syslog =
missed 27 messages.
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: DTC Scan T1
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      ADC0: 00=
0000000000001113222220000000000000000000000000*00000000000
0000#000000000011113222200000000000000000000000000000000000000000000
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      ADC2: 00=
0000000000000000000001111222220000000000000000#00000000*0000000000000000000=
000000011112222200000000000000000000000000000000000                        =
                                         Apr 24 09:35:42 NE-LAB-X410-03 usr=
p_hwd.py[263]: metal: info:      ADC0: Marker: - 76, 0                     =
                        Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: me=
tal: info:      ADC2: Marker: - 76, 4
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      SysRef p=
eriod in terms of ADC T1s =3D 1152
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      ADC targ=
et latency =3D 1228
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: DTC Scan T1
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      DAC0: 00=
0000000000000000000111122222200000000000000000000000000*00
0000#000000000000000000011132222200000000000000000000000000000000000
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      DAC1: 00=
0000000000000000000000001111222222000000000000000000000#00
0*000000000000000000000000001111222220000000000000000000000000000000
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      DAC0: Ma=
rker: - 51, 0
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      DAC1: Ma=
rker: - 51, 0
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      SysRef p=
eriod in terms of DAC T1s =3D 2304
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      DAC targ=
et latency =3D 800
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: error:     Error : =
DAC alignment target latency of 816 < minimum possible 816

What shall I do to debug this problem?

Thank you,
Max




Maximilian Matthe

Head of Engineering Lab

maximilian.matthe@barkhauseninstitut.org

Tel.: +49 173 4509667


Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzende der Gesel=
lschafterdelegation: Dr. Undine Kr=E4tzig

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_FR2P281MB2816B4EAC4DCCC82FD3A9C6790679FR2P281MB2816DEUP_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
after having had two X410 devices in idle mode, they now show this error (b=
oth show exactly the same error pattern, that's why I exclude a hardware er=
ror):</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
root@NE-LAB-X410-03:~# uhd_usrp_probe --args=3Daddr=3Dlocalhost
<div class=3D"ContentPasted0">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.4.0.0-68-g02558b69</div>
<div class=3D"ContentPasted0">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De320,serial=3D=
FA4EDE7,name=3DNE-LAB-X410-03,fpga=3Dn/a,claimed=3DFalse,addr=3Dlocalhost</=
div>
<div class=3D"ContentPasted0">[WARNING] [MPM.PeriphManager] get_device_info=
_dyn() - FPGA functionality not implemented yet</div>
<div class=3D"ContentPasted0">[WARNING] [MPMD::XPORT::UDP] Cannot create UD=
P link to device: The IP address `localhost' is requested, but not reachabl=
e.</div>
<div class=3D"ContentPasted0">[ERROR] [MPMD::MB_IFACE] No CHDR connection a=
vailable!</div>
<div class=3D"ContentPasted0">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-03,produc=
t=3De320'.</div>
<div class=3D"ContentPasted0">[WARNING] [MPM.PeriphManager.UDP] No internal=
 interface to forward CHDR packets to from lo.</div>
<div class=3D"ContentPasted0">[WARNING] [MPM.PeriphManager.UDP] No internal=
 interface to forward CHDR packets to from eth0.</div>
<div class=3D"ContentPasted0">Error: RuntimeError: No CHDR connection avail=
able!</div>
<div class=3D"ContentPasted0">root@NE-LAB-X410-03:~# </div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
Note, that the USRP reports itself as e320. I tried restarting the USRP, an=
d changing the FPGA image:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0 Conten=
tPasted1">
root@NE-LAB-X410-03:~# uhd_image_loader --args type=3Dx4xx,mgmt_addr=3D127.=
0.0.1,fpga=3DX4_200
<div class=3D"ContentPasted1">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.4.0.0-68-g02558b69</div>
<div class=3D"ContentPasted1">No applicable UHD devices found[ERROR] [MPMD =
IMAGE LOADER] mpmd_image_loader only supports a single device.</div>
<div class=3D"elementToProof"><br>
</div>
<div class=3D"elementToProof">Moreover, I cannot update the file system, as=
 it crashes as:</div>
<div class=3D"elementToProof"><br>
</div>
<div class=3D"elementToProof ContentPasted2">root@NE-LAB-X410-03:~# usrp_up=
date_fs -t master
<div class=3D"ContentPasted2">/usr/lib/python3.7/site-packages/usrp_mpm/rpc=
_server.py:25: MonkeyPatchWarning: Monkey-patching ssl after ssl has alread=
y been imported may lead to errors, including RecursionError on Python 3.6.=
 It may also silently lead to incorrect
 behaviour on Python 3.7. Please monkey-patch earlier. See https://github.c=
om/gevent/gevent/issues/1016. Modules that had direct imports (NOT patched)=
: ['urllib3.contrib.pyopenssl (/usr/lib/python3.7/site-packages/urllib3/con=
trib/pyopenssl.py)'].
</div>
<div class=3D"ContentPasted2">&nbsp; monkey.patch_all()</div>
<div class=3D"ContentPasted2">Downloading manifest file from https://raw.gi=
thubusercontent.com/EttusResearch/uhd/master/images/manifest.txt...</div>
<div class=3D"ContentPasted2">Error: Unexpected exception caught!</div>
<div class=3D"ContentPasted2">'sim'</div>
<div class=3D"ContentPasted2">&lt;class 'KeyError'&gt;</div>
<div class=3D"ContentPasted2">Traceback (most recent call last):</div>
<div class=3D"ContentPasted2">&nbsp; File &quot;/usr/bin/usrp_update_fs&quo=
t;, line 190, in main</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; return run()</div>
<div class=3D"ContentPasted2">&nbsp; File &quot;/usr/bin/usrp_update_fs&quo=
t;, line 162, in run</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; mender_image =3D prepare_image(=
args.device_type, args)</div>
<div class=3D"ContentPasted2">&nbsp; File &quot;/usr/bin/usrp_update_fs&quo=
t;, line 136, in prepare_image</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; download_image(device_type, man=
ifest_path)</div>
<div class=3D"ContentPasted2">&nbsp; File &quot;/usr/bin/usrp_update_fs&quo=
t;, line 87, in download_image</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; '-t', DEFAULT_MENDER_TARGET[dev=
ice_type],</div>
<div class=3D"ContentPasted2">KeyError: 'sim'</div>
<div><br class=3D"ContentPasted2">
</div>
<div class=3D"ContentPasted2">root@NE-LAB-X410-03:~# </div>
&nbsp;</div>
<div class=3D"elementToProof ContentPasted2">(Note, that I have adjusted th=
e update script to print the exception traceback). Apparently, the device s=
eems to be in `sim` mode, whatever that means.
<br>
</div>
<div class=3D"elementToProof ContentPasted2"><br>
</div>
<div class=3D"elementToProof ContentPasted2">Earlier, before I restarted (t=
hat was the reason for rebooting in the first place), the UHD driver showed=
 these cryptic messages:</div>
<div class=3D"elementToProof ContentPasted2 ContentPasted3">Apr 24 09:34:22=
 NE-LAB-X410-03 usrp_hwd.py[263]: [MPM.PeriphManager] [INFO] init() called =
with device args `fpga=3DX4_200,mgmt_addr=3D127
<div class=3D"ContentPasted3">.0.0.1,name=3DNE-LAB-X410-03,product=3Dx410,c=
lock_source=3Dinternal,time_source=3Dinternal'. &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apr 24 09=
:34:23 NE-LAB-X410-03 bash[25716]: [INFO] [MPM.PeriphManager] init() called=
 with device
 args `fpga=3DX4_200,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-03,product=3D=
x410,clock_source=3Dinternal,time_source=3Dinternal'. &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;Apr 24 09:34:25 NE-LAB-X410-03 bash[25716]: [WARNING] [0/R=
adio#0] Attempting to set tick
 rate to 0. Skipping. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted3">Apr 24 09:34:25 NE-LAB-X410-03 bash[25716]: [=
WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to 1500 &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted3">Apr 24 09:34:25 NE-LAB-X410-03 bash[25716]: [=
WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to 1500 &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 systemd-journa=
ld[149]: Forwarding to syslog missed 27 messages. &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: DTC Scan T1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp;ADC0: 00000000000000111322222000000000=
0000000000000000*00000000000</div>
<div class=3D"ContentPasted3">0000#0000000000111132222000000000000000000000=
00000000000000000000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp;ADC2: 00000000000000000000000111122222=
0000000000000000#00000000*0000000000000000000000000011112222200000000000000=
000000000000000000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apr 24 09:35:42 NE-LAB-=
X410-03 usrp_hwd.py[263]: metal: info: &nbsp; &nbsp; &nbsp;ADC0: Marker: - =
76, 0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: &nb=
sp; &nbsp; &nbsp;ADC2: Marker: - 76,
 4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; </div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp;SysRef period in terms of ADC T1s =3D =
1152 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp;ADC target latency =3D 1228 &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: DTC Scan T1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp;DAC0: 00000000000000000000011112222220=
0000000000000000000000000*00</div>
<div class=3D"ContentPasted3">0000#0000000000000000000111322222000000000000=
00000000000000000000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp;DAC1: 00000000000000000000000000111122=
2222000000000000000000000#00</div>
<div class=3D"ContentPasted3">0*0000000000000000000000000011112222200000000=
00000000000000000000000</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp;DAC0: Marker: - 51, 0 &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp;DAC1: Marker: - 51, 0 &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp;SysRef period in terms of DAC T1s =3D =
2304 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted3">Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[26=
3]: metal: info: &nbsp; &nbsp; &nbsp;DAC target latency =3D 800 &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: error: &nbsp; &nbsp=
; Error : DAC alignment target latency of 816 &lt; minimum possible 816<br>
</div>
<div class=3D"elementToProof ContentPasted2"><br>
</div>
<div class=3D"elementToProof ContentPasted2">What shall I do to debug this =
problem?</div>
<div class=3D"elementToProof ContentPasted2"><br>
</div>
<div class=3D"elementToProof ContentPasted2">Thank you,</div>
<div class=3D"elementToProof ContentPasted2">Max<br class=3D"ContentPasted1=
">
</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0 Conten=
tPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0 Conten=
tPasted1">
<br>
</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; font=
-family: Calibri, Helvetica, sans-serif; color: rgb(0, 0, 0);">
<p style=3D"margin-top:0; margin-bottom:0">Maximilian Matthe</p>
<p style=3D"margin-top:0; margin-bottom:0">Head of Engineering Lab</p>
<p style=3D"margin-top:0; margin-bottom:0">maximilian.matthe@barkhauseninst=
itut.org</p>
<p style=3D"margin-top:0; margin-bottom:0">Tel.: +49 173 4509667<br>
</p>
</div>
</div>
</div>
</div>
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzende der Gesellschafterdelegation:
 Dr. Undine Kr=E4tzig <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_FR2P281MB2816B4EAC4DCCC82FD3A9C6790679FR2P281MB2816DEUP_--

--===============4096179967855651817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4096179967855651817==--
