Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9043E1F39D1
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jun 2020 13:34:57 +0200 (CEST)
Received: from [::1] (port=54064 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jicWs-0007fk-4a; Tue, 09 Jun 2020 07:34:54 -0400
Received: from mail-lf1-f54.google.com ([209.85.167.54]:44777)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mdyaaseen1995@gmail.com>)
 id 1jicWn-0007bI-9n
 for usrp-users@lists.ettus.com; Tue, 09 Jun 2020 07:34:49 -0400
Received: by mail-lf1-f54.google.com with SMTP id w15so12216535lfe.11
 for <usrp-users@lists.ettus.com>; Tue, 09 Jun 2020 04:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YOqELBBMa7uIaGgw+WdNxd0Dxtir3QhjlAhCJhrJQx4=;
 b=YwVCb0GhXvdqF2td4vHUzXZvQaZB0MRVW8rlywGastPo3s7IzEuM0Ay8XWyfrhFoxg
 YhFWw17MXP3GT1HT683uTOODWttB1fY12aAtcNK8kBbRoeAGfmJSQq9sPadFr1ef+X9S
 bPa0DsfJ1+hIFWIDjl1ufFxdPoIpoL3KsmUrawojrDF7ZA9PBgFeS1H3Yv4I8cRQ0Oim
 lYr2x3fEnlNh2D4aj211kvVA8Wx81TPx3dywnyGZnOx3hCLl5YXOPF7+mSjRwGkYmw9k
 H5XQtwfCCDsSUQdHzJu7jdHcx8yAnZ0cga5LQSAR0csi1TAb9JqfBTtmtTnz5E6pK3/a
 hYWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YOqELBBMa7uIaGgw+WdNxd0Dxtir3QhjlAhCJhrJQx4=;
 b=m2WUVA2og1SpWgu3jfQ0AM2CFkBhPe9dvakvHq1ZLXzeZzx4eXtpP9kpuBoqX7kcUn
 xqd5EHwSnyfYFv88+iB6iIi/itIAW7hrnFKRksVG2/PHbcYdmTFgYq4kSCf8NOyfJB8W
 PzV/eoJGh8FX8tmPmBVHaNJmzbJ8Jjh9JP/+0KNMBe+1+t6XN2gPVxkYW/0Mt5l+JgM1
 E/4aK9MVTNQKBizUT5XiCT8v5IPw667sKSjbV0pyEhfDUDoe0aYcut341P05DuIU9vhP
 63Ii46uyiD38t0K8PnVNna8YP8vofX1uEYcwKh9EWAhJHIDVxTlKkV/uhqSczlsH+Eul
 A32A==
X-Gm-Message-State: AOAM533p+GabtbIUoaT6pAt2hFHagDxG6NvdxiRzexKUQRHMKsC6YWwA
 PmM6oMJ0qGwrAJlQm+VerrV21N0Rays7B/o2XGU=
X-Google-Smtp-Source: ABdhPJy5HnFlKISGQ/T8qj1SGovzcYRXnV+HNB2L9F/dcbYgyNi5Q1Sqp7FEh+XGThUEpMcr46o4GMPTJ7zTkNUnd4E=
X-Received: by 2002:a19:4206:: with SMTP id p6mr15128638lfa.52.1591702447930; 
 Tue, 09 Jun 2020 04:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAN-A3_u1vLFbjH5yCZjakSDAhF52vWG+f6GrnK=6R8QnCDktXw@mail.gmail.com>
 <CADRnH21L=pNsaTsy=0gxs-7ec1HrM-v6tYTSM8y64vR+erMyMA@mail.gmail.com>
In-Reply-To: <CADRnH21L=pNsaTsy=0gxs-7ec1HrM-v6tYTSM8y64vR+erMyMA@mail.gmail.com>
Date: Tue, 9 Jun 2020 13:32:55 +0200
Message-ID: <CAN-A3_udyPLA5Q=ROkyAjX_qpDhoJ78Zei0w+0LytPeW2A_SxA@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 discuss-gnuradio@gnu.org
Subject: Re: [USRP-users] HELP: needed with RFNoC & gr-ettus & PFB
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mohamed Yaaseen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Content-Type: multipart/mixed; boundary="===============5172556870268390787=="
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

--===============5172556870268390787==
Content-Type: multipart/alternative; boundary="000000000000ff3fb005a7a51acd"

--000000000000ff3fb005a7a51acd
Content-Type: text/plain; charset="UTF-8"

Hello EJ Kreinar,

         Thank you for your reply. I am planning to use theseus.On a side
note I was seeing your talk on GRCon 18 when I was writing this email :)
Great talk by the way !!
As a first step I am trying to make a working POC, so if no. of channels
are restricted to powers of 2,  I will choose 64MHz spectrum splitting into
32x 2 MHz channels.
But, I need all the 32 channels into my GRC, which need to be further
demodulated, perform symbol synchronization etc. Currently, with the 20
channels, with just channelizers running in GRC with null sink connected I
am seeing overflows.
I need figure out how can I handle this.
I have one question though, in your talk you had mentioned that the
channels are interleaved like 0 | 1 | .....| N -1  where N is the total no.
of channels. So, for example if I take 4 MHz bandwidth and split it into 4x
1 MHz in normal GRC PFB I will get 4 streams of 1 Msps each but if I use
RFNoC implementation then my stream will be looking like 0 | 1 | 2 | 3
samples interleaved between channels, so what is rate of this interleaved
stream, still 4Msps ?

Regards,
Mohamed Yaaseen



On Sat, 6 Jun 2020 at 13:17, EJ Kreinar <ejkreinar@gmail.com> wrote:

> Hi Mohamed,
>
> I'll see if I can field a few of your questions...
>
> 3. I am currently pseudo-maintaining theseus-cores repo:
> gitlab.com/theseus-cores/theseus-cores By that I mean Im not currently
> actively developing anything for it (my spare time available to work on
> open source fpga has decreased), but I haven't given up on it :p I've
> tested these builds against UHD 3.15 as of approx December 2019.
>
> Part of this repo includes a M/2 polyphase filter bank implementation that
> includes fpga-based channel selection (so you don't need to return all
> channels from fpga to processor). A couple caveats for your application: I
> believe the number of channels is constrained to a power of 2, and I
> suspect there's a bug with channel selection for more than 64 channels. But
> overall it's probably a decent place to start; several people have used
> theseus-cores successfully to test polyphase filtering. Happy to field any
> related questions here.
>
> 4. I've found the rfnoc 4.0 spec as an app note here:
> https://files.ettus.com/app_notes/RFNoC_Specification.pdf
>
> While I'm excited for the 4.0 update, Im afraid I can't provide any better
> context on rfnoc 4.0 progress or tooling maturity at this point, hopefully
> others can step in with that info!
>
> Hope this helps,
> EJ
>
> On Sat, Jun 6, 2020, 5:35 AM Mohamed Yaaseen <mdyaaseen1995@gmail.com>
> wrote:
>
>> Hello Guys,
>>           recently I have started looking into the RFNoC platform. I have
>> successfully installed RFNoC and was able to build fpga images with
>> default pre-built modules like fft etc. I haven't; however started with the
>> gain module from "Getting started tutorial"  .
>>
>> My system setup,
>>
>> USRP x310 ---- with XG image (connected to PC using dual 10 Gig Ethernet)
>>
>> uhd -------------  UHD 3.15 LTS branch
>> gnuradio ------   maint-3.8   branch
>> gr-ettus---------- maint-3.8  branch
>> vivado system edition (with HLS, Model Composer, DSP system generator)
>> ----- 2018.03v
>>
>> fpga images and code was submoduled as part of uhd hence they are at\
>>  ~/{UHD SRC DIR}/fpga-src/usrp3/..
>>
>> all installed in a custom prefix (~/workspace/installs/stable) without
>> pybombs.
>> I have couple of questions and errors I got  that I want help with
>>
>>
>>    1.  As of this branch UHD 3.15 LTS, it was mentioned I should use
>>    uhd_image_builder_gui.py or uhd_image_builder.py script. So, when I used
>>    it, I couldn't find target type  X310_RFNOC_HLS_HG . Is it removed or what
>>    up with that ?
>>    2.  Second is with respect to gr-ettus (I came to know that there are
>>    some major changes going with this in upcoming UHD 4.0 I will come to that
>>    in later points). So, as per tutorial we have to use rfnodmodtools which is
>>    part of gr-ettus to create our own OOT  RFNoC module. But, I faced one
>>    error with it and I  fixed that error (I am not sure if it is a correct
>>    fix). I have raised an issue here in gr-ettus repo. please anyone let me
>>    know if this is a issue or if I was doing something wrong. Because the is
>>    is with respect to path of rfnocmodtools template. Here is the link for the
>>    issue: https://github.com/EttusResearch/gr-ettus/issues/45
>>    3. Third, as this will be my first time working with RFNoC and FPGA
>>    (atleast with Xilinx, I have some experience from my studies).  My main
>>    interest with RFNoC is that I wanna create a channelizer, for 160MHz and
>>    split up into 80 channels each of 2 MHz (critically sampled). and take
>>    everything to the PC for 80x demod & 80x symbol sync. What is the latest
>>    development in that direction? I got to know a repo called gr-theseus. Is
>>    it maintained still ? Can I start from there or should I start from
>>    scratch. I am looking to connect with is anyone working/worked with PFB
>>    4. Last one, how is the structure gonna change in future with UHD 4.0
>>    &  gr-ettus gonna, it would really helpful if someone could explain (very
>>    confucsed with this coz i couldn't find uhd_image_builder etc.) this
>>    workflow with new updates and what you guys recommend should start with
>>    3.15 LTS or switch UHD 4.0 because by the I finish PFB i might have to port
>>    to a completely new workflow. But in any case, I need gnuradio integration
>>
>>
>> I know it is a lot of questions, sorry guys. But, when I started setup
>> with RFNoC, I faced many questions like this, and I felt others might have
>> these too. These points will allow people who might need them to get their
>> answers in a single place.
>>
>> Any help, answers, suggestions  or improvements  for these questions will
>> be really helpful and are highly welcomed !
>>
>> Thanks and Regards.
>> Yaaseen
>>
>

--000000000000ff3fb005a7a51acd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello EJ Kreinar,</div><div><br></div><div>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thank you for your reply. I am plan=
ning to use theseus.On a side note I was seeing your talk on GRCon 18 when =
I was writing this email :) Great talk by the way !!</div><div>As a first s=
tep I am trying to make a working POC, so if no. of channels are restricted=
 to powers of 2,=C2=A0 I will choose 64MHz spectrum splitting into 32x 2 MH=
z channels. <br></div><div>But, I need all the 32 channels into my GRC, whi=
ch need to be further demodulated, perform symbol synchronization etc. Curr=
ently, with the 20 channels, with just channelizers running in GRC with nul=
l sink connected I am seeing overflows.<br></div><div>I need figure out how=
 can I handle this. <br></div><div>I have one question though, in your talk=
 you had mentioned that the channels are interleaved like 0 | 1 | .....| N =
-1=C2=A0 where N is the total no. of channels. So, for example if I take 4 =
MHz bandwidth and split it into 4x 1 MHz in normal GRC PFB I will get 4 str=
eams of 1 Msps each but if I use RFNoC implementation then my stream will b=
e looking like 0 | 1 | 2 | 3 samples interleaved between channels, so what =
is rate of this interleaved stream, still 4Msps ?</div><div><br></div><div>=
<div><div dir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Regards,<d=
iv>Mohamed Yaaseen</div><div><br></div></div></div></div></div></div></div>=
</div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, 6 Jun 2020 at 13:17, EJ Kreinar &lt;<=
a href=3D"mailto:ejkreinar@gmail.com" target=3D"_blank">ejkreinar@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"auto">Hi Mohamed,<div dir=3D"auto"><br></div><div dir=3D"auto">=
I&#39;ll see if I can field a few of your questions...</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">3. I am currently pseudo-maintaining theseus=
-cores repo: <a href=3D"http://gitlab.com/theseus-cores/theseus-cores" rel=
=3D"noreferrer" target=3D"_blank">gitlab.com/theseus-cores/theseus-cores</a=
> By that I mean Im not currently actively developing anything for it (my s=
pare time available to work on open source fpga has decreased), but I haven=
&#39;t given up on it :p I&#39;ve tested these builds against UHD 3.15 as o=
f approx December 2019.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Part of this repo includes a M/2 polyphase filter bank implementation=
 that includes fpga-based channel selection (so you don&#39;t need to retur=
n all channels from fpga to processor). A couple caveats for your applicati=
on: I believe the number of channels is constrained to a power of 2, and I =
suspect there&#39;s a bug with channel selection for more than 64 channels.=
 But overall it<span style=3D"font-family:sans-serif">&#39;s probably a dec=
ent place to start; several people have used theseus-cores successfully to =
test polyphase filtering. Happy to field any related questions here.</span>=
</div><div dir=3D"auto"><span style=3D"font-family:sans-serif"><br></span><=
/div><div dir=3D"auto"><span style=3D"font-family:sans-serif">4. I&#39;ve f=
ound the rfnoc 4.0 spec as an app note here:=C2=A0</span><font face=3D"sans=
-serif"><a href=3D"https://files.ettus.com/app_notes/RFNoC_Specification.pd=
f" target=3D"_blank">https://files.ettus.com/app_notes/RFNoC_Specification.=
pdf</a></font></div><div dir=3D"auto"><font face=3D"sans-serif"><br></font>=
</div><div dir=3D"auto"><font face=3D"sans-serif">While I&#39;m excited for=
 the 4.0 update, Im afraid I can&#39;t provide any better context on rfnoc =
4.0 progress or tooling maturity at this point, hopefully others can step i=
n with that info!</font></div><div dir=3D"auto"><font face=3D"sans-serif"><=
br></font></div><div dir=3D"auto"><font face=3D"sans-serif">Hope this helps=
,</font></div><div dir=3D"auto"><font face=3D"sans-serif">EJ</font></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sat, Jun 6, 2020, 5:35 AM Mohamed Yaaseen &lt;<a href=3D"mailto:mdyaaseen1=
995@gmail.com" rel=3D"noreferrer" target=3D"_blank">mdyaaseen1995@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello Guys,</div><d=
iv>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 recently I have started looking into =
the RFNoC platform. I have successfully installed RFNoC and was able to bui=
ld fpga images with default=C2=A0pre-built modules like fft etc. I haven&#3=
9;t; however started with the gain module from &quot;Getting started tutori=
al&quot;=C2=A0 .=C2=A0</div><div><br></div><div>My system setup,</div><div>=
<br></div><div>USRP x310 ---- with XG image (connected to PC using dual 10 =
Gig Ethernet)<br></div><div><br></div><div>uhd -------------=C2=A0 UHD 3.15=
 LTS branch</div><div>gnuradio ------=C2=A0 =C2=A0maint-3.8=C2=A0=C2=A0

branch

</div><div>gr-ettus---------- maint-3.8=C2=A0

branch

</div><div>vivado system edition (with HLS, Model Composer, DSP system gene=
rator) ----- 2018.03v</div><div><br></div><div>fpga images and code was sub=
moduled as part of uhd hence they are at\</div><div>=C2=A0~/{UHD SRC DIR}/f=
pga-src/usrp3/..</div><div><br></div><div>all installed in a custom=C2=A0pr=
efix=C2=A0(~/workspace/installs/stable)=C2=A0without pybombs.=C2=A0</div><d=
iv>I have couple of questions and errors I got=C2=A0 that I want help with<=
/div><div><br></div><div><ol><li>=C2=A0As of this branch UHD 3.15 LTS, it w=
as mentioned I should use uhd_image_builder_gui.py or uhd_image_builder.py =
script. So, when I used it, I couldn&#39;t find target type=C2=A0=20
X310_RFNOC_HLS_HG

. Is it removed or what up with that ?</li><li>=C2=A0Second is with respect=
 to gr-ettus (I came to know that there are some major changes going with t=
his in upcoming UHD 4.0 I will come to that in later points). So, as per tu=
torial we have to use rfnodmodtools=C2=A0which is part of gr-ettus to creat=
e our own OOT=C2=A0 RFNoC module. But, I faced one error with it and I=C2=
=A0 fixed that error (I am not sure if it is a correct fix). I have raised =
an issue here in gr-ettus repo. please anyone let me know if this is a issu=
e or if I was doing something wrong. Because the is is with respect to path=
 of rfnocmodtools=C2=A0template. Here is the link for the issue:=C2=A0<a hr=
ef=3D"https://github.com/EttusResearch/gr-ettus/issues/45" rel=3D"noreferre=
r noreferrer" target=3D"_blank">https://github.com/EttusResearch/gr-ettus/i=
ssues/45</a></li><li>Third, as this will be my first time working with RFNo=
C and FPGA (atleast with Xilinx, I have some experience from my studies).=
=C2=A0 My main interest with RFNoC is that I wanna create a channelizer, fo=
r 160MHz and split up into 80 channels each of 2 MHz (critically sampled). =
and take everything to the PC for 80x demod &amp; 80x symbol sync. What is =
the latest development=C2=A0in that direction? I got to know a repo called =
gr-theseus. Is it maintained still ? Can I start from there or should I sta=
rt from scratch. I am looking to connect with=20

is anyone=C2=A0working/worked with PFB

</li><li>Last one, how is the structure gonna change in future with UHD 4.0=
 &amp;=C2=A0 gr-ettus gonna, it would really helpful if someone could expla=
in (very confucsed with this coz i couldn&#39;t find uhd_image_builder etc.=
) this workflow with new updates and what you guys recommend should start w=
ith 3.15 LTS or switch UHD 4.0 because by the I finish PFB i might have to =
port to a completely=C2=A0new workflow. But in any case, I need gnuradio in=
tegration</li></ol></div><div><br></div><div>I know it is a lot of question=
s, sorry guys. But, when I started setup with RFNoC, I faced many questions=
 like this, and I felt others might have these too. These points will allow=
 people who might need them to get their answers in a single place.=C2=A0</=
div><div><br></div><div><div>Any help, answers, suggestions=C2=A0 or improv=
ements=C2=A0 for these questions will be really helpful and are highly=C2=
=A0welcomed !</div></div><div><br></div><div>Thanks and Regards.</div><div>=
Yaaseen</div></div></div></div>
</blockquote></div>
</blockquote></div>

--000000000000ff3fb005a7a51acd--


--===============5172556870268390787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5172556870268390787==--

