Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFFF17862D
	for <lists+usrp-users@lfdr.de>; Wed,  4 Mar 2020 00:14:05 +0100 (CET)
Received: from [::1] (port=44628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9Gjj-0006C5-U5; Tue, 03 Mar 2020 18:14:03 -0500
Received: from mail-ot1-f53.google.com ([209.85.210.53]:33834)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <varban.metodiev@gmail.com>)
 id 1j9Gjg-000656-5V
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 18:14:00 -0500
Received: by mail-ot1-f53.google.com with SMTP id j16so179493otl.1
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 15:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BbffWRylZ9hEOmNeUBPs5/nFRlATwg97TfnAzo2Vf34=;
 b=j+C7xUdg+Yx5SDPqAlP+FR4H1VymCnpFD6MtIWUxSQumpc4H85Sz0+W8bUlz8JkM6n
 J9wM0x1hB4AbCs+vCEKHmRdskvphn+ojcoSXgI9UTOFfdKRQxah51hWjCsEVgIwcdTvF
 OErJcIuzhY8FeBwia8d17MBriDVNvc4yI+28a1q4ZaysSMbOhQ0YtqSyE5bTZURJx7NM
 98vEONw6nvptG8uciNJho3sDiIYAen+iIqxz1QVe12AcWXkQZmg78Wr+YLdVcroknLWX
 53MEk/4z86eTYRz92f2OYeKOYrxCQhVxMJ1HQB2MDbbpyxu6GI/HixtJltyHfuHCeL2w
 sC3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BbffWRylZ9hEOmNeUBPs5/nFRlATwg97TfnAzo2Vf34=;
 b=mXC8qAGH8ZOf7bNaVVbMmE6AlD39ZHwIOWuFkjfiTSruiosQ+hA6HcesUad0DnNE6T
 J7DMs/QAADFVykK6Xd02HRylMoZ3VSNACTjKuifnLEhdcLwjqFUFA+0PUo6mow/9iUpZ
 OvJa6Ia3iCnXdaFP0ld6lgidJPg+polT7y0yq6YvKfABbtfk3Pnm68ih7YTCjPLXSISR
 dqtRBGzvV34Go/MmPAIN8rZ4woSHRnZbmEXKu/vgYYyAIkk7NmAGMcYssrxJ5d1U9laa
 tmdLFl6AwfOwWGK1PA0OVcKo6PrjIAACznSeXfxGZSj+QJ/q2qp/FCQSWADuQqJJF/tH
 1SQQ==
X-Gm-Message-State: ANhLgQ0VDlj4UjCg3nFcgPSmvzIV1aupsZ9LfiSDZPuYpxlQW2vmSJEX
 s6ehCY1nny54fOlyy0V1IStDiE3KvFs9ZNEDLj0=
X-Google-Smtp-Source: ADFU+vvmMNk/0eCQIlb2/MT0e5rc3KP7SiXAykaGM9cxTQMhVoICi+Io9HzOXCtyUb0AkCT3sa2g52gHu6o2SLJkl4c=
X-Received: by 2002:a9d:7d0c:: with SMTP id v12mr184157otn.171.1583277199281; 
 Tue, 03 Mar 2020 15:13:19 -0800 (PST)
MIME-Version: 1.0
References: <CAKA0MUgBBu3m5cbL4J_Amy-97TNE=GBGThLPK35OARkV5mZxEg@mail.gmail.com>
 <CAL7q81s_PahAkzJo9hMSseQQWymB1d3Cu3Gk3ZhSsKw_q2jAiw@mail.gmail.com>
 <CAKA0MUiwsMDD5=ivtz92RN5zZT5bEBTsTfbW7-S-0JJRCpG6kg@mail.gmail.com>
 <CAKA0MUj189DV7ELpqdSZJTSVYCYxyhVeCQ-ei2r2ntFgc6Dm9w@mail.gmail.com>
In-Reply-To: <CAKA0MUj189DV7ELpqdSZJTSVYCYxyhVeCQ-ei2r2ntFgc6Dm9w@mail.gmail.com>
Date: Tue, 3 Mar 2020 15:13:07 -0800
Message-ID: <CAKA0MUgexr4EbB=nr_SjQ_F2hVB38RA2vBJ5VDgYc5G9_k18FQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Subject: Re: [USRP-users] Polling the "sample_rx" via a user defined
 register (B205mini)
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
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3390940788478355539=="
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

--===============3390940788478355539==
Content-Type: multipart/alternative; boundary="0000000000000b5031059ffb7335"

--0000000000000b5031059ffb7335
Content-Type: text/plain; charset="UTF-8"

Hi Jonathon,

Please ignore my last email, I had a serious mistake with the TX gain
configuration...

Anyway, thanks again for the directions you provided. It was really helpful!

Best,
V.

On Mon, Mar 2, 2020 at 1:33 PM Varban Metodiev <varban.metodiev@gmail.com>
wrote:

> Hi Jonathon,
>
> After separating the I and Q channels, I think that the values with
> detached RX input look reasonable (please see *I_Q_data_custom_build.txt*).
> What do you think?
> I am reading my custom register with a modified version of
> *rx_samples_to_file* (attached as well, line 92 - 100).
>
> Now, when I try to send some reference sine waves via the *tx_waveforms*
> example running on another PC attached to another USRP B205mini, I get
> unexplainable data.
> The default data type in the *tx_waveforms* is fc32, do I need to
> recompile it with sc16 for this case?
>
> Kind regards,
> V.
>
> On Wed, Feb 26, 2020 at 1:36 AM Varban Metodiev <varban.metodiev@gmail.com>
> wrote:
>
>> Hi Jonathon,
>>
>> Thank you very much for your reply.
>>
>> What do you want to accomplish?
>> --> Right now, I just want to monitor the 'sample_rx' values. Eventually,
>> I will use this to calibrate the reference input of my custom Verilog
>> decoder (attached) that aims to detect spikes and measure their length
>> (like those from the attachment).
>>
>> It is a short complex int where the upper 16-bits are I and the lower
>> 16-bits are Q.
>> --> Well... that could be the explanation. I will try to monitor them
>> separately and get back to you.
>>
>> Kind regards,
>> Varban
>>
>> On Tue, Feb 25, 2020 at 8:50 PM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hi Varban,
>>>
>>> I am now getting random 32-bit values when polling it from the UHD
>>>> (instead of a constant that indicates a "zero" reception)
>>>
>>>
>>> Even with the antenna disconnected you can expect some LSBs to toggle
>>> due to inherent receiver noise.
>>>
>>> 1) How should I interpret the 32-variable?
>>>>
>>>
>>> It is a short complex int where the upper 16-bits are I and the lower
>>> 16-bits are Q.
>>>
>>>
>>>> 2) Is the strobe_rx the correct signal that indicates new sample
>>>> arrival?
>>>>
>>>
>>> Yes
>>>
>>>
>>>> 2) Do I need new_rx_control?
>>>
>>>
>>> No
>>>
>>> Have I done this correctly in general, or there is something completely
>>>> wrong in my approach?
>>>
>>>
>>> What do you want to accomplish?
>>>
>>> Jonathon
>>>
>>> On Mon, Feb 17, 2020 at 5:03 AM Varban Metodiev via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Dear all,
>>>>
>>>> After exposing the *sample_rx* from radio_legacy.v
>>>> <https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/radio_200/radio_legacy.v> to
>>>> a user defined register and sampling it at rising edge of the
>>>> *strobe_rx*, I am now getting random 32-bit values when polling it
>>>> from the UHD (instead of a constant that indicates a "zero" reception). I
>>>> am doing this with disconnected antenna using a modified rx_samples C++
>>>> example application.
>>>>
>>>> I have the following questions:
>>>> 1) How should I interpret the 32-variable?
>>>> 2) Is the strobe_rx the correct signal that indicates new sample
>>>> arrival?
>>>> 2) Do I need new_rx_control?
>>>>
>>>> Have I done this correctly in general, or there is something completely
>>>> wrong in my approach?
>>>>
>>>> Thanks,
>>>> Varban
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--0000000000000b5031059ffb7335
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jonathon,</div><div><br></div><div>Please ignore m=
y last email, I had a serious mistake with the TX gain configuration...</di=
v><div><br></div><div>Anyway, thanks again for the directions you provided.=
 It was really helpful!<br></div><div><br></div><div>Best,</div><div>V.<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Mar 2, 2020 at 1:33 PM Varban Metodiev &lt;<a href=3D"mailto:=
varban.metodiev@gmail.com">varban.metodiev@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>H=
i Jonathon,</div><div><br></div><div>After separating the I and Q channels,=
 I think that the values with detached RX input look reasonable (please see=
 <i>I_Q_data_custom_build.txt</i>). What do you think?</div><div>I am readi=
ng my custom register with a modified version of <i>rx_samples_to_file</i> =
(attached as well, line 92 - 100). <br></div><div><br></div><div>Now, when =
I try to send some reference sine waves via the <i>tx_waveforms</i> example=
 running on another PC attached to another USRP B205mini, I get unexplainab=
le data.</div><div>The default data type in the <i>tx_waveforms</i><i> </i>=
is fc32, do I need to recompile it with sc16 for this case?</div><div><br><=
/div><div>Kind regards,</div><div>V.<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 26, 2020 at 1:36 =
AM Varban Metodiev &lt;<a href=3D"mailto:varban.metodiev@gmail.com" target=
=3D"_blank">varban.metodiev@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Jonathon,<div=
><br></div><div>Thank you very much for your reply.</div><div><br></div><di=
v><div>What do you want to accomplish?=C2=A0</div><div>--&gt; Right now, I =
just want to monitor the &#39;sample_rx&#39; values. Eventually, I will use=
 this to calibrate the reference input of my custom Verilog decoder (attach=
ed) that aims to detect spikes and measure their length (like those from th=
e attachment).</div></div><div><br></div><div><div>It is a short complex in=
t where the upper 16-bits are I and the lower 16-bits are Q.</div><font col=
or=3D"#000000">--&gt; Well... that could be the explanation. I will try to =
monitor them separately and get=C2=A0back to you.</font></div><div><font co=
lor=3D"#000000"><br></font></div><div><font color=3D"#000000">Kind regards,=
</font></div><div><font color=3D"#000000">Varban</font></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 25=
, 2020 at 8:50 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@e=
ttus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi V=
arban,<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I am=
 now getting random 32-bit values when polling it from the UHD (instead of =
a constant that indicates a &quot;zero&quot; reception)</blockquote><div><b=
r></div><div>Even with the antenna disconnected you can expect some LSBs to=
 toggle due to inherent receiver noise.=C2=A0</div><div><br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">1) How should I interpret the 32-v=
ariable?<br></blockquote><div><br></div><div>It is a short complex int wher=
e the upper 16-bits are I and the lower 16-bits are Q.</div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">2) Is the strobe_rx the=
 correct signal that indicates new sample arrival?<br></blockquote><div><br=
></div><div>Yes</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">2) Do I need new_rx_control?</blockquote><div><br></div><div>N=
o</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hav=
e I done this correctly in general, or there is something completely wrong =
in my approach?=C2=A0</blockquote><div><br></div><div>What do you want to a=
ccomplish?=C2=A0</div><div><br></div><div>Jonathon</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 17, 202=
0 at 5:03 AM Varban Metodiev via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Dear all,<div><br></div><div>After exposing the <b><i>sample_rx</i></b=
> from=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpg=
a/usrp3/lib/radio_200/radio_legacy.v" target=3D"_blank">radio_legacy.v</a>=
=C2=A0to a user defined register and sampling it at rising edge of the <spa=
n style=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Li=
beration Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre-wrap"><i=
 style=3D"font-weight:bold">strobe_rx</i>, I am now getting random 32-bit v=
alues when polling it from the UHD (instead of a constant that indicates a =
&quot;zero&quot; reception). I am doing this with disconnected antenna usin=
g a modified rx_samples C++ example application. </span></div><div><font fa=
ce=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, monospace" color=3D=
"#24292e"><span style=3D"font-size:12px;white-space:pre-wrap"><br></span></=
font></div><div><font face=3D"SFMono-Regular, Consolas, Liberation Mono, Me=
nlo, monospace" color=3D"#24292e"><span style=3D"font-size:12px;white-space=
:pre-wrap">I have the following questions:</span></font></div><div><font fa=
ce=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, monospace" color=3D=
"#24292e"><span style=3D"font-size:12px;white-space:pre-wrap">1) How should=
 I interpret the 32-variable?</span></font></div><div><font face=3D"SFMono-=
Regular, Consolas, Liberation Mono, Menlo, monospace" color=3D"#24292e"><sp=
an style=3D"font-size:12px;white-space:pre-wrap">2) Is the strobe_rx the co=
rrect signal that indicates new sample arrival?</span></font></div><div><di=
v><font face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, monospace=
" color=3D"#24292e"><span style=3D"font-size:12px;white-space:pre-wrap">2) =
Do I need </span></font><span style=3D"color:rgb(34,134,58);font-family:SFM=
ono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:=
12px;white-space:pre-wrap">new_rx_control</span><span style=3D"font-size:12=
px;white-space:pre-wrap;color:rgb(36,41,46);font-family:SFMono-Regular,Cons=
olas,&quot;Liberation Mono&quot;,Menlo,monospace">?</span></div><div></div>=
</div><div><br></div><div>Have I done=C2=A0this correctly in general, or th=
ere is something completely wrong in my approach?=C2=A0</div><div><br></div=
><div>Thanks,</div><div>Varban</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000000b5031059ffb7335--


--===============3390940788478355539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3390940788478355539==--

