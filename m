Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 585EB91DF0F
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 14:24:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F0AB385041
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 08:24:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719836654; bh=iIoLnQRVTJqeFfvUC1h6jTuWSiBTepCY9OHtOK7NC9E=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=P9ZubD/j4zSS96nPEXRhL1ZVdAwARJUq3f+orYLVCwI0qnJPwWFrCN9Na7xQ/5u4P
	 ovqkvu7v40G4RHEFkGWGWCQ1YgoUaHrJ8oKUjGOV50KCEVB8bxzbZnwWH5X5Sz0JNv
	 F1E0Koi+kWR2JnW5mvj/ZFQ4JYh4Ls1yEogdPjv5WLM+ogW06dg+HNRyiXliyQ2h+2
	 EFRAKjtXjzR7MSAT/nzyikb1hUZVRf1+XO0kelkNfTTxsfCU6H+tJisDJu5a8QsVVH
	 O3bTm/u97xQqeYljDFEys+gDlFlAUoikEST4gjH2Ip1l2zjlgZLdKdV/Otw8ThCKFg
	 uKi5uz862TGIg==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 6B042381044
	for <usrp-users@lists.ettus.com>; Mon,  1 Jul 2024 08:23:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="dVM0/Ikg";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a725282b926so311617666b.0
        for <usrp-users@lists.ettus.com>; Mon, 01 Jul 2024 05:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719836613; x=1720441413; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MpqDvg8Jwlu6gLRDo1KNNBEsJCczWIGYNoZ90WS8ZuI=;
        b=dVM0/IkgPhpBoXdoqvMgtU9u99XCWcAQQfEvZEa/Sj5ZK8d+snyVbxNaDv21BkR0tN
         RrcfocYy5A9JDAS+3DGNfJqHu7qLoBrfwy+Xy3OtY08o9Tll+c+OTevY9NIc0U7n3zy+
         Yo6ShFHsiHpTEKxMn4C6uaIfqTZn1eSZ+Q01Ey9AxZhjxYFen2ZJNByMaQVFF3UDutm/
         idhYoo7QUhrLpoM4e9u5adBLj8L+UAIMZ0Fo+XCYH1I3g9WGZIs8gNjyLX+hUti1fYI4
         8M7VVAXIS8EqEHIeZWRWUulJFu38A67fnvoHbin0CYtnxi+AROReY2HoTkLI2ZFskTbH
         SVNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719836613; x=1720441413;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MpqDvg8Jwlu6gLRDo1KNNBEsJCczWIGYNoZ90WS8ZuI=;
        b=HkN83Zog+YWGm1iA+qzPXNfUQ84VaZCN3gucLIG5wW/pepN8wpYNqOHWKwS65xlgiS
         y+KP8nWsOyN171ds9Gouh5kDJzWfQY0oirX9CxxdkBjtULR3GPBf0lRStt9VoQSYbaPn
         pOcJIYJ9SxX4diS1ZVawrsQK04IreS9JRqYdbuM3giGZW8Xv7bU2Z1RNZ83K3yuAYIcN
         AvDQJg2lTg3fytXsBTVweU7kpbF0/yCKC72TU50eQ0c3x0pnRMayYMRDroAvc9xhfSes
         PNpK0B0aVtEnp6mhtGlH85qJlMH8w4DK5fPA+FLbWQSnvZFBTk0nWeqU/U8v9tWEbjtn
         e2kw==
X-Gm-Message-State: AOJu0Yz6pLPgN9eA68cb02W5H5cn6U8iEzBI20C29yGBJELR6etBs78t
	o7AGHo5gblz7aT/CbhoOcsvexutX14mjxQEIpNZRbhM6L6XfJ52ePMJET6C7o9rBMZ9HqL7lp7G
	1/+sUr2Y76HnkGfmpjm+O9SWaGtXK1MqPDaqQ0FCu22I7q6PYR9mquA==
X-Google-Smtp-Source: AGHT+IGnlgmRasBr962NT76CmTkkPEoNjGwypxLLwuXk5yTuiB7tXi6g/Fs4bDFjP8+S2KipD/2HDL+oJ1fO2Cm9nEc=
X-Received: by 2002:a17:907:7e85:b0:a72:9d25:8ad3 with SMTP id
 a640c23a62f3a-a75142d84cfmr488561566b.9.1719836612967; Mon, 01 Jul 2024
 05:23:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAFOi1A6CyYPFX-TB6YFhVFOvA1Xhpawf0HwBVAUT4wFi9V2kxQ@mail.gmail.com>
In-Reply-To: <CAFOi1A6CyYPFX-TB6YFhVFOvA1Xhpawf0HwBVAUT4wFi9V2kxQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 1 Jul 2024 14:23:21 +0200
Message-ID: <CAFOi1A6WsCZmt+qmJsnOt9-0EGfyENxS=AXH39nFKsEZ5tj+Uw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: THOAMEWEG3NVUIUTWD6CEQUU5DIR4GZQ
X-Message-ID-Hash: THOAMEWEG3NVUIUTWD6CEQUU5DIR4GZQ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Image Builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/THOAMEWEG3NVUIUTWD6CEQUU5DIR4GZQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0416664671937137799=="

--===============0416664671937137799==
Content-Type: multipart/alternative; boundary="0000000000006359e7061c2eaaf8"

--0000000000006359e7061c2eaaf8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Erm, yes -- we managed to ship a version of rfnoc_image_builder in UHD 4.7
which doesn't render well on dark-themed terminals. Out of all the bugs in
the recent years, I rank this one pretty high on the not critical, but
annoying list. We're tracking it here:
https://github.com/EttusResearch/uhddev/pull/7239

--M

On Tue, Jun 25, 2024 at 12:39=E2=80=AFPM Martin Braun <martin.braun@ettus.c=
om>
wrote:

> Hi all,
>
> As you may have seen from the 4.7-RC1 release announcements, we have a
> bunch of updates to the RFNoC image builder. I would like to provide some
> context around those.
>
> First, we are not yet ready to ship a new version of RFNoC modtool. With
> the deprecation of gr-ettus as the way to ship that tool, we have a bunch
> of work ahead of us to integrate a new modtool into UHD, and we're not
> there yet.
>
> However, the image builder has had some major improvements. Many of those
> are simply usability improvements: You'll notice the logging output looks
> different, and we have tried to improve the error messages. This is, to a
> large extent, done by allowing custom checks within block descriptor YAML=
s
> as well as BSP YAMLs. For example, if you leave important bus connections
> unconnected in an RFNoC image core file, then you will now get a warning,
> and must confirm that you know what you're doing if you want the image
> builder to proceed to build a bitfile.
>
> One thing you'll notice is that you now must use the image builder to
> build FPGA bitfiles, and can no longer directly build bitfiles by running
> commands like "make X410_X4_400". This may be annoying for people who lik=
e
> to build the stock images, but it makes many things simpler: Now, there i=
s
> a single way (i.e., calling rfnoc_image_builder) that will make bitfiles.
> Besides, we no longer have to check in intermediate build artifacts (e.g.=
,
> the image core auto-generated Verilog) into git, which can cause conflict=
s
> or confusion.
> Side note: If you don't like having install all of UHD, because you just
> need the image builder, run `cmake -DENABLE_LIBUHD=3DOFF
> -DENABLE_PYMOD_UTILS=3DON` to just install the image builder and some oth=
er
> Python-based utilities.
>
> Probably the biggest new feature is the fact that in the X4x0 series,
> transport adapters are now part of the image core. That means that you mu=
st
> choose which transports you want to use in the YAML file, instead of by
> specifying a build target.
> For example, if you wanted the 10GbE version of the X410, or the 100 GbE
> version, you would either build the X410_X4_400 or X410_CG_400 target. No=
w,
> there is only one target (X410) but you modify the YAML file to choose a
> single 10 GbE, quadruple 10 GbE, or 100 GbE per QSFP port (of course, you
> may also leave them unconnected). The main reason this is useful is becau=
se
> it allows you to put custom blocks or transport adapters that use the QSF=
P
> ports into your designs.
> Note that on other devices than X4x0 devices, the previous behaviour is
> still in place. For example, on X310, you can't define the transport
> adapters through the YAML files.
>
> There is a downside to this feature: If you use a pre-4.7 image core file
> (which does not specify transport adapters), then you would end up with a
> bitfile that can't communicate with the outside. You may have guessed it:
> We added more checks to make it hard for that to happen, the image builde=
r
> would give you a very obvious warning in that case.
>
> Another interesting feature is the ability to add custom Verilog modules.
> These also require a YAML file to describe them, but can be used to consu=
me
> or write to IO ports, generate custom clocks, or whatever else you want t=
o
> do.
>
> Some other random features:
> - Better use of parameters, which can be referenced in YAML files. For
> example, you can create an IO port with variable width, and make the widt=
h
> a parameter.
> - Better inclusion/exclusion of build files based on what you need (e.g.,
> if you build a bitfile without DDC, then no DDC IP will be included)
> - Define IO signatures in any module. If you write a block with custom IO
> signatures, just include the IO signatures in the block YAML.
> - Custom paths for build, IP, and output. This means you don't have to
> write anything inside the RFNoC source tree.
> - The "build" directory stores all artifacts that get auto-generated
> during build time. For debugging, you may manually edit these files and u=
se
> the --reuse option on rfnoc_image_builder to make sure your manual change=
s
> don't get overwritten.
> - Use inheritance to share info between similar image core files.
> - Separate edge files are no longer used.
>
> One item that might trigger some questions is the new "secure image core"
> feature. This is a response to a feature request to allow mixing
> proprietary and open-source blocks. Note that we are not going to use tha=
t
> as part of standard bitfiles: All blocks that get shipped with UHD will
> remain open-source and modifiable (well, as much as possible, we do use
> Vivado and AMD/Xilinx IP). There may be blocks in the future (not part of
> UHD) that make use of these secure cores.
>
>
> Going Forward
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> These improvements to rfnoc_image_builder are a first step to making the
> whole RFNoC image building process more user-friendly and less wading
> through code examples and trial-and-error. Part of this process will also
> be a renewed modtool (and also, work on the blocktool), but that's furthe=
r
> down the line.
>
> The reason we started working on things in this order is what we perceive
> as the priority in how people engage in using RFNoC: There are more peopl=
e
> interested in building custom bitfiles with standard blocks (e.g., adding
> an FFT, adding a filter) than there are people writing their own blocks -=
-
> but even those who do write their own blocks need to use the image builde=
r.
>
> I'll leave it at that. This is a good place to ask questions about these
> updates -- I'll try and cover them!
>
> Cheers,
> Martin
>

--0000000000006359e7061c2eaaf8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Erm, yes -- we managed to ship a version of rfnoc_ima=
ge_builder in UHD 4.7 which doesn&#39;t render well on dark-themed terminal=
s. Out of all the bugs in the recent years, I rank this one pretty high on =
the not critical, but annoying list. We&#39;re tracking it here: <a href=3D=
"https://github.com/EttusResearch/uhddev/pull/7239">https://github.com/Ettu=
sResearch/uhddev/pull/7239</a></div><div><br></div><div>--M<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Jun 25, 2024 at 12:39=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:marti=
n.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi all,</div=
><div><br></div><div>As you may have seen from the 4.7-RC1 release announce=
ments, we have a bunch of updates to the RFNoC image builder. I would like =
to provide some context around those.</div><div><br></div><div>First, we ar=
e not yet ready to ship a new version of RFNoC modtool. With the deprecatio=
n of gr-ettus as the way to ship that tool, we have a bunch of work ahead o=
f us to integrate a new modtool into UHD, and we&#39;re not there yet.</div=
><div><br></div><div>However, the image builder has had some major improvem=
ents. Many of those are simply usability improvements: You&#39;ll notice th=
e logging output looks different, and we have tried to improve the error me=
ssages. This is, to a large extent, done by allowing custom checks within b=
lock descriptor YAMLs as well as BSP YAMLs. For example, if you leave impor=
tant bus connections unconnected in an RFNoC image core file, then you will=
 now get a warning, and must confirm that you know what you&#39;re doing if=
 you want the image builder to proceed to build a bitfile.</div><div><br></=
div><div>One thing you&#39;ll notice is that you now must use the image bui=
lder to build FPGA bitfiles, and can no longer directly build bitfiles by r=
unning commands like &quot;make X410_X4_400&quot;. This may be annoying for=
 people who like to build the stock images, but it makes many things simple=
r: Now, there is a single way (i.e., calling rfnoc_image_builder) that will=
 make bitfiles. Besides, we no longer have to check in intermediate build a=
rtifacts (e.g., the image core auto-generated Verilog) into git, which can =
cause conflicts or confusion.</div><div>Side note: If you don&#39;t like ha=
ving install all of UHD, because you just need the image builder, run `cmak=
e -DENABLE_LIBUHD=3DOFF -DENABLE_PYMOD_UTILS=3DON` to just install the imag=
e builder and some other Python-based utilities.<br></div><div><br></div><d=
iv>Probably the biggest new feature is the fact that in the X4x0 series, tr=
ansport adapters are now part of the image core. That means that you must c=
hoose which transports you want to use in the YAML file, instead of by spec=
ifying a build target.</div><div>For example, if you wanted the 10GbE versi=
on of the X410, or the 100 GbE version, you would either build the X410_X4_=
400 or X410_CG_400 target. Now, there is only one target (X410) but you mod=
ify the YAML file to choose a single 10 GbE, quadruple 10 GbE, or 100 GbE p=
er QSFP port (of course, you may also leave them unconnected). The main rea=
son this is useful is because it allows you to put custom blocks or transpo=
rt adapters that use the QSFP ports into your designs.</div><div>Note that =
on other devices than X4x0 devices, the previous behaviour is still in plac=
e. For example, on X310, you can&#39;t define the transport adapters throug=
h the YAML files.</div><div><br></div><div>There is a downside to this feat=
ure: If you use a pre-4.7 image core file (which does not specify transport=
 adapters), then you would end up with a bitfile that can&#39;t communicate=
 with the outside. You may have guessed it: We added more checks to make it=
 hard for that to happen, the image builder would give you a very obvious w=
arning in that case.<br></div><div><br></div><div>Another interesting featu=
re is the ability to add custom Verilog modules. These also require a YAML =
file to describe them, but can be used to consume or write to IO ports, gen=
erate custom clocks, or whatever else you want to do.</div><div><br></div><=
div>Some other random features:</div><div>- Better use of parameters, which=
 can be referenced in YAML files. For example, you can create an IO port wi=
th variable width, and make the width a parameter.</div><div>- Better inclu=
sion/exclusion of build files based on what you need (e.g., if you build a =
bitfile without DDC, then no DDC IP will be included)</div><div>- Define IO=
 signatures in any module. If you write a block with custom IO signatures, =
just include the IO signatures in the block YAML.</div><div>- Custom paths =
for build, IP, and output. This means you don&#39;t have to write anything =
inside the RFNoC source tree.</div><div>- The &quot;build&quot; directory s=
tores all artifacts that get auto-generated during build time. For debuggin=
g, you may manually edit these files and use the --reuse option on rfnoc_im=
age_builder to make sure your manual changes don&#39;t get overwritten.</di=
v><div>- Use inheritance to share info between similar image core files.</d=
iv><div>- Separate edge files are no longer used.</div><div><br></div><div>=
One item that might trigger some questions is the new &quot;secure image co=
re&quot; feature. This is a response to a feature request to allow mixing p=
roprietary and open-source blocks. Note that we are not going to use that a=
s part of standard bitfiles: All blocks that get shipped with UHD will rema=
in open-source and modifiable (well, as much as possible, we do use Vivado =
and AMD/Xilinx IP). There may be blocks in the future (not part of UHD) tha=
t make use of these secure cores.</div><div><br></div><div><br></div><div>G=
oing Forward</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br><=
/div><div>These improvements to rfnoc_image_builder are a first step to mak=
ing the whole RFNoC image building process more user-friendly and less wadi=
ng through code examples and trial-and-error. Part of this process will als=
o be a renewed modtool (and also, work on the blocktool), but that&#39;s fu=
rther down the line.</div><div><br></div><div>The reason we started working=
 on things in this order is what we perceive as the priority in how people =
engage in using RFNoC: There are more people interested in building custom =
bitfiles with standard blocks (e.g., adding an FFT, adding a filter) than t=
here are people writing their own blocks -- but even those who do write the=
ir own blocks need to use the image builder.</div><div><br></div><div>I&#39=
;ll leave it at that. This is a good place to ask questions about these upd=
ates -- I&#39;ll try and cover them!</div><div><br></div><div>Cheers,</div>=
<div>Martin<br></div></div>
</blockquote></div>

--0000000000006359e7061c2eaaf8--

--===============0416664671937137799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0416664671937137799==--
