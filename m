Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7737C1144D7
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2019 17:30:49 +0100 (CET)
Received: from [::1] (port=39400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icu1b-00027x-DI; Thu, 05 Dec 2019 11:30:43 -0500
Received: from mail-lf1-f42.google.com ([209.85.167.42]:36124)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1icu1Y-00023v-QM
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 11:30:40 -0500
Received: by mail-lf1-f42.google.com with SMTP id n12so2973176lfe.3
 for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2019 08:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VPv/+yS336LmhYL/pyomjjsmvRnYGTzn1XsUdWmj7ng=;
 b=LELSmwH9FnjHuI5VuG38jEauAP2l1JJgR4dULcA7bXoq/6hgGsM4WFJoq91V0OKTNk
 tkrXIyQ1QpkEzcbWlhUIKj1PVh5WvS3fus2YZdBmQJsbpb+Fsna0C6ok41gi+3B5eetf
 RHYMkzVgNYNxYPNDLKY2aEXZHRpMC6qJsd0HUJ8gICYjWhQr5nLbJVgamMhqlKxdFRAU
 /GxclDmhmRrCJHzo0hP5Iy8oQmGKPmjYgoqXFrbVvHJAY8oxu1trixxEUsNB1+7k7Yey
 cdm01aBvm7DpXOdHP/D9mznOpQ5OYa48CNmgh6hRLYi0BhMpS7xyL4Baudu9ZmoTlvYP
 Lg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VPv/+yS336LmhYL/pyomjjsmvRnYGTzn1XsUdWmj7ng=;
 b=dRptaxNKH2gPimRX2+4mE4noh8O9EAHsDvadRqOOCb5hWEz+FaiZiEb/bZN9pPETZz
 dad2XoG45JUpwD0tYUBA9RMg8Qj+nSTICU7a+q4mXxNj7NdS8RFsqhDts1IBUGgrYpG6
 B7DAcU7FbLc/SlsDD+ET7EtB/lZmFxJJZmFKMc0qy6HVL6Cj7UW/7yPswsIYHguOx2JV
 OK8RK02Y70XO3N+cv7F0XUganuJt77OT5P6s6HdtQArqyk07gJicTa0+GvbStNW023W7
 F3o0oA719mV66QZ3/iC3CG1F8AK38OvwCBqNI5wURb3VF5yK5Wr3TXFaQkwHInSVzdh6
 4scg==
X-Gm-Message-State: APjAAAW27w8SeO6DFgjTU+OcW9leb7XuSOthFD4Q6oDAfhuzXPUE1sfR
 +LFTjE9QXhMF5MQX1rOcL4YvAjY22zXwm/0MoAMK/iOE
X-Google-Smtp-Source: APXvYqw6oIQjTa2Gs9pE7ocT/4UD1H2wo2tGdj3OvjOzzzakwKlDYEKV6z2hpG5jzLmma6RldfFASBeGyseGjSpcojI=
X-Received: by 2002:a19:dc14:: with SMTP id t20mr5755214lfg.47.1575563399417; 
 Thu, 05 Dec 2019 08:29:59 -0800 (PST)
MIME-Version: 1.0
References: <CALSKgPzX3DnB8iu4OMqZzht-iZ+M4754vUjraPc6vMryG707_Q@mail.gmail.com>
In-Reply-To: <CALSKgPzX3DnB8iu4OMqZzht-iZ+M4754vUjraPc6vMryG707_Q@mail.gmail.com>
Date: Thu, 5 Dec 2019 10:29:48 -0600
Message-ID: <CANf970bheGwVmr3zWbO8Pa-FtO-3wB-H=6PKCmDOGcme8ibo5Q@mail.gmail.com>
To: Wheberth Damascena Dias <wheberth@gmail.com>
Subject: Re: [USRP-users] USRP X3x0 FPGA source (LV)
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8463403478652140600=="
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

--===============8463403478652140600==
Content-Type: multipart/alternative; boundary="000000000000be660a0598f77051"

--000000000000be660a0598f77051
Content-Type: text/plain; charset="UTF-8"

Wheberth,

What you're trying to do sounds possible, but I think you're approaching it
the wrong way. When you use the USRP with a default FPGA image
(usrp_x310_fpga_HG.lvbitx), you just get the HG image that you can
interface with using the NI-USRP driver in LabVIEW. In that case,
everything you program is on the host side. With this HG image, you're
pretty much just getting default RFNoC under the hood with a few changes
including header modifications. The project isn't available and wouldn't be
useful to you for integrating your code, even if you had it.

You'll want to use your X310 as a USRP RIO and interact with it via the
LabVIEW FPGA module (or something along those lines, I'm not particularly
familiar with this paradigm myself). This will give you a blank block
diagram to implement your IP and pass data over DMA to the host while
preserving the static logic necessary to allow the radio to work as you'd
expect. This is all LabVIEW and no UHD/GR. You might poke around some of
the USRP RIO examples [1] to see how similar functionality has been
implemented before you drop yours in. Beyond that, reaching out to NI
Support might be a good call for follow up questions.

Sam Reiter
Ettus Research

[1]
https://knowledge.ni.com/KnowledgeArticleDetails?id=kA00Z0000019TmVSAU&l=en-US

On Thu, Dec 5, 2019 at 7:13 AM Wheberth Damascena Dias via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
> Hi All,
>
> Looking at the bitfile "usrp_x310_fpga_HG.lvbitx", as the name suggests,
> it looks like it came from LabVIEW/LabVIEW Comms. It is possible even to
> see the top ..vi filename which is "USRP_X3x0_Top.vi".
> Although I wasn't able to find the LabVIEW source project for this
> bitfile. Is this source available anywhere?
> I am asking, because we have to include some custom code (a digital
> baseband pre-distorter) to run on the USRP FPGA. As we already have this
> implemented in LabVIEW it would save us a lot of time comparing to going
> through the RFNoC route.
>
> Thank you in advance,
> Best Regards
> --
> *Wheberth Damascena Dias*
> _______________ _____ _____ __ ___ __ _ _ _  _
> http://www.linkedin.com/in/wheberth
> e-mail:wheberth@gmail.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000be660a0598f77051
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Wheberth,</div><div><br></div><div>What you&#39;re tr=
ying to do sounds possible, but I think you&#39;re approaching it the wrong=
 way. When you use the USRP with a default FPGA image (usrp_x310_fpga_HG.lv=
bitx), you just get the HG image that you can interface with using the NI-U=
SRP driver in LabVIEW. In that case, everything you program is on the host =
side. With this HG image, you&#39;re pretty much just getting default RFNoC=
 under the hood with a few changes including header modifications. The proj=
ect isn&#39;t available and wouldn&#39;t be useful to you for integrating y=
our code, even if you had it. <br></div><div><br></div><div>You&#39;ll want=
 to use your X310 as a USRP RIO and interact with it via the LabVIEW FPGA m=
odule (or something along those lines, I&#39;m not particularly familiar wi=
th this paradigm myself). This will give you a blank block diagram to imple=
ment your IP and pass data over DMA to the host while preserving the static=
 logic necessary to allow the radio to work as you&#39;d expect. This is al=
l LabVIEW and no UHD/GR. You might poke around some of the USRP RIO example=
s [1] to see how similar functionality has been implemented before you drop=
 yours in. Beyond that, reaching out to NI Support might be a good call for=
 follow up questions. <br></div><div><br></div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">Sam Reiter <br><div>Ettus Research</div><div><br></div>=
<div>[1] <a href=3D"https://knowledge.ni.com/KnowledgeArticleDetails?id=3Dk=
A00Z0000019TmVSAU&amp;l=3Den-US">https://knowledge.ni.com/KnowledgeArticleD=
etails?id=3DkA00Z0000019TmVSAU&amp;l=3Den-US</a></div></div></div></div></d=
iv></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Dec 5, 2019 at 7:13 AM Wheberth Damascena Dias via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div><br clear=3D"all"></div><div>Hi All,</div><div><=
br></div><div></div><div></div><div>Looking at the bitfile &quot;usrp_x310_=
fpga_HG.lvbitx&quot;, as the name suggests, it looks like it came from LabV=
IEW/LabVIEW Comms. It is possible even to see the top ..vi filename which i=
s &quot;USRP_X3x0_Top.vi&quot;.</div><div>Although I wasn&#39;t able to fin=
d the LabVIEW source project for this bitfile. Is this source available any=
where?</div><div></div><div>I am asking, because we have to include some cu=
stom code (a digital baseband pre-distorter) to run on the USRP FPGA. As we=
 already have this implemented in LabVIEW it would save us a lot of time co=
mparing to going through the RFNoC route.<br></div><div><br></div><div>Than=
k you in advance,<br></div><div>Best Regards</div><div></div><div>-- <br><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div><span style=3D"font-size:12.8px"><b>Wh=
eberth Damascena Dias</b></span><br></div><div><span style=3D"color:rgb(80,=
0,80);font-size:12.8px">_______________ _____ _____ __ ___ __ _ _ _=C2=A0 _=
=C2=A0</span><br><div><a href=3D"http://www.linkedin.com/in/wheberth" targe=
t=3D"_blank">http://www.linkedin.com/in/wheberth</a></div><div><a href=3D"m=
ailto:e-mail%3Awheberth@gmail.com" target=3D"_blank">e-mail:wheberth@gmail.=
com</a></div><div><div><div><br></div></div></div></div></div></div></div><=
/div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000be660a0598f77051--


--===============8463403478652140600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8463403478652140600==--

