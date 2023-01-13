Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F7166A5AA
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 23:06:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C8133842BB
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 17:06:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673647599; bh=88DJ4XmL+no4bD8n8bXtJd9MCDLLDnZgliNbt5/Gz00=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0VROoLrirFEWu6/M8MZpjC5KN7C1y7f52ZL7/+oJlFrlSr7ZRvF189vBfjuT2XmfT
	 03HngbPA2YeW9KFi5aAZdYr871P2BEy9mdTEewe+OlF3MRpzGlah7mBBR51gA3ZoIu
	 ykr77DvlG/7BhAo4I6DEgdv2AUw888Xcd3MOmaT5guSqY3pa5I3cJcRclHPeL4OD+X
	 xPQK09tTd1nECrBujMIrJFqWXX/hAFweF4ZPSKU8xgnIC+XMq33aPhlQevRgk4/Za5
	 4/JefggPrPmA0QWyFH/zRC89bqbxJSR5lZ8vpscxqAn0b0JQY6gVsGsEjAapRZLovm
	 MZju7+C/gccHA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9050E3842A9
	for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 17:05:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673647550; bh=CNfItEQ7m+qcMzUGFy1QmhWddLAIW0v91nJY3UnLu20=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YxzJUHG6qt0a244kXMaxl39CMrFU87JD8WLVsHAZvX/JrFMHMCW4ffnDt8OvSV+UU
	 0eFpDHt+d3LOdmbaCtyFVhM5pscrq9jlU8yInZCL9srxm3Kg9E9Ss+InnKOAm4s7Ag
	 DzwzQDsZODqmAN+lItt3r1elN8EPhxC4va06Bwfp5emn0AKiSTKyBEOVInuqZVYwwU
	 U7/ibstWW/Lh2nzdzieXVxZRHBM0OlWGRZveGXlZv1TsWmgG8qO5Zi8VrykKelXmtL
	 3L7WbYX3J1hgfsenassx0nASiK5YLYr7fFwLVIWTK41G15BX8KlBrwulHv0UAOB6Jq
	 z+Eb/F4zVSGwQ==
Date: Fri, 13 Jan 2023 22:05:50 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <7MmFRGYfVkqJ3gDkqLA6Dmlz99QtRx1CbLoqY1aEBM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK60n7qoARibz8S=T9iru843Ptk=Lc-MSWS0o49MNeh-8A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: XYXAQQ66XNZY4JZPIWOQHTQ3UJS5JIBN
X-Message-ID-Hash: XYXAQQ66XNZY4JZPIWOQHTQ3UJS5JIBN
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Starting FPGA development on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XYXAQQ66XNZY4JZPIWOQHTQ3UJS5JIBN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4619374495201840083=="

This is a multi-part message in MIME format.

--===============4619374495201840083==
Content-Type: multipart/alternative;
 boundary="b1_7MmFRGYfVkqJ3gDkqLA6Dmlz99QtRx1CbLoqY1aEBM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_7MmFRGYfVkqJ3gDkqLA6Dmlz99QtRx1CbLoqY1aEBM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

When I type =E2=80=98git status=E2=80=99, it says there are no changes, I=
 have dumped the output of git status below.=E2=80=A6

> HEAD detached at v4.3.0.0
>
> Changes not staged for commit:
>
>   (use "git add <file>..." to update what will be committed)
>
>   (use "git restore <file>..." to discard changes in working directory)
>
> 	modified:   setupenv.sh
>
> Untracked files:
>
>   (use "git add <file>..." to include in what will be committed)
>
> 	ip/Makefile (copy).inc
>
> no changes added to commit (use "git add" and/or "git commit -a")

i did have to edit the setupenv file however. In line 4 of the file, I ch=
anged it following from

VIVADO_VER_FULL=3D2021.1_AR76780 -> VIVADO_VER_FULL=3D2021.1=20

Before the edit, it gave this error=E2=80=A6

> Setting up a 64-bit FPGA build environment for the USRP-N3x0...
>
> Vivado: Found (/tools/Xilinx/Vivado/2021.1/bin)
>
> Vivado: ERROR! Requested version (2021.1_AR76780) not installed.
>
>           Install the required updates/patches and verify that the env =
variable
>
>           "VIVADO_VER_FULL" matches the version printed by "vivado -ver=
sion"

vivado -version gave this output.

> Vivado v2021.1 (64-bit)
>
> SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
>
> IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
>
> Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.

Is there something else I have to install or edit?

Thanks,

Joe

--b1_7MmFRGYfVkqJ3gDkqLA6Dmlz99QtRx1CbLoqY1aEBM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>When I type =E2=80=98git status=E2=80=99, it says there are no changes, =
I have dumped the output of git status below.=E2=80=A6</p><blockquote><p>HE=
AD detached at v4.3.0.0</p><p>Changes not staged for commit:</p><p>  (use "=
git add &lt;file&gt;..." to update what will be committed)</p><p>  (use "gi=
t restore &lt;file&gt;..." to discard changes in working directory)</p><p>=
=09modified:   setupenv.sh</p><p>Untracked files:</p><p>  (use "git add &lt=
;file&gt;..." to include in what will be committed)</p><p>=09ip/Makefile (c=
opy).inc</p><p>no changes added to commit (use "git add" and/or "git commit=
 -a")</p><p><br></p></blockquote><p>i did have to edit the setupenv file ho=
wever. In line 4 of the file, I changed it following from</p><p>VIVADO_VER_=
FULL=3D2021.1_AR76780 -&gt; VIVADO_VER_FULL=3D2021.1 </p><p>Before the edit=
, it gave this error=E2=80=A6</p><blockquote><p>Setting up a 64-bit FPGA bu=
ild environment for the USRP-N3x0...</p><p>Vivado: Found (/tools/Xilinx/Viv=
ado/2021.1/bin)</p><p>Vivado: ERROR! Requested version (2021.1_AR76780) not=
 installed.</p><p>          Install the required updates/patches and verify=
 that the env variable</p><p>          "VIVADO_VER_FULL" matches the versio=
n printed by "vivado -version"</p></blockquote><p><br></p><p>vivado -versio=
n gave this output.</p><blockquote><p>Vivado v2021.1 (64-bit)</p><p>SW Buil=
d 3247384 on Thu Jun 10 19:36:07 MDT 2021</p><p>IP Build 3246043 on Fri Jun=
 11 00:30:35 MDT 2021</p><p>Copyright 1986-2021 Xilinx, Inc. All Rights Res=
erved.</p></blockquote><p>Is there something else I have to install or edit=
?</p><p><br></p><p>Thanks,</p><p>Joe</p>

--b1_7MmFRGYfVkqJ3gDkqLA6Dmlz99QtRx1CbLoqY1aEBM--

--===============4619374495201840083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4619374495201840083==--
