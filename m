Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EC64B17DE
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 22:57:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04D8A384632
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 16:57:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BOVMOb90";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 2259E3845F4
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 16:56:15 -0500 (EST)
Received: by mail-yb1-f178.google.com with SMTP id p19so19499887ybc.6
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 13:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D0uhGoRugr2Qstsg9ByPywqJ65MD+nSeXF7cU7Sms7E=;
        b=BOVMOb90B3kx25P2LShkDy8NGJWT5VJlAVdYTAzfRv5NITdmLNDtP+Tfsngx4E2bhN
         fVqbdaef7YiBQyJPpmP8qhZp75lHnyDko509zMkkRdXBSS6wFrG+P6eCiGPFL2hq/Oro
         6DrNL6lDJVHl4v55ogUyQIRiWpg+LJopxcASGke3lAwbdADJ5m8uPNx42Lp9u3yNHkAF
         ZT0HNF6FSd3Kl0/10a1kySyWWvrcfz936k3a24Fm/HWNL0xx8txYE6VMQDugP0BxVnpr
         UuGVIqEITZASyL3ulCTORwb7NWLlrMTOOqt3P98bEb+cU76vwtU3fgRBvESx6/wHI9Fb
         qcvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D0uhGoRugr2Qstsg9ByPywqJ65MD+nSeXF7cU7Sms7E=;
        b=008jzW5E553kKftvPEhxCXXUEBTDVi1L1suXyRlxV4UNae0QXhYOQdja1yrllDf2qN
         QhgfChrO1i6lNIcVbTKjv99b/5uAj+mgWKMtBNeuonJjZO4L2ZViHIgAZ6eah/hCvMEh
         RM2/dC4pJwrliT1K/4Vi3HADxzWNcGiomsKFueYSSWSEC+uZh8gTlt17cn0Y4Ufh/2WS
         P87XSDg+lczsFJxKye1yHv7MN8uNnK+AzVRLHXKvtHedQyMM7yn/r0YiJd7J/5xa9m85
         4y0H+mKqYcxLvo3ykGR13A5k21h8XRjLW6FFprHrCqbdwkrsciZMogU7adHkIG+4DWg/
         WnPw==
X-Gm-Message-State: AOAM531k6ipGFElz16kLMxiF2aoJlFqU1Q9yhc3ixmEdsD0ix6/Ol+GP
	ISbqCaKPLifPziM1/N0i/UAakTOEjVvkyF8i5T37uA==
X-Google-Smtp-Source: ABdhPJxI49XErayM9PeZkT4LND2GyXb3B/T6J01ltYqQU1KLz4BV2aXgKrUjH7agUu+R9FHm+GFY4otU6FIfup/1s5s=
X-Received: by 2002:a81:e908:: with SMTP id d8mr9552014ywm.82.1644530175302;
 Thu, 10 Feb 2022 13:56:15 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSyT==Q_Nfn8xgfT-FBuutZ_ieD_CKuc-PdA3xm6KHs4w@mail.gmail.com>
 <CAL7q81tArWo++HCSyo_MGXpThqmdBvt94r-RJccqT3+bhh0PGw@mail.gmail.com>
 <CAFche=gKiRGtNmHE5L=59fbqEdKCvypFEwito3cgXg8qtcL-gA@mail.gmail.com>
 <CAB__hTQUT8mTDRDAeA-b_mJBmpF=h0UMDFLOgf0XKaJ01ZWbzg@mail.gmail.com>
 <CAFche=iXkkR1C9AEXbrytuFkiSUCYL2fpwO7Ufq_VdKoQi7nfA@mail.gmail.com> <CAL7q81uXKHKPje44LA-Xc+STABicFho9J76SUvFyg=AgKFRSMA@mail.gmail.com>
In-Reply-To: <CAL7q81uXKHKPje44LA-Xc+STABicFho9J76SUvFyg=AgKFRSMA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 10 Feb 2022 16:56:04 -0500
Message-ID: <CAB__hTRyjakK=Okw3+0Ot7TAsXymK5aEt14LeZgp5Rzri5O=EQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: H2HTCE3IL7XNG3T6JQKFXZAW5XUUCWM6
X-Message-ID-Hash: H2HTCE3IL7XNG3T6JQKFXZAW5XUUCWM6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block on E320 data rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H2HTCE3IL7XNG3T6JQKFXZAW5XUUCWM6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4088424915055487331=="

--===============4088424915055487331==
Content-Type: multipart/alternative; boundary="000000000000ec261f05d7b10467"

--000000000000ec261f05d7b10467
Content-Type: text/plain; charset="UTF-8"

Thanks Jonathon!
This sure seems like a smoking gun. It doesn't seem like this is an
auto-generated file so it seems we could manually modify it to include
ports 2 and 3 in the same fashion as the N310 and then rebuild. Is this
true?
Rob

On Thu, Feb 10, 2022 at 4:22 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> It looks like the problem is that while there is a 4 port interconnect
> available, only ports 0 and 1 are hooked up:
> https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050
>
> This actually brings up a design suggestion: the Replay Block could have
> it's own internal AXI4 interconnect that scales based on NUM_PORTS. I've
> done this myself in a custom RFNoC block using the Xilinx AXI4 Interconnect
> IP and it worked out well.
>
> Jonathon
>
> On Thu, Feb 10, 2022 at 3:33 PM Wade Fife <wade.fife@ettus.com> wrote:
>
>> I would start by double checking the YAML. For example, make sure the
>> MEM_ADDR_W parameter is correct (for E320 it should be 31, for 2 GiB) and
>> make sure each in/out port is connected the way you want.
>>
>> If you share the YAML with me, I'm happy to take a look to see if
>> anything jumps out at me.
>>
>> Thanks,
>>
>> Wade
>>
>> On Thu, Feb 10, 2022 at 10:34 AM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Thanks Wade,
>>> I am helping Ofer Saferman with an issue with the E320 and a 4-port
>>> replay block. Apart from your response (& Jonathon's response) indicating
>>> that data rates should not be an issue, I have also come to the same
>>> conclusion by trying some tests.  After these tests, the issue now seems to
>>> be that Replay ports 0 and 1 work as expected, but Replay ports 2 and 3 do
>>> not.  I know that a 4-port Replay block works fine on an N310 because I use
>>> it often.  So, I'm wondering why we have this issue on the E320.  Perhaps
>>> the E320 yml file is wrong - I am still waiting to take a look at this.  I
>>> have also requested that Ofer run the stock example
>>> "rfnoc_replay_samples_from_file" and use the --replay_chan option to prove
>>> that ports 0 and 1 work fine but ports 2 and 3 do not.
>>>
>>> Anyway, if you have any suggestions, I'd love to hear them.
>>> Rob
>>>
>>>
>>> On Thu, Feb 10, 2022 at 11:17 AM Wade Fife <wade.fife@ettus.com> wrote:
>>>
>>>> The E320's DRAM is pretty fast. It should have no problem keeping up
>>>> for your use case.
>>>>
>>>> Wade
>>>>
>>>> On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum <
>>>> jonathon.pendlum@ettus.com> wrote:
>>>>
>>>>> Hi Rob,
>>>>>
>>>>> As long as the DRAM can keep up throughput wise, you should be fine in
>>>>> that configuration. I think the E320 has a BIST you can run that reports
>>>>> the throughput.
>>>>>
>>>>> Jonathon
>>>>>
>>>>> On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>
>>>>>> Hi,
>>>>>> I am wondering if there are any data rate restrictions for using the
>>>>>> Replay block on the E320.  I have a 4-port Replay block for simultaneously
>>>>>> playing two streams to the 2-port Radio and capturing two streams from the
>>>>>> 2-port Radio.  If the master_clock_rate is equal to the sample rate, does
>>>>>> this imply that I will have a data throughput issue?
>>>>>> Rob
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>

--000000000000ec261f05d7b10467
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Jonathon!<div>This sure seems like a smoking gun. I=
t doesn&#39;t seem like this is an auto-generated file so it seems we could=
 manually modify it to include ports 2 and 3 in the same fashion as the N31=
0 and then rebuild. Is this true?</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022=
 at 4:22 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.c=
om">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>It looks like the probl=
em is that while there is a 4 port interconnect available, only ports 0 and=
 1 are hooked up:=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob=
/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L=
1050" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/2c7ce2dbf=
72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050</a><b=
r></div><div><br></div><div>This actually brings up a design suggestion: th=
e Replay Block could have it&#39;s own internal AXI4 interconnect that scal=
es based on NUM_PORTS. I&#39;ve done this myself in a custom RFNoC block us=
ing the Xilinx AXI4 Interconnect IP and it worked out well.<br></div><div><=
br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 3:33 PM Wade Fife &lt=
;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>I would start by double checking the YAML. For exam=
ple, make sure the MEM_ADDR_W parameter is correct (for E320 it should be 3=
1, for 2 GiB) and make sure each in/out port is connected the way you want.=
<br></div><div><br></div><div>If you share the YAML with me, I&#39;m happy =
to take a look to see if anything jumps out at me.<br></div><div><br></div>=
<div>Thanks,</div><div><br></div><div>Wade<br></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 10:34=
 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rk=
ossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Thanks Wade,<div>I am helpin=
g Ofer Saferman with an issue with the E320 and a 4-port replay block. Apar=
t from your response (&amp; Jonathon&#39;s response) indicating that data r=
ates should not be an issue, I have also come to the same conclusion by try=
ing some tests.=C2=A0 After these tests, the issue now seems to be that Rep=
lay ports 0 and 1 work as expected, but Replay ports 2 and 3 do not.=C2=A0 =
I know that a 4-port Replay block works fine on an N310 because I use it of=
ten.=C2=A0 So, I&#39;m wondering why we have this issue on the E320.=C2=A0 =
Perhaps the E320 yml file is wrong - I am still waiting to take a look at t=
his.=C2=A0 I have also requested that Ofer run the stock example &quot;rfno=
c_replay_samples_from_file&quot; and use the --replay_chan option to prove =
that ports 0 and 1 work fine but ports 2 and 3 do not.</div><div><br></div>=
<div>Anyway, if you have any suggestions, I&#39;d love to hear them.</div><=
div>Rob</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 11:17 AM Wade Fife &l=
t;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>The E320&#39;s DRAM is pretty fast. It should have=
 no problem keeping up for your use case.</div><div><br></div><div>Wade<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum &lt;<a href=3D"mailt=
o:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hi Rob,<div><br></div><div>As long as the DRAM can keep up =
throughput wise, you should be fine in that configuration. I think the E320=
 has a BIST you can run that reports the throughput.=C2=A0</div><div><br></=
div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler &lt;<a hr=
ef=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Hi,<br><div>I am wondering if there are any data rate restrictions for=
 using the Replay block on the E320.=C2=A0 I have a 4-port Replay block for=
 simultaneously playing two streams to the 2-port Radio and capturing two s=
treams from the 2-port Radio.=C2=A0 If the master_clock_rate is equal to th=
e sample rate, does this imply that I will have a data throughput issue?</d=
iv><div>Rob</div></div>
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

--000000000000ec261f05d7b10467--

--===============4088424915055487331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4088424915055487331==--
