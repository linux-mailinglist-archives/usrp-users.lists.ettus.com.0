Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D13E3153A80
	for <lists+usrp-users@lfdr.de>; Wed,  5 Feb 2020 22:53:40 +0100 (CET)
Received: from [::1] (port=41252 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1izSc4-0000p9-Ra; Wed, 05 Feb 2020 16:53:36 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:43550)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <martin.braun@ettus.com>)
 id 1izSc1-0000lr-99
 for usrp-users@lists.ettus.com; Wed, 05 Feb 2020 16:53:33 -0500
Received: by mail-lj1-f172.google.com with SMTP id a13so3874854ljm.10
 for <usrp-users@lists.ettus.com>; Wed, 05 Feb 2020 13:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TymXSPrKK5k5JbbYf07PskH9xd8QtDYqOBNVvBM76Ds=;
 b=zfKKFuwGZ4c7Z7AwoafXgrtNRQgpA4o9GNaWZi8ED36a1p673gQrHJb1q9b4dlZBTl
 b2Tf01wRaVMhpuWjEQwW/0AgXLjlzGwQvHzAKU6RL4OBhGgW8o2JttxDBBR30AXu1gmk
 CXAo/lKtwDIA+xERl5mej+ypoSnq0OB9BAvKO6gxTA0C2EgoYGPQdve1V7ExM0Ua4FMp
 jttpY6Gep4T8SJbbws6FZJjTi/QrwqDI0brPaH08reJ69/B2sUcGkoW7dCta+8OhuIbZ
 OBJxbBzutMK7Eq3rLBlTYkxsMhDg3ebpdJ70iy3/Qs59ysRH8ab3prnWlqxaQC1fAheG
 qa8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TymXSPrKK5k5JbbYf07PskH9xd8QtDYqOBNVvBM76Ds=;
 b=iml1nzY57jszFfuDVZotSmahOgK4ukKJIHK3LCa8OduV6jTQIMiLQOePoIsjxrzlvE
 CQ72B1Eh/tVrYpSTcly0qmOLWMQz+13NbvTJDPDQkH62/0aM6QqNnnN+c1FvHrClL2GP
 MjXiUsZW+wMAlQcwMDtwX5Wy3S78sjnaMsVXNjtHvwSfAhsTUNd8u5gepM4pD1RI7Ygi
 WSgCBk1YhBzNbvt5bp2EZCepO6rM4ZSB1Cs38FHTE4gjPKqaIyhWTLyvK06WXhuDXVwd
 m/i4dvF3aAXJ799S4lDZ6S57hGWqecW3sEXnDS5LRVD5C5QpW6JyCa8Z6xaZrzQLydH8
 77Mg==
X-Gm-Message-State: APjAAAWjrL2LgrAwSiPjXnRKc/dun9xbfFa+9i01hO3oh+f3Ilsq4suA
 GMUFsUesDpt+09LXibjKeVlUWVmu5bmpH3U+5KwX4+Bi
X-Google-Smtp-Source: APXvYqz27hUUPdpJZBtRbGKXs3ApzDSK2nTWZTtO9ZQ+J3duJEmM6VjctK1tjRfOwB3ahrP+mn/rsSrwoTTkIYxk1K0=
X-Received: by 2002:a2e:8916:: with SMTP id d22mr22393137lji.19.1580939571899; 
 Wed, 05 Feb 2020 13:52:51 -0800 (PST)
MIME-Version: 1.0
References: <CAFOi1A4kwawxH_Wp96xymVWWbhUi8S4gsRc9c479iqHrmKEu5Q@mail.gmail.com>
 <BN6PR19MB16355A86D6C73792BE7A6CA4A4020@BN6PR19MB1635.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB16355A86D6C73792BE7A6CA4A4020@BN6PR19MB1635.namprd19.prod.outlook.com>
Date: Wed, 5 Feb 2020 13:52:40 -0800
Message-ID: <CAFOi1A4+TSFGc1fajK+tdRZQBrg1M6ahSCtoLT28VRHWruJHAg@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1262830934699853777=="
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

--===============1262830934699853777==
Content-Type: multipart/alternative; boundary="00000000000098410d059ddb2d81"

--00000000000098410d059ddb2d81
Content-Type: text/plain; charset="UTF-8"

To add to Nate's answer,

if you're staying on UHD-3.15.LTS, then the current process is unchanged.
For master, we'll need new App Notes as Nate said.

--M

On Wed, Feb 5, 2020 at 11:42 AM Jeff S <e070832@hotmail.com> wrote:

> Will this significantly change the Application Notes (AN-823) for RFNoC
> Development?  Or is it just removing the git fpga?
>
> Our IT guys use the AN for their install process.
>
> Thx,
> Jeff
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Martin Braun via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Tuesday, February 4, 2020 4:55 PM
> *To:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] [UHD] FPGA code will be merged back into the UHD
> repository
>
> Hi all,
>
> I just pushed a pretty big change to the UHD repository. Going forward, we
> will be tracking the FPGA code and the UHD code in the same repository, as
> we did pre-2014.
>
> For most of you, this won't be a big change, except for a big changeset on
> your next git pull. If you are running UHD from pre-built binaries, this
> won't affect you at all. However, for those who play around in the git
> repositories, and build FPGA images from source, there will be some changes.
>
> *Summary of changes going forward:*
> - The fpga-src submodule is no longer part of the repository
> - FPGA code is now tracked in the fpga/ subdirectory
> - Commits that affect FPGA and UHD code alike (or FPGA and MPM code) will
> be committed in a single commit going forward
> - We are planning to provide release tarballs both with and without the
> FPGA source code. The details on that are still in the works.
>
> *Why are we doing this?*
> I'll be frank: This is something we did for our own benefit, since we
> treat the FPGA and UHD code bases as a unit, it is easier to develop within
> a single repository. In particular, the ability to commit FPGA and UHD
> changes in a single atomic commit, is a great win. I do think this is good
> for anyone who wants to inspect the codebase, though. Occasionally when we
> introduced changes that would modify both UHD and FPGA, and then changed a
> compat number as well, users weren't sure which versions of FPGA and UHD to
> match up. This is also true for us at Ettus Research / NI, most importantly
> in our continuous integration systems, where it is much easier to verify
> the consistency of a single code base, than running two separate checks and
> stitching them together.
>
> *How can I rebase code from the FPGA repository onto the new UHD
> repository?*
> With git, this is very easily done. The git commit message contains all
> the required instructions.
> See here:
> https://github.com/EttusResearch/uhd/commit/bafa9d95453387814ef25e6b6256ba8db2df612f
>
> *How will this affect the images manifest?*
> FPGA images will continue to contain the git commit hash they were built
> from. That means that a commit that changes something in the FPGA source
> code cannot also contain image manifest changes containing those FPGA
> images. However, we are planning some modifications to
> uhd_images_downloader such that it will be able to also download the
> correct image zip files for those commits. This is something that can come
> in handy for git bisect, it is not something that most users will require.
>
> *What about the UHD-3.15.LTS branch?*
> This change is only rolled out to master branch. UHD 3.15 will, for the
> duration of its lifetime, receive FPGA updates the same way it always has
> (i.e., the fpga repository on GitHub will be updated, and the submodule
> pointer will be updated as well). This is also why the fpga-src/ submodule
> and the fpga/ directory have different path names, so branch switching
> between master and UHD-3.15.LTS remains easily possible without submodule
> clashes.
>
> *What about the fpga repository on GitHub?*
> For the reasons laid out above, it will remain as-is. The master branch
> will be frozen, though, to the state it was in before the merge into UHD.
> This is useful for the history of the branch, bisecting before the merge,
> and git blame.
>
> Please respond to this thread with questions. Thanks!
>
> --Martin
>

--00000000000098410d059ddb2d81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>To add to Nate&#39;s answer,</div><div><br></div><div=
>if you&#39;re staying on UHD-3.15.LTS, then the current process is unchang=
ed. For master, we&#39;ll need new App Notes as Nate said.</div><div><br></=
div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Feb 5, 2020 at 11:42 AM Jeff S &lt;<a href=3D=
"mailto:e070832@hotmail.com">e070832@hotmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Will this significantly change the Application Notes (AN-823) for RFNoC Dev=
elopment?=C2=A0 Or is it just removing the git fpga?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Our IT guys use the AN for their install process.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Thx,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
<div id=3D"gmail-m_2181023344409971764Signature">
<div>
<div id=3D"gmail-m_2181023344409971764appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_2181023344409971764divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" =
target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of M=
artin Braun via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Tuesday, February 4, 2020 4:55 PM<br>
<b>To:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] [UHD] FPGA code will be merged back into the U=
HD repository</font>
<div>=C2=A0</div>
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
<div>For most of you, this won&#39;t be a big change, except for a big chan=
geset on your next git pull. If you are running UHD from pre-built binaries=
, this won&#39;t affect you at all. However, for those who play around in t=
he git repositories, and build FPGA images
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
<div>I&#39;ll be frank: This is something we did for our own benefit, since=
 we treat the FPGA and UHD code bases as a unit, it is easier to develop wi=
thin a single repository. In particular, the ability to commit FPGA and UHD=
 changes in a single atomic commit,
 is a great win. I do think this is good for anyone who wants to inspect th=
e codebase, though. Occasionally when we introduced changes that would modi=
fy both UHD and FPGA, and then changed a compat number as well, users weren=
&#39;t sure which versions of FPGA and
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
d95453387814ef25e6b6256ba8db2df612f" target=3D"_blank">
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
</div>

</blockquote></div>

--00000000000098410d059ddb2d81--


--===============1262830934699853777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1262830934699853777==--

