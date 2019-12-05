Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A79EA1145D0
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2019 18:24:23 +0100 (CET)
Received: from [::1] (port=46398 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icurU-0002Lu-8M; Thu, 05 Dec 2019 12:24:20 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:40826)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wddias@gmail.com>) id 1icurR-0002GY-00
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 12:24:17 -0500
Received: by mail-qk1-f182.google.com with SMTP id a137so3991642qkc.7
 for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2019 09:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=UAMjSJovic5NNJLKoI5ZM+432i7aXssND9KgewhuO/I=;
 b=ik8ujsikP/LgMPMEdidkEKDSMfyyZQxUFoGsj8bCMWO8Lqry78/HFrDbzpi12qJmGF
 GCm8W8KJ/HlvzqqB4xKdBzLDmAkMkoIapGBeuWz9BXbQ40yuiXrYEK6wl/hNuwzKyts0
 2VUXPXi90TWB9bZ0ZUqH527/PbCkjluFTrNsYUSO6/2jbBYFi1UELJUyF6k/PeP8zdXR
 IFv3RBAQDBPZvHd6JMhxE30j/hN6z8DNxcw5PrHUsffFqxc2Qy05dlS0gleyt0wjs5T+
 g3LgATzKK96N252/oIRcvmZSWTABcwj7pupsC3Qh+Glwq0rAylMRH7NwBv9UTwbXVgnH
 c7yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=UAMjSJovic5NNJLKoI5ZM+432i7aXssND9KgewhuO/I=;
 b=XDif1rnEp4isznx49BM/9tl8rsVVultwqUubxtZSGNeW9hnG0S6qQuq7ZnTfe4hLY+
 hFrPb2iNkZTkkfkZO07zrYJXpYwcpQEc2vGLGyBO/0JhZq3mDl56wNQ3heFJIx4eYYpz
 NWA/N457hIPaQrDMtTWInuFXqNmevYxXozzJF6ucyoijEPZFhuXmuyvx7Un0856pEtC2
 k8ZzH1gp4+SyRosGXzjUnwS/6ZduLAZb8TWHb76yY7lr9HLLD0tb0RYQQZoayBudep/G
 MH1hAuCSyoWEeeaGUKJtaiR3TKE65RwVyOPnfINaCDvEh8uZDdHhc9X06ePxbHWnl0jf
 N0AQ==
X-Gm-Message-State: APjAAAWDFMxkLUs0Nfd2czOXgsi3URypqnFH5eIyISdMt7/Wxr4EqwCI
 TQKe+fgRQE/iio1+q0hmlfDnA7tasZVfcM6BWV4=
X-Google-Smtp-Source: APXvYqzGtK6IKOQglGjsW0ohdATefQ0E/r7/J39QeCRTeP8hyzD6EEz6hi3eQX1TLLON+dkRylrJuqrlaPkMx8SkL98=
X-Received: by 2002:a37:9ace:: with SMTP id c197mr9682240qke.482.1575566616096; 
 Thu, 05 Dec 2019 09:23:36 -0800 (PST)
MIME-Version: 1.0
References: <CALSKgPzX3DnB8iu4OMqZzht-iZ+M4754vUjraPc6vMryG707_Q@mail.gmail.com>
 <CANf970bheGwVmr3zWbO8Pa-FtO-3wB-H=6PKCmDOGcme8ibo5Q@mail.gmail.com>
In-Reply-To: <CANf970bheGwVmr3zWbO8Pa-FtO-3wB-H=6PKCmDOGcme8ibo5Q@mail.gmail.com>
Date: Thu, 5 Dec 2019 14:23:24 -0300
Message-ID: <CALSKgPwFYE3vGNYb5djdMH-EasGkQnu6q=Uj0XkPtOJuwWai0w@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>, usrp-users <usrp-users@lists.ettus.com>
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
From: Wheberth Damascena Dias via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wheberth Damascena Dias <wheberth@gmail.com>
Content-Type: multipart/mixed; boundary="===============2682906478446966266=="
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

--===============2682906478446966266==
Content-Type: multipart/alternative; boundary="00000000000078f4f80598f830c7"

--00000000000078f4f80598f830c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI Sam,

Thank you for your answer.
Let me explain our situation a little bit better. Here at Inatel we have
been developing for the USRPs using the LabVIEW FPGA (USRP-RIO) flow for a
while. So we have many blocks already implemented in this paradigm. We are
now switching for the software flow using GNU Radio, due to the development
agility it provides compared to any FPGA flow. Although, for some blocks,
is very difficult to achieve the required processing throughput in a
software implementation. The Digital pre-distorter is one of those. The
bandwidth required at the output of this block must be many times (3x to
5x) the bandwidth of the desired signal. Then an hybrid approach with FPGA
and as software development is needed.
As pointed out in the previous message, it turns out that the stock USRP
images were generated using the same tool we have been using by tha last 4
years, This way, if we could modify the stock image, using the LabVIEW flow
and could insert the DPD block just before the DAC output (running at the
master_clock_rate 200MHz or 184.32MHz) it would be a perfect fit for our
need. So if that code were available it would be straightforward to us to
do this modification (Depending on the LabVIEW version).
I know that is not the intended flow, but that source code would be really
helpful, if available.

Best Regards,



Em qui., 5 de dez. de 2019 =C3=A0s 13:30, Sam Reiter <sam.reiter@ettus.com>
escreveu:

> Wheberth,
>
> What you're trying to do sounds possible, but I think you're approaching
> it the wrong way. When you use the USRP with a default FPGA image
> (usrp_x310_fpga_HG.lvbitx), you just get the HG image that you can
> interface with using the NI-USRP driver in LabVIEW. In that case,
> everything you program is on the host side. With this HG image, you're
> pretty much just getting default RFNoC under the hood with a few changes
> including header modifications. The project isn't available and wouldn't =
be
> useful to you for integrating your code, even if you had it.
>
> You'll want to use your X310 as a USRP RIO and interact with it via the
> LabVIEW FPGA module (or something along those lines, I'm not particularly
> familiar with this paradigm myself). This will give you a blank block
> diagram to implement your IP and pass data over DMA to the host while
> preserving the static logic necessary to allow the radio to work as you'd
> expect. This is all LabVIEW and no UHD/GR. You might poke around some of
> the USRP RIO examples [1] to see how similar functionality has been
> implemented before you drop yours in. Beyond that, reaching out to NI
> Support might be a good call for follow up questions.
>
> Sam Reiter
> Ettus Research
>
> [1]
> https://knowledge.ni.com/KnowledgeArticleDetails?id=3DkA00Z0000019TmVSAU&=
l=3Den-US
>
> On Thu, Dec 5, 2019 at 7:13 AM Wheberth Damascena Dias via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>>
>> Hi All,
>>
>> Looking at the bitfile "usrp_x310_fpga_HG.lvbitx", as the name suggests,
>> it looks like it came from LabVIEW/LabVIEW Comms. It is possible even to
>> see the top ..vi filename which is "USRP_X3x0_Top.vi".
>> Although I wasn't able to find the LabVIEW source project for this
>> bitfile. Is this source available anywhere?
>> I am asking, because we have to include some custom code (a digital
>> baseband pre-distorter) to run on the USRP FPGA. As we already have this
>> implemented in LabVIEW it would save us a lot of time comparing to going
>> through the RFNoC route.
>>
>> Thank you in advance,
>> Best Regards
>> --
>> *Wheberth Damascena Dias*
>> _______________ _____ _____ __ ___ __ _ _ _  _
>> http://www.linkedin.com/in/wheberth
>> e-mail:wheberth@gmail.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--=20
*Wheberth Damascena Dias*
_______________ _____ _____ __ ___ __ _ _ _  _
http://www.linkedin.com/in/wheberth
e-mail:wheberth@gmail.com

--00000000000078f4f80598f830c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>HI Sam,</div><div><br></div><div>Thank you for your a=
nswer.<br></div><div>Let me explain our situation a little bit better. Here=
 at Inatel we have been developing for the USRPs using the LabVIEW FPGA (US=
RP-RIO) flow for a while. So we have many blocks already implemented in thi=
s paradigm. We are now switching for the software flow using GNU Radio, due=
 to the development agility it provides compared to any FPGA flow. Although=
, for some blocks, is very difficult to achieve the required processing thr=
oughput in a software implementation. The Digital pre-distorter is one of t=
hose. The bandwidth required at the output of this block must be many times=
 (3x to 5x) the bandwidth of the desired signal. Then an hybrid approach wi=
th FPGA and as software development is needed.</div><div></div><div>As poin=
ted out in the previous message, it turns out that the stock USRP images we=
re generated using the same tool we have been using by tha last 4 years, Th=
is way, if we could modify the stock image, using the LabVIEW flow and coul=
d insert the DPD block just before the DAC output (running at the master_cl=
ock_rate 200MHz or 184.32MHz) it would be a perfect fit for our need. So if=
 that code were available it would be straightforward to us to do this modi=
fication (Depending on the LabVIEW version).</div><div></div><div>I know th=
at is not the intended flow, but that source code would be really helpful, =
if available.<br></div><div><br></div><div>Best Regards,</div><div></div><d=
iv><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Em qui., 5 de dez. de 2019 =C3=A0s 13:30, Sam=
 Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com</a=
>&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
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
 follow up questions. <br></div><div><br></div><div><div dir=3D"ltr"><div d=
ir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter <br><div>Ettus Research</div><d=
iv><br></div><div>[1] <a href=3D"https://knowledge.ni.com/KnowledgeArticleD=
etails?id=3DkA00Z0000019TmVSAU&amp;l=3Den-US" target=3D"_blank">https://kno=
wledge.ni.com/KnowledgeArticleDetails?id=3DkA00Z0000019TmVSAU&amp;l=3Den-US=
</a></div></div></div></div></div></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 5, 2019 at 7:13 AM Wheb=
erth Damascena Dias via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
><br clear=3D"all"></div><div>Hi All,</div><div><br></div><div></div><div><=
/div><div>Looking at the bitfile &quot;usrp_x310_fpga_HG.lvbitx&quot;, as t=
he name suggests, it looks like it came from LabVIEW/LabVIEW Comms. It is p=
ossible even to see the top ..vi filename which is &quot;USRP_X3x0_Top.vi&q=
uot;.</div><div>Although I wasn&#39;t able to find the LabVIEW source proje=
ct for this bitfile. Is this source available anywhere?</div><div></div><di=
v>I am asking, because we have to include some custom code (a digital baseb=
and pre-distorter) to run on the USRP FPGA. As we already have this impleme=
nted in LabVIEW it would save us a lot of time comparing to going through t=
he RFNoC route.<br></div><div><br></div><div>Thank you in advance,<br></div=
><div>Best Regards</div><div></div><div>-- <br><div dir=3D"ltr"><div dir=3D=
"ltr"><div><span style=3D"font-size:12.8px"><b>Wheberth Damascena Dias</b><=
/span><br></div><div><span style=3D"color:rgb(80,0,80);font-size:12.8px">__=
_____________ _____ _____ __ ___ __ _ _ _=C2=A0 _=C2=A0</span><br><div><a h=
ref=3D"http://www.linkedin.com/in/wheberth" target=3D"_blank">http://www.li=
nkedin.com/in/wheberth</a></div><div><a href=3D"mailto:e-mail%3Awheberth@gm=
ail.com" target=3D"_blank">e-mail:wheberth@gmail.com</a></div><div><div><di=
v><br></div></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><span style=3D"font-size:12.8px"><b>W=
heberth Damascena Dias</b></span><br></div><div><span style=3D"color:rgb(80=
,0,80);font-size:12.8px">_______________ _____ _____ __ ___ __ _ _ _=C2=A0 =
_=C2=A0</span><br><div><a href=3D"http://www.linkedin.com/in/wheberth" targ=
et=3D"_blank">http://www.linkedin.com/in/wheberth</a></div><div><a href=3D"=
mailto:e-mail%3Awheberth@gmail.com" target=3D"_blank">e-mail:wheberth@gmail=
.com</a></div><div><div><div><br></div></div></div></div></div></div>

--00000000000078f4f80598f830c7--


--===============2682906478446966266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2682906478446966266==--

