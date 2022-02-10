Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2301F4B12D7
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 17:35:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48F4238559B
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 11:35:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="M9zyeiH3";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 7BF7C385076
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 11:34:19 -0500 (EST)
Received: by mail-yb1-f178.google.com with SMTP id o19so16943447ybc.12
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 08:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GiHOQrFq6bIaRun/Oisk38b7BlO96U9HKlvqQ/wzJRE=;
        b=M9zyeiH3hKQW7QbKzRJI08Ld/v1x4F5A4cRuB2EdFso4wcYsWuI5niGj/gTZCKhSK2
         /JaR3+q4BaqlDuja/E+019nQ6B6p6li1yNJjQh0vWIS8c0rRDFedhrWaXtFzMLF8wgsu
         1nLhAZ04nnQ6KA0Uocjm62CIezGGwQNpuW6ur9fhIhOji1XO4BJHoQDzRjB89Jyyr3I2
         xlhrxqEqLQs+dPY+AAnGC8XJt5/aU0Y9FJ43ndj3GVPEDrWdodXScRz/ippAR2jKjbtb
         YXcTLxfdORnmd87FciDnvsuB2BxwkCWjiNvnb1GyywPT/SsCrWL3NrVgu1vraFsJnbrc
         gB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GiHOQrFq6bIaRun/Oisk38b7BlO96U9HKlvqQ/wzJRE=;
        b=SA3uYGyjAojaD1btWWvapkpmNCUIlRiqzb/Zwkw0y+/wf6L8BY7cANOy6HCmDypiRr
         lJybHER71sqlTOcCG+DaZgDfKyCCJE6HjUaI/pSlEIsBC/AWMuIAOYsVRjz6kAbUjmbP
         d4uMf9Rok5nceHLv02KIoDrmPimm7iT4y32GoNqQY519uz8+7G9UczyfnrZBDOnW1Fkd
         tAk3LrAOI3pj41eYosIJkOlcTi0J9RNXb1+OpULzGyb3iQEzWQc8GM8zoJbHtlWQmMzJ
         7gDpKJv+X3FvmhySfj2SkOpWka1O5nMg9ZyQmIXls1jhp6KLThUHWUD0AqtCN3k+j2DY
         1UPw==
X-Gm-Message-State: AOAM532GRH0m5lbdXxKJYCrMXemxmtxTNsSxcPx3co3JY3CxEVZ6c/jO
	XcDTex7k5+AGl6eSfZSSje+c1UG0eQR43yQe0/GmJA==
X-Google-Smtp-Source: ABdhPJyc3P1+8DBbonCvnHd5L1p+L+9e/wWES1rQL5NQQ+oXJLadDNfkHK4HN7QDiWQgtBK65iy7HdVJD1fPUsFm5WA=
X-Received: by 2002:a81:e908:: with SMTP id d8mr8125011ywm.82.1644510858545;
 Thu, 10 Feb 2022 08:34:18 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSyT==Q_Nfn8xgfT-FBuutZ_ieD_CKuc-PdA3xm6KHs4w@mail.gmail.com>
 <CAL7q81tArWo++HCSyo_MGXpThqmdBvt94r-RJccqT3+bhh0PGw@mail.gmail.com> <CAFche=gKiRGtNmHE5L=59fbqEdKCvypFEwito3cgXg8qtcL-gA@mail.gmail.com>
In-Reply-To: <CAFche=gKiRGtNmHE5L=59fbqEdKCvypFEwito3cgXg8qtcL-gA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 10 Feb 2022 11:34:07 -0500
Message-ID: <CAB__hTQUT8mTDRDAeA-b_mJBmpF=h0UMDFLOgf0XKaJ01ZWbzg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: MY6YHFM6MHW4PXMAUWQSXNRSXX4SNHR5
X-Message-ID-Hash: MY6YHFM6MHW4PXMAUWQSXNRSXX4SNHR5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block on E320 data rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MY6YHFM6MHW4PXMAUWQSXNRSXX4SNHR5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1904666948552210975=="

--===============1904666948552210975==
Content-Type: multipart/alternative; boundary="0000000000008dc4b305d7ac8590"

--0000000000008dc4b305d7ac8590
Content-Type: text/plain; charset="UTF-8"

Thanks Wade,
I am helping Ofer Saferman with an issue with the E320 and a 4-port replay
block. Apart from your response (& Jonathon's response) indicating that
data rates should not be an issue, I have also come to the same conclusion
by trying some tests.  After these tests, the issue now seems to be that
Replay ports 0 and 1 work as expected, but Replay ports 2 and 3 do not.  I
know that a 4-port Replay block works fine on an N310 because I use it
often.  So, I'm wondering why we have this issue on the E320.  Perhaps the
E320 yml file is wrong - I am still waiting to take a look at this.  I have
also requested that Ofer run the stock example
"rfnoc_replay_samples_from_file" and use the --replay_chan option to prove
that ports 0 and 1 work fine but ports 2 and 3 do not.

Anyway, if you have any suggestions, I'd love to hear them.
Rob


On Thu, Feb 10, 2022 at 11:17 AM Wade Fife <wade.fife@ettus.com> wrote:

> The E320's DRAM is pretty fast. It should have no problem keeping up for
> your use case.
>
> Wade
>
> On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Rob,
>>
>> As long as the DRAM can keep up throughput wise, you should be fine in
>> that configuration. I think the E320 has a BIST you can run that reports
>> the throughput.
>>
>> Jonathon
>>
>> On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi,
>>> I am wondering if there are any data rate restrictions for using the
>>> Replay block on the E320.  I have a 4-port Replay block for simultaneously
>>> playing two streams to the 2-port Radio and capturing two streams from the
>>> 2-port Radio.  If the master_clock_rate is equal to the sample rate, does
>>> this imply that I will have a data throughput issue?
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000008dc4b305d7ac8590
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks Wade,<div>I am helping Ofer Saferm=
an with an issue with the E320 and a 4-port replay block. Apart from your r=
esponse (&amp; Jonathon&#39;s response) indicating that data rates should n=
ot be an issue, I have also come to the same conclusion by trying some test=
s.=C2=A0 After these tests, the issue now seems to be that Replay ports 0 a=
nd 1 work as expected, but Replay ports 2 and 3 do not.=C2=A0 I know that a=
 4-port Replay block works fine on an N310 because I use it often.=C2=A0 So=
, I&#39;m wondering why we have this issue on the E320.=C2=A0 Perhaps the E=
320 yml file is wrong - I am still waiting to take a look at this.=C2=A0 I =
have also requested that Ofer run the stock example &quot;rfnoc_replay_samp=
les_from_file&quot; and use the --replay_chan option to prove that ports 0 =
and 1 work fine but ports 2 and 3 do not.</div><div><br></div><div>Anyway, =
if you have any suggestions, I&#39;d love to hear them.</div><div>Rob</div>=
<div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Feb 10, 2022 at 11:17 AM Wade Fife &lt;<a href=3D"m=
ailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>The E320&#39;s DRAM is pretty fast. It should have no problem ke=
eping up for your use case.</div><div><br></div><div>Wade<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
Feb 10, 2022 at 1:56 AM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pen=
dlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Hi Rob,<div><br></div><div>As long as the DRAM can keep up throughput wis=
e, you should be fine in that configuration. I think the E320 has a BIST yo=
u can run that reports the throughput.=C2=A0</div><div><br></div><div>Jonat=
hon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler &lt;<a href=3D"mailto:r=
kossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><d=
iv>I am wondering if there are any data rate restrictions for using the Rep=
lay block on the E320.=C2=A0 I have a 4-port Replay block for simultaneousl=
y playing two streams to the 2-port Radio and capturing two streams from th=
e 2-port Radio.=C2=A0 If the master_clock_rate is equal to the sample rate,=
 does this imply that I will have a data throughput issue?</div><div>Rob</d=
iv></div>
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

--0000000000008dc4b305d7ac8590--

--===============1904666948552210975==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1904666948552210975==--
