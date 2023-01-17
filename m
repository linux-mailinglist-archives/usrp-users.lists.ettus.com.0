Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C905966E56A
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 18:57:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E2B238475B
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 12:57:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673978236; bh=cqCL7ttab6naU1YRScjlVgiMB0VfEjz0at4jiuwtGMk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=R7jgp0cP+o9ILOxZ8BpCoST/m/XHoblryCwMuxtVecmBAbs6Lz9gm/BpOJrQF638T
	 DnOtsZQNLF1ZHEEb5S718uO0MeILS7N0VoN1J10gJc8CzubnWacMa2ulsUGh0V+g6J
	 rgz4GoZ+ZiEfxcuIYU1GyrUJEo5z9ekLJRNcNkFch9df/QNkZUjxxn1rKNQEoMgO+d
	 19j2CMqYX8KSSuzWFoFfTZCSDRZ515Xj0Cu4c9FHwlWIkYMR5tsEiXNghrgS7NTg8i
	 wLRd5PZ2Di4czmMMEYUN61z+CEajscdWVjQNVhGHF1dGBp7wKSB8yDjt0FaIDbhqso
	 uFUorK/NkbPZw==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id AD96838474B
	for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 12:57:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BqESV0c3";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id kt14so18327944ejc.3
        for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 09:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=s45WVsdbzzXXeamcMiAFZbJicJPKwglDFSoV02AtmXg=;
        b=BqESV0c318RNQu6LLS0ZmAtULXA4cJn8LoTbYycFOeZDLtaq5z18xez2kX5aqvK36B
         v23vTyqsPZvP3bHmxmjrX6AJqgU2x7FKHalv9r8QiTeh3EM9z5jsEaxwPrhee6g3SblU
         EzwTmTZCnVqAQJ2IwbYtpOl2uFIjPTkfmPlXbzETVTwDLK2QCOwqt3lkzDDogodjXZar
         1sRSXME5o1MTfeuQSgGV5YymPBexz7dfwqVkHwHK2uChKfbZ7a108s6mdIaFFXZT/6y9
         CtLoP7RhGSamarPYYP8x8aKLNkeOEnkDfJcnl16SRx7xg6ClHHegy/J9JW0Qqj3HYKff
         q0Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s45WVsdbzzXXeamcMiAFZbJicJPKwglDFSoV02AtmXg=;
        b=U7Ev6OKfvVs58i37cD8jk6JlEGCytHu5yhFiuullkN17hrSQp778QKzsK1Uil4eoXC
         eZspTp9TJ61eSoGmoc2uro3WlD0KrA+vzThkNv48pKMmntGyPZFHEM8hWC+ealo3lB1d
         fmvceG2jFWaA0vb709/FuazRVltv482+5SDy8Tk+Ry37ue4gG/xTx2zaGDtkwtOfl/3v
         /zaP9bM3r1jikaROej1KLKEjjdgwMtoZYZU7xaxee8+82oIU/VNrXDyzeBImLbkBte08
         rw4Se3fPFQplNAEfcUfWr3P+KUuzW1h89scImD+5KSu8sILwwR2YdkitUIk1QiuHULm9
         ANWQ==
X-Gm-Message-State: AFqh2kopo9Z60SomogIDNvn2ZpgDF7GDIYHKCd0WiRQ8cPnPeZAceIeq
	6zrvLlEWsc7FzxufpYqHgcvGTMkwuIgE0ticdYk=
X-Google-Smtp-Source: AMrXdXuCUpkfW0sEkBX8IDiJ8V53W6ncJ8iduQA2TwdL4tmuu+SHX3+ds5hmsESap578kvF7fXIQeYkMchqEUVhN+fc=
X-Received: by 2002:a17:907:2bd2:b0:84d:43a0:709a with SMTP id
 gv18-20020a1709072bd200b0084d43a0709amr312935ejc.328.1673978229265; Tue, 17
 Jan 2023 09:57:09 -0800 (PST)
MIME-Version: 1.0
References: <mIzTYZfqFHnwMJHLEJBT3irtE58oWqYPr5HJiutOI@lists.ettus.com>
In-Reply-To: <mIzTYZfqFHnwMJHLEJBT3irtE58oWqYPr5HJiutOI@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 17 Jan 2023 12:56:57 -0500
Message-ID: <CAEXYVK6Akur1H3Kh8L91=yLw1_LhwjnMyj1wb6p-iWFfZo1PeQ@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: 2BZF7RY6FLSFEIFTTRL6EV4DWF7OAWCL
X-Message-ID-Hash: 2BZF7RY6FLSFEIFTTRL6EV4DWF7OAWCL
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Starting FPGA development on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2BZF7RY6FLSFEIFTTRL6EV4DWF7OAWCL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1215656979194644134=="

--===============1215656979194644134==
Content-Type: multipart/alternative; boundary="000000000000b7996d05f2796de7"

--000000000000b7996d05f2796de7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 17, 2023 at 11:04 AM <jmaloyan@umass.edu> wrote:

> I have the vivado project saved now, thanks for your help!
>

Glad it worked out for you.

For the simulator files, I am a bit lost as to how it should be created?
>
> I am following these instructions to build the simulator files
> https://files.ettus.com/manual/md_usrp3_sim_writing_sim_makefile.html. I
> tried running the viv_simulator with the xsim(and without) and I get this=
.
>
> sudo make viv_simulator.mak xsim
>
> make: Nothing to be done for 'viv_simulator.mak'.
>
> make: *** No rule to make target 'xsim'.  Stop.
>
>
There's no reason to run this as root.  Don't use sudo.

You should just be able to do `make xsim` and watch Vivado simulator run.


> What am I missing here. I also found a folder
> =E2=80=9C/workarea/uhd/fpga/usrp3/top/n3xx/sim=E2=80=9D with 6 directorie=
s, each with a
> Makefile and testbench systemverilog file. Is there something I should do
> with those? Is there a prebuilt simulation I can play around with, or do =
I
> need to make one from scratch?
>

Look at these instructions for running the Makefiles:

  https://files.ettus.com/manual/md_usrp3_sim_running_testbenches.html

Also, you should probably start a new email thread if you have other
questions instead of continuing down this one which seemingly has been
answered.

Brian

--000000000000b7996d05f2796de7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jan 17, 2023 at 11:04 AM &lt;<a h=
ref=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></di=
v><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><p>I have the vivado project saved now, thanks for your help!</p></bloc=
kquote><div>=C2=A0</div><div>Glad it worked out for you.=C2=A0</div><div><b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>For the simula=
tor files, I am a bit lost as to how it should be created?</p><p>I am follo=
wing these instructions to build the simulator files <a href=3D"https://fil=
es.ettus.com/manual/md_usrp3_sim_writing_sim_makefile.html" target=3D"_blan=
k">https://files.ettus.com/manual/md_usrp3_sim_writing_sim_makefile.html</a=
>. I tried running the viv_simulator with the xsim(and without) and I get t=
his.</p><pre><code>sudo make viv_simulator.mak xsim</code></pre><pre><code>=
make: Nothing to be done for &#39;viv_simulator.mak&#39;.</code></pre><pre>=
<code>make: *** No rule to make target &#39;xsim&#39;.  Stop.   </code></pr=
e></blockquote><div><br></div><div>There&#39;s no reason to run this as roo=
t.=C2=A0 Don&#39;t use sudo.</div><div><br></div><div>You should just be ab=
le to do `make xsim` and watch Vivado simulator run.</div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><p>What am I missing here=
. I also found a folder =E2=80=9C/workarea/uhd/fpga/usrp3/top/n3xx/sim=E2=
=80=9D with 6 directories, each with a Makefile and testbench systemverilog=
 file. Is there something I should do with those? Is there a prebuilt simul=
ation I can play around with, or do I need to make one from scratch?</p></b=
lockquote><div><br></div><div>Look at these instructions for running the Ma=
kefiles:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://files.ettu=
s.com/manual/md_usrp3_sim_running_testbenches.html">https://files.ettus.com=
/manual/md_usrp3_sim_running_testbenches.html</a></div><div><br></div><div>=
Also, you should probably start a new email thread if you have other questi=
ons instead of continuing down this one which=C2=A0seemingly has been answe=
red.</div><div><br></div><div>Brian</div></div></div>

--000000000000b7996d05f2796de7--

--===============1215656979194644134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1215656979194644134==--
