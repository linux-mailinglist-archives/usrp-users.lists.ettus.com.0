Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CA0152290
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2020 23:56:08 +0100 (CET)
Received: from [::1] (port=41794 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iz76z-0002RJ-Tq; Tue, 04 Feb 2020 17:56:05 -0500
Received: from mail-lj1-f176.google.com ([209.85.208.176]:36821)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <martin.braun@ettus.com>)
 id 1iz76w-0002D2-Ga
 for usrp-users@lists.ettus.com; Tue, 04 Feb 2020 17:56:02 -0500
Received: by mail-lj1-f176.google.com with SMTP id r19so371347ljg.3
 for <usrp-users@lists.ettus.com>; Tue, 04 Feb 2020 14:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=gj1FwQdraYfBj1ZwNT4O6O/r41+eaCr4nmOR2ofbHlw=;
 b=CzH+0vM8w0SXY5IX6qCm23q6Tr30m9ikZBI21QMkVi6d2JPmYhA3nRkDoRWgTQtB5X
 qjw73fXP2Mus6nDSiNluSQTkqqY06fld0CUM1Qt4wzZHwuFYodC1+jH6VLSUiUqnfbTT
 ETlIxXVns51jtSLed/lj7PgZ0Azfur35ge6OChLgu+UvvhHUfCYJypJI1xHAb0Qtnu3u
 2T8nZtPcpV2OxZbvEgBHt9pAz5dCNZNVvvyZV8RuFv6skxFEKERsA2wG1LrqIyCFJyyu
 /zm3Gv1N73la445lD0qISgGt2tcWfr31C/GXhuo/iWqiRZpe7+u5FYr/UtN44aWFZfSj
 UktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gj1FwQdraYfBj1ZwNT4O6O/r41+eaCr4nmOR2ofbHlw=;
 b=Ti6wg2aDpwQrok9gHMC/EBijOsMD12u1m1Y9ApdSJxAdA2dTo0C3dT2hpjuaMIQTwX
 Pfr18a2dNHbKFdqGUA4lBRselWDO4IAp6eQgD/o5Kb9vhScNIgXOy/5PzG9W+V9VBG/k
 iQKsQKTL7ZESDrwPaH2bS44EpMyA/DZ2ieHJ/rOUvfDf7zFa94PAhQBJl3cwP7bjXnzy
 XEESDdrAaUBIx1xm5E3Go2rqqmooZC0wpo+BU5aD/dB3AG+Dz7xpg3ufKQXfSr9TfdFf
 3lm8B05namaxhcTD1NS8buS3CI53OkPk0reVXg3U5pOObGn4ztSzlvNvgMVLvS2OXv4X
 kk2Q==
X-Gm-Message-State: APjAAAUv4FuURI47l5FohbtETGwoURhyWWL9fpCJ/yC8pvF0E+ELwuQY
 ZV4HshRVvT9ewlVuu3UUiGFOQZ61BrwfPmhJpkX24bO36fAv6A==
X-Google-Smtp-Source: APXvYqyi4ljFi6Z2pc6G6SVOCO1TKGw51/BCfxMvhS9vOWtbzElOJto7BfUUFPXtaoJ+1zcDZtTKV8tPIE3lxD2LI60=
X-Received: by 2002:a2e:7d01:: with SMTP id y1mr19411900ljc.100.1580856920806; 
 Tue, 04 Feb 2020 14:55:20 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 4 Feb 2020 14:55:09 -0800
Message-ID: <CAFOi1A4kwawxH_Wp96xymVWWbhUi8S4gsRc9c479iqHrmKEu5Q@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] [UHD] FPGA code will be merged back into the UHD
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Content-Type: multipart/mixed; boundary="===============6614142288077633627=="
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

--===============6614142288077633627==
Content-Type: multipart/alternative; boundary="00000000000034a9f2059dc7efa3"

--00000000000034a9f2059dc7efa3
Content-Type: text/plain; charset="UTF-8"

Hi all,

I just pushed a pretty big change to the UHD repository. Going forward, we
will be tracking the FPGA code and the UHD code in the same repository, as
we did pre-2014.

For most of you, this won't be a big change, except for a big changeset on
your next git pull. If you are running UHD from pre-built binaries, this
won't affect you at all. However, for those who play around in the git
repositories, and build FPGA images from source, there will be some changes.

*Summary of changes going forward:*
- The fpga-src submodule is no longer part of the repository
- FPGA code is now tracked in the fpga/ subdirectory
- Commits that affect FPGA and UHD code alike (or FPGA and MPM code) will
be committed in a single commit going forward
- We are planning to provide release tarballs both with and without the
FPGA source code. The details on that are still in the works.

*Why are we doing this?*
I'll be frank: This is something we did for our own benefit, since we treat
the FPGA and UHD code bases as a unit, it is easier to develop within a
single repository. In particular, the ability to commit FPGA and UHD
changes in a single atomic commit, is a great win. I do think this is good
for anyone who wants to inspect the codebase, though. Occasionally when we
introduced changes that would modify both UHD and FPGA, and then changed a
compat number as well, users weren't sure which versions of FPGA and UHD to
match up. This is also true for us at Ettus Research / NI, most importantly
in our continuous integration systems, where it is much easier to verify
the consistency of a single code base, than running two separate checks and
stitching them together.

*How can I rebase code from the FPGA repository onto the new UHD
repository?*
With git, this is very easily done. The git commit message contains all the
required instructions.
See here:
https://github.com/EttusResearch/uhd/commit/bafa9d95453387814ef25e6b6256ba8db2df612f

*How will this affect the images manifest?*
FPGA images will continue to contain the git commit hash they were built
from. That means that a commit that changes something in the FPGA source
code cannot also contain image manifest changes containing those FPGA
images. However, we are planning some modifications to
uhd_images_downloader such that it will be able to also download the
correct image zip files for those commits. This is something that can come
in handy for git bisect, it is not something that most users will require.

*What about the UHD-3.15.LTS branch?*
This change is only rolled out to master branch. UHD 3.15 will, for the
duration of its lifetime, receive FPGA updates the same way it always has
(i.e., the fpga repository on GitHub will be updated, and the submodule
pointer will be updated as well). This is also why the fpga-src/ submodule
and the fpga/ directory have different path names, so branch switching
between master and UHD-3.15.LTS remains easily possible without submodule
clashes.

*What about the fpga repository on GitHub?*
For the reasons laid out above, it will remain as-is. The master branch
will be frozen, though, to the state it was in before the merge into UHD.
This is useful for the history of the branch, bisecting before the merge,
and git blame.

Please respond to this thread with questions. Thanks!

--Martin

--00000000000034a9f2059dc7efa3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I just pushed a pret=
ty big change to the UHD repository. Going forward, we will be tracking the=
 FPGA code and the UHD code in the same repository, as we did pre-2014.</di=
v><div><br></div><div>For most of you, this won&#39;t be a big change, exce=
pt for a big changeset on your next git pull. If you are running UHD from p=
re-built binaries, this won&#39;t affect you at all. However, for those who=
 play around in the git repositories, and build FPGA images from source, th=
ere will be some changes.</div><div><br></div><div><b>Summary of changes go=
ing forward:</b><br></div><div>- The fpga-src submodule is no longer part o=
f the repository</div><div>- FPGA code is now tracked in the fpga/ subdirec=
tory</div><div>- Commits that affect FPGA and UHD code alike (or FPGA and M=
PM code) will be committed in a single commit going forward</div><div>- We =
are planning to provide release tarballs both with and without the FPGA sou=
rce code. The details on that are still in the works.<br></div><div><br></d=
iv><div><b>Why are we doing this?</b></div><div>I&#39;ll be frank: This is =
something we did for our own benefit, since we treat the FPGA and UHD code =
bases as a unit, it is easier to develop within a single repository. In par=
ticular, the ability to commit FPGA and UHD changes in a single atomic comm=
it, is a great win. I do think this is good for anyone who wants to inspect=
 the codebase, though. Occasionally when we introduced changes that would m=
odify both UHD and FPGA, and then changed a compat number as well, users we=
ren&#39;t sure which versions of FPGA and UHD to match up. This is also tru=
e for us at Ettus Research / NI, most importantly in our continuous integra=
tion systems, where it is much easier to verify the consistency of a single=
 code base, than running two separate checks and stitching them together.</=
div><div><br></div><div><b>How can I rebase code from the FPGA repository o=
nto the new UHD repository?</b></div><div>With git, this is very easily don=
e. The git commit message contains all the required instructions.</div><div=
>See here: <a href=3D"https://github.com/EttusResearch/uhd/commit/bafa9d954=
53387814ef25e6b6256ba8db2df612f">https://github.com/EttusResearch/uhd/commi=
t/bafa9d95453387814ef25e6b6256ba8db2df612f</a></div><div><br></div><div><b>=
How will this affect the images manifest?</b></div><div>FPGA images will co=
ntinue to contain the git commit hash they were built from. That means that=
 a commit that changes something in the FPGA source code cannot also contai=
n image manifest changes containing those FPGA images. However, we are plan=
ning some modifications to uhd_images_downloader such that it will be able =
to also download the correct image zip files for those commits. This is som=
ething that can come in handy for git bisect, it is not something that most=
 users will require.</div><div><br></div><div><b>What about the UHD-3.15.LT=
S branch?</b></div><div>This change is only rolled out to master branch. UH=
D 3.15 will, for the duration of its lifetime, receive FPGA updates the sam=
e way it always has (i.e., the fpga repository on GitHub will be updated, a=
nd the submodule pointer will be updated as well). This is also why the fpg=
a-src/ submodule and the fpga/ directory have different path names, so bran=
ch switching between master and UHD-3.15.LTS remains easily possible withou=
t submodule clashes.<br></div><div><br></div><div><b>What about the fpga re=
pository on GitHub?</b></div><div>For the reasons laid out above, it will r=
emain as-is. The master branch will be frozen, though, to the state it was =
in before the merge into UHD. This is useful for the history of the branch,=
 bisecting before the merge, and git blame.</div><div><br></div><div>Please=
 respond to this thread with questions. Thanks!</div><div><br></div><div>--=
Martin<br></div></div>

--00000000000034a9f2059dc7efa3--


--===============6614142288077633627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6614142288077633627==--

