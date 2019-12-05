Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2231A1147F0
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2019 21:07:31 +0100 (CET)
Received: from [::1] (port=39950 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icxPN-0007sA-FE; Thu, 05 Dec 2019 15:07:29 -0500
Received: from mail-lj1-f170.google.com ([209.85.208.170]:39899)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1icxPJ-0007o7-Fg
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 15:07:25 -0500
Received: by mail-lj1-f170.google.com with SMTP id e10so5030974ljj.6
 for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2019 12:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GUDZv9VKlXwmEljRBrROCpSc9RkcrdeaOxXk1YCVrzs=;
 b=Ni/gVsqT1WxbjPd8jDfYZ6fOL2/WZJDrH4efWGqg+H9QmJmnhlo5XJurHW10DwFxJq
 yuStAywW0jjXwMjWeXJ//UWpPWfvMSbcFPUtWo0csTAQx4c8u/KI+zj8TlOTVCZWBwkO
 Z7yFUk7RRdVtZoaKkgYl2HZBrEEE2qEO9N0LbL96l8LxICBm3x5mhzYvdanmO5N0B3cj
 psnPWoaWOOhYrFo15RIifdzMINJGkdhxgEksIr1y3k+2UABGfi+PKBTWx8nhaaSRCtCl
 kVzkliXXYLsJ0Cli3WfiEq5C/KSiosc7eKoX6l+9s2Y5c/XW6eWV9Jw2bC+zr7mEphqi
 xebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GUDZv9VKlXwmEljRBrROCpSc9RkcrdeaOxXk1YCVrzs=;
 b=QeyWJdPnmdqasOZOkmIw4U23V7nSdCdfHncQPZNunMZpzet7FBU0viA3a9TXdawyCs
 sDFeyU5eV3fcbITzSdvQWSmvb58Y3HuA6H/2w+XgPxCv/0NaA+M8aDE3B6NxsjPqZznz
 LLJ476yiDWsoZxs/SZlLu4TgRSlgNtM3SmK2EcQgNfisb+TZxmPQhquLbyAhv2ZbpgaZ
 +0ZxVEWP+4c1KY02GXW8ZkuJKRbGnOKojipb0cc6IJTgq9mzUA9X2Zeo8XcjFYYbzhl1
 Maw8f6Ju/09PDwPwf4aPY9NFfCJR+uZSB8zTGaXyovQ4g/HxKS8MvBSU8DOsD8Ei5YgE
 lwLQ==
X-Gm-Message-State: APjAAAVhj8dCRoH+eT15wIhN5m4c5ckbyqLpYVYHos9ifWjpJg11Jtdu
 WjqYyulcJsmuESXY1D888Lu7wqUyMwYsv7a62g8wwean
X-Google-Smtp-Source: APXvYqyKRa/d6Jfa2BVck1av6pmGSlUl8BzuPnHwMMtGBMEiT4ndKnMyq3ozGmNoE8UwLh0m5dfevfnajC9j5QBq3GI=
X-Received: by 2002:a2e:585e:: with SMTP id x30mr6883980ljd.141.1575576404144; 
 Thu, 05 Dec 2019 12:06:44 -0800 (PST)
MIME-Version: 1.0
References: <CALSKgPzX3DnB8iu4OMqZzht-iZ+M4754vUjraPc6vMryG707_Q@mail.gmail.com>
 <CANf970bheGwVmr3zWbO8Pa-FtO-3wB-H=6PKCmDOGcme8ibo5Q@mail.gmail.com>
 <CALSKgPwFYE3vGNYb5djdMH-EasGkQnu6q=Uj0XkPtOJuwWai0w@mail.gmail.com>
In-Reply-To: <CALSKgPwFYE3vGNYb5djdMH-EasGkQnu6q=Uj0XkPtOJuwWai0w@mail.gmail.com>
Date: Thu, 5 Dec 2019 14:06:32 -0600
Message-ID: <CANf970a=OJQdfAZV+vqHedzjTcHgCVoG-L4nnJ2w_Oa_bR6-yw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4126214162419839448=="
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

--===============4126214162419839448==
Content-Type: multipart/alternative; boundary="000000000000e2d21f0598fa774f"

--000000000000e2d21f0598fa774f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wheberth,

The source code for any of the NI-USRP side of things is locked down. Even
if I thought is was something that would be useful in this case (I'm still
not convinced it would be), it's not something I'm at liberty to release.
However, from your email, it sounds like the main hesitation here is the
level of effort associated with duplication of your IP. It may be useful
for you to know that as of LabVIEW 2018, you can export your LabVIEW FPGA
IP for use in Vivado:

Exporting FPGA VIs as Vivado Design Suite Projects (FPGA Module)
https://zone.ni.com/reference/en-XX/help/371599P-01/lvfpgahelp/export_fpga_=
vis_howto/

As I said before, this kind of thing isn't something I'm familiar with, so
follow up questions on that Export Tool should be directed to NI Support.
If you'd like to have a deeper discussion on why I don't think that the
HG.lvbitx source code will be particularly helpful to you, send me a direct
email and we can chat about it off of the mailing list -- it's not exactly
relevant to the open source side of things.

Sam

On Thu, Dec 5, 2019 at 11:23 AM Wheberth Damascena Dias <wheberth@gmail.com=
>
wrote:

> HI Sam,
>
> Thank you for your answer.
> Let me explain our situation a little bit better. Here at Inatel we have
> been developing for the USRPs using the LabVIEW FPGA (USRP-RIO) flow for =
a
> while. So we have many blocks already implemented in this paradigm. We ar=
e
> now switching for the software flow using GNU Radio, due to the developme=
nt
> agility it provides compared to any FPGA flow. Although, for some blocks,
> is very difficult to achieve the required processing throughput in a
> software implementation. The Digital pre-distorter is one of those. The
> bandwidth required at the output of this block must be many times (3x to
> 5x) the bandwidth of the desired signal. Then an hybrid approach with FPG=
A
> and as software development is needed.
> As pointed out in the previous message, it turns out that the stock USRP
> images were generated using the same tool we have been using by tha last =
4
> years, This way, if we could modify the stock image, using the LabVIEW fl=
ow
> and could insert the DPD block just before the DAC output (running at the
> master_clock_rate 200MHz or 184.32MHz) it would be a perfect fit for our
> need. So if that code were available it would be straightforward to us to
> do this modification (Depending on the LabVIEW version).
> I know that is not the intended flow, but that source code would be reall=
y
> helpful, if available.
>
> Best Regards,
>
>
>
> Em qui., 5 de dez. de 2019 =C3=A0s 13:30, Sam Reiter <sam.reiter@ettus.co=
m>
> escreveu:
>
>> Wheberth,
>>
>> What you're trying to do sounds possible, but I think you're approaching
>> it the wrong way. When you use the USRP with a default FPGA image
>> (usrp_x310_fpga_HG.lvbitx), you just get the HG image that you can
>> interface with using the NI-USRP driver in LabVIEW. In that case,
>> everything you program is on the host side. With this HG image, you're
>> pretty much just getting default RFNoC under the hood with a few changes
>> including header modifications. The project isn't available and wouldn't=
 be
>> useful to you for integrating your code, even if you had it.
>>
>> You'll want to use your X310 as a USRP RIO and interact with it via the
>> LabVIEW FPGA module (or something along those lines, I'm not particularl=
y
>> familiar with this paradigm myself). This will give you a blank block
>> diagram to implement your IP and pass data over DMA to the host while
>> preserving the static logic necessary to allow the radio to work as you'=
d
>> expect. This is all LabVIEW and no UHD/GR. You might poke around some of
>> the USRP RIO examples [1] to see how similar functionality has been
>> implemented before you drop yours in. Beyond that, reaching out to NI
>> Support might be a good call for follow up questions.
>>
>> Sam Reiter
>> Ettus Research
>>
>> [1]
>> https://knowledge.ni.com/KnowledgeArticleDetails?id=3DkA00Z0000019TmVSAU=
&l=3Den-US
>>
>> On Thu, Dec 5, 2019 at 7:13 AM Wheberth Damascena Dias via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>>
>>> Hi All,
>>>
>>> Looking at the bitfile "usrp_x310_fpga_HG.lvbitx", as the name suggests=
,
>>> it looks like it came from LabVIEW/LabVIEW Comms. It is possible even t=
o
>>> see the top ..vi filename which is "USRP_X3x0_Top.vi".
>>> Although I wasn't able to find the LabVIEW source project for this
>>> bitfile. Is this source available anywhere?
>>> I am asking, because we have to include some custom code (a digital
>>> baseband pre-distorter) to run on the USRP FPGA. As we already have thi=
s
>>> implemented in LabVIEW it would save us a lot of time comparing to goin=
g
>>> through the RFNoC route.
>>>
>>> Thank you in advance,
>>> Best Regards
>>> --
>>> *Wheberth Damascena Dias*
>>> _______________ _____ _____ __ ___ __ _ _ _  _
>>> http://www.linkedin.com/in/wheberth
>>> e-mail:wheberth@gmail.com
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
> --
> *Wheberth Damascena Dias*
> _______________ _____ _____ __ ___ __ _ _ _  _
> http://www.linkedin.com/in/wheberth
> e-mail:wheberth@gmail.com
>
>

--000000000000e2d21f0598fa774f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Wheberth,</div><div><br></div><div>The source code fo=
r any of the NI-USRP side of things is locked down. Even if I thought is wa=
s something that would be useful in this case (I&#39;m still not convinced =
it would be), it&#39;s not something I&#39;m at liberty to release. However=
, from your email, it sounds like the main hesitation here is the level of =
effort associated with duplication of your IP. It may be useful for you to =
know that as of LabVIEW 2018, you can export your LabVIEW FPGA IP for use i=
n Vivado:</div><div><br></div><div>Exporting FPGA VIs as Vivado Design Suit=
e Projects (FPGA Module)<br></div><div><a href=3D"https://zone.ni.com/refer=
ence/en-XX/help/371599P-01/lvfpgahelp/export_fpga_vis_howto/">https://zone.=
ni.com/reference/en-XX/help/371599P-01/lvfpgahelp/export_fpga_vis_howto/</a=
></div><div><br></div><div>As I said before, this kind of thing isn&#39;t s=
omething I&#39;m familiar with, so follow up questions on that Export Tool =
should be directed to NI Support. If you&#39;d like to have a deeper discus=
sion on why I don&#39;t think that the HG.lvbitx source code will be partic=
ularly helpful to you, send me a direct email and we can chat about it off =
of the mailing list -- it&#39;s not exactly relevant to the open source sid=
e of things. <br></div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div di=
r=3D"ltr">Sam<br></div></div></div></div></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 5, 2019 at 11:23=
 AM Wheberth Damascena Dias &lt;<a href=3D"mailto:wheberth@gmail.com">whebe=
rth@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>HI Sam,</div><div><br></div><div>Thank y=
ou for your answer.<br></div><div>Let me explain our situation a little bit=
 better. Here at Inatel we have been developing for the USRPs using the Lab=
VIEW FPGA (USRP-RIO) flow for a while. So we have many blocks already imple=
mented in this paradigm. We are now switching for the software flow using G=
NU Radio, due to the development agility it provides compared to any FPGA f=
low. Although, for some blocks, is very difficult to achieve the required p=
rocessing throughput in a software implementation. The Digital pre-distorte=
r is one of those. The bandwidth required at the output of this block must =
be many times (3x to 5x) the bandwidth of the desired signal. Then an hybri=
d approach with FPGA and as software development is needed.</div><div></div=
><div>As pointed out in the previous message, it turns out that the stock U=
SRP images were generated using the same tool we have been using by tha las=
t 4 years, This way, if we could modify the stock image, using the LabVIEW =
flow and could insert the DPD block just before the DAC output (running at =
the master_clock_rate 200MHz or 184.32MHz) it would be a perfect fit for ou=
r need. So if that code were available it would be straightforward to us to=
 do this modification (Depending on the LabVIEW version).</div><div></div><=
div>I know that is not the intended flow, but that source code would be rea=
lly helpful, if available.<br></div><div><br></div><div>Best Regards,</div>=
<div></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">Em qui., 5 de dez. de 2019 =C3=A0s=
 13:30, Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_b=
lank">sam.reiter@ettus.com</a>&gt; escreveu:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Wheberth,</div><div><br>=
</div><div>What you&#39;re trying to do sounds possible, but I think you&#3=
9;re approaching it the wrong way. When you use the USRP with a default FPG=
A image (usrp_x310_fpga_HG.lvbitx), you just get the HG image that you can =
interface with using the NI-USRP driver in LabVIEW. In that case, everythin=
g you program is on the host side. With this HG image, you&#39;re pretty mu=
ch just getting default RFNoC under the hood with a few changes including h=
eader modifications. The project isn&#39;t available and wouldn&#39;t be us=
eful to you for integrating your code, even if you had it. <br></div><div><=
br></div><div>You&#39;ll want to use your X310 as a USRP RIO and interact w=
ith it via the LabVIEW FPGA module (or something along those lines, I&#39;m=
 not particularly familiar with this paradigm myself). This will give you a=
 blank block diagram to implement your IP and pass data over DMA to the hos=
t while preserving the static logic necessary to allow the radio to work as=
 you&#39;d expect. This is all LabVIEW and no UHD/GR. You might poke around=
 some of the USRP RIO examples [1] to see how similar functionality has bee=
n implemented before you drop yours in. Beyond that, reaching out to NI Sup=
port might be a good call for follow up questions. <br></div><div><br></div=
><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter <b=
r><div>Ettus Research</div><div><br></div><div>[1] <a href=3D"https://knowl=
edge.ni.com/KnowledgeArticleDetails?id=3DkA00Z0000019TmVSAU&amp;l=3Den-US" =
target=3D"_blank">https://knowledge.ni.com/KnowledgeArticleDetails?id=3DkA0=
0Z0000019TmVSAU&amp;l=3Den-US</a></div></div></div></div></div></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Dec 5, 2019 at 7:13 AM Wheberth Damascena Dias via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div><br clear=3D"all"></div><div>Hi All,</div><di=
v><br></div><div></div><div></div><div>Looking at the bitfile &quot;usrp_x3=
10_fpga_HG.lvbitx&quot;, as the name suggests, it looks like it came from L=
abVIEW/LabVIEW Comms. It is possible even to see the top ..vi filename whic=
h is &quot;USRP_X3x0_Top.vi&quot;.</div><div>Although I wasn&#39;t able to =
find the LabVIEW source project for this bitfile. Is this source available =
anywhere?</div><div></div><div>I am asking, because we have to include some=
 custom code (a digital baseband pre-distorter) to run on the USRP FPGA. As=
 we already have this implemented in LabVIEW it would save us a lot of time=
 comparing to going through the RFNoC route.<br></div><div><br></div><div>T=
hank you in advance,<br></div><div>Best Regards</div><div></div><div>-- <br=
><div dir=3D"ltr"><div dir=3D"ltr"><div><span style=3D"font-size:12.8px"><b=
>Wheberth Damascena Dias</b></span><br></div><div><span style=3D"color:rgb(=
80,0,80);font-size:12.8px">_______________ _____ _____ __ ___ __ _ _ _=C2=
=A0 _=C2=A0</span><br><div><a href=3D"http://www.linkedin.com/in/wheberth" =
target=3D"_blank">http://www.linkedin.com/in/wheberth</a></div><div><a href=
=3D"mailto:e-mail%3Awheberth@gmail.com" target=3D"_blank">e-mail:wheberth@g=
mail.com</a></div><div><div><div><br></div></div></div></div></div></div></=
div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><div><span style=3D"font-size:12.8px"><b>Wheberth Damascena Dias</=
b></span><br></div><div><span style=3D"color:rgb(80,0,80);font-size:12.8px"=
>_______________ _____ _____ __ ___ __ _ _ _=C2=A0 _=C2=A0</span><br><div><=
a href=3D"http://www.linkedin.com/in/wheberth" target=3D"_blank">http://www=
.linkedin.com/in/wheberth</a></div><div><a href=3D"mailto:e-mail%3Awheberth=
@gmail.com" target=3D"_blank">e-mail:wheberth@gmail.com</a></div><div><div>=
<div><br></div></div></div></div></div></div>
</blockquote></div>

--000000000000e2d21f0598fa774f--


--===============4126214162419839448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4126214162419839448==--

