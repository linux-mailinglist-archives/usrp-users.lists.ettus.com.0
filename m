Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DBA616B90
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 19:07:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B85C384082
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 14:07:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667412429; bh=eLBDIO1BNuSNrf7kIjeYFLBZtgsYLe8V5joopAD/Mcw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Mrj3yL+jMIDtQ7Wgj+0ODuc8XY5AuIZs1k8xVpHgwHOEdhCTtlLsyVBMBo7tM6nMm
	 O++J20/i+cZJ/8w484k6dCrcaFx8j+MxsrAsVenTI+YVNbo+3GTLl9tMFLKk8x0HND
	 /BFfNjF6c181QGqnHqD8yG0l/PmB1S1GtLugVGUWzZ0YzT552pRFfQtt2s6oSAk2r0
	 spgGmV/YX2aOQrO/zyDO71Xns5Ajq323ljsV94k+2uFs/hmMmdF1NVvCI3CgFpgm9+
	 zrFAW4+JCNDcXO+fpcd75dYCV4tJgPszSAgCR6McRPQXdJ+Sf4r40CX30c3GX/03nS
	 jvMEuCbLw89zQ==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0051.outbound.protection.office365.us [23.103.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 520E6383D96
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 14:05:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="bpDvAKDe";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=huKIOVN+jLbmR1QdFtZ+yL661V2WB6Ud7s18eYYaqD4kumSTrkDy6tjchaPc6NUT92SA1ABvMuaYsQOYHM1rQzQYe+V9HBDO0eKnMjuqxbECcsekYLZ+OpHiIe1QsXHhQG/bxuVraWEhLIpU6lUfT8OTbFEA0vZK0n/F4JGB5Pp1E2mPS+Y7Otf0mKwJ8vepphZa0h+q5M/w+X+Xs7SC4sRhP0ZRXqVMfzlvz/nXS2F/IqkOt2SDU4A9oOcfefY70BfKamEhlBFQsliXqFyHVufzOoakD7ulLdwiawsGzWBfTWUZ/8Zk3VHKfUtteUvW/K64qCOdFv4smxTt757LgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uhk8xTtOglKdeZLk/w0ENdYNaJAeknud/bO33koMkRU=;
 b=XuTRYrahVxK+NHRwm1wEQ62cXQj7vlS8pER1jcqr3/9B5nXiBo4FtDUrZSV+yQrPkDlwHNpIBjHfb8cvcGeQBoH+4vQC0wARirJlbUv8Vkv9hFvwgbVwA8ZtwEjIAv7G131Ckl2WKtd3wrFvuHxQwEWjZ7sSOrl6hfLEDV8f3XjMCZB603k6mocjBtmcmjs9Y72DyR/XLn9mAZtpO/EcA9zUeTm2H9YCzaA2SL4RBDEfEtG+EmtILxMPi8gX26TYh421u1ORkw9CZCy1NMV1DJobdjunj9XdN+szt/erm6Gn6tkmsUDapabS4WsHU9dX2T0KWx9s2l8l8NqgNKhuCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uhk8xTtOglKdeZLk/w0ENdYNaJAeknud/bO33koMkRU=;
 b=bpDvAKDeGFjIOQz2X/5eO1zqy9Z9k+cunL+WB2EekYaGS+uTJ7iltZINgheas9i/QmG244N1DXgcDUT98KF8+opKLZKR4402JVu1IZZObhCcph4ETEtTUS7TEfTZHg5xEOoqv79QG+ctOKHfEGzVv3NdfZP/sa45a2lyoC1tnz6TOB9Cx0nO5m1U6+EOhmfp5AvSdsFEEjsDf8iyyELir47UHRkco1w4rHTWD1AnzQUQQAy3yA+yxpZsRcD1FzVvK2/xFz6LNBU9Nmp6UYjZYLVi292ZtgIN8mI2fvJJps83vLcOsyYVPzxz+szDTuCqXtD/4UFtv3yx+c4M50nEEg==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1447.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Wed, 2 Nov
 2022 18:05:43 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::dd99:586:4130:6ca3]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::dd99:586:4130:6ca3%6]) with mapi id 15.20.5746.034; Wed, 2 Nov 2022
 18:05:43 +0000
From: David Raeman <david@SynopticEngineering.com>
To: Jim Palladino <jim@gardettoengineering.com>, "Marcus D. Leech"
	<patchvonbraun@gmail.com>, "USRP-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 LO stability problem
Thread-Index: 
 AQHY7rAbGMBhLfKBpkKklSXlG+QYJ64rkK2AgAAA9kqAAALFMIAAAbTxgABMEYeAAAnCwA==
Date: Wed, 2 Nov 2022 18:05:43 +0000
Message-ID: 
 <BN2P110MB17472E37191FAFE3EA552504B7399@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
References: 
 <BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <bc238838-4f69-b676-79b7-955751d6a628@gmail.com>
 <BYAPR12MB33013BD6E3BE1D6065E79830B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <BN2P110MB1747DA483336FD90E553122AB7399@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <BYAPR12MB3301632013DEC60995030EB0B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <BYAPR12MB3301FAE1116FDA502367FA27B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
In-Reply-To: 
 <BYAPR12MB3301FAE1116FDA502367FA27B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB1447:EE_
x-ms-office365-filtering-correlation-id: cdb9bf30-fe49-4f22-9aef-08dabcfcdc17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 h4lJ7mHTLkOS6I/++kRkRAP24rsWR34dMJKlZvF3B3Xupqt0hNL86im1I+x/kROjWH+tgvrf7rFBiVu/Tg9HdIz+4JZB94J0cqt5cy1Vo+nSPz+MHLkzgf3Bg0thTpP/Py5ILcFDBMbUo6S2e+u+obWSUvr2leVSYuJCA2qFCf4ApJkuq7VKhuJEuFsWmBY9tuhJbj9pRjD+YwAE3IQxYGbbatikkyjFhZ8WvKsgWy5eUMfVOZ/gOYN/WdFdF6abmtiLNrsvM58JGoDxGE9Vp6EAqUS/+bckfg+TgBHQbp6RTXNKMRQnan3kslhDCAKKogJ9lgRboC+nmOiPS85Y/Qmd5zWZGexjRgtqFnEuUJPUnw0KibAM6QMxsIBpdvvleWaVDorod4Q0sraR+mHgbGAmg3XYU3RDytwFOsxGE9BUmvcktyg3SUgQ78nosgXJKBIIHt4I1jcikBGffGfkx0ExfHE15ZPB4Vl92JkWwr07l2EDRmnvYhJ2rC962g01z8AY5PLbNR78QOBoUZoU5J5kZnHfHzQbsRJhysH6kMYeGzmQihpwqTNYS40nILQreUzqwCuRxXwcjvrowwAjxu5GFt70IpKzxwYFo8ENKyfhXXiPGVwhXgooGp8AY/aVgUuFNkqkG7w/iz/CsF2zMPk29zflPpgqE/ulvykNGZ+ROO90rqseDITL7b7gZE7E0ljhoKwH6zT+l0cFIg+Pp/tS2WjLH8Vl4yevS5kV5c/ovaln9m7zJ7Eh5C4xBEpN
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(39830400003)(396003)(136003)(451199015)(8936002)(2906002)(38100700002)(5660300002)(508600001)(33656002)(86362001)(38070700005)(122000001)(6506007)(52536014)(7696005)(166002)(186003)(53546011)(110136005)(71200400001)(55016003)(41320700001)(76116006)(64756008)(66476007)(66446008)(8676002)(66556008)(9686003)(83380400001)(66946007)(41300700001)(26005)(66899015)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 eMCJ61j7hbaV/sHaxC5PYhGide8RvkpmaSrS2dxbxdCus80AT0QVQrdIF8gZuZ3nQfTRs0OLht+cGt8UpzzvFa11ZotjqjUCtVnD7dQp5CLZPD2DMMznGslDtXnHufL8UxLPBF9rzUmW0ZXC8JqV729BxBoRj8wRG6etzYVnxXh5SsPR0MBI6FHOX9+wPIXpyMuhRSVRsXCGNaakAOSBFr1dCJ65HvnYAMEQ/fq+vB0tmsWOLJGVSYdTmqR7Jpc8fD+5Ej2zMAr50uTdPhno3Yny+eKau+3M1sd4jAt4aRmHdLih71N1eaPAYQmng4+Htk/iobbbC+idpTkMtU71xpQhL4QLO0frpBwEeqbJEFPBaBjO7iLpbleOMIYEU1fo0z5JFMUjzpr4ZnyduxV0r7ARlJVqHdBG38b5Adea3T0=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: cdb9bf30-fe49-4f22-9aef-08dabcfcdc17
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 18:05:43.6036
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1447
Message-ID-Hash: GSOYUGBKIRSSP5FHJLBZX6VANQATQ64W
X-Message-ID-Hash: GSOYUGBKIRSSP5FHJLBZX6VANQATQ64W
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO stability problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LTYVTOHTA3JC4FUH3LLVN5CTWX2XPHQV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8509547496891538549=="

--===============8509547496891538549==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB17472E37191FAFE3EA552504B7399BN2P110MB1747NAMP_"

--_000_BN2P110MB17472E37191FAFE3EA552504B7399BN2P110MB1747NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jim, thanks for the feedback and I'm glad it helped. Spurious phase noise t=
ends to impair performance for our projects as well, though in that case ju=
st fixing the locking allowed me to move on. My current project has shifted=
 my focus to E320s instead of N320s, but I'm very interested in following a=
ny further research/improvements that reduce phase noise on either radio ar=
chitecture.

Best,
David


From: Jim Palladino <jim@gardettoengineering.com>
Sent: Wednesday, November 2, 2022 1:33 PM
To: David Raeman <david@SynopticEngineering.com>; Marcus D. Leech <patchvon=
braun@gmail.com>; USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Re: N320 LO stability problem

I ended up manually applying David's "patch" to UHD 4.1.0.5 (manually edite=
d the files and rebuilt UHD). This did fix the issue with the N320's not lo=
cking based off of the limited tests I've performed so far. Thanks for poin=
ting to that, David.

However, I think there is still more not quite right. Even though I seem to=
 consistently achieve lock at these "trouble frequencies", I still see spur=
s increasing and decreasing in power like I described in the first email. A=
lso, I occasionally see what looks like quick jumps in overall phase noise.=
 David, I saw you made a comment in the original UHD issue that you posted =
regarding not using the oscillator doubler and multiplier at the same time.=
 If/when I have time, I might look more at this and other LMX settings. For=
 now, the fact that the synthesizer seems to lock consistently will allow u=
s to keep moving forward.

Also, I did briefly update one of the N320s to UHD 4.3.0.0 and saw the exac=
t same overall behavior.

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoenginee=
ring.com>>
Sent: Wednesday, November 2, 2022 8:52 AM
To: David Raeman <david@SynopticEngineering.com<mailto:david@SynopticEngine=
ering.com>>; Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@=
gmail.com>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> =
<usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] Re: N320 LO stability problem

David, that is great, I'll look into that. I'm working on updating to 4.3.0=
.0 right now, but I'll try your double tune solution first. If this has bee=
n solved, that will save me a lot of time poking around in the LMX code.

Thanks,
Jim

________________________________
From: David Raeman <david@SynopticEngineering.com<mailto:david@SynopticEngi=
neering.com>>
Sent: Wednesday, November 2, 2022 8:49 AM
To: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoengineeri=
ng.com>>; Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gma=
il.com>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <us=
rp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: RE: [USRP-users] Re: N320 LO stability problem


Hi Jim,



I ran into what sounds like the same issue using N320s operating at nearly =
the same center frequency. I was able to isolate a fix (some tweaks in the =
LMX2592 configuration), and my PR was folded into UHD 4.2. I believe anothe=
r, unrelated fix for N320 tuning was also committed in UHD 4.2.0.1. I'd str=
ongly recommend trying that release.



For more context, my PR here<https://urldefense.proofpoint.com/v2/url?u=3Dh=
ttps-3A__github.com_EttusResearch_uhd_pull_572&d=3DDwMFAg&c=3DeuGZstcaTDllv=
imEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwp=
Yx0&m=3DCglWmCZNAv75-zoj2CB9dpWj4DRHkMpB8nWcwWdM2mk&s=3Dm4xlgwVRVSi2686M6zZ=
kXh8oqKef561kyaZzbOzO0kI&e=3D> has details. When I was using UHD 4.1, I dis=
covered that I could bypass this problem by tuning to the same frequency tw=
ice in a row. That might be worth a try on your end if upgrading UHD is one=
rous..



Cheers,

David



From: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoenginee=
ring.com>>
Sent: Wednesday, November 2, 2022 8:38 AM
To: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.com=
>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 LO stability problem



Hello,



Thanks for the responses. Yes, I have the same issue with tones off center =
-- we initially noticed the issue with some wide-band modulated waveforms. =
I did just try another flowgraph with a tone at 100KHz off of DC and confir=
med that the issue does still persist.



I'll try to experiment with other UHD versions today to see if that makes a=
 difference.



Thanks,

Jim



________________________________

From: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.c=
om>>
Sent: Wednesday, November 2, 2022 8:31 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] Re: N320 LO stability problem



On 02/11/2022 08:11, Jim Palladino wrote:

Hello,



We have about ten N320s and almost all are exhibiting issues regarding the =
LO stability. It appears the LO is not locking at certain frequencies, or i=
f it does, it barely maintains lock. We can see this with either a gnuradio=
 flowgraph consisting of nothing more than a usrp_sink and a constant drivi=
ng it's input, or using the included UHD example "tx_waveforms". The proble=
m frequency I've been focusing on is 1112MHz. So, the following command dem=
onstrates the issue:

./tx_waveforms --freq=3D1112000000 --wave-type=3DCONST --wave-freq=3D0 --ra=
te=3D1000000 --gain=3D40

Some of the N320s seem to lock ok, and you can see a reasonable tone at the=
 output. However, other N320's don't lock -- we will see a several MHz-wide=
 "blob" about 4 MHz lower than the requested frequency. Note that they aren=
't reporting that the synthesizer isn't locked, but that is what it looks l=
ike. On units where the LO appears to lock, if I look closely on a spectrum=
 analyzer, the phase noise often looks horrible, or I see large spurs aroun=
d 106KHz off of center that slowly move up and down by 30 to 40 dB. It look=
s like it's barely maintaining lock.

This issue varies by N320 and also by channel ("A:0" vs "B:0") on the N320.=
 It doesn't matter if I use an internal or external reference -- the behavi=
or might be very slightly different, but not much. Gain settings, sample ra=
tes, etc. don't seem to matter -- it appears to be an RF/synthesizer issue.

I also tried enabling "spur_dodging", since that changes LMX loop parameter=
s and that seemed to help in some cases (units/channels) but hurt in others=
.

I've been focusing on the TX path, but someone else in my office was mentio=
ning that they have seen the same type of thing when receiving -- the resul=
t was that 1 out of several N320s he was using to simultaneously receive a =
signal showed the same signal several MHz off of what the other N320s saw -=
- and it looked very distorted. I'm guessing that what he saw was the resul=
t of the LO not locking properly.

We're using UHD 4.1.0.5 and associated filesystem, FPGA image.

Any thoughts on this?



Thanks,

Jim





_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

Also, if you try sending a tone at other than DC (perhaps 10kHz), do you ge=
t different results?  This might just be the
  DC-offset removal algorithm producing results that look like lack of synt=
hesizer lock.

--_000_BN2P110MB17472E37191FAFE3EA552504B7399BN2P110MB1747NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
p.xxmsonormal, li.xxmsonormal, div.xxmsonormal
	{mso-style-name:x_x_msonormal;
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle27
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Jim, thanks for the feedback and I&#8217;m glad it h=
elped. Spurious phase noise tends to impair performance for our projects as=
 well, though in that case just fixing the locking allowed me to move on. M=
y current project has shifted my focus to
 E320s instead of N320s, but I&#8217;m very interested in following any fur=
ther research/improvements that reduce phase noise on either radio architec=
ture.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best,<o:p></o:p></p>
<p class=3D"MsoNormal">David<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Jim Palladino &lt;jim@gardettoengineeri=
ng.com&gt; <br>
<b>Sent:</b> Wednesday, November 2, 2022 1:33 PM<br>
<b>To:</b> David Raeman &lt;david@SynopticEngineering.com&gt;; Marcus D. Le=
ech &lt;patchvonbraun@gmail.com&gt;; USRP-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Re: N320 LO stability problem<o:p></o:p></=
p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I ended=
 up manually applying David's &quot;patch&quot; to UHD 4.1.0.5 (manually ed=
ited the files and rebuilt UHD). This did fix the issue with the N320's not=
 locking based off of the limited tests I've performed
 so far. Thanks for pointing to that, David.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">However=
, I think there is still more not quite right. Even though I seem to consis=
tently achieve lock at these &quot;trouble frequencies&quot;, I still see s=
purs increasing and decreasing in power like I
 described in the first email. Also, I occasionally see what looks like qui=
ck jumps in overall phase noise. David, I saw you made a comment in the ori=
ginal UHD issue that you posted regarding not using the oscillator doubler =
and multiplier at the same time.
 If/when I have time, I might look more at this and other LMX settings. For=
 now, the fact that the synthesizer seems to lock consistently will allow u=
s to keep moving forward.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Also, I=
 did briefly update one of the N320s to UHD 4.3.0.0 and saw the exact same =
overall behavior.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks,=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Jim<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From:</span></b><span=
 style=3D"color:black"> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoeng=
ineering.com">jim@gardettoengineering.com</a>&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:52 AM<br>
<b>To:</b> David Raeman &lt;<a href=3D"mailto:david@SynopticEngineering.com=
">david@SynopticEngineering.com</a>&gt;; Marcus D. Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem</span> <o:p></o:=
p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">David, =
that is great, I'll look into that. I'm working on updating to 4.3.0.0 righ=
t now, but I'll try your double tune solution first. If this has been solve=
d, that will save me a lot of time poking
 around in the LMX code.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks,=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Jim<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From:</span></b><span=
 style=3D"color:black"> David Raeman &lt;<a href=3D"mailto:david@SynopticEn=
gineering.com">david@SynopticEngineering.com</a>&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:49 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
>jim@gardettoengineering.com</a>&gt;; Marcus D. Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt;<br>
<b>Subject:</b> RE: [USRP-users] Re: N320 LO stability problem</span> <o:p>=
</o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"xxmsonormal">Hi Jim,<o:p></o:p></p>
<p class=3D"xxmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xxmsonormal">I ran into what sounds like the same issue using N=
320s operating at nearly the same center frequency. I was able to isolate a=
 fix (some tweaks in the LMX2592 configuration), and my PR was folded into =
UHD 4.2. I believe another, unrelated
 fix for N320 tuning was also committed in UHD 4.2.0.1. I&#8217;d strongly =
recommend trying that release.<o:p></o:p></p>
<p class=3D"xxmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xxmsonormal">For more context, my PR <a href=3D"https://urldefe=
nse.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch_uhd_pull_5=
72&amp;d=3DDwMFAg&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=
=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3DCglWmCZNAv75-zoj2CB9=
dpWj4DRHkMpB8nWcwWdM2mk&amp;s=3Dm4xlgwVRVSi2686M6zZkXh8oqKef561kyaZzbOzO0kI=
&amp;e=3D">
here</a> has details. When I was using UHD 4.1, I discovered that I could b=
ypass this problem by tuning to the same frequency twice in a row. That mig=
ht be worth a try on your end if upgrading UHD is onerous..<o:p></o:p></p>
<p class=3D"xxmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xxmsonormal">Cheers,<o:p></o:p></p>
<p class=3D"xxmsonormal">David<o:p></o:p></p>
<p class=3D"xxmsonormal">&nbsp;<o:p></o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"xxmsonormal"><b>From:</b> Jim Palladino &lt;<a href=3D"mailto:j=
im@gardettoengineering.com">jim@gardettoengineering.com</a>&gt;
<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:38 AM<br>
<b>To:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">p=
atchvonbraun@gmail.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
><br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem<o:p></o:p></p>
</div>
</div>
<p class=3D"xxmsonormal">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">Hello=
,</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">&nbsp=
;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">Thank=
s for the responses. Yes, I have the same issue with tones off center -- we=
 initially noticed the issue with some wide-band modulated waveforms. I did=
 just try another flowgraph with a tone
 at 100KHz off of DC and confirmed that the issue does still persist.&nbsp;=
</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">&nbsp=
;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">I'll =
try to experiment with other UHD versions today to see if that makes a diff=
erence.&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">&nbsp=
;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">Thank=
s,</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">Jim</=
span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">&nbsp=
;</span><o:p></o:p></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_x_divRplyFwdMsg">
<p class=3D"xxmsonormal"><b><span style=3D"color:black">From:</span></b><sp=
an style=3D"color:black"> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:31 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem</span> <o:p></o:=
p></p>
<div>
<p class=3D"xxmsonormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"xxmsonormal">On 02/11/2022 08:11, Jim Palladino wrote:<o:p></o:=
p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">Hello=
,</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">&nbsp=
;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">We ha=
ve about ten N320s and almost all are exhibiting issues regarding the LO st=
ability. It appears the LO is not locking at certain frequencies, or if it =
does, it barely maintains lock. We can
 see this with either a gnuradio flowgraph consisting of nothing more than =
a usrp_sink and a constant driving it's input, or using the included UHD ex=
ample &quot;tx_waveforms&quot;. The problem frequency I've been focusing on=
 is 1112MHz. So, the following command demonstrates
 the issue:<br>
<br>
./tx_waveforms --freq=3D1112000000 --wave-type=3DCONST --wave-freq=3D0 --ra=
te=3D1000000 --gain=3D40<br>
<br>
Some of the N320s seem to lock ok, and you can see a reasonable tone at the=
 output. However, other N320's don't lock -- we will see a several MHz-wide=
 &quot;blob&quot; about 4 MHz lower than the requested frequency. Note that=
 they aren't reporting that the synthesizer
 isn't locked, but that is what it looks like. On units where the LO appear=
s to lock, if I look closely on a spectrum analyzer, the phase noise often =
looks horrible, or I see large spurs around 106KHz off of center that slowl=
y move up and down by 30 to 40 dB.
 It looks like it's barely maintaining lock.<br>
<br>
This issue varies by N320 and also by channel (&quot;A:0&quot; vs &quot;B:0=
&quot;) on the N320. It doesn't matter if I use an internal or external ref=
erence -- the behavior might be very slightly different, but not much. Gain=
 settings, sample rates, etc. don't seem to matter --
 it appears to be an RF/synthesizer issue. <br>
<br>
I also tried enabling &quot;spur_dodging&quot;, since that changes LMX loop=
 parameters and that seemed to help in some cases (units/channels) but hurt=
 in others.<br>
<br>
I've been focusing on the TX path, but someone else in my office was mentio=
ning that they have seen the same type of thing when receiving -- the resul=
t was that 1 out of several N320s he was using to simultaneously receive a =
signal showed the same signal several
 MHz off of what the other N320s saw -- and it looked very distorted. I'm g=
uessing that what he saw was the result of the LO not locking properly.&nbs=
p;<br>
<br>
We're using UHD 4.1.0.5 and associated filesystem, FPGA image.<br>
<br>
Any thoughts on this?</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">&nbsp=
;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">Thank=
s,</span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">Jim</=
span><o:p></o:p></p>
</div>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:12.0pt;color:black">&nbsp=
;</span><o:p></o:p></p>
</div>
<p class=3D"xxmsonormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></=
p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
</blockquote>
<p class=3D"xxmsonormal" style=3D"margin-bottom:12.0pt">Also, if you try se=
nding a tone at other than DC (perhaps 10kHz), do you get different results=
?&nbsp; This might just be the<br>
&nbsp; DC-offset removal algorithm producing results that look like lack of=
 synthesizer lock.<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN2P110MB17472E37191FAFE3EA552504B7399BN2P110MB1747NAMP_--

--===============8509547496891538549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8509547496891538549==--
