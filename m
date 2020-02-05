Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF8D15393D
	for <lists+usrp-users@lfdr.de>; Wed,  5 Feb 2020 20:42:50 +0100 (CET)
Received: from [::1] (port=44490 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1izQZP-0001Ve-AZ; Wed, 05 Feb 2020 14:42:43 -0500
Received: from mail-dm6nam12olkn2080.outbound.protection.outlook.com
 ([40.92.22.80]:20875 helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1izQZM-0001P5-0G
 for usrp-users@lists.ettus.com; Wed, 05 Feb 2020 14:42:40 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lnb/F5guLYa9vLLAjX2q+b56FsZcgX4vvjirapVL3x6VwIfC4tjvy2tBb7h5eNONRBi0VzPOSrQEYrcF0agv6fqheZgOJup/nsMdS2N/mN5E/UEtPaALIg6fpMBkgKyvxk/RLVVfNeto9F4Tazm/obeHkxz3HzpHfh/wQOVD5NwJDH4mkZO9F31VdMfKEPY1keVZySLLfyoOaz6VL60NNydwG7lYhHIC+AkuMcux9YwJyzjsgjPrhCEwMX/id9ThgpyCVXtuLqMloNM9RBKmgEF2jfmPoH89/iVpd46RFz6jfV9NNDrVhbNF27Ab8iJFeqLqFngKdYp3UMuVHL/5Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ad24I8eOwy0WA4GrudKJzlCpmb4ARM0o6HfLzP/VPAM=;
 b=iBOt27AbP2y3JJIEkflXfzfrk12kERXPlhNGA0GBfVKA45T2JVqkVupTAjxtGOzedDWGgimlhXarciawBGUPM7gKXvoAbiaBeifbiRUuOObbMGca1Q2Sn9BdkA+gM9dwNQLytmySMrJ8Xd+1gLzaX/APBD8VwMkgpOCgsj/EnvX+s1Y870zBg/0YkiImH3PzBpIO7bmlkdCssMd3p4mniB/tE1feoWtNOBSqfnGbp8Uvv9KWdoOhUVCM+tFcU7elLQe6DoYCERd/8DPPO5FqRBQZhUzGMA5SyCuxE0Euy4sdYbFsZprCOc9Lqrsl2cvAc3rQ24h6dhJE0Vtq3Dqfzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ad24I8eOwy0WA4GrudKJzlCpmb4ARM0o6HfLzP/VPAM=;
 b=eogfghzY8NiwME84WQ8TId/0fYYr+9wgw/Q0sEpMHeeQNpr4iEMNU9MwU/brqEK1fUauwQbB7ghfaRnWt2+6Dtg/9ktH8AfMct3FilKUY5szIGbb2m1PQN+WfNNTWCZyNp86eYIWnlbe5yvKX9q6b7W2mey95c3jKyjY/XVBq/uOqebIENSz3hVViKvDML4N/mZgm7xpHoLViTBVyw175/RQH4B7qBAD945L0W2Pd1lvPyyGOwbodatovrhygq8ioF3FjVgtISLPKZ5TlYuAiHXFxk9nr1e7Yhd75G/s7Z4xJHg49G+YVaUjv/2WSIFFI6nJMZdCUtoIxXR1ztGWcA==
Received: from DM6NAM12FT067.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::3c) by
 DM6NAM12HT027.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::161)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.10; Wed, 5 Feb
 2020 19:41:59 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.13.178.58) by
 DM6NAM12FT067.mail.protection.outlook.com (10.13.179.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.10 via Frontend Transport; Wed, 5 Feb 2020 19:41:58 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6066:3c9:8b63:55cb]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6066:3c9:8b63:55cb%4]) with mapi id 15.20.2686.034; Wed, 5 Feb 2020
 19:41:58 +0000
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Martin Braun
 <martin.braun@ettus.com>
Thread-Topic: [USRP-users] [UHD] FPGA code will be merged back into the UHD
 repository
Thread-Index: AQHV265I5hAMFnwTFUCygTiKGRi7tagNAJtz
Date: Wed, 5 Feb 2020 19:41:58 +0000
Message-ID: <BN6PR19MB16355A86D6C73792BE7A6CA4A4020@BN6PR19MB1635.namprd19.prod.outlook.com>
References: <CAFOi1A4kwawxH_Wp96xymVWWbhUi8S4gsRc9c479iqHrmKEu5Q@mail.gmail.com>
In-Reply-To: <CAFOi1A4kwawxH_Wp96xymVWWbhUi8S4gsRc9c479iqHrmKEu5Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E0FDD7AC672D7E673F319497C504029BB00751A0E0A292E02F1845A2F6FF7503;
 UpperCasedChecksum:0E1F6506ADB76C469093D9672A3FFF6EF04D50B2E8B449C76F22BF26E39C77CB;
 SizeAsReceived:7021; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [5hzJ6UKKKoRsfMfeLgZF7WoAZ7us16uL]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: c1e01cc9-4cf7-4cc8-f24f-08d7aa7376f1
x-ms-traffictypediagnostic: DM6NAM12HT027:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BbCH8aK2Su3QwZt6pb27btBvJXgPLXpCV5CVLliGG3e3bvEM3IyPg/nVNElV0FBAMSiun21Uf2F/YywMjD+G2YtpyzKzYz7C7bhGV0GCnBQVIkEHwd76Ww2ibAGOYuGRhrb/XuskN7wSwB8cB2x63f482wBrWrpJ1xjR8ULABKjTATG7e7TYfyNKNB+xxrAv9GzLkXjEiOJ5Vn0JTn7rxJlBuDnyV4oMfoIOEuQnfPo=
x-ms-exchange-antispam-messagedata: Fo4NwShyZUCq7V3XLJjgQb/JlcXqjULJDvmK1zvrKuqq++hnq10swqiFJWdp7p9pfWp8o7mQelbp/ckXX9qEZ+gyLLU5j2CcdPY+E3854bAYh/ZhlFHVUpU8AVg+vgl5Ge/0y8ITwxK/3HuTIlh0GA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c1e01cc9-4cf7-4cc8-f24f-08d7aa7376f1
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2020 19:41:58.8838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT027
Subject: Re: [USRP-users] [UHD] FPGA code will be merged back into the UHD
 repository
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============7844238937989734763=="
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

--===============7844238937989734763==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB16355A86D6C73792BE7A6CA4A4020BN6PR19MB1635namp_"

--_000_BN6PR19MB16355A86D6C73792BE7A6CA4A4020BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Will this significantly change the Application Notes (AN-823) for RFNoC Dev=
elopment?  Or is it just removing the git fpga?

Our IT guys use the AN for their install process.

Thx,
Jeff

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Martin B=
raun via USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, February 4, 2020 4:55 PM
To: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] [UHD] FPGA code will be merged back into the UHD repo=
sitory

Hi all,

I just pushed a pretty big change to the UHD repository. Going forward, we =
will be tracking the FPGA code and the UHD code in the same repository, as =
we did pre-2014.

For most of you, this won't be a big change, except for a big changeset on =
your next git pull. If you are running UHD from pre-built binaries, this wo=
n't affect you at all. However, for those who play around in the git reposi=
tories, and build FPGA images from source, there will be some changes.

Summary of changes going forward:
- The fpga-src submodule is no longer part of the repository
- FPGA code is now tracked in the fpga/ subdirectory
- Commits that affect FPGA and UHD code alike (or FPGA and MPM code) will b=
e committed in a single commit going forward
- We are planning to provide release tarballs both with and without the FPG=
A source code. The details on that are still in the works.

Why are we doing this?
I'll be frank: This is something we did for our own benefit, since we treat=
 the FPGA and UHD code bases as a unit, it is easier to develop within a si=
ngle repository. In particular, the ability to commit FPGA and UHD changes =
in a single atomic commit, is a great win. I do think this is good for anyo=
ne who wants to inspect the codebase, though. Occasionally when we introduc=
ed changes that would modify both UHD and FPGA, and then changed a compat n=
umber as well, users weren't sure which versions of FPGA and UHD to match u=
p. This is also true for us at Ettus Research / NI, most importantly in our=
 continuous integration systems, where it is much easier to verify the cons=
istency of a single code base, than running two separate checks and stitchi=
ng them together.

How can I rebase code from the FPGA repository onto the new UHD repository?
With git, this is very easily done. The git commit message contains all the=
 required instructions.
See here: https://github.com/EttusResearch/uhd/commit/bafa9d95453387814ef25=
e6b6256ba8db2df612f

How will this affect the images manifest?
FPGA images will continue to contain the git commit hash they were built fr=
om. That means that a commit that changes something in the FPGA source code=
 cannot also contain image manifest changes containing those FPGA images. H=
owever, we are planning some modifications to uhd_images_downloader such th=
at it will be able to also download the correct image zip files for those c=
ommits. This is something that can come in handy for git bisect, it is not =
something that most users will require.

What about the UHD-3.15.LTS branch?
This change is only rolled out to master branch. UHD 3.15 will, for the dur=
ation of its lifetime, receive FPGA updates the same way it always has (i.e=
., the fpga repository on GitHub will be updated, and the submodule pointer=
 will be updated as well). This is also why the fpga-src/ submodule and the=
 fpga/ directory have different path names, so branch switching between mas=
ter and UHD-3.15.LTS remains easily possible without submodule clashes.

What about the fpga repository on GitHub?
For the reasons laid out above, it will remain as-is. The master branch wil=
l be frozen, though, to the state it was in before the merge into UHD. This=
 is useful for the history of the branch, bisecting before the merge, and g=
it blame.

Please respond to this thread with questions. Thanks!

--Martin

--_000_BN6PR19MB16355A86D6C73792BE7A6CA4A4020BN6PR19MB1635namp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Will this significantly change the Application Notes (AN-823) for RFNoC Dev=
elopment?&nbsp; Or is it just removing the git fpga?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Our IT guys use the AN for their install process.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thx,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Martin Braun via USRP-users=
 &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, February 4, 2020 4:55 PM<br>
<b>To:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] [UHD] FPGA code will be merged back into the U=
HD repository</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi all,</div>
<div><br>
</div>
<div>I just pushed a pretty big change to the UHD repository. Going forward=
, we will be tracking the FPGA code and the UHD code in the same repository=
, as we did pre-2014.</div>
<div><br>
</div>
<div>For most of you, this won't be a big change, except for a big changese=
t on your next git pull. If you are running UHD from pre-built binaries, th=
is won't affect you at all. However, for those who play around in the git r=
epositories, and build FPGA images
 from source, there will be some changes.</div>
<div><br>
</div>
<div><b>Summary of changes going forward:</b><br>
</div>
<div>- The fpga-src submodule is no longer part of the repository</div>
<div>- FPGA code is now tracked in the fpga/ subdirectory</div>
<div>- Commits that affect FPGA and UHD code alike (or FPGA and MPM code) w=
ill be committed in a single commit going forward</div>
<div>- We are planning to provide release tarballs both with and without th=
e FPGA source code. The details on that are still in the works.<br>
</div>
<div><br>
</div>
<div><b>Why are we doing this?</b></div>
<div>I'll be frank: This is something we did for our own benefit, since we =
treat the FPGA and UHD code bases as a unit, it is easier to develop within=
 a single repository. In particular, the ability to commit FPGA and UHD cha=
nges in a single atomic commit,
 is a great win. I do think this is good for anyone who wants to inspect th=
e codebase, though. Occasionally when we introduced changes that would modi=
fy both UHD and FPGA, and then changed a compat number as well, users weren=
't sure which versions of FPGA and
 UHD to match up. This is also true for us at Ettus Research / NI, most imp=
ortantly in our continuous integration systems, where it is much easier to =
verify the consistency of a single code base, than running two separate che=
cks and stitching them together.</div>
<div><br>
</div>
<div><b>How can I rebase code from the FPGA repository onto the new UHD rep=
ository?</b></div>
<div>With git, this is very easily done. The git commit message contains al=
l the required instructions.</div>
<div>See here: <a href=3D"https://github.com/EttusResearch/uhd/commit/bafa9=
d95453387814ef25e6b6256ba8db2df612f">
https://github.com/EttusResearch/uhd/commit/bafa9d95453387814ef25e6b6256ba8=
db2df612f</a></div>
<div><br>
</div>
<div><b>How will this affect the images manifest?</b></div>
<div>FPGA images will continue to contain the git commit hash they were bui=
lt from. That means that a commit that changes something in the FPGA source=
 code cannot also contain image manifest changes containing those FPGA imag=
es. However, we are planning some
 modifications to uhd_images_downloader such that it will be able to also d=
ownload the correct image zip files for those commits. This is something th=
at can come in handy for git bisect, it is not something that most users wi=
ll require.</div>
<div><br>
</div>
<div><b>What about the UHD-3.15.LTS branch?</b></div>
<div>This change is only rolled out to master branch. UHD 3.15 will, for th=
e duration of its lifetime, receive FPGA updates the same way it always has=
 (i.e., the fpga repository on GitHub will be updated, and the submodule po=
inter will be updated as well).
 This is also why the fpga-src/ submodule and the fpga/ directory have diff=
erent path names, so branch switching between master and UHD-3.15.LTS remai=
ns easily possible without submodule clashes.<br>
</div>
<div><br>
</div>
<div><b>What about the fpga repository on GitHub?</b></div>
<div>For the reasons laid out above, it will remain as-is. The master branc=
h will be frozen, though, to the state it was in before the merge into UHD.=
 This is useful for the history of the branch, bisecting before the merge, =
and git blame.</div>
<div><br>
</div>
<div>Please respond to this thread with questions. Thanks!</div>
<div><br>
</div>
<div>--Martin<br>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR19MB16355A86D6C73792BE7A6CA4A4020BN6PR19MB1635namp_--


--===============7844238937989734763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7844238937989734763==--

