Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DB14B1783
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 22:23:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA7493847E2
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 16:23:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="vj3ME7Xo";
	dkim-atps=neutral
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D33C384BF0
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 16:22:21 -0500 (EST)
Received: by mail-vs1-f50.google.com with SMTP id r13so3480281vsg.6
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 13:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u+sLhuhxe6LP2O2udCqmAsp6Y10USeSmHB69HA8fLao=;
        b=vj3ME7Xo35qw2O8fxZOEZRHW6Txk6625IYfLJ9d+i+zq8Tb8Hpx/YAUjMI4RmpvbWn
         X3/n9bL32naJX23W20P5YZujxTN0yZKTavHhwoe8Yz+Otz1GjjkSyvU/uP4Nw7teN3BO
         lPmos0qBPfCEQkXHWRFFPV84WXtjHfhAQ3uNKesHFlX1CNy9ufoiD4tmLRjdlNaAppIQ
         xON5nO+5bb8ZZ6ze+8hwVlYT6aeTtHQEWzulrJdGJ7S/TuGHu3lGS9M6/6P7Rd8Vxxbi
         3EbF8a/YYtx5bvqtAiZ0M2S6PVFhEUzVCIOar7ExdCOpPVhmRj8GZOaQKtoZoPAqeADH
         1NNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u+sLhuhxe6LP2O2udCqmAsp6Y10USeSmHB69HA8fLao=;
        b=fvy+3YFaYbnvnOFArcmOB2f1kM6IF/Kg/5wg39tnM8HD0eB8l4EiiSV6MXAs+yFDzJ
         AY/vIj9HHSxtlongd86VTJtI4tmsd97ZAOiyvPVVY6rAaSfTg7lTXQwq/YP/wMSnMnZC
         lRarthznDeqgCY0jaI2td4uP7EkpRO4h3dKcu9uAva/eueP9PrwAJVIwoqEnUvzDAPLd
         nBTmIuyRo1lkG5xyUmA+RZ07fgBC/4EBixWuDjImkk0Ajkb/g7QzOautT1a83m0/eyOm
         H6jqq7OS5U+lbwWW2HKTVcEXiQY1jeScqwHwGWPxectuOxTfKcQ2GAzOdfMbLqCQcCUD
         mvFw==
X-Gm-Message-State: AOAM530wdvmHU+1pUSdCBL0Aw3twYxB9kScNdDV02d00eI06bDON1b4I
	tfcz5W1GmmN+AJ/7L/MnFtdISPYdA3JaJdPKPzEn1RjQY1NcOpA1
X-Google-Smtp-Source: ABdhPJztcMjWSU1YiTT/ioecL68EFkyhx9rHGlwxiCRCU/Az8Xy0XBQkXdgcw9txz2voU3FPs47k9lesXRUu5anpRjQ=
X-Received: by 2002:a67:fd86:: with SMTP id k6mr3388362vsq.0.1644528140485;
 Thu, 10 Feb 2022 13:22:20 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSyT==Q_Nfn8xgfT-FBuutZ_ieD_CKuc-PdA3xm6KHs4w@mail.gmail.com>
 <CAL7q81tArWo++HCSyo_MGXpThqmdBvt94r-RJccqT3+bhh0PGw@mail.gmail.com>
 <CAFche=gKiRGtNmHE5L=59fbqEdKCvypFEwito3cgXg8qtcL-gA@mail.gmail.com>
 <CAB__hTQUT8mTDRDAeA-b_mJBmpF=h0UMDFLOgf0XKaJ01ZWbzg@mail.gmail.com> <CAFche=iXkkR1C9AEXbrytuFkiSUCYL2fpwO7Ufq_VdKoQi7nfA@mail.gmail.com>
In-Reply-To: <CAFche=iXkkR1C9AEXbrytuFkiSUCYL2fpwO7Ufq_VdKoQi7nfA@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 10 Feb 2022 16:21:44 -0500
Message-ID: <CAL7q81uXKHKPje44LA-Xc+STABicFho9J76SUvFyg=AgKFRSMA@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: UXUZOMDJ6AJS7JVRPUTYYXQ4GBLG7UPX
X-Message-ID-Hash: UXUZOMDJ6AJS7JVRPUTYYXQ4GBLG7UPX
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block on E320 data rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UXUZOMDJ6AJS7JVRPUTYYXQ4GBLG7UPX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2900876011816083792=="

--===============2900876011816083792==
Content-Type: multipart/alternative; boundary="000000000000a31c1705d7b08bd8"

--000000000000a31c1705d7b08bd8
Content-Type: text/plain; charset="UTF-8"

It looks like the problem is that while there is a 4 port interconnect
available, only ports 0 and 1 are hooked up:
https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050

This actually brings up a design suggestion: the Replay Block could have
it's own internal AXI4 interconnect that scales based on NUM_PORTS. I've
done this myself in a custom RFNoC block using the Xilinx AXI4 Interconnect
IP and it worked out well.

Jonathon

On Thu, Feb 10, 2022 at 3:33 PM Wade Fife <wade.fife@ettus.com> wrote:

> I would start by double checking the YAML. For example, make sure the
> MEM_ADDR_W parameter is correct (for E320 it should be 31, for 2 GiB) and
> make sure each in/out port is connected the way you want.
>
> If you share the YAML with me, I'm happy to take a look to see if anything
> jumps out at me.
>
> Thanks,
>
> Wade
>
> On Thu, Feb 10, 2022 at 10:34 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Thanks Wade,
>> I am helping Ofer Saferman with an issue with the E320 and a 4-port
>> replay block. Apart from your response (& Jonathon's response) indicating
>> that data rates should not be an issue, I have also come to the same
>> conclusion by trying some tests.  After these tests, the issue now seems to
>> be that Replay ports 0 and 1 work as expected, but Replay ports 2 and 3 do
>> not.  I know that a 4-port Replay block works fine on an N310 because I use
>> it often.  So, I'm wondering why we have this issue on the E320.  Perhaps
>> the E320 yml file is wrong - I am still waiting to take a look at this.  I
>> have also requested that Ofer run the stock example
>> "rfnoc_replay_samples_from_file" and use the --replay_chan option to prove
>> that ports 0 and 1 work fine but ports 2 and 3 do not.
>>
>> Anyway, if you have any suggestions, I'd love to hear them.
>> Rob
>>
>>
>> On Thu, Feb 10, 2022 at 11:17 AM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> The E320's DRAM is pretty fast. It should have no problem keeping up for
>>> your use case.
>>>
>>> Wade
>>>
>>> On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> Hi Rob,
>>>>
>>>> As long as the DRAM can keep up throughput wise, you should be fine in
>>>> that configuration. I think the E320 has a BIST you can run that reports
>>>> the throughput.
>>>>
>>>> Jonathon
>>>>
>>>> On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Hi,
>>>>> I am wondering if there are any data rate restrictions for using the
>>>>> Replay block on the E320.  I have a 4-port Replay block for simultaneously
>>>>> playing two streams to the 2-port Radio and capturing two streams from the
>>>>> 2-port Radio.  If the master_clock_rate is equal to the sample rate, does
>>>>> this imply that I will have a data throughput issue?
>>>>> Rob
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--000000000000a31c1705d7b08bd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It looks like the problem is that while there is a 4 =
port interconnect available, only ports 0 and 1 are hooked up:=C2=A0<a href=
=3D"https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e=
23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050">https://github.com/Ettus=
Research/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e=
320/e320_core.v#L1050</a><br></div><div><br></div><div>This actually brings=
 up a design suggestion: the Replay Block could have it&#39;s own internal =
AXI4 interconnect that scales based on NUM_PORTS. I&#39;ve done this myself=
 in a custom RFNoC block using the Xilinx AXI4 Interconnect IP and it worke=
d out well.<br></div><div><br></div><div>Jonathon</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022=
 at 3:33 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>I would start by double checking the YAML.=
 For example, make sure the MEM_ADDR_W parameter is correct (for E320 it sh=
ould be 31, for 2 GiB) and make sure each in/out port is connected the way =
you want.<br></div><div><br></div><div>If you share the YAML with me, I&#39=
;m happy to take a look to see if anything jumps out at me.<br></div><div><=
br></div><div>Thanks,</div><div><br></div><div>Wade<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022=
 at 10:34 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_=
blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Thanks Wade,<div>I =
am helping Ofer Saferman with an issue with the E320 and a 4-port replay bl=
ock. Apart from your response (&amp; Jonathon&#39;s response) indicating th=
at data rates should not be an issue, I have also come to the same conclusi=
on by trying some tests.=C2=A0 After these tests, the issue now seems to be=
 that Replay ports 0 and 1 work as expected, but Replay ports 2 and 3 do no=
t.=C2=A0 I know that a 4-port Replay block works fine on an N310 because I =
use it often.=C2=A0 So, I&#39;m wondering why we have this issue on the E32=
0.=C2=A0 Perhaps the E320 yml file is wrong - I am still waiting to take a =
look at this.=C2=A0 I have also requested that Ofer run the stock example &=
quot;rfnoc_replay_samples_from_file&quot; and use the --replay_chan option =
to prove that ports 0 and 1 work fine but ports 2 and 3 do not.</div><div><=
br></div><div>Anyway, if you have any suggestions, I&#39;d love to hear the=
m.</div><div>Rob</div><div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 11:17 AM Wade =
Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife=
@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>The E320&#39;s DRAM is pretty fast. It sho=
uld have no problem keeping up for your use case.</div><div><br></div><div>=
Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum &lt;<a hre=
f=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi Rob,<div><br></div><div>As long as the DRAM =
can keep up throughput wise, you should be fine in that configuration. I th=
ink the E320 has a BIST you can run that reports the throughput.=C2=A0</div=
><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 9, 2022 at 3:29 PM Rob Kossl=
er &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Hi,<br><div>I am wondering if there are any data rate rest=
rictions for using the Replay block on the E320.=C2=A0 I have a 4-port Repl=
ay block for simultaneously playing two streams to the 2-port Radio and cap=
turing two streams from the 2-port Radio.=C2=A0 If the master_clock_rate is=
 equal to the sample rate, does this imply that I will have a data throughp=
ut issue?</div><div>Rob</div></div>
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

--000000000000a31c1705d7b08bd8--

--===============2900876011816083792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2900876011816083792==--
