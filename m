Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7639D55449F
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 10:26:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE261383D44
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 04:25:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655886358; bh=GP8mDtCtA8be+q1yHcz1yV6bpus88mcQy6DimgUbo9E=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oVPmLwYo1yY1OPfTTClfsofT9WquqrHy6UqUk3rRwrJAPkhuPkYyA+wUIfkv9wlLT
	 kJnfK83tQJi2Z2ytDJ/Y4/RIJdJySpDNyIRCyhfyiOT7sSdqukLji1eP3GevR6FpL8
	 PECHu7fuESQUsLyTB7wG7zlScRbXB+j81IUrI57VeGM5fzJKDz3bCbg5nfZSW39j4j
	 /NLAdbWqH/wewCfRzEsBVLrE80MZdeuB1PnA8dOe+rN8VQV5GfXLS2W6ykaXF3COan
	 IseBAeRseHUk6MEwjzZAfOmE874VLBqwjvRW28nA+jLGS8ZpCBUYBdwxXMHGe5wRTO
	 lM995xgaEwLcQ==
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C5A7383D44
	for <usrp-users@lists.ettus.com>; Wed, 22 Jun 2022 04:24:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XbY3COiz";
	dkim-atps=neutral
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-3177f4ce3e2so131627697b3.5
        for <usrp-users@lists.ettus.com>; Wed, 22 Jun 2022 01:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=SOGZV1ubCv4fgVAEZ3FsFVoljUEq16MigyXADI5XoKs=;
        b=XbY3COizFMNJNEsfnnF08sO30wXAXVL2P27N+x7zOZXei6MxsyXvYazxo4Dhpq/yw3
         hNJF0m1Ws+wF9neKr5RtNqtaCTac/M9gBh/YTLF4cDNxGMJQHlAAJF07r7cFoTIztrLq
         U60dYXKR8y8aFimToGiYe+q0KqvmWII3z2p/MYl9h+uQ2Xs/4EeWAnkyh246r7ryPDUM
         UeeKhlODZ9xJdJghXRyU7Xfe1onZ+/FIzVFoFaFLI54+TL3Gtrlwm3Pzep60jUctfWel
         z5Ce7AYq3w8OlNqwhDlTGkI8eb70xLSIGDhhFJpsSZoO65U65MBw0rnDRHyqrI5ZbDmi
         /h0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=SOGZV1ubCv4fgVAEZ3FsFVoljUEq16MigyXADI5XoKs=;
        b=XkfDOcfzBSXApMDcjvYCz2hiAIxOG28EbnqRWd2KjrRY0T7vocmRUJeIgQ7GL0JL+S
         9ZftmeyjDkxr/Ej4Prw9Pd51K5BKG1Jm+oAxhYhcB8hKBIfeZJJUFpOwbrKLw85otxrI
         0FvZe3r0yNMcMl24DEQpFNN6Vl7cbkaJJncuaTCjdNKl9dD9bzgXVB33Cej9ztXdhcHJ
         4P/47nW6hGrbijxB595UG6TOMti/2WWoNsPJbkExVEtlnXAfJ+SHXhtAK6mVxRuzrM3n
         Rxx+xmGUUmwhqEItbzAWx36ThhivUT32YctF2l8LPQ6cLiV7HFZhpmEzFdluYR1smf3p
         GliQ==
X-Gm-Message-State: AJIora+USqfaQmQ2eQfwMF5U+rnwwlTCYV5TnB6Ytu1P+yWq9WM09PQ/
	8DiPIyybkMj1qLHWkn36XpDt/YfhzQv8+bFu/HwzWTs6HT5p0eJ0v64=
X-Google-Smtp-Source: AGRyM1sgkMzgK/moUiOk1OhLOywXFj4fEeMyfdqscuO2abFFbl07fPUhKEdvAWLBuJ2QUpVFXu08Hk4l31H/GZBpTO0=
X-Received: by 2002:a0d:c603:0:b0:317:ce48:51db with SMTP id
 i3-20020a0dc603000000b00317ce4851dbmr2761873ywd.363.1655886294949; Wed, 22
 Jun 2022 01:24:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtpMB7XgEuOY-uVUwXGbJ8xvaWCUgALA6DwLYh222aTCw@mail.gmail.com>
 <CAA=S3PvoG1-xFszybLnGTGjHMwtxyEWEj=YnnPV+UJSGF0CM9g@mail.gmail.com> <CAA=S3Pt6WLqvCA=-OZ1wWRMi6gwEOx=DYPauCKFCfTtO-ov4pQ@mail.gmail.com>
In-Reply-To: <CAA=S3Pt6WLqvCA=-OZ1wWRMi6gwEOx=DYPauCKFCfTtO-ov4pQ@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Wed, 22 Jun 2022 12:54:43 +0430
Message-ID: <CAA=S3Pu3n0fBDfYXnoovdzN+RzPNfi1UeBwoSpHaBf-_hddXNw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: CXJQ2UR4NL3UVZDEQDETXLESG5V42RO6
X-Message-ID-Hash: CXJQ2UR4NL3UVZDEQDETXLESG5V42RO6
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error in building USRP FPGA bitstream module 'rfnoc_block_fft' not found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CXJQ2UR4NL3UVZDEQDETXLESG5V42RO6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0509392246192458495=="

--===============0509392246192458495==
Content-Type: multipart/alternative; boundary="00000000000066234c05e205123a"

--00000000000066234c05e205123a
Content-Type: text/plain; charset="UTF-8"

Finally, I mention that, I found there is a bug in UHD 4.1.0.5 or UHD
4.2.0.0 when I used rfnocmodtool to create a rfnoc block:
In a file block.yml file there is a section you should edit...
You should instead ${fpga_lib_dir} add the address rfnoc module folder, For
me this folder is not in UHD RFNOC block folder and I was faced with error
not found...

> makefile_srcs:
> "${fpga_lib_dir}/blocks/rfnoc_block_correlate/Makefile.srcs"


On Sun, Feb 13, 2022 at 10:39 AM sp h <stackprogramer@gmail.com> wrote:

> Finally, I edited the RFNOC image core when I used the default  RFNOC
> image core x300_rfnoc_image_core.yml, and run below command,
> I could successfully open UHD project in GUI vivado. Thanks very much
> make X300_HG GUI=1
>
> On Thu, Feb 3, 2022 at 12:13 PM sp h <stackprogramer@gmail.com> wrote:
>
>> I reformed my previous post, I used this command, so when I want to build
>> with GUI=1 option I was faced with some errors
>> make X300_HG GUI=1
>> but when I want to make without GUI=1 option I have not any eros... how
>> can solve this problem?
>>
>> On Mon, Jan 31, 2022 at 2:40 PM sp h <stackprogramer@gmail.com> wrote:
>>
>>> when I want to build an FPGA source for x300 (In Ubuntu 20.04, Gnuradio
>>> 3.8.1, uhd-4.1.0.5) I used the below command:
>>>
>>> source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
>>> make X300_HG
>>>
>>> But I have been faced with these errors... can any idea for solving this
>>> problem?
>>>
>>> [00:00:23] Starting Synthesis Command
>>> ERROR: [Synth 8-439] module 'rfnoc_block_fft' not found
>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_core.v:1354]
>>> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_core.v:24]
>>> ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
>>> ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
>>> ERROR: [Synth 8-6156] failed synthesizing module 'x300'
>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
>>> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
>>> console or run log file for details
>>> [00:03:31] Current task: Synthesis +++ Current Phase: Starting
>>> [00:03:31] Current task: Synthesis +++ Current Phase: Finished
>>> [00:03:31] Process terminated. Status: Failure
>>>
>>> ========================================================
>>> Warnings:           357
>>> Critical Warnings:  1
>>> Errors:             6
>>>
>>> make[1]: *** [Makefile.x300.inc:127: bin] Error 1
>>> make[1]: Leaving directory
>>> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
>>> make: *** [Makefile:90: X300_HG] Error 2
>>>
>>>

--00000000000066234c05e205123a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Finally,=C2=A0I mention that, I=C2=A0<span class=3D"gmail-=
il">found</span>=C2=A0there is a bug in UHD 4.1.0.5 or UHD 4.2.0.0 when I u=
sed rfnocmodtool to create a=C2=A0<span class=3D"gmail-il">rfnoc</span>=C2=
=A0block:<div>In a file block.yml file there is a section you should edit..=
.</div><div>You should instead=C2=A0${fpga_lib_dir} add the address=C2=A0<s=
pan class=3D"gmail-il">rfnoc</span>=C2=A0<span class=3D"gmail-il">module</s=
pan>=C2=A0folder, For me this folder is=C2=A0<span class=3D"gmail-il">not</=
span>=C2=A0in UHD=C2=A0<span class=3D"gmail-il">RFNOC</span>=C2=A0block fol=
der and I was=C2=A0<span class=3D"gmail-il">faced</span>=C2=A0with error=C2=
=A0<span class=3D"gmail-il">not</span>=C2=A0<span class=3D"gmail-il">found<=
/span>...</div><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid =
Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&q=
uot;;font-size:14px;line-height:19px;white-space:pre-wrap"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><span style=3D"color:rgb(128,0,0)">makefi=
le_srcs</span>: <span style=3D"color:rgb(163,21,21)">&quot;${fpga_lib_dir}/=
blocks/rfnoc_block_correlate/Makefile.srcs&quot;</span></blockquote></div><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Sun, Feb 13, 2022 at 10:39 AM sp h &lt;<a href=3D"mailto:stackprogr=
amer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Finally, I edited =
the RFNOC image core when I used the default=C2=A0 RFNOC image core=C2=A0x3=
00_rfnoc_image_core.yml, and run below=C2=A0command,<div>I could successful=
ly open UHD project in GUI vivado. Thanks very much<br><div>make X300_HG=C2=
=A0<span>GUI</span>=3D1<br></div></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 3, 2022 at 12:13 PM sp h=
 &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackpro=
gramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">I reformed my previous post, I used this c=
ommand, so when I want to build with GUI=3D1 option I was faced with some e=
rrors=C2=A0<div><div><div>make X300_HG GUI=3D1</div></div></div><div>but wh=
en I want to make without GUI=3D1 option I have not any eros... how can sol=
ve this problem?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Mon, Jan 31, 2022 at 2:40 PM sp h &lt;<a href=3D"m=
ailto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">when I want to build an FPGA source for x300 (In Ubuntu 20.=
04, Gnuradio 3.8.1, uhd-4.1.0.5) I used the below command:<div><br><div>sou=
rce setupenv.sh =C2=A0--vivado-path=3D/home/sp/xilinx/Vivado<br></div><div>=
make X300_HG<br></div></div><div><br></div><div>But I have been faced with =
these errors... can any idea for solving=C2=A0this problem?</div><div><br><=
/div><div>[00:00:23] Starting Synthesis Command<br>ERROR: [Synth 8-439] mod=
ule &#39;rfnoc_block_fft&#39; not found [/home/sp/Documents/uhd-4.1.0.5/fpg=
a/usrp3/top/x300/x300_rfnoc_image_core.v:1354]<br>ERROR: [Synth 8-6156] fai=
led synthesizing module &#39;rfnoc_image_core&#39; [/home/sp/Documents/uhd-=
4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_core.v:24]<br>ERROR: [Synth 8-=
6156] failed synthesizing module &#39;bus_int&#39; [/home/sp/Documents/uhd-=
4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]<br>ERROR: [Synth 8-6156] failed sy=
nthesizing module &#39;x300_core&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/=
usrp3/top/x300/x300_core.v:9]<br>ERROR: [Synth 8-6156] failed synthesizing =
module &#39;x300&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x=
300.v:20]<br>ERROR: [Common 17-69] Command failed: Synthesis failed - pleas=
e see the console or run log file for details<br>[00:03:31] Current task: S=
ynthesis +++ Current Phase: Starting<br>[00:03:31] Current task: Synthesis =
+++ Current Phase: Finished<br>[00:03:31] Process terminated. Status: Failu=
re<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 357<br>Critical Warnings: =C2=A01<br>Errors: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 6<br><br>make[1]: *** [Makefile.x300.inc:127: bin] Error =
1<br>make[1]: Leaving directory &#39;/home/sp/Documents/uhd-4.1.0.5/fpga/us=
rp3/top/x300&#39;<br>make: *** [Makefile:90: X300_HG] Error 2<br></div><div=
><br></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000066234c05e205123a--

--===============0509392246192458495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0509392246192458495==--
