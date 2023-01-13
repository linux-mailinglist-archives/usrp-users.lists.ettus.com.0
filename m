Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6001066A6BA
	for <lists+usrp-users@lfdr.de>; Sat, 14 Jan 2023 00:12:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A6A438436D
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 18:12:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673651578; bh=PsNLl9z7arUrH6TOSYR+IYypOf7Txk0O3zh/zeKrwJc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HRCf8LSI5AbuCTn6Y/4DOzPkhUYCk2K9G5VKQqqb1NbimtQKB/kpPR+qmRzU2BykZ
	 5vn25WWceLkO9+5FpXMvEqnqFRo46dGtaPfyfEsLSLk+Icbu3UODr3xHyNozsq907x
	 sye6ytwc+rqERejHrZB84peEV+dznDRnZxtqZU1MBadFr3NbLXGrvvs24XPdPaYURP
	 GpgyUrvPK7F2LNvIB5ttkWwObIUbDnE7EpQ2x+4EnJbHm4GCJQw7ZhnbOcd1qgMO2K
	 A3W2HFM3uFOqgaQcVJC9hvnJ2lO6a9jTQCCfN2b1sbPcTtxI6Yv1iPht1pTRbBDNkq
	 ouquEV2VmTtRA==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 336A5384347
	for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 18:12:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="li0yzUpv";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id u9so55775994ejo.0
        for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 15:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DxjfZD9pvVkVWfFI8mNtWwhbwXz3+arQNteNAjRdpDE=;
        b=li0yzUpvRyIwzuxCQsoj9lpL+23wdMcL4nyLCqf24UlJDqwyW2F2Xf7bIHV1FdmFi2
         /A6wiq//leyWeSFbGfea6EiFPhDq3DAclXHT8EbOslUEJCm95ljQu6DDu8LvuvLzarRT
         FLvrzZDxPnib2KEDCFeVt8+H6+YTOoeaWftdWPtnIdcm3cR1l64j4r9IVCb9Sh66Wx+y
         i2S1bNZpDvndWip7Q7oiQhIaRkGKs1zDpwwP2y+0XafQSvSKEvf2OiZrtggGMDRx+PYD
         xMyZ73uBqfgt/j7n9UhZ24xIfMsWfuBshzwW7Epri7a1cUIkL+VS+tIaWXulZubN9+60
         0UCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DxjfZD9pvVkVWfFI8mNtWwhbwXz3+arQNteNAjRdpDE=;
        b=k2z0RlLk67VYl2pJ4UErq1SUHk9ORn9iGBYkQvB9aCDpkEWOFYK5yEMzLXp9PKc7Jr
         eV703kbyvAgugJRvvbSwbAUYtLfEJzqmPid3viBPQC34WPWyuURJj08UaJ48d6KXiGND
         /vKK0mI7ZkSsyaRdxISLMwUK8gV7GSQkpt9W3zkEzbFoHH16xB4LuB2vKH4nLga0CISl
         SdmRo0G8Yi6+nUM6joumM4x0wPe/7c2QneU7yL78vQ5GCDH5t6BHpsxCnfg+ugll/o1b
         va5d6sUM8gEXPqnNOC9RTbS3PoP820BI8l/KC7u9obKfboV6/dGZF3Mt4LWpLXcVVHr1
         B4vA==
X-Gm-Message-State: AFqh2kreqHApyL+F8HqpCVmNIA98Pl+U56TGALUU7X2s4cwzJgjcdx2t
	G9ILqantK/EpOrIubRIdLt/6k5gznGXkSDwC0p77NfKaDSc=
X-Google-Smtp-Source: AMrXdXtnfjVaaPGOEuISogxfMVtjRzNj/9CDDArajzJSsui1fE/LwLjW24cIs2w6aLixuRdhq1CHcFKhKh1DPi+jh6c=
X-Received: by 2002:a17:907:8745:b0:83f:5f77:8fff with SMTP id
 qo5-20020a170907874500b0083f5f778fffmr5110440ejc.293.1673651570907; Fri, 13
 Jan 2023 15:12:50 -0800 (PST)
MIME-Version: 1.0
References: <7MmFRGYfVkqJ3gDkqLA6Dmlz99QtRx1CbLoqY1aEBM@lists.ettus.com>
In-Reply-To: <7MmFRGYfVkqJ3gDkqLA6Dmlz99QtRx1CbLoqY1aEBM@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 13 Jan 2023 18:12:39 -0500
Message-ID: <CAEXYVK6wW3cR3-BFeEOhyaDcWt01pkThnbXrqDGsQ9OpsKm5gA@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: KHPI7M4S4IHGSMKBG7E2276DMMSBI5KA
X-Message-ID-Hash: KHPI7M4S4IHGSMKBG7E2276DMMSBI5KA
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Starting FPGA development on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KHPI7M4S4IHGSMKBG7E2276DMMSBI5KA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8035770087137692543=="

--===============8035770087137692543==
Content-Type: multipart/alternative; boundary="0000000000005ca0d505f22d5fa2"

--0000000000005ca0d505f22d5fa2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Your git output says there are local modifications and then you describe
them but say it's all clean.  Strange?

Anyway, yes - you need to install a patch from Xilinx.  Follow this:

  https://support.xilinx.com/s/article/76780?language=3Den_US

Download the ZIP file linked there and follow the installation instructions=
.

Also revert your modifications.

Brian



On Fri, Jan 13, 2023 at 5:06 PM <jmaloyan@umass.edu> wrote:

> When I type =E2=80=98git status=E2=80=99, it says there are no changes, I=
 have dumped the
> output of git status below.=E2=80=A6
>
> HEAD detached at v4.3.0.0
>
> Changes not staged for commit:
>
> (use "git add <file>..." to update what will be committed)
>
> (use "git restore <file>..." to discard changes in working directory)
>
> modified: setupenv.sh
>
> Untracked files:
>
> (use "git add <file>..." to include in what will be committed)
>
> ip/Makefile (copy).inc
>
> no changes added to commit (use "git add" and/or "git commit -a")
>
>
> i did have to edit the setupenv file however. In line 4 of the file, I
> changed it following from
>
> VIVADO_VER_FULL=3D2021.1_AR76780 -> VIVADO_VER_FULL=3D2021.1
>
> Before the edit, it gave this error=E2=80=A6
>
> Setting up a 64-bit FPGA build environment for the USRP-N3x0...
>
> Vivado: Found (/tools/Xilinx/Vivado/2021.1/bin)
>
> Vivado: ERROR! Requested version (2021.1_AR76780) not installed.
>
> Install the required updates/patches and verify that the env variable
>
> "VIVADO_VER_FULL" matches the version printed by "vivado -version"
>
>
> vivado -version gave this output.
>
> Vivado v2021.1 (64-bit)
>
> SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
>
> IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
>
> Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
>
> Is there something else I have to install or edit?
>
>
> Thanks,
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005ca0d505f22d5fa2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Your git output says there are local=
 modifications and then you describe them but say it&#39;s all clean.=C2=A0=
 Strange?</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Anyway, yes - yo=
u need to install a patch from Xilinx.=C2=A0 Follow this:<div><br></div><di=
v>=C2=A0=C2=A0<a href=3D"https://support.xilinx.com/s/article/76780?languag=
e=3Den_US">https://support.xilinx.com/s/article/76780?language=3Den_US</a><=
/div><div><br></div><div>Download the ZIP file linked there and follow the =
installation instructions.</div><div><br></div><div>Also revert your modifi=
cations.</div><div><br></div><div>Brian</div><div><br></div><div><br></div>=
</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, Jan 13, 2023 at 5:06 PM &lt;<a href=3D"mailto:jmaloyan@=
umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><p>When I type =E2=80=98git status=E2=80=99, i=
t says there are no changes, I have dumped the output of git status below.=
=E2=80=A6</p><blockquote><p>HEAD detached at v4.3.0.0</p><p>Changes not sta=
ged for commit:</p><p>  (use &quot;git add &lt;file&gt;...&quot; to update =
what will be committed)</p><p>  (use &quot;git restore &lt;file&gt;...&quot=
; to discard changes in working directory)</p><p>	modified:   setupenv.sh</=
p><p>Untracked files:</p><p>  (use &quot;git add &lt;file&gt;...&quot; to i=
nclude in what will be committed)</p><p>	ip/Makefile (copy).inc</p><p>no ch=
anges added to commit (use &quot;git add&quot; and/or &quot;git commit -a&q=
uot;)</p><p><br></p></blockquote><p>i did have to edit the setupenv file ho=
wever. In line 4 of the file, I changed it following from</p><p>VIVADO_VER_=
FULL=3D2021.1_AR76780 -&gt; VIVADO_VER_FULL=3D2021.1 </p><p>Before the edit=
, it gave this error=E2=80=A6</p><blockquote><p>Setting up a 64-bit FPGA bu=
ild environment for the USRP-N3x0...</p><p>Vivado: Found (/tools/Xilinx/Viv=
ado/2021.1/bin)</p><p>Vivado: ERROR! Requested version (2021.1_AR76780) not=
 installed.</p><p>          Install the required updates/patches and verify=
 that the env variable</p><p>          &quot;VIVADO_VER_FULL&quot; matches =
the version printed by &quot;vivado -version&quot;</p></blockquote><p><br><=
/p><p>vivado -version gave this output.</p><blockquote><p>Vivado v2021.1 (6=
4-bit)</p><p>SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021</p><p>IP Buil=
d 3246043 on Fri Jun 11 00:30:35 MDT 2021</p><p>Copyright 1986-2021 Xilinx,=
 Inc. All Rights Reserved.</p></blockquote><p>Is there something else I hav=
e to install or edit?</p><p><br></p><p>Thanks,</p><p>Joe</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005ca0d505f22d5fa2--

--===============8035770087137692543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8035770087137692543==--
