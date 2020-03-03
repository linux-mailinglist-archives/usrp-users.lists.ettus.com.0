Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 168EB177E20
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 18:48:49 +0100 (CET)
Received: from [::1] (port=44548 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9Bey-0008FR-1M; Tue, 03 Mar 2020 12:48:48 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:42585)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1j9Bet-00088g-Uf
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 12:48:43 -0500
Received: by mail-oi1-f173.google.com with SMTP id l12so3875849oil.9
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 09:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hR79hZRhBvu0bM1pQ+XDrF7Xfv06kvxPA5Ih5vCBOjk=;
 b=UTGnxvOcaXnFlrRYuRvfrCq91anCyTcH+5UZgP0oLV5OLygeLqAkV8PgtaJX89Irmv
 BlclXana1JRxhLSwUkCYYbpB7GoiUJSaX4o8czoRgeTkG1PCxgsWLM5RZ7QFby+g1hzW
 AbLeH0JBYhG2wH53yWQsgFXh08TDXw/IWpn188CVyCWy9z66Rr4Tju1Q/r6ZluZEL3Na
 tLM2V4s3DGdL5on31hCPoiDJ8TvPxt29SGQeP6ZdAxawXArzwnD4Q1kFYd6crTbpnRMR
 KEhJdZw9phtv90NOwBUSwUhJw7py7eIFPdqSG8KGXccinebp1XCeexXl6HXN4PGlol9S
 9e5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hR79hZRhBvu0bM1pQ+XDrF7Xfv06kvxPA5Ih5vCBOjk=;
 b=pTSKyk3FrdWfJM57Yc5ym0EMpQDeOjG+vnV69TVfzACnR0AbRHI9IRisdJC3jKkD9X
 eMj0eLHx4p1JVRWYPCuctvCLDOOt4997EmlufXd+vyxte8oe0Iyqb45Ut6vp7a3ZVRb4
 au7m+wb7Gm5vMrdfoK1DzBPFulywOEgkpqfHy0fn9AXF4Yqa+PE4+XqVlfQ31cFwGwEZ
 Wq+HuMPye7RVDK7eR3BAoRgDeesFEiiAEadQo900dwR/RxoxohihwTrHg/2DpiewkR76
 r2KqwIgI+HngPWTob36UmCBLzWNFhV2xfLb2lcOMf1MXVgGx4TGBcAIUFfndrLnC1P3N
 0kRQ==
X-Gm-Message-State: ANhLgQ12VfrG5rzheBcj4ZGKvLt25XcHGFPbg1wZI5dzMlxhhKCgcGyY
 J8y+u8t4N/IULYskYSQk5xsjuj4I9NSwrLzO78AEGA==
X-Google-Smtp-Source: ADFU+vtmwtXDKTT+0Tb/qL06w8pZh5Kf1xE+oKACQ1XfGsd65fqytopRdWZBKQNdFGfQd9wwDW/pAtV95ZyUzHyukS8=
X-Received: by 2002:aca:cdd1:: with SMTP id d200mr3082666oig.153.1583257683135; 
 Tue, 03 Mar 2020 09:48:03 -0800 (PST)
MIME-Version: 1.0
References: <trinity-6d081d85-efab-4ee6-9dfd-d15b3f6ff1b5-1583161440082@3c-app-gmx-bs64>
 <CAB__hTSgAJcWu=AwsRYs6HmGYMOqk1kAKC4fFgmVWVd8Fw0THQ@mail.gmail.com>
 <CANf970YbM=F5UBzKQsQ2jGH4X=BKScx1YbNJ=TFhEKfDg-XBww@mail.gmail.com>
 <trinity-1e499bef-ac0a-4580-ad27-647e1755c34a-1583256550568@3c-app-gmx-bap50>
 <CAB__hTSY-dv9UTwZTRaOF5bLN3Sk0JF5onD3XBYP8tZB-9BvrA@mail.gmail.com>
In-Reply-To: <CAB__hTSY-dv9UTwZTRaOF5bLN3Sk0JF5onD3XBYP8tZB-9BvrA@mail.gmail.com>
Date: Tue, 3 Mar 2020 12:47:52 -0500
Message-ID: <CAB__hTQQJHsraknp0OTQTUukBPq3MCggN_ASZvhD=O28-r71TQ@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5691401412054038805=="
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

--===============5691401412054038805==
Content-Type: multipart/alternative; boundary="000000000000cac5a4059ff6e70a"

--000000000000cac5a4059ff6e70a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Also, note that there is no corresponding issue on receive because the Rx
radio always inserts the time stamp in the sample stream. So, I guess you
would not see this with the DDC.
Rob

On Tue, Mar 3, 2020 at 12:43 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Lukas,
> The FPGA image on the USRP is divided into blocks such as the DUC block
> and the Radio block.  The latter controls the RF daughterboard and has
> access to the device clock.  So, when you provide a timed command to the
> Radio block (such as for tuning the RF) it can implement the command at t=
he
> specified time by comparing to the device clock.  The DUC block does not
> have access to the MB clock and so when you give it a timed command, it
> monitors the incoming sample stream to extract the time. If the sample
> stream does not include a time stamp, the command never executes.  Don't
> think of this as a bug, but rather as a design limitation.
>
> When I work directly with UHD from C++, I use the function
> rx_streamer::issue_stream_command() which has options to stream data with
> no time stamp or with a time stamp.  When using timed commands with DUC o=
r
> DDC, I must include the time stamp or else the command will never be
> executed.  But, with GR, I don't know how to specify the corresponding
> options.
> Rob
>
> On Tue, Mar 3, 2020 at 12:29 PM Lukas Haase <lukashaase@gmx.at> wrote:
>
>> Hi Sam, Hi Rob,
>>
>> Thanks for following up on this!
>> I am very happy you were able to reproduce this ... which means that at
>> least an issue exists :)
>>
>> What Sam suggests makes sense even though hard to believe for me:
>>
>> 1. How could something like that go unnoticed for so long? (I am sure I
>> am not the first performing digital tuning)
>> 2. In the past I got successful phase coherence using automatic tuning
>> (passing center frequency + offset to tune_request_t and using integer-N
>> tuning) using timed commands. This did not work reliably and only for
>> certain frequencies but in my opinion this should have INCLUDED the DUC
>> tuning. If the DUC retune wouldn't have been executed as part of this
>> automatic tuning, I could not have gotten phase coherence (and actually,
>> not even the desired frequency).
>>
>> The reason why I am only doing DUC tuning now is to avoid all the hassle
>> with integer-N tuning, PLL retuning and settling time.
>>
>> Sam, what is the "radio block" you were talking about?
>>
>> Anyway, would it be worthwile to attempt debugging this is absence of gr=
?
>> The only reason this prevented me from doing is that I would need to
>> manually create the baseband samples and continuously stream them out wh=
ile
>> in parallel do the retuning.
>> I am not too familiar with UHD on its own but I assume this would be ver=
y
>> complicated, require multithreading etc.
>> Do you have any demo code that could be easily modified for this scenari=
o?
>>
>> Best,
>> Lukas
>>
>>
>> Gesendet: Dienstag, 03. M=C3=A4rz 2020 um 12:08 Uhr
>> Von: "Sam Reiter" <sam.reiter@ettus.com>
>> An: "Rob Kossler" <rkossler@nd.edu>
>> Cc: "Lukas Haase" <lukashaase@gmx.at>, "USRP-users@lists.ettus.com" <
>> usrp-users@lists.ettus.com>
>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when usin=
g
>> a timed command
>>
>> For what it's worth, I was able to reproduce the behavior described here=
,
>> but didn't get to dig into it much. My leading suspicion would be what R=
ob
>> mentioned about timestamping. Lukas' code sets a command time, but I'm n=
ot
>> clear on how timestamp metadata for packets being sent to the radio are
>> handled. Might be a good question to loop the discuss-gnuradio mailing l=
ist
>> in on?
>>
>>
>>
>> Sam Reiter
>>
>> On Tue, Mar 3, 2020 at 10:59 AM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]> wrote:
>> I wonder if the issue is related to a missing time stamp on the baseband
>> samples going from GR to UHD.  If the stream does not have a time stamp,
>> the DUC is unable to apply the timed command because the DUC does not
>> really know the time - it must pull the time from the streaming samples.
>> This is in contrast to the radio block which does have access to time an=
d
>> can apply timed commands by referring to the motherboard clock.
>>
>> I am not too familiar with GR so I'm not sure how to know if GR is
>> putting a time stamp on the streaming samples.
>> Rob
>>
>> On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users <
>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]> wrote:Hi
>> Marcus,
>>
>> Thank you that would be amazing!
>>
>> I followed the tutorial and built everything from source:
>>
>> $ lsb_release -a
>> No LSB modules are available.
>> Distributor ID: Ubuntu
>> Description:    Ubuntu 18.04.4 LTS
>> Release:        18.04
>> Codename:       bionic
>> $ uname -a
>> Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC
>> 2020 x86_64 x86_64 x86_64 GNU/Linux
>> $ cd uhd
>> $ git status
>> HEAD detached at v3.15.0.0
>> $ cd ../gnuradio
>> $ git status
>> HEAD detached at v3.7.14.0
>>
>>
>> Thank you!
>>
>> Lukas
>>
>>
>>
>> PS: For some reason I sometimes do not get responses from this list. I
>> just saw it looking at the mailman archives. Hence I cannot respond (to
>> keep headers intact) but need to create a new message and manually "quot=
e".
>> I hope that still preserves the context somehow.
>>
>>
>>
>> Marcus Leech wrote:
>> > On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:
>> >> Hi again,
>> >>
>> >> I created a minimum example (gnuradio) that shows the issue described
>> below.
>> >> To summarize: Retuning to a different dsp frequency on an USRP X310
>> (+UBX160) does not work (command ignored) ONLY if a timed command (in
>> future is used).
>> >> The code shows it in a simple manner. Commenting out the single line
>> with set_command_time makes the example work.
>> >>
>> >> I am absolutely out of ideas and would appreciate any input!
>> >>
>> >> Best,
>> >> Lukas
>> > Lukas.
>> >
>> > Thanks for sticking with this.  I'll have a discussion with Ettus R&D =
to
>> > see if this is a known issue and/or if there's a workaround.
>> >
>> > Remind me which version of UHD you're using?
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]
>>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com______=
_________________________________________
>> USRP-users
>> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com_____=
__________________________________________USRP-users>
>> mailing list
>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000cac5a4059ff6e70a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Also, note that there is no corresponding issue on receive=
 because the Rx radio always inserts the time stamp=C2=A0in the sample stre=
am. So, I guess you would not see this with the DDC.<div>Rob</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, M=
ar 3, 2020 at 12:43 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">r=
kossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>Hi Lukas,</div><div>The FPGA image on t=
he USRP is divided into blocks such as the DUC block and the Radio block.=
=C2=A0 The latter controls the RF daughterboard and has access to the devic=
e clock.=C2=A0 So, when you provide a timed command to the Radio block (suc=
h as for tuning the RF) it can implement the command at the specified time =
by comparing to the device clock.=C2=A0 The DUC block does not have access =
to the MB clock and so when you give it a timed command, it monitors the in=
coming sample stream to extract the time. If the sample stream does not inc=
lude a time stamp, the command never executes.=C2=A0 Don&#39;t think of thi=
s as a bug, but rather as a design limitation.</div><div><br></div><div>Whe=
n I work directly with UHD from C++, I use the function rx_streamer::issue_=
stream_command() which has options to stream data with no time stamp or wit=
h a time stamp.=C2=A0 When using timed commands with DUC or DDC, I must inc=
lude the time stamp or else the command will never be executed.=C2=A0 But, =
with GR, I don&#39;t know how to specify the corresponding options.</div><d=
iv>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Mar 3, 2020 at 12:29 PM Lukas Haase &lt;<a href=3D"mailto:luk=
ashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Sam, Hi Rob, <br>
<br>
Thanks for following up on this!<br>
I am very happy you were able to reproduce this ... which means that at lea=
st an issue exists :)<br>
<br>
What Sam suggests makes sense even though hard to believe for me:<br>
<br>
1. How could something like that go unnoticed for so long? (I am sure I am =
not the first performing digital tuning)<br>
2. In the past I got successful phase coherence using automatic tuning (pas=
sing center frequency + offset to tune_request_t and using integer-N tuning=
) using timed commands. This did not work reliably and only for certain fre=
quencies but in my opinion this should have INCLUDED the DUC tuning. If the=
 DUC retune wouldn&#39;t have been executed as part of this automatic tunin=
g, I could not have gotten phase coherence (and actually, not even the desi=
red frequency).<br>
<br>
The reason why I am only doing DUC tuning now is to avoid all the hassle wi=
th integer-N tuning, PLL retuning and settling time.<br>
<br>
Sam, what is the &quot;radio block&quot; you were talking about?<br>
<br>
Anyway, would it be worthwile to attempt debugging this is absence of gr?<b=
r>
The only reason this prevented me from doing is that I would need to manual=
ly create the baseband samples and continuously stream them out while in pa=
rallel do the retuning.<br>
I am not too familiar with UHD on its own but I assume this would be very c=
omplicated, require multithreading etc.<br>
Do you have any demo code that could be easily modified for this scenario?<=
br>
<br>
Best,<br>
Lukas<br>
<br>
<br>
Gesendet:=C2=A0Dienstag, 03. M=C3=A4rz 2020 um 12:08 Uhr<br>
Von:=C2=A0&quot;Sam Reiter&quot; &lt;<a href=3D"mailto:sam.reiter@ettus.com=
" target=3D"_blank">sam.reiter@ettus.com</a>&gt;<br>
An:=C2=A0&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd.edu" tar=
get=3D"_blank">rkossler@nd.edu</a>&gt;<br>
Cc:=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>&gt;, &quot;<a href=3D"mailto:USRP-us=
ers@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&quot;=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt;<br>
Betreff:=C2=A0Re: [USRP-users] USRP X310 ignored DSP retuning on TX when us=
ing a timed command<br>
<br>
For what it&#39;s worth, I was able to reproduce the behavior described her=
e, but didn&#39;t get to dig into it much. My leading suspicion would be wh=
at Rob mentioned about timestamping. Lukas&#39; code sets a command time, b=
ut I&#39;m not clear on how timestamp metadata for packets being sent to th=
e radio are handled. Might be a good question to loop the discuss-gnuradio =
mailing list in on?<br>
<br>
=C2=A0<br>
<br>
Sam Reiter=C2=A0=C2=A0<br>
<br>
On Tue, Mar 3, 2020 at 10:59 AM Rob Kossler via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>]&gt; wrote:<br>
I wonder if the issue is related to a missing time stamp on the baseband sa=
mples going from GR to UHD.=C2=A0 If the stream does not have a time stamp,=
 the DUC is unable to apply the timed command because the DUC does not real=
ly know the time - it must pull the time from the streaming samples. This i=
s in contrast to the radio block which does have access to time and can app=
ly timed commands by referring to the motherboard clock.<br>
=C2=A0<br>
I am not too familiar with GR so I&#39;m not sure how to know if GR is putt=
ing a time stamp on the streaming samples.<br>
Rob=C2=A0<br>
<br>
On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>]&gt; wrote:Hi Marcus,<br>
<br>
Thank you that would be amazing!<br>
<br>
I followed the tutorial and built everything from source:<br>
<br>
$ lsb_release -a<br>
No LSB modules are available.<br>
Distributor ID: Ubuntu<br>
Description:=C2=A0 =C2=A0 Ubuntu 18.04.4 LTS<br>
Release:=C2=A0 =C2=A0 =C2=A0 =C2=A0 18.04<br>
Codename:=C2=A0 =C2=A0 =C2=A0 =C2=A0bionic<br>
$ uname -a<br>
Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC 20=
20 x86_64 x86_64 x86_64 GNU/Linux<br>
$ cd uhd<br>
$ git status<br>
HEAD detached at v3.15.0.0<br>
$ cd ../gnuradio<br>
$ git status<br>
HEAD detached at v3.7.14.0<br>
<br>
<br>
Thank you!<br>
<br>
Lukas<br>
<br>
<br>
<br>
PS: For some reason I sometimes do not get responses from this list. I just=
 saw it looking at the mailman archives. Hence I cannot respond (to keep he=
aders intact) but need to create a new message and manually &quot;quote&quo=
t;. I hope that still preserves the context somehow.<br>
<br>
<br>
<br>
Marcus Leech wrote:<br>
&gt; On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:<br>
&gt;&gt; Hi again,<br>
&gt;&gt;<br>
&gt;&gt; I created a minimum example (gnuradio) that shows the issue descri=
bed below.<br>
&gt;&gt; To summarize: Retuning to a different dsp frequency on an USRP X31=
0 (+UBX160) does not work (command ignored) ONLY if a timed command (in fut=
ure is used).<br>
&gt;&gt; The code shows it in a simple manner. Commenting out the single li=
ne with set_command_time makes the example work.<br>
&gt;&gt;<br>
&gt;&gt; I am absolutely out of ideas and would appreciate any input!<br>
&gt;&gt;<br>
&gt;&gt; Best,<br>
&gt;&gt; Lukas<br>
&gt; Lukas.<br>
&gt;<br>
&gt; Thanks for sticking with this.=C2=A0 I&#39;ll have a discussion with E=
ttus R&amp;D to<br>
&gt; see if this is a known issue and/or if there&#39;s a workaround.<br>
&gt;<br>
&gt; Remind me which version of UHD you&#39;re using?<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a>]<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om_______________________________________________USRP-users" rel=3D"norefer=
rer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_l=
ists.ettus.com_______________________________________________<br>
USRP-users</a> mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a>]<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000cac5a4059ff6e70a--


--===============5691401412054038805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5691401412054038805==--

