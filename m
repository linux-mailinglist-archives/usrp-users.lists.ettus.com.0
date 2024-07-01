Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E465D91E130
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 15:49:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1FEB385435
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 09:49:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719841787; bh=nD7ydljwCj/A9PzYJziqOBwS1KYoi1AzDGeHM7tjRjM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=t1npmo2/Lc1a+qWDsYITPwfuP70qZMymIuUC4KBbtBlhFbOcZ/SL+IQLhfkRWifwR
	 fptUwV3v7/ziClHRRFbQlCLSRhDUkqmMe3SYlCz9jXB4jVNpCJ93kfHoKSfiMbq7/8
	 onF3i1lx6k/Nfw3WsWZt2LF244o68hQyNv7P9gd/1rCv6O/YYQCLoSu17JNxtp3Yk7
	 zm6QDULbO1bS87dQahKG5W4DOv9hSk6xa7qK5Q9Zlh3vl62k0qn/ESU6jaaeLxhsvH
	 1PAGjuzSYij6+1jA7xHvIyxkhE3XCnUVtyxIVNMvMAUNte5/IYrVyC+7xk1C4hysSM
	 69HTr3bpipxiA==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 6B13A383B81
	for <usrp-users@lists.ettus.com>; Mon,  1 Jul 2024 09:48:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="r/uolW4w";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5854ac8168fso346522a12.2
        for <usrp-users@lists.ettus.com>; Mon, 01 Jul 2024 06:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719841732; x=1720446532; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/wsWBBPcQV/HPaeRSf+my7T+JWQII3sBOPI3Bq4fXSE=;
        b=r/uolW4wGmvC2Inb+exJFwVbprysu8l1rOh+YnvPcOj1XxSnrPCfIvNl66G75h3sBp
         nwCheA9yk4dIJaOql3OSYdVPnv3uiKA01qFw+ff4OilJVZWtzSfzc0zdxznbc05uIz3i
         vlEsc7uoOJropulxq3zX5ubbP+hQM+F4mdRiqrXuy8QoIRIjWqQJ7LO2lVjz2yDYIXj/
         HLEAgKGYcMVcNJm1Z0NohopaLHxyiKoo6Jdp9foz4nMLkEUBWHqN2gO09qV93CwPceKs
         Pp62cGNT2Ww6Vg5Zco6+d/40kCiy2fAql9HQixxT5cKXEmkLYZZ2CEccJo7WeDzKWDuQ
         xYJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719841732; x=1720446532;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/wsWBBPcQV/HPaeRSf+my7T+JWQII3sBOPI3Bq4fXSE=;
        b=KDLJfHPm8+YI7rCwSt1dWAfY5OQinbkkKzua/KBG3KSNjqkJ/8btGoLowxi9eqRrNS
         zhkq0e1RJQVVqjQuwJlxb2rZJ9XkgHtagzRbQ/8a5FpIe/Ln/wAjWv0W4IRWXmdi0d7C
         I1BrEn0f4OIa85MhGajnTIqK+LaERE30j//AyMtdJRwdq9c/Ee4/xuv7r/x8XAFmJXQG
         gibuHrcDygHFYGjcg8JxT5j+hKzMFHKmSnCG/Bvj7/dwpoP6BqDzq8KiN8j5tKRz9hMn
         1X7cIrrhx03f2KqJFk/aluB8+ZxIt/SbJDfkcEcLKWdBW9ZjfAg6ZS1HeCl78wj+3Ewg
         oymg==
X-Gm-Message-State: AOJu0Yz2gZOv43vTnQzz9pcP1QA8Ktf/Pe5c9XWX4p+O0T2lxoYNqx8d
	gcmOM3zqbe63lhQt6bLP0MZFDNL5fLs4ktVRN5LOajoxOkUcpMOXEc0uSHd/PptrRPsqB4Uz+0x
	pF3wlyZN5ckLL1wSxWU+e4dj/LjOjTu/DNaMSta0YmubEIfaRbiTCQQ==
X-Google-Smtp-Source: AGHT+IHG2I89p9aHaAhPCL8/+Y6f2wqFCMRgpFsCl8pVIfkb0bGVTltEgYSV/+kvuVvROZTQKVi22A+A4Johayzzfzc=
X-Received: by 2002:a17:906:db01:b0:a6f:5fa8:1b7 with SMTP id
 a640c23a62f3a-a751441a658mr498676466b.15.1719841731795; Mon, 01 Jul 2024
 06:48:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAFOi1A6CyYPFX-TB6YFhVFOvA1Xhpawf0HwBVAUT4wFi9V2kxQ@mail.gmail.com>
 <CAFOi1A6WsCZmt+qmJsnOt9-0EGfyENxS=AXH39nFKsEZ5tj+Uw@mail.gmail.com>
In-Reply-To: <CAFOi1A6WsCZmt+qmJsnOt9-0EGfyENxS=AXH39nFKsEZ5tj+Uw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 1 Jul 2024 15:48:40 +0200
Message-ID: <CAFOi1A5p2+ZhmggeU3gFaVE5cn1B_wacv2VPZd4QFeNa1AH8-w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: WW27A3ZKEBILKNSIGK5DRBUMEXCIBATD
X-Message-ID-Hash: WW27A3ZKEBILKNSIGK5DRBUMEXCIBATD
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Image Builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WW27A3ZKEBILKNSIGK5DRBUMEXCIBATD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1907557183879215582=="

--===============1907557183879215582==
Content-Type: multipart/alternative; boundary="0000000000007e7199061c2fdb1a"

--0000000000007e7199061c2fdb1a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This was the link I meant to paste:
https://github.com/EttusResearch/uhd/issues/764

On Mon, Jul 1, 2024 at 2:23=E2=80=AFPM Martin Braun <martin.braun@ettus.com=
> wrote:

> Erm, yes -- we managed to ship a version of rfnoc_image_builder in UHD 4.=
7
> which doesn't render well on dark-themed terminals. Out of all the bugs i=
n
> the recent years, I rank this one pretty high on the not critical, but
> annoying list. We're tracking it here:
> https://github.com/EttusResearch/uhddev/pull/7239
>
> --M
>
> On Tue, Jun 25, 2024 at 12:39=E2=80=AFPM Martin Braun <martin.braun@ettus=
.com>
> wrote:
>
>> Hi all,
>>
>> As you may have seen from the 4.7-RC1 release announcements, we have a
>> bunch of updates to the RFNoC image builder. I would like to provide som=
e
>> context around those.
>>
>> First, we are not yet ready to ship a new version of RFNoC modtool. With
>> the deprecation of gr-ettus as the way to ship that tool, we have a bunc=
h
>> of work ahead of us to integrate a new modtool into UHD, and we're not
>> there yet.
>>
>> However, the image builder has had some major improvements. Many of thos=
e
>> are simply usability improvements: You'll notice the logging output look=
s
>> different, and we have tried to improve the error messages. This is, to =
a
>> large extent, done by allowing custom checks within block descriptor YAM=
Ls
>> as well as BSP YAMLs. For example, if you leave important bus connection=
s
>> unconnected in an RFNoC image core file, then you will now get a warning=
,
>> and must confirm that you know what you're doing if you want the image
>> builder to proceed to build a bitfile.
>>
>> One thing you'll notice is that you now must use the image builder to
>> build FPGA bitfiles, and can no longer directly build bitfiles by runnin=
g
>> commands like "make X410_X4_400". This may be annoying for people who li=
ke
>> to build the stock images, but it makes many things simpler: Now, there =
is
>> a single way (i.e., calling rfnoc_image_builder) that will make bitfiles=
.
>> Besides, we no longer have to check in intermediate build artifacts (e.g=
.,
>> the image core auto-generated Verilog) into git, which can cause conflic=
ts
>> or confusion.
>> Side note: If you don't like having install all of UHD, because you just
>> need the image builder, run `cmake -DENABLE_LIBUHD=3DOFF
>> -DENABLE_PYMOD_UTILS=3DON` to just install the image builder and some ot=
her
>> Python-based utilities.
>>
>> Probably the biggest new feature is the fact that in the X4x0 series,
>> transport adapters are now part of the image core. That means that you m=
ust
>> choose which transports you want to use in the YAML file, instead of by
>> specifying a build target.
>> For example, if you wanted the 10GbE version of the X410, or the 100 GbE
>> version, you would either build the X410_X4_400 or X410_CG_400 target. N=
ow,
>> there is only one target (X410) but you modify the YAML file to choose a
>> single 10 GbE, quadruple 10 GbE, or 100 GbE per QSFP port (of course, yo=
u
>> may also leave them unconnected). The main reason this is useful is beca=
use
>> it allows you to put custom blocks or transport adapters that use the QS=
FP
>> ports into your designs.
>> Note that on other devices than X4x0 devices, the previous behaviour is
>> still in place. For example, on X310, you can't define the transport
>> adapters through the YAML files.
>>
>> There is a downside to this feature: If you use a pre-4.7 image core fil=
e
>> (which does not specify transport adapters), then you would end up with =
a
>> bitfile that can't communicate with the outside. You may have guessed it=
:
>> We added more checks to make it hard for that to happen, the image build=
er
>> would give you a very obvious warning in that case.
>>
>> Another interesting feature is the ability to add custom Verilog modules=
.
>> These also require a YAML file to describe them, but can be used to cons=
ume
>> or write to IO ports, generate custom clocks, or whatever else you want =
to
>> do.
>>
>> Some other random features:
>> - Better use of parameters, which can be referenced in YAML files. For
>> example, you can create an IO port with variable width, and make the wid=
th
>> a parameter.
>> - Better inclusion/exclusion of build files based on what you need (e.g.=
,
>> if you build a bitfile without DDC, then no DDC IP will be included)
>> - Define IO signatures in any module. If you write a block with custom I=
O
>> signatures, just include the IO signatures in the block YAML.
>> - Custom paths for build, IP, and output. This means you don't have to
>> write anything inside the RFNoC source tree.
>> - The "build" directory stores all artifacts that get auto-generated
>> during build time. For debugging, you may manually edit these files and =
use
>> the --reuse option on rfnoc_image_builder to make sure your manual chang=
es
>> don't get overwritten.
>> - Use inheritance to share info between similar image core files.
>> - Separate edge files are no longer used.
>>
>> One item that might trigger some questions is the new "secure image core=
"
>> feature. This is a response to a feature request to allow mixing
>> proprietary and open-source blocks. Note that we are not going to use th=
at
>> as part of standard bitfiles: All blocks that get shipped with UHD will
>> remain open-source and modifiable (well, as much as possible, we do use
>> Vivado and AMD/Xilinx IP). There may be blocks in the future (not part o=
f
>> UHD) that make use of these secure cores.
>>
>>
>> Going Forward
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> These improvements to rfnoc_image_builder are a first step to making the
>> whole RFNoC image building process more user-friendly and less wading
>> through code examples and trial-and-error. Part of this process will als=
o
>> be a renewed modtool (and also, work on the blocktool), but that's furth=
er
>> down the line.
>>
>> The reason we started working on things in this order is what we perceiv=
e
>> as the priority in how people engage in using RFNoC: There are more peop=
le
>> interested in building custom bitfiles with standard blocks (e.g., addin=
g
>> an FFT, adding a filter) than there are people writing their own blocks =
--
>> but even those who do write their own blocks need to use the image build=
er.
>>
>> I'll leave it at that. This is a good place to ask questions about these
>> updates -- I'll try and cover them!
>>
>> Cheers,
>> Martin
>>
>

--0000000000007e7199061c2fdb1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This was the link I meant to paste: <a href=3D"https://git=
hub.com/EttusResearch/uhd/issues/764">https://github.com/EttusResearch/uhd/=
issues/764</a></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Jul 1, 2024 at 2:23=E2=80=AFPM Martin Braun &lt;<a =
href=3D"mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div>Erm, yes -- we managed to ship a version of rfnoc_image_builder in =
UHD 4.7 which doesn&#39;t render well on dark-themed terminals. Out of all =
the bugs in the recent years, I rank this one pretty high on the not critic=
al, but annoying list. We&#39;re tracking it here: <a href=3D"https://githu=
b.com/EttusResearch/uhddev/pull/7239" target=3D"_blank">https://github.com/=
EttusResearch/uhddev/pull/7239</a></div><div><br></div><div>--M<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, Jun 25, 2024 at 12:39=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:m=
artin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Hi all,</div><div><br></div><div>As you may have seen from the 4.=
7-RC1 release announcements, we have a bunch of updates to the RFNoC image =
builder. I would like to provide some context around those.</div><div><br><=
/div><div>First, we are not yet ready to ship a new version of RFNoC modtoo=
l. With the deprecation of gr-ettus as the way to ship that tool, we have a=
 bunch of work ahead of us to integrate a new modtool into UHD, and we&#39;=
re not there yet.</div><div><br></div><div>However, the image builder has h=
ad some major improvements. Many of those are simply usability improvements=
: You&#39;ll notice the logging output looks different, and we have tried t=
o improve the error messages. This is, to a large extent, done by allowing =
custom checks within block descriptor YAMLs as well as BSP YAMLs. For examp=
le, if you leave important bus connections unconnected in an RFNoC image co=
re file, then you will now get a warning, and must confirm that you know wh=
at you&#39;re doing if you want the image builder to proceed to build a bit=
file.</div><div><br></div><div>One thing you&#39;ll notice is that you now =
must use the image builder to build FPGA bitfiles, and can no longer direct=
ly build bitfiles by running commands like &quot;make X410_X4_400&quot;. Th=
is may be annoying for people who like to build the stock images, but it ma=
kes many things simpler: Now, there is a single way (i.e., calling rfnoc_im=
age_builder) that will make bitfiles. Besides, we no longer have to check i=
n intermediate build artifacts (e.g., the image core auto-generated Verilog=
) into git, which can cause conflicts or confusion.</div><div>Side note: If=
 you don&#39;t like having install all of UHD, because you just need the im=
age builder, run `cmake -DENABLE_LIBUHD=3DOFF -DENABLE_PYMOD_UTILS=3DON` to=
 just install the image builder and some other Python-based utilities.<br><=
/div><div><br></div><div>Probably the biggest new feature is the fact that =
in the X4x0 series, transport adapters are now part of the image core. That=
 means that you must choose which transports you want to use in the YAML fi=
le, instead of by specifying a build target.</div><div>For example, if you =
wanted the 10GbE version of the X410, or the 100 GbE version, you would eit=
her build the X410_X4_400 or X410_CG_400 target. Now, there is only one tar=
get (X410) but you modify the YAML file to choose a single 10 GbE, quadrupl=
e 10 GbE, or 100 GbE per QSFP port (of course, you may also leave them unco=
nnected). The main reason this is useful is because it allows you to put cu=
stom blocks or transport adapters that use the QSFP ports into your designs=
.</div><div>Note that on other devices than X4x0 devices, the previous beha=
viour is still in place. For example, on X310, you can&#39;t define the tra=
nsport adapters through the YAML files.</div><div><br></div><div>There is a=
 downside to this feature: If you use a pre-4.7 image core file (which does=
 not specify transport adapters), then you would end up with a bitfile that=
 can&#39;t communicate with the outside. You may have guessed it: We added =
more checks to make it hard for that to happen, the image builder would giv=
e you a very obvious warning in that case.<br></div><div><br></div><div>Ano=
ther interesting feature is the ability to add custom Verilog modules. Thes=
e also require a YAML file to describe them, but can be used to consume or =
write to IO ports, generate custom clocks, or whatever else you want to do.=
</div><div><br></div><div>Some other random features:</div><div>- Better us=
e of parameters, which can be referenced in YAML files. For example, you ca=
n create an IO port with variable width, and make the width a parameter.</d=
iv><div>- Better inclusion/exclusion of build files based on what you need =
(e.g., if you build a bitfile without DDC, then no DDC IP will be included)=
</div><div>- Define IO signatures in any module. If you write a block with =
custom IO signatures, just include the IO signatures in the block YAML.</di=
v><div>- Custom paths for build, IP, and output. This means you don&#39;t h=
ave to write anything inside the RFNoC source tree.</div><div>- The &quot;b=
uild&quot; directory stores all artifacts that get auto-generated during bu=
ild time. For debugging, you may manually edit these files and use the --re=
use option on rfnoc_image_builder to make sure your manual changes don&#39;=
t get overwritten.</div><div>- Use inheritance to share info between simila=
r image core files.</div><div>- Separate edge files are no longer used.</di=
v><div><br></div><div>One item that might trigger some questions is the new=
 &quot;secure image core&quot; feature. This is a response to a feature req=
uest to allow mixing proprietary and open-source blocks. Note that we are n=
ot going to use that as part of standard bitfiles: All blocks that get ship=
ped with UHD will remain open-source and modifiable (well, as much as possi=
ble, we do use Vivado and AMD/Xilinx IP). There may be blocks in the future=
 (not part of UHD) that make use of these secure cores.</div><div><br></div=
><div><br></div><div>Going Forward</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D</div><div><br></div><div>These improvements to rfnoc_image_builder a=
re a first step to making the whole RFNoC image building process more user-=
friendly and less wading through code examples and trial-and-error. Part of=
 this process will also be a renewed modtool (and also, work on the blockto=
ol), but that&#39;s further down the line.</div><div><br></div><div>The rea=
son we started working on things in this order is what we perceive as the p=
riority in how people engage in using RFNoC: There are more people interest=
ed in building custom bitfiles with standard blocks (e.g., adding an FFT, a=
dding a filter) than there are people writing their own blocks -- but even =
those who do write their own blocks need to use the image builder.</div><di=
v><br></div><div>I&#39;ll leave it at that. This is a good place to ask que=
stions about these updates -- I&#39;ll try and cover them!</div><div><br></=
div><div>Cheers,</div><div>Martin<br></div></div>
</blockquote></div>
</blockquote></div>

--0000000000007e7199061c2fdb1a--

--===============1907557183879215582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1907557183879215582==--
