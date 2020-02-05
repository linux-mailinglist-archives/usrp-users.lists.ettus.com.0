Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA4B153940
	for <lists+usrp-users@lfdr.de>; Wed,  5 Feb 2020 20:45:54 +0100 (CET)
Received: from [::1] (port=46988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1izQcT-0001zf-5Y; Wed, 05 Feb 2020 14:45:53 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:42837)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1izQcP-0001st-Nk
 for usrp-users@lists.ettus.com; Wed, 05 Feb 2020 14:45:49 -0500
Received: by mail-oi1-f179.google.com with SMTP id j132so1990124oih.9
 for <usrp-users@lists.ettus.com>; Wed, 05 Feb 2020 11:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X9VaGrM0OpfW5SLqF+AfipdL+QjEZC5Ggltcbktj7Iw=;
 b=lHwXowuniVWBWU1eKR3jT+Jer4rzm3fIr1g+CzfsDV9n+NN0MT+ux6NNAAC255WD5L
 kbzV1vz5RTbdPQ82bZesRcvGs+DbvOjJUwvM8aUe8mCMvyw14Va3Ro+NmVGEkAGVwx3P
 kDcsvL4YVXl0cCkpMAX7MILV884hkL6LKnGGffsmo+P6tA0lAQDfb5CD1DVC81AN5f+E
 g6xe5TBGcUcqq+DQK6W77gfHTodH5inpFMJSQPTFxsSuroZ8obA7vt5SPGVCFgwDVGkb
 HdCna+xqiIYauZr3ViYKpv6PmlXEnmky6ZuxmGONVSbhuZScNBUP2xLz5uaZTtv2c2u3
 jh3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X9VaGrM0OpfW5SLqF+AfipdL+QjEZC5Ggltcbktj7Iw=;
 b=QY8ZjRJ6517JhR/CpNAvleWzA83bSpd4TDdHAiUql4tPNG6hH6tjvhoNj+KOJjjDbB
 VCl70hVsI/XTmN6oog7ao9gQqvnh+ZbtIcNvyJaFDphOdKvImy+GVv2ABpDMnLTbirr3
 9Wkf3T3WoavQmmampAJzTFaUrw1/92N9XaKN3BPvrXK3bfQefCyzU8Z4dzdBh1FlI8G+
 MbZ4fK6pyvPdUx4rwr1LJhUj5ka6pEKWEZKnfAL+xE7UQRMEHabdrkaZDzjAilCXJ7PD
 g7qltJcsvveC1fMNoeMMnI7solndFa0fAXUgukxYkDzhNbk+ga80zHdpN1zQ1n+QjVbF
 5YVw==
X-Gm-Message-State: APjAAAWrkiQKbUP91GPY4ZQ2kMoVs2A/PyogCHICh7WJpVFQ9hf684K/
 0d3OczNQgZIQsgAYlzWHwJOLCMbzoc3HgjNFqp27jdrD
X-Google-Smtp-Source: APXvYqzXv1Slm3KsE88LbpPJ7O+U4Yq8b4YBhAomYSQun/yyauNKUHlpCNCy1gdqBKTU1O0B7y5ky5W3J+3J0psFHSs=
X-Received: by 2002:aca:45c1:: with SMTP id s184mr4318624oia.158.1580931908881; 
 Wed, 05 Feb 2020 11:45:08 -0800 (PST)
MIME-Version: 1.0
References: <CAFOi1A4kwawxH_Wp96xymVWWbhUi8S4gsRc9c479iqHrmKEu5Q@mail.gmail.com>
 <BN6PR19MB16355A86D6C73792BE7A6CA4A4020@BN6PR19MB1635.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB16355A86D6C73792BE7A6CA4A4020@BN6PR19MB1635.namprd19.prod.outlook.com>
Date: Wed, 5 Feb 2020 11:46:53 -0800
Message-ID: <CAL263ixZ=SQ1VynFomUETMv3xXGGs5d3xdc0HkScZGf2T5AOxw@mail.gmail.com>
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6487533294203249383=="
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

--===============6487533294203249383==
Content-Type: multipart/alternative; boundary="000000000000d7f235059dd964fb"

--000000000000d7f235059dd964fb
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,

Yes, it will change the process slightly, you will no longer need to do a
--recursive clone of the UHD repo (to pull in the FPGA repo submodule).

We will be updating the applications notes to be in sync with 4.0/master
soon.

Regards,
Nate Temple

On Wed, Feb 5, 2020 at 11:42 AM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d7f235059dd964fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Jeff,<br><br>Yes, it will change the process slightl=
y, you will no longer need to do a --recursive clone of the UHD repo (to pu=
ll in the FPGA repo submodule).<br><br>We will be updating the applications=
 notes to be in sync with 4.0/master soon.<br><br>Regards,<br>Nate Temple</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Feb 5, 2020 at 11:42 AM Jeff S via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">




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
<div id=3D"gmail-m_2411256278676929026Signature">
<div>
<div id=3D"gmail-m_2411256278676929026appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_2411256278676929026divRplyFwdMsg" dir=3D"ltr"><font styl=
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

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d7f235059dd964fb--


--===============6487533294203249383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6487533294203249383==--

