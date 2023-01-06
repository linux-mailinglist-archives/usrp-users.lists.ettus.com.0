Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3FC6608AC
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 22:15:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17939380A6F
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 16:15:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673039746; bh=qOatg/Kz5WoyipSCd0eED/HLk/BSXxkCuDB3kUClhkQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=irsjj8pJvuO6llujKtXA6x4eP9IkTyo0q7Ot1BLHWnFHT4MdR4ElJAyt1E6/+GDKv
	 pg4SXJYaWctHWB0b1xLK7pP+NhakNefvLMcK3wuikIHvmRefroDvKuVI8tjLYASh+p
	 XtD0C6Y6vnKhEhCs8wWquDDUTBi3kc9kwhxV1JCrTcBSiZOsutpAIo/HUJdQlh9xn2
	 k084ZHw3oSbGuZabbI7LwmSSD77NQoxdp2jGgos2WeSBMcpiq2mhVBOpVz31MKtOeG
	 aBSOgfceA4ZX4ZVPr9i2r14VzGIdeiEQD4UOSUxsnga4TzYH5MawLcL0u4yIoO5r+0
	 Ow18Z8KaaX1hg==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B78A3844DD
	for <usrp-users@lists.ettus.com>; Fri,  6 Jan 2023 16:15:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iwIkLYTr";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id u19so6211529ejm.8
        for <usrp-users@lists.ettus.com>; Fri, 06 Jan 2023 13:15:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j6SRFD8xcgFeu8RqPQL8MeIvQ2vP4y3ykK15z4XyoIo=;
        b=iwIkLYTracGW7K1Mu5lwNRnP0eFcvbMwSUThmNR+qZzwHh5FA22+GLNuABB/0B+Q12
         KlBFl+LMFCdhnLGoIib/CvhAEOTf18cTRSoIRLeunpcv9F1tTPwoERKsCILmR1CGv4NZ
         Kfl094gjVEXS0IvmdKTiaa4tIlXfvi7Qy/1EaP/8hmz3mc2JV3yp1ac9cU+brTmqBsQe
         1KTvBXoDAWu/dTp0m0zJt87IOKoQJxxDrpnljveEMCpmrd3jSVkxaNZ0RWQaFLuMBM+p
         0i3akxgsx7LiM0of/ramecH9Zy6Hgx9D0hc+dghucPMGK8gJqQdZC9VtAE8Tc+uddfDC
         IhqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j6SRFD8xcgFeu8RqPQL8MeIvQ2vP4y3ykK15z4XyoIo=;
        b=iXx89wDtQpljkDYEmCgN/AJrqgqQZA3K+WuKA38AL0M8mxIC6jrpwyN/F4fCVt9EZn
         zu1n8OCqEVEae4PCxn5VHQxa+x31COPSjPcBFbTiSydRPPsX/kwVUZG6JfUykvPWpeGa
         5ZGxDLlCvZgKPSKZTflouNYg2GuldMwyuHtDOSoMDSgtMAuRhjax1DovitkuchLJEGu4
         MNR4eo9f7cY6brtKmQYNss9gH3xZyEZFfkP6qM8Y7IPD2sOHvyVJjn3hP1gUo6THg4d5
         eBXSRNroeuKguW9CUnMn6CUEAzyFU/Taam+Tv9Pki4pHmIIMUh7vlRg9BbcRGHZ2mXgN
         34Fw==
X-Gm-Message-State: AFqh2kqJg85vLuox5EjNefB4yuIwk3dfwmBHeanShwVozTDeowZ6WD3v
	oYfSTeq71dwqXgrXpcUnwTqLM9OC28WIpVE8QHw=
X-Google-Smtp-Source: AMrXdXu7GGZvnktqteuLVaE67dUJPEyFCyLwLPH7MEdjm1JVYYtwHjJJqRa0mbFXAyhO1uxSPl01RV1EFyH86beOQUs=
X-Received: by 2002:a17:907:76c2:b0:7c0:e5c8:dbf1 with SMTP id
 kf2-20020a17090776c200b007c0e5c8dbf1mr4123548ejc.328.1673039737289; Fri, 06
 Jan 2023 13:15:37 -0800 (PST)
MIME-Version: 1.0
References: <CAEXYVK6SzuxTxGM6kZkxE7+z8F7ooGDzsHAhxcedheDdz=yOFg@mail.gmail.com>
 <CAB__hTS=ShmgOyTbxdMU5RK4OtGP0ru5itBYSBx-bQKdAgAt2A@mail.gmail.com>
 <CAEXYVK5iKjhYeJdzX5eXvsNY7sro_bhUuQHYUv_noZFw=bvqVQ@mail.gmail.com> <CAB__hTQnWSkopQu8TeepTrXdQ9dVCOLbCZoxJ9n-2Fq-1ekWtg@mail.gmail.com>
In-Reply-To: <CAB__hTQnWSkopQu8TeepTrXdQ9dVCOLbCZoxJ9n-2Fq-1ekWtg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 6 Jan 2023 16:15:25 -0500
Message-ID: <CAEXYVK6-RSdo=JROYwW3bbrquEMi9cpqdzYRYp2vEjMETjYg0w@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: MJPUPGLRUEEKPN6S4ACORKOKRZJKVMNP
X-Message-ID-Hash: MJPUPGLRUEEKPN6S4ACORKOKRZJKVMNP
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 Generated NoC Shell
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MJPUPGLRUEEKPN6S4ACORKOKRZJKVMNP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6730223091541790208=="

--===============6730223091541790208==
Content-Type: multipart/alternative; boundary="0000000000003c802b05f19eebb6"

--0000000000003c802b05f19eebb6
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 6, 2023 at 2:56 PM Rob Kossler <rkossler@nd.edu> wrote:

> On Fri, Jan 6, 2023 at 2:09 PM Brian Padalino <bpadalino@gmail.com> wrote:
> >
> > On Fri, Jan 6, 2023 at 1:11 PM Rob Kossler <rkossler@nd.edu> wrote:
> >>
> >> On Thu, Jan 5, 2023 at 7:46 PM Brian Padalino <bpadalino@gmail.com>
> wrote:
> >> > Before RFNoC 4.0, there was a generic NoC shell that was used instead
> of one being generated for each of the blocks.
> >> >
> >> > I see there is a noc_shell_generic_ctrlport_pyld_chdr, but it isn't
> used anywhere.
> >> >
> >> > Is there a reason that a generic one isn't utilized and that ones are
> being generated individually for each block?
> >>
> >> With RFNoC 4.0, you have various options for which interface you would
> >> like for payload data and packet context data. These options, which
> >> are in the block XML file, determine which signals get passed in and
> >> out of your block.  So, the reason it is custom is to handle the
> >> variety of interface options.
> >
> >
> > There are no more XML files, right?  It's all YAML?  Right?
>
> My mistake. You are right.
>
> >
> > In the specification:
> >
> >   https://files.ettus.com/app_notes/RFNoC_Specification.pdf
> >
> > ... section 2.5.5.3 shows axis_chdr, axis_pyld_ctxt, and axis_data.  But
> beyond that, I don't see any descriptions of the differences.  Moreover, I
> am unsure if I change the YAML and use rfnoc_image_builder to build things,
> does that regenerate the underlying noc_shell_<block>.v file in the OOT
> description?  Or is it just an input to some other tool?  I am also
> confused by Figure 18 at the end of the document.  I'm not sure I see any
> XML files or the rfnocmodtool GUI?
> >
> > Lastly, I see rfnoc_blocktool in uhd under host/utils/rfnoc_blocktool
> which has rfnoc_create_verilog.py which looks are fpga_iface but I didn't
> see anything get installed from UHD.  Is rfrnocmodtool from gr-ettus not
> the right thing to use anymore?
> >
> > I might just be getting confused by out of date tutorials and
> specifications, but figured I'd try to get my bearings straight.
>
> If we set aside "rfnocmodtool" for a sec (since this only seems to
> come with gnuradio uhd which I don't have), I can say that the
> procedure is the following:
> - choose your desired options in the block yaml
> - run rfnoc_create_verilog.py (it is in the UHD repo) to process the
> yaml and produce several files including the custom noc_shell. Note
> that this will overwrite existing files so you have to take
> appropriate steps if you have some existing code and you later want to
> change the yaml and re-run rfnoc_create_verilog. Note that the other
> files produced are templates for your custom block and for a test
> bench.
> - modify the created templates to implement your desired logic
> - run rfnoc_image_builder (or you can do the same thing with running
> 'make' from an OOT build folder) to build the custom image.  Although
> this tool does access your block yaml, it does not produce a noc_shell
> or other custom files. This is done as mentioned above with
> rfnoc_create_verilog.
>
> If you use "rfnocmodtool", steps might be slightly different - I
> haven't tried it since moving to UHD 4.x.
>
> Let me know if this is unclear or if you still have questions.
>

I appreciate the clarifications.  So it just seems the YAML is used for
initial generation to help generate a noc shell that is customized but
never recustomized by rfnoc_image_builder.

Thanks,
Brian

--0000000000003c802b05f19eebb6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Jan 6, 2023 at 2:56 PM Rob Kossle=
r &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br>=
</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">On Fri, Jan 6, 2023 at 2:09 PM Brian Padalino &lt;<a href=3D"mailto=
:bpadalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; On Fri, Jan 6, 2023 at 1:11 PM Rob Kossler &lt;<a href=3D"mailto:rkoss=
ler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Jan 5, 2023 at 7:46 PM Brian Padalino &lt;<a href=3D"mailt=
o:bpadalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:=
<br>
&gt;&gt; &gt; Before RFNoC 4.0, there was a generic NoC shell that was used=
 instead of one being generated for each of the blocks.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I see there is a noc_shell_generic_ctrlport_pyld_chdr, but it=
 isn&#39;t used anywhere.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Is there a reason that a generic one isn&#39;t utilized and t=
hat ones are being generated individually for each block?<br>
&gt;&gt;<br>
&gt;&gt; With RFNoC 4.0, you have various options for which interface you w=
ould<br>
&gt;&gt; like for payload data and packet context data. These options, whic=
h<br>
&gt;&gt; are in the block XML file, determine which signals get passed in a=
nd<br>
&gt;&gt; out of your block.=C2=A0 So, the reason it is custom is to handle =
the<br>
&gt;&gt; variety of interface options.<br>
&gt;<br>
&gt;<br>
&gt; There are no more XML files, right?=C2=A0 It&#39;s all YAML?=C2=A0 Rig=
ht?<br>
<br>
My mistake. You are right.<br>
<br>
&gt;<br>
&gt; In the specification:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://files.ettus.com/app_notes/RFNoC_Specifi=
cation.pdf" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/ap=
p_notes/RFNoC_Specification.pdf</a><br>
&gt;<br>
&gt; ... section 2.5.5.3 shows axis_chdr, axis_pyld_ctxt, and axis_data.=C2=
=A0 But beyond that, I don&#39;t see any descriptions of the differences.=
=C2=A0 Moreover, I am unsure if I change the YAML and use rfnoc_image_build=
er to build things, does that regenerate the underlying noc_shell_&lt;block=
&gt;.v file in the OOT description?=C2=A0 Or is it just an input to some ot=
her tool?=C2=A0 I am also confused by Figure 18 at the end of the document.=
=C2=A0 I&#39;m not sure I see any XML files or the rfnocmodtool GUI?<br>
&gt;<br>
&gt; Lastly, I see rfnoc_blocktool in uhd under host/utils/rfnoc_blocktool =
which has rfnoc_create_verilog.py which looks are fpga_iface but I didn&#39=
;t see anything get installed from UHD.=C2=A0 Is rfrnocmodtool from gr-ettu=
s not the right thing to use anymore?<br>
&gt;<br>
&gt; I might just be getting confused by out of date tutorials and specific=
ations, but figured I&#39;d try to get my bearings straight.<br>
<br>
If we set aside &quot;rfnocmodtool&quot; for a sec (since this only seems t=
o<br>
come with gnuradio uhd which I don&#39;t have), I can say that the<br>
procedure is the following:<br>
- choose your desired options in the block yaml<br>
- run rfnoc_create_verilog.py (it is in the UHD repo) to process the<br>
yaml and produce several files including the custom noc_shell. Note<br>
that this will overwrite existing files so you have to take<br>
appropriate steps if you have some existing code and you later want to<br>
change the yaml and re-run rfnoc_create_verilog. Note that the other<br>
files produced are templates for your custom block and for a test<br>
bench.<br>
- modify the created templates to implement your desired logic<br>
- run rfnoc_image_builder (or you can do the same thing with running<br>
&#39;make&#39; from an OOT build folder) to build the custom image.=C2=A0 A=
lthough<br>
this tool does access your block yaml, it does not produce a noc_shell<br>
or other custom files. This is done as mentioned above with<br>
rfnoc_create_verilog.<br>
<br>
If you use &quot;rfnocmodtool&quot;, steps might be slightly different - I<=
br>
haven&#39;t tried it since moving to UHD 4.x.<br>
<br>
Let me know if this is unclear or if you still have questions.<br></blockqu=
ote><div><br></div><div>I appreciate the clarifications.=C2=A0 So it just s=
eems the YAML is used for initial generation to help generate a noc shell t=
hat is customized but never recustomized=C2=A0by rfnoc_image_builder.</div>=
<div><br></div><div>Thanks,</div><div>Brian</div><div>=C2=A0</div></div></d=
iv>

--0000000000003c802b05f19eebb6--

--===============6730223091541790208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6730223091541790208==--
