Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 266C34B17E0
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 23:02:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 293FE385091
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 17:02:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="YKm2F1GT";
	dkim-atps=neutral
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 903573845F0
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 17:01:09 -0500 (EST)
Received: by mail-vs1-f52.google.com with SMTP id j26so6679440vso.12
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 14:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JDknOWKUjVV+ZprrcPIU+q7xBnFlW88OtlpID99Y6lo=;
        b=YKm2F1GTW+iftS3JFM6xwlNsaw7Bdb7wtEVzh/hh2EUf4u6rJo5p7a1ZPyjLnmY0F+
         eZLEniwom4uN0njBRUDqqEygnn+MydYOr7CdNVkPgmm7QpvyM/0QI7CW/UWYYIZ64Aqf
         hU/XXR06Nn1S8kAe5SMlCb70FD5gsN7ceOKZ//rogOygAfKisZCrHAVAprag1tvHMMt1
         2PZxz0McFXli3XO98CSGe7ZUzVQvezUYGPV5orwHFu8pZwL+6z4XFaTv+XwinEvW0R7E
         wuYzDjZNlULmH1ctMBYMAZ2Zdi+tv2qQ/AjLi9+h/STEhfgUmF/CGOx/tlp+RQ0XH08K
         5Rsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JDknOWKUjVV+ZprrcPIU+q7xBnFlW88OtlpID99Y6lo=;
        b=DuVGYN8ZqVbTAD2LJzZSB8itMAbdsZoOmXiSKS1Td+HVfUnyx0IqafAxs1QEVRsc0/
         ZrI8eQYb8B7BCoofLajIXv4v2LfaDNrGa30CUB44h8kDX0WxTOxl/f3a3+uzeEzbiF86
         +QVL8h+zU7RIoO5r4HLOExLqpq8TuF3mH1FamfbyK5HujI8P31VmglBUasvIlVQhvel2
         d+omA1CDNo6GdhNqsvsNm5hQD9+No5lIa/Cg1Ycl9xeYNGSZPdIi/4wvGKamgRReULrW
         hTytq9tDAcZ8ikibwWG9Ir8sO7n776+Vj3f4nEnR/ErSEbsKkmY8pbxphqdNyyKaFyI2
         +YYA==
X-Gm-Message-State: AOAM532LvJmQ6TB8sCB5m8nAl8Ves4gR4ScW6/Me6BI7kaFoOwui7HzF
	P87XTAUo3Zuf2a6YATMnJD5vNq4H2zWxp4NjtdRjVYPw2wS7Ww==
X-Google-Smtp-Source: ABdhPJzIeBkLU7fcG+ezpRRWtuORJqXAYQcceqDOopjPr8JrjciQrRaYYybje8f5rmX1uOoh77BEICLTap/q52+r5Cc=
X-Received: by 2002:a67:61c3:: with SMTP id v186mr3261941vsb.15.1644530468954;
 Thu, 10 Feb 2022 14:01:08 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSyT==Q_Nfn8xgfT-FBuutZ_ieD_CKuc-PdA3xm6KHs4w@mail.gmail.com>
 <CAL7q81tArWo++HCSyo_MGXpThqmdBvt94r-RJccqT3+bhh0PGw@mail.gmail.com>
 <CAFche=gKiRGtNmHE5L=59fbqEdKCvypFEwito3cgXg8qtcL-gA@mail.gmail.com>
 <CAB__hTQUT8mTDRDAeA-b_mJBmpF=h0UMDFLOgf0XKaJ01ZWbzg@mail.gmail.com>
 <CAFche=iXkkR1C9AEXbrytuFkiSUCYL2fpwO7Ufq_VdKoQi7nfA@mail.gmail.com>
 <CAL7q81uXKHKPje44LA-Xc+STABicFho9J76SUvFyg=AgKFRSMA@mail.gmail.com> <CAB__hTRyjakK=Okw3+0Ot7TAsXymK5aEt14LeZgp5Rzri5O=EQ@mail.gmail.com>
In-Reply-To: <CAB__hTRyjakK=Okw3+0Ot7TAsXymK5aEt14LeZgp5Rzri5O=EQ@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 10 Feb 2022 17:00:33 -0500
Message-ID: <CAL7q81uAmPpypzw=1xx8qyDe6iPB3vUwica43TmL+BgXXs=0Cw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: CWD2WOSXEHCCH2NNRHX3MQ3RUK5FHLWC
X-Message-ID-Hash: CWD2WOSXEHCCH2NNRHX3MQ3RUK5FHLWC
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block on E320 data rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CWD2WOSXEHCCH2NNRHX3MQ3RUK5FHLWC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7694071508930524612=="

--===============7694071508930524612==
Content-Type: multipart/alternative; boundary="0000000000006cf69f05d7b116c1"

--0000000000006cf69f05d7b116c1
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

Yup, that should fix the issue.

Jonathon

On Thu, Feb 10, 2022 at 4:56 PM Rob Kossler <rkossler@nd.edu> wrote:

> Thanks Jonathon!
> This sure seems like a smoking gun. It doesn't seem like this is an
> auto-generated file so it seems we could manually modify it to include
> ports 2 and 3 in the same fashion as the N310 and then rebuild. Is this
> true?
> Rob
>
> On Thu, Feb 10, 2022 at 4:22 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> It looks like the problem is that while there is a 4 port interconnect
>> available, only ports 0 and 1 are hooked up:
>> https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050
>>
>> This actually brings up a design suggestion: the Replay Block could have
>> it's own internal AXI4 interconnect that scales based on NUM_PORTS. I've
>> done this myself in a custom RFNoC block using the Xilinx AXI4 Interconnect
>> IP and it worked out well.
>>
>> Jonathon
>>
>> On Thu, Feb 10, 2022 at 3:33 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> I would start by double checking the YAML. For example, make sure the
>>> MEM_ADDR_W parameter is correct (for E320 it should be 31, for 2 GiB) and
>>> make sure each in/out port is connected the way you want.
>>>
>>> If you share the YAML with me, I'm happy to take a look to see if
>>> anything jumps out at me.
>>>
>>> Thanks,
>>>
>>> Wade
>>>
>>> On Thu, Feb 10, 2022 at 10:34 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Thanks Wade,
>>>> I am helping Ofer Saferman with an issue with the E320 and a 4-port
>>>> replay block. Apart from your response (& Jonathon's response) indicating
>>>> that data rates should not be an issue, I have also come to the same
>>>> conclusion by trying some tests.  After these tests, the issue now seems to
>>>> be that Replay ports 0 and 1 work as expected, but Replay ports 2 and 3 do
>>>> not.  I know that a 4-port Replay block works fine on an N310 because I use
>>>> it often.  So, I'm wondering why we have this issue on the E320.  Perhaps
>>>> the E320 yml file is wrong - I am still waiting to take a look at this.  I
>>>> have also requested that Ofer run the stock example
>>>> "rfnoc_replay_samples_from_file" and use the --replay_chan option to prove
>>>> that ports 0 and 1 work fine but ports 2 and 3 do not.
>>>>
>>>> Anyway, if you have any suggestions, I'd love to hear them.
>>>> Rob
>>>>
>>>>
>>>> On Thu, Feb 10, 2022 at 11:17 AM Wade Fife <wade.fife@ettus.com> wrote:
>>>>
>>>>> The E320's DRAM is pretty fast. It should have no problem keeping up
>>>>> for your use case.
>>>>>
>>>>> Wade
>>>>>
>>>>> On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum <
>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>
>>>>>> Hi Rob,
>>>>>>
>>>>>> As long as the DRAM can keep up throughput wise, you should be fine
>>>>>> in that configuration. I think the E320 has a BIST you can run that reports
>>>>>> the throughput.
>>>>>>
>>>>>> Jonathon
>>>>>>
>>>>>> On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>>
>>>>>>> Hi,
>>>>>>> I am wondering if there are any data rate restrictions for using the
>>>>>>> Replay block on the E320.  I have a 4-port Replay block for simultaneously
>>>>>>> playing two streams to the 2-port Radio and capturing two streams from the
>>>>>>> 2-port Radio.  If the master_clock_rate is equal to the sample rate, does
>>>>>>> this imply that I will have a data throughput issue?
>>>>>>> Rob
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>

--0000000000006cf69f05d7b116c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div><br></div><div>Yup, that should fix the issue.=
</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 4:56 PM Rob=
 Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Thanks Jonathon!<div>This sure seems like a smoking gun. It doesn&#39;=
t seem like this is an auto-generated file so it seems we could manually mo=
dify it to include ports 2 and 3 in the same fashion as the N310 and then r=
ebuild. Is this true?</div><div>Rob</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 4:22 PM Jo=
nathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"=
_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>It looks like the p=
roblem is that while there is a 4 port interconnect available, only ports 0=
 and 1 are hooked up:=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/=
blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core=
.v#L1050" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/2c7ce=
2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050</=
a><br></div><div><br></div><div>This actually brings up a design suggestion=
: the Replay Block could have it&#39;s own internal AXI4 interconnect that =
scales based on NUM_PORTS. I&#39;ve done this myself in a custom RFNoC bloc=
k using the Xilinx AXI4 Interconnect IP and it worked out well.<br></div><d=
iv><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 3:33 PM Wade Fife &=
lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div>I would start by double checking the YAML. For ex=
ample, make sure the MEM_ADDR_W parameter is correct (for E320 it should be=
 31, for 2 GiB) and make sure each in/out port is connected the way you wan=
t.<br></div><div><br></div><div>If you share the YAML with me, I&#39;m happ=
y to take a look to see if anything jumps out at me.<br></div><div><br></di=
v><div>Thanks,</div><div><br></div><div>Wade<br></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 10:=
34 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">=
rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Thanks Wade,<div>I am help=
ing Ofer Saferman with an issue with the E320 and a 4-port replay block. Ap=
art from your response (&amp; Jonathon&#39;s response) indicating that data=
 rates should not be an issue, I have also come to the same conclusion by t=
rying some tests.=C2=A0 After these tests, the issue now seems to be that R=
eplay ports 0 and 1 work as expected, but Replay ports 2 and 3 do not.=C2=
=A0 I know that a 4-port Replay block works fine on an N310 because I use i=
t often.=C2=A0 So, I&#39;m wondering why we have this issue on the E320.=C2=
=A0 Perhaps the E320 yml file is wrong - I am still waiting to take a look =
at this.=C2=A0 I have also requested that Ofer run the stock example &quot;=
rfnoc_replay_samples_from_file&quot; and use the --replay_chan option to pr=
ove that ports 0 and 1 work fine but ports 2 and 3 do not.</div><div><br></=
div><div>Anyway, if you have any suggestions, I&#39;d love to hear them.</d=
iv><div>Rob</div><div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 11:17 AM Wade Fife =
&lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>The E320&#39;s DRAM is pretty fast. It should ha=
ve no problem keeping up for your use case.</div><div><br></div><div>Wade<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum &lt;<a href=3D"mai=
lto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hi Rob,<div><br></div><div>As long as the DRAM can keep u=
p throughput wise, you should be fine in that configuration. I think the E3=
20 has a BIST you can run that reports the throughput.=C2=A0</div><div><br>=
</div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi,<br><div>I am wondering if there are any data rate restrictions=
 for using the Replay block on the E320.=C2=A0 I have a 4-port Replay block=
 for simultaneously playing two streams to the 2-port Radio and capturing t=
wo streams from the 2-port Radio.=C2=A0 If the master_clock_rate is equal t=
o the sample rate, does this imply that I will have a data throughput issue=
?</div><div>Rob</div></div>
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

--0000000000006cf69f05d7b116c1--

--===============7694071508930524612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7694071508930524612==--
