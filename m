Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 373934B60F6
	for <lists+usrp-users@lfdr.de>; Tue, 15 Feb 2022 03:26:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77845384E58
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 21:26:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="eTpeZTrG";
	dkim-atps=neutral
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id AAA05385B96
	for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 21:25:33 -0500 (EST)
Received: by mail-yb1-f170.google.com with SMTP id y129so51771486ybe.7
        for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 18:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7z43nhS/R+dkCBCn67SMbJVkCwOlbmxKi0OAud9K0Dk=;
        b=eTpeZTrGklpmB9f6L+E4JPGoBxatlCX4xCm1KJ6kJh9IxInJNj4nuLnWD3oOqXgxZb
         4OGSb6LKEIwmSkgn7FkjUbRJH/e+tAexIZrVJ2F4weMhxwLryuWxMZp9xZEz6/p0XQRC
         C+9QvCmFFdl/uArK0Vkh49hrdLGUiJPGVG4oFIaPS82DeWBx8aZrrOCPTloAUJdnnbB0
         lqj+1bI23kwp9xr2KoSKWz9Sk4FLR0uBCWiVcP0MseHYkzONBI6dEmkEey6zD1OiUoq2
         Ka8ekBvxGaZOeRAcnrTL/+ZeOZVDulRoXVXDvKE+437x6o8xcVGqNFo/3oItmzvFqsXF
         I9TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7z43nhS/R+dkCBCn67SMbJVkCwOlbmxKi0OAud9K0Dk=;
        b=U2W/X33+Tro+SU83fomBt5Ha+5wj9SHdFFDYiFKo6p5X871hq3ldtWd2C+iOfCmVwq
         xjm098KmX55kLSjYYJV+ULAiFCjh1zRfjvVKb08hmRDQN/ELA5JB9Q8GKLXK/BMLeGY1
         xObhPAG4nJaVslWB2WzoqBi1qlaEq7aiX7ai759ZPQL6EgZQxHo8xVxYcZE0xm6aGl7T
         SUMWRbcgj8ggeWFmfCs8rK7vJurXXIX/6JhoiL5gxrMBp9TWgDfFxN6kZoJnCDrPFjim
         ITNUjI9zZzjtqZv7Ait0WPP18nsQrGCg5gVXXEGPcdadR/UobGDQmHEqPPgVlXF8obXp
         cgqA==
X-Gm-Message-State: AOAM532R9/GfG4GCkQ59GV+EpTWFHyPZFikzEZOXYqadm7DnIJ02bNMa
	OFuSdv1ZbDEUOn5sIvsvoiMq8q5PALwSq+Wknx2/lQxuvZvpgg==
X-Google-Smtp-Source: ABdhPJxqUTPdupkCLcNbsyNlPaRHYoOujzGca9yHNhd7Y5ZZmzOprc5lF0DhTLFZEewPf8Os0djHSm/M5qLXKwsJ4og=
X-Received: by 2002:a25:abf2:: with SMTP id v105mr1944416ybi.13.1644891932678;
 Mon, 14 Feb 2022 18:25:32 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSyT==Q_Nfn8xgfT-FBuutZ_ieD_CKuc-PdA3xm6KHs4w@mail.gmail.com>
 <CAL7q81tArWo++HCSyo_MGXpThqmdBvt94r-RJccqT3+bhh0PGw@mail.gmail.com>
 <CAFche=gKiRGtNmHE5L=59fbqEdKCvypFEwito3cgXg8qtcL-gA@mail.gmail.com>
 <CAB__hTQUT8mTDRDAeA-b_mJBmpF=h0UMDFLOgf0XKaJ01ZWbzg@mail.gmail.com>
 <CAFche=iXkkR1C9AEXbrytuFkiSUCYL2fpwO7Ufq_VdKoQi7nfA@mail.gmail.com>
 <CAL7q81uXKHKPje44LA-Xc+STABicFho9J76SUvFyg=AgKFRSMA@mail.gmail.com>
 <CAB__hTRyjakK=Okw3+0Ot7TAsXymK5aEt14LeZgp5Rzri5O=EQ@mail.gmail.com> <CAL7q81uAmPpypzw=1xx8qyDe6iPB3vUwica43TmL+BgXXs=0Cw@mail.gmail.com>
In-Reply-To: <CAL7q81uAmPpypzw=1xx8qyDe6iPB3vUwica43TmL+BgXXs=0Cw@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 14 Feb 2022 21:25:22 -0500
Message-ID: <CAB__hTQuibnC+jcz+naR39MwZZOekuJyNWc6zyi-bog8r=Xomg@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: XGMWJM5ZV5LHY2LKSMVC4HUTXCKIEYBH
X-Message-ID-Hash: XGMWJM5ZV5LHY2LKSMVC4HUTXCKIEYBH
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block on E320 data rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XGMWJM5ZV5LHY2LKSMVC4HUTXCKIEYBH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0879361845124429401=="

--===============0879361845124429401==
Content-Type: multipart/alternative; boundary="000000000000579d4f05d8053fec"

--000000000000579d4f05d8053fec
Content-Type: text/plain; charset="UTF-8"

Jonathon, Wade,
Regarding the Replay block controller and the recent change on 'master' to
Drop property, action, & mtu forwarding, there is one other modification
that I think makes sense. The Replay block is the only block controller
that implements "issue_stream_cmd" yet doesn't actually register this
function as an action handler for the stream_cmd action.  What this means
is that if I connect an rx_streamer to a Replay block output (Play port)
and call issue_stream_cmd() on the rx_streamer, the Replay block controller
does not respect this command. In fact, on UHD 4.1, it actually forwards it
along the path causing real trouble.  On 'master', it just drops the
command but does nothing (which is better).  Take a look at the null block
controller or DDC block controller to see that these controllers register
the stream_cmd action. Let me know what you think.
Thanks.
Rob


On Thu, Feb 10, 2022 at 5:01 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hi Rob,
>
> Yup, that should fix the issue.
>
> Jonathon
>
> On Thu, Feb 10, 2022 at 4:56 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Thanks Jonathon!
>> This sure seems like a smoking gun. It doesn't seem like this is an
>> auto-generated file so it seems we could manually modify it to include
>> ports 2 and 3 in the same fashion as the N310 and then rebuild. Is this
>> true?
>> Rob
>>
>> On Thu, Feb 10, 2022 at 4:22 PM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> It looks like the problem is that while there is a 4 port interconnect
>>> available, only ports 0 and 1 are hooked up:
>>> https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050
>>>
>>> This actually brings up a design suggestion: the Replay Block could have
>>> it's own internal AXI4 interconnect that scales based on NUM_PORTS. I've
>>> done this myself in a custom RFNoC block using the Xilinx AXI4 Interconnect
>>> IP and it worked out well.
>>>
>>> Jonathon
>>>
>>> On Thu, Feb 10, 2022 at 3:33 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>
>>>> I would start by double checking the YAML. For example, make sure the
>>>> MEM_ADDR_W parameter is correct (for E320 it should be 31, for 2 GiB) and
>>>> make sure each in/out port is connected the way you want.
>>>>
>>>> If you share the YAML with me, I'm happy to take a look to see if
>>>> anything jumps out at me.
>>>>
>>>> Thanks,
>>>>
>>>> Wade
>>>>
>>>> On Thu, Feb 10, 2022 at 10:34 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Thanks Wade,
>>>>> I am helping Ofer Saferman with an issue with the E320 and a 4-port
>>>>> replay block. Apart from your response (& Jonathon's response) indicating
>>>>> that data rates should not be an issue, I have also come to the same
>>>>> conclusion by trying some tests.  After these tests, the issue now seems to
>>>>> be that Replay ports 0 and 1 work as expected, but Replay ports 2 and 3 do
>>>>> not.  I know that a 4-port Replay block works fine on an N310 because I use
>>>>> it often.  So, I'm wondering why we have this issue on the E320.  Perhaps
>>>>> the E320 yml file is wrong - I am still waiting to take a look at this.  I
>>>>> have also requested that Ofer run the stock example
>>>>> "rfnoc_replay_samples_from_file" and use the --replay_chan option to prove
>>>>> that ports 0 and 1 work fine but ports 2 and 3 do not.
>>>>>
>>>>> Anyway, if you have any suggestions, I'd love to hear them.
>>>>> Rob
>>>>>
>>>>>
>>>>> On Thu, Feb 10, 2022 at 11:17 AM Wade Fife <wade.fife@ettus.com>
>>>>> wrote:
>>>>>
>>>>>> The E320's DRAM is pretty fast. It should have no problem keeping up
>>>>>> for your use case.
>>>>>>
>>>>>> Wade
>>>>>>
>>>>>> On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum <
>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>
>>>>>>> Hi Rob,
>>>>>>>
>>>>>>> As long as the DRAM can keep up throughput wise, you should be fine
>>>>>>> in that configuration. I think the E320 has a BIST you can run that reports
>>>>>>> the throughput.
>>>>>>>
>>>>>>> Jonathon
>>>>>>>
>>>>>>> On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>>>
>>>>>>>> Hi,
>>>>>>>> I am wondering if there are any data rate restrictions for using
>>>>>>>> the Replay block on the E320.  I have a 4-port Replay block for
>>>>>>>> simultaneously playing two streams to the 2-port Radio and capturing two
>>>>>>>> streams from the 2-port Radio.  If the master_clock_rate is equal to the
>>>>>>>> sample rate, does this imply that I will have a data throughput issue?
>>>>>>>> Rob
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>>

--000000000000579d4f05d8053fec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Jonathon, Wade,<div>Regarding the Replay block controller =
and the recent change on &#39;master&#39; to Drop property, action, &amp; m=
tu forwarding, there is one other modification that I think makes sense. Th=
e Replay block is the only block controller that implements &quot;issue_str=
eam_cmd&quot; yet doesn&#39;t actually register this function as an action =
handler for the stream_cmd action.=C2=A0 What this means is that if I conne=
ct an rx_streamer to a Replay block output (Play port) and call issue_strea=
m_cmd() on the rx_streamer, the Replay block controller does not respect th=
is command. In fact, on UHD 4.1, it actually forwards it along the path cau=
sing real trouble.=C2=A0 On &#39;master&#39;, it just drops the command but=
 does nothing (which is better).=C2=A0 Take a look at the null block contro=
ller or DDC block controller to see that these controllers register the str=
eam_cmd action. Let me know what you think.</div><div>Thanks.</div><div>Rob=
</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Feb 10, 2022 at 5:01 PM Jonathon Pendlum &lt;<=
a href=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hi Rob,<div><br></div><div>Yup, that should fix the issue.</di=
v><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 4:56 PM Rob Kos=
sler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.e=
du</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Thanks Jonathon!<div>This sure seems like a smoking gun.=
 It doesn&#39;t seem like this is an auto-generated file so it seems we cou=
ld manually modify it to include ports 2 and 3 in the same fashion as the N=
310 and then rebuild. Is this true?</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022=
 at 4:22 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.c=
om" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>It lo=
oks like the problem is that while there is a 4 port interconnect available=
, only ports 0 and 1 are hooked up:=C2=A0<a href=3D"https://github.com/Ettu=
sResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/=
e320/e320_core.v#L1050" target=3D"_blank">https://github.com/EttusResearch/=
uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_=
core.v#L1050</a><br></div><div><br></div><div>This actually brings up a des=
ign suggestion: the Replay Block could have it&#39;s own internal AXI4 inte=
rconnect that scales based on NUM_PORTS. I&#39;ve done this myself in a cus=
tom RFNoC block using the Xilinx AXI4 Interconnect IP and it worked out wel=
l.<br></div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 3:33 =
PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">w=
ade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>I would start by double checking th=
e YAML. For example, make sure the MEM_ADDR_W parameter is correct (for E32=
0 it should be 31, for 2 GiB) and make sure each in/out port is connected t=
he way you want.<br></div><div><br></div><div>If you share the YAML with me=
, I&#39;m happy to take a look to see if anything jumps out at me.<br></div=
><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 1=
0, 2022 at 10:34 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" targ=
et=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Thanks Wade,=
<div>I am helping Ofer Saferman with an issue with the E320 and a 4-port re=
play block. Apart from your response (&amp; Jonathon&#39;s response) indica=
ting that data rates should not be an issue, I have also come to the same c=
onclusion by trying some tests.=C2=A0 After these tests, the issue now seem=
s to be that Replay ports 0 and 1 work as expected, but Replay ports 2 and =
3 do not.=C2=A0 I know that a 4-port Replay block works fine on an N310 bec=
ause I use it often.=C2=A0 So, I&#39;m wondering why we have this issue on =
the E320.=C2=A0 Perhaps the E320 yml file is wrong - I am still waiting to =
take a look at this.=C2=A0 I have also requested that Ofer run the stock ex=
ample &quot;rfnoc_replay_samples_from_file&quot; and use the --replay_chan =
option to prove that ports 0 and 1 work fine but ports 2 and 3 do not.</div=
><div><br></div><div>Anyway, if you have any suggestions, I&#39;d love to h=
ear them.</div><div>Rob</div><div><br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 11:17 A=
M Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wa=
de.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>The E320&#39;s DRAM is pretty fast. =
It should have no problem keeping up for your use case.</div><div><br></div=
><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum &lt;<a=
 href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pend=
lum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">Hi Rob,<div><br></div><div>As long as the DRA=
M can keep up throughput wise, you should be fine in that configuration. I =
think the E320 has a BIST you can run that reports the throughput.=C2=A0</d=
iv><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 9, 2022 at 3:29 PM Rob Kos=
sler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.e=
du</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Hi,<br><div>I am wondering if there are any data rate re=
strictions for using the Replay block on the E320.=C2=A0 I have a 4-port Re=
play block for simultaneously playing two streams to the 2-port Radio and c=
apturing two streams from the 2-port Radio.=C2=A0 If the master_clock_rate =
is equal to the sample rate, does this imply that I will have a data throug=
hput issue?</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000579d4f05d8053fec--

--===============0879361845124429401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0879361845124429401==--
