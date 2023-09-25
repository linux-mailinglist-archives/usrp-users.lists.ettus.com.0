Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA7D7ADA50
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 16:49:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C787A384D4F
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 10:49:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695653372; bh=mAmxIRa+7fTMPxce+F+rXOoajneBvvRMo0ilfNg3Dds=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pJY7i9f6kcPCVbREuyAViMTkYjwE7FdTeFth+9eP916UgnudCbk2e9BE/EI8V4dje
	 19L7lYCw73thLL/Xe/MJqkJhjT1QsMS3RkTfMDJ4kmadl4hxpz/TrpoX10SYOSbxgN
	 UBA8SobGyYetTS/JXZ6drd4Nc+7xOZXNUBkbd/3/GB0rZ4+kvy04ot1pePJ12Ey7H7
	 sQCWA+YII5kJYSmeAd6S4A+mYQ3545JPvN33sA1hKbNSyaw4IDWdpkfeu58tB25nfy
	 VkeKoPQpQifMNERe6sp+3eehEYDcNbUd5Va7Y7b9MITgdFMPjn4B2Ch//ilbgBwsHj
	 VDCCMoAB63eFw==
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mm2.emwd.com (Postfix) with ESMTPS id BC963384D48
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 10:49:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I9OgDTL0";
	dkim-atps=neutral
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3231d6504e1so2941290f8f.2
        for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 07:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695653358; x=1696258158; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uVw7FINm4/MPhAonzdPxkgM/aMhsx2T9LXNxcDPoCe4=;
        b=I9OgDTL03tBjUDvTe7w7m7RcfCfXWemv8HAKfnhnM55JZheGtEAb4luoJCrEPSq6Jz
         i5u2Ptg1aZ6GYqICDCIWEP3zBGH/XK3wQwG422dsGy6lY5Em3d7uW+qwZVVVzKifBlVR
         ZPtS7V4rXUS16Jn6zMZNwOQlmo+WQIBiQeWMZ8HeCaEXSIeZ1F2JDPsOe7ammLmKq6G/
         vbinPp2HIoBmkNrWiwVdMp64uZj/WNptFfR3Njsx9rbIYglvs1kgFO83LkeUL3L4RRjJ
         Jr9dncxadlpx1515yxViF2+UglAYSu2gT55kU2BYlUhdcjvoJ/zqcE090fVQVAJZa6k6
         ih3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695653358; x=1696258158;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uVw7FINm4/MPhAonzdPxkgM/aMhsx2T9LXNxcDPoCe4=;
        b=XbOf+EdiPy+hFltgQG8adrrvehaguIxigyIaD2mYKrT6K01NRJSrT03a5DiyaRjmQX
         Yt/k3y+XFr54sk9DJwiIL9iriQH7L0OX0hDbN3HM+7Ds4u/mkXBZ6DU7RJ3IcNUyCiZa
         GsR0nkPW22ttc1PjN4QW4fHxnxv3NJ+pIBU6MGAYXWCKM3T3i2LQQVZCnUo63lTu45HV
         5CIzmiJDUTG/Jo9rHbpYZ237WNoz2Mgyh149pm355xUvXSEwdxZMYl5VmxESz5ag6xfd
         mTTuEFkJ5Vw3Uw1R25JGXm+qv4eFbkUREWwA/1iWJMTuUyXCeGv3lIAL104HQL7m8cK3
         nkgA==
X-Gm-Message-State: AOJu0Ywfe9JLWqrqp2L5kWjQSR486/SmzjzK9jvjCmj5MNiSPI/1a4jo
	j+DuZ6bzhuem3j0wu8GmRIK4jtLklUQkfookPpo=
X-Google-Smtp-Source: AGHT+IGsnFb/WaVWv8aIHYX5juR4WKGwE005QOGq3GVdhhKTE25sjhd6Yi15l/2fmkqq5ARynWj0iaHLE0sIRF6oXgg=
X-Received: by 2002:a5d:4983:0:b0:317:618a:c72 with SMTP id
 r3-20020a5d4983000000b00317618a0c72mr6140429wrq.64.1695653358219; Mon, 25 Sep
 2023 07:49:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyuawttfqk9emcKXbJR-7NXAcL5xC-pih1xyzrh4Rcjg_QQ@mail.gmail.com>
 <523cda22-5051-28b0-c10d-9fb221222763@gmail.com> <CAB__hTSt93LkvuuRdWMKC_dO+=AiSXJOzGs7_ELGK07QHrhZkA@mail.gmail.com>
In-Reply-To: <CAB__hTSt93LkvuuRdWMKC_dO+=AiSXJOzGs7_ELGK07QHrhZkA@mail.gmail.com>
From: Devin Kelly <dwwkelly@gmail.com>
Date: Mon, 25 Sep 2023 10:49:07 -0400
Message-ID: <CAANLyuZebEpfD8+qS31M+X9iJ8fZ83HWy2EZH-NCdwR308jxdQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: AE3TDC5OICYDFYY2MZZNPZLH2JOC7MAJ
X-Message-ID-Hash: AE3TDC5OICYDFYY2MZZNPZLH2JOC7MAJ
X-MailFrom: dwwkelly@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX Streamer Send Time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AE3TDC5OICYDFYY2MZZNPZLH2JOC7MAJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4809107098444974575=="

--===============4809107098444974575==
Content-Type: multipart/alternative; boundary="00000000000014379406063010c4"

--00000000000014379406063010c4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus, Rob,

Thanks for the replies.

We=E2=80=99ve built an application that we want to run for a brief amount o=
f time
(say 5-30 minutes) and then =E2=80=9Creset=E2=80=9D and run again (or a sli=
ghtly different
configuration).  The reset can come at any time though, so it=E2=80=99s imp=
ortant
to be able to stop and then start over again with 10-15 seconds.  We also
might need to stop, wait a few hours and start up again.

My thinking was to that when we run the application a second time I want
the USRP and all my code to be in the same state as the first time.  So I
was setting the clock back to 0, among other things.

However, that=E2=80=99s when I found this problem where there would be stal=
e bursts
on my queue.  Sometimes they would sit in the queue for minutes, delaying
the rest of the test.

I think what I=E2=80=99ll do now is query the current USRP time and use tha=
t for
each test.  Are there any other strategies I should be considering?

Thanks!
Devin


On Mon, Sep 25, 2023 at 10:12=E2=80=AFAM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>
> On Mon, Sep 25, 2023 at 9:26=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 25/09/2023 08:57, Devin Kelly wrote:
>>
>> Hello,
>>
>> I have an application where I=E2=80=99m sending many short bursts to a U=
SRP B210
>> using uhd::tx_streamer.send() (link below) and I occasionally set the PP=
S
>> time to 0 using set_time_last_pps.
>>
>> Sometimes I set the PPS time to 0 when there=E2=80=99s still a burst in =
the USRPs
>> queue.  When I do this the burst is transmitted much later than I want.
>>
>> Is there a way to clear the queue on the USRP or UHD?  That is, if I sen=
d
>> a TX burst in the distant future can I cancel it before it gets
>> transmitted?  Can I clear everything in the TX queue?
>>
>> I=E2=80=99ve read on this list that calling the stream destructor will d=
o this,
>> is that right? I=E2=80=99ve tried this without success.
>>
>> Thanks!
>> Devin
>>
>> This is an unusual scenario -- what is the reason for constantly
>> resetting the timer to zero?   This is not the kind of scenario that
>>   was contemplated in the architecture.  I don't think there's a "flush
>> pending things in the queue" operation possible--although
>>   I admit it might be useful.
>>
>
> Like Marcus, I don't know of a way to flush the stream.  But, I do want t=
o
> add my two cents of the utility of such a capability.
>
> In many cases, samples get "stuck" in RFNoC blocks.  There are a variety
> of reasons such as the timing reason that is the cause of this post, badl=
y
> written custom RFNoC blocks (my specialty), and blocks such as FFT that c=
an
> get a partial vector of samples in the queue.  In any case, it is not
> uncommon to need to power cycle the device for the simple reason of
> clearing samples out of the queue of one block or another.  It seems that
> there could be an "agreed upon RFNoC standard for 'clear'" or something
> similar such that a block would be expected to clear its queues (in a
> similar manner to the way in which an RFNoC block is supposed to respect
> the 'reset' signal).
> Rob
>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000014379406063010c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Marcus, Rob,</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Thanks for the replies.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">We=E2=80=99ve built an application that we want to run for a brief a=
mount of time (say 5-30 minutes) and then =E2=80=9Creset=E2=80=9D and run a=
gain (or a slightly different configuration).=C2=A0 The reset can come at a=
ny time though, so it=E2=80=99s important to be able to stop and then start=
 over again with 10-15 seconds.=C2=A0 We also might need to stop, wait a fe=
w hours and start up again.</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">My thinking was to that when we run the application a second time I wan=
t the USRP and all my code to be in the same state as the first time.=C2=A0=
 So I was setting the clock back to 0, among other things.</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">However, that=E2=80=99s when I found thi=
s problem where there would be stale bursts on my queue.=C2=A0 Sometimes th=
ey would sit in the queue for minutes, delaying the rest of the test.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">I think what I=E2=80=99ll do =
now is query the current USRP time and use that for each test.=C2=A0 Are th=
ere any other strategies I should be considering?</div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">Thanks!</div><div dir=3D"auto">Devin=C2=A0</div><=
div dir=3D"auto"><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, Sep 25, 2023 at 10:12=E2=80=AFAM Rob Koss=
ler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 25, 2023 at 9:26=E2=80=
=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 25/09/2023 08:57, Devin Kelly wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto">
       =20
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">Hello,</span><br st=
yle=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;fo=
nt-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D=
"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">I
          have an application where I=E2=80=99m sending many short bursts t=
o a
          USRP B210 using uhd::tx_streamer.send() (link below) and I
          occasionally set the PPS time to 0 using set_time_last_pps. =C2=
=A0</span><br style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D=
"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">Sometimes
          I set the PPS time to 0 when there=E2=80=99s still a burst in the
          USRPs queue.=C2=A0 When I do this the burst is transmitted much
          later than I want.</span><br style=3D"color:rgb(0,0,0);font-famil=
y:UICTFontTextStyleBody;font-size:17px;font-style:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:=
none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D=
"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">Is
          there a way to clear the queue on the USRP or UHD?=C2=A0 That is,
          if I send a TX burst in the distant future can I cancel it
          before it gets transmitted?=C2=A0 Can I clear everything in the T=
X
          queue?</span><br style=3D"color:rgb(0,0,0);font-family:UICTFontTe=
xtStyleBody;font-size:17px;font-style:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D=
"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">I=E2=80=99ve
          read on this list that calling the stream destructor will do
          this, is that right? I=E2=80=99ve tried this without success.</sp=
an><br style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-siz=
e:17px;font-style:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D=
"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">Thanks!</span><br s=
tyle=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;f=
ont-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">Devin</span></div>
      <br>
    </blockquote>
    This is an unusual scenario -- what is the reason for constantly
    resetting the timer to zero?=C2=A0=C2=A0 This is not the kind of scenar=
io that<br>
    =C2=A0 was contemplated in the architecture.=C2=A0 I don&#39;t think th=
ere&#39;s a
    &quot;flush pending things in the queue&quot; operation possible--altho=
ugh<br>
    =C2=A0 I admit it might be useful.<br></div></blockquote><div><br></div=
><div>Like Marcus, I don&#39;t know of a way to flush the stream.=C2=A0 But=
, I do want to add my two cents of the utility of such a capability.=C2=A0=
=C2=A0</div><div><br></div><div>In many cases, samples get &quot;stuck&quot=
; in RFNoC blocks.=C2=A0 There are a variety of reasons such as the timing =
reason that is the cause of this post, badly written custom RFNoC blocks (m=
y specialty), and blocks such as FFT that can get a partial vector of sampl=
es in the queue.=C2=A0 In any case, it is not uncommon to need to power cyc=
le the device for the simple reason of clearing samples out of the queue of=
 one block or another.=C2=A0 It seems that there could be an &quot;agreed u=
pon RFNoC standard for &#39;clear&#39;&quot; or something similar such that=
 a block would be expected to clear its queues (in a similar manner to the =
way in which an RFNoC block is supposed to respect the &#39;reset&#39; sign=
al).</div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div>Rob<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000014379406063010c4--

--===============4809107098444974575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4809107098444974575==--
